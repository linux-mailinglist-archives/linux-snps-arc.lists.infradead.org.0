Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AC8A6EB6
	for <lists+linux-snps-arc@lfdr.de>; Tue,  3 Sep 2019 18:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OM9mlS8BLF/XMWez7h+eDRad8rNYoUieUUIu0J3LSU=; b=HK/LIXrvbA5qRH
	85z4G/WT95UK54LvrjrQfHFXIvCy7LymYusLsesLJlu+OCdHobr/3mSSVkUdhsDtwHR92ubSXyJvD
	bBFeJeNOHFxwQIzz7nb63cP+WoMFOMjpFiWIb7RsAe/6qBb+V4I120RZ/02UsXnT5t/kHmYGWnrxK
	F966ZTfFicLLx8ESpJ+89QU2LrvrBcPBr8iNKfyL/ca8WxMHZB8v9krGr/RCap29oHZq25g6hbQ0j
	63aHmIAXaYzieUy7Sdo6lsmUpGb7JtwisyVUwP0N5ueO/Wlf52uTy+qd1YOokMqEEDM8DnI+76hc8
	4KL8Fx6YxutXctFYlK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BfQ-00011y-5J; Tue, 03 Sep 2019 16:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BfN-000117-EB
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 16:28:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5267A23431;
 Tue,  3 Sep 2019 16:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567528105;
 bh=Cd42BbHH5UF+TyBnCjl/rXkhEI+SJZOhpWmiAdM/aIE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=z5IBgNLWSHiP7PGJKnGUBT1uulqGW6MlADtxnUy4a1thNgG1Qqwa5QEcgTDW7fyyV
 59ns7us25ijh5B3rXDMxiu75pnhT+qFU0kDd7Pac+a0jqbFXzNNjNBG3DLUtgnecCj
 c2YlzalEoXO0qggVexz2w4R7H4G8OL+7mWgBO0mY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 111/167] signal/arc: Use force_sig_fault where
 appropriate
Date: Tue,  3 Sep 2019 12:24:23 -0400
Message-Id: <20190903162519.7136-111-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162519.7136-1-sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_092825_499774_639F02BD 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org,
 "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: "Eric W. Biederman" <ebiederm@xmission.com>

[ Upstream commit 15773ae938d8d93d982461990bebad6e1d7a1830 ]

Acked-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arc/mm/fault.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index f28db0b112a30..a0366f9dca051 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -66,14 +66,12 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct vm_area_struct *vma = NULL;
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
-	siginfo_t info;
+	int si_code;
 	int ret;
 	vm_fault_t fault;
 	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
 	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
-	clear_siginfo(&info);
-
 	/*
 	 * We fault-in kernel-space virtual memory on-demand. The
 	 * 'reference' page table is init_mm.pgd.
@@ -91,7 +89,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 			return;
 	}
 
-	info.si_code = SEGV_MAPERR;
+	si_code = SEGV_MAPERR;
 
 	/*
 	 * If we're in an interrupt or have no user
@@ -119,7 +117,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	 * we can handle it..
 	 */
 good_area:
-	info.si_code = SEGV_ACCERR;
+	si_code = SEGV_ACCERR;
 
 	/* Handle protection violation, execute on heap or stack */
 
@@ -204,11 +202,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	/* User mode accesses just cause a SIGSEGV */
 	if (user_mode(regs)) {
 		tsk->thread.fault_address = address;
-		info.si_signo = SIGSEGV;
-		info.si_errno = 0;
-		/* info.si_code has been set above */
-		info.si_addr = (void __user *)address;
-		force_sig_info(SIGSEGV, &info, tsk);
+		force_sig_fault(SIGSEGV, si_code, (void __user *)address, tsk);
 		return;
 	}
 
@@ -243,9 +237,5 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		goto no_context;
 
 	tsk->thread.fault_address = address;
-	info.si_signo = SIGBUS;
-	info.si_errno = 0;
-	info.si_code = BUS_ADRERR;
-	info.si_addr = (void __user *)address;
-	force_sig_info(SIGBUS, &info, tsk);
+	force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)address, tsk);
 }
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
