Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A2E1E62C
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJqzY8sAcdW98TNBTNEu/dZ6Yi82WrcF5BaPiMaK1no=; b=t36v+q831S+C81
	eXfQKEqHGGxbx67oMdLiKwa/HIpZ7Ixt0s0171KYvC1iHDLjvKSzVXgAcFQN8G7mkulbIM21vX6g4
	cqVfLKzJfB4nN979SP8xxuD03kiofR4fSI72ToxueqRpuekFjrpcvrw2EzN24IBBWrv7tgSOaFWPE
	gjZQ8Kfbyh8CCXz9X0pMznrM9whowVximUjxqOjuNBdu6IT6vqC/GV47Wmk+2MKZzrQaRDnteSDnR
	Bg+IfgDm9CwhKo5tIt4YV/7iFY4eCI9vGkzxk4Lz3ohPPzNOg9onABoKj/zX9aLteAZJmPSOqV8mk
	qzVqax4mWPXEQddM0Kvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoS-00041F-Ou; Wed, 15 May 2019 00:30:28 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoN-0003zJ-Ny
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:25 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B03D3C125E;
 Wed, 15 May 2019 00:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880228; bh=CkssZQXbYGkx2a0Vqjl+j1ujpM6IPwBxaO1c+mSzFC8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=iAAAIgADu34z/litm3pucblHNQRXJlaflfx52hSVCbmaB1nNtutAfZ4AO8V91VFkT
 UPiirFkjjjLb3rWrp+3wYOfvDNyOJA7Lo37dKWIMLAHYLQLVss7al+CWoDfsnqO0j7
 /brEta0Gkb0ajB0JbfwWuO428hPdnIGuEb5jKSyl6SLG+wuFq9LJwTWCJHdbodQ1+Q
 5xRfD8jj92p5RhNBJMuDH0kY9gQ8HVNsl1cOYstUkagSlv367SfY2LygaWqon58rcJ
 iVSj2uY9bSDUreQpAM8UTCiElm0YJ7cGGTelAA84OgZarcc0phXPsmF6/yUuGGtdWB
 KErzE9oY9CcfQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 8F22CA023D;
 Wed, 15 May 2019 00:30:23 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:21 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:18 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:29 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 8/9] ARC: mm: do_page_fault refactor #7: fold the various
 error handling
Date: Tue, 14 May 2019 17:29:35 -0700
Message-ID: <1557880176-24964-9-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173023_784695_DE345BEF 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: paltsev@snyopsys.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

 - single up_read() call vs. 4
 - so much easier on eyes

Technically it seems like @bad_area label moved up, but even in old
regime, it was a special case of delivering SIGSEGV unconditionally
which we now do as well, although with checks.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 46 +++++++++++++---------------------------------
 1 file changed, 13 insertions(+), 33 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 0e1a222a97ad..20402217d9da 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -66,7 +66,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct vm_area_struct *vma = NULL;
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
-	int si_code = SEGV_MAPERR;
+	int sig, si_code = SEGV_MAPERR;
 	unsigned int write = 0, exec = 0, mask;
 	vm_fault_t fault;			/* handle_mm_fault() output */
 	unsigned int flags;			/* handle_mm_fault() input */
@@ -177,47 +177,27 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		return;
 	}
 
-	if (fault & VM_FAULT_OOM)
-		goto out_of_memory;
-	else if (fault & VM_FAULT_SIGSEGV)
-		goto bad_area;
-	else if (fault & VM_FAULT_SIGBUS)
-		goto do_sigbus;
-
-	/* no man's land */
-	BUG();
-
-	/*
-	 * Something tried to access memory that isn't in our memory map..
-	 * Fix it, but check if it's kernel or user first..
-	 */
 bad_area:
 	up_read(&mm->mmap_sem);
 
 	if (!user_mode(regs))
 		goto no_context;
 
-	tsk->thread.fault_address = address;
-	force_sig_fault(SIGSEGV, si_code, (void __user *)address, tsk);
-	return;
-
-out_of_memory:
-	up_read(&mm->mmap_sem);
-
-	if (!user_mode(regs))
-		goto no_context;
-
-	pagefault_out_of_memory();
-	return;
-
-do_sigbus:
-	up_read(&mm->mmap_sem);
+	if (fault & VM_FAULT_OOM) {
+		pagefault_out_of_memory();
+		return;
+	}
 
-	if (!user_mode(regs))
-		goto no_context;
+	if (fault & VM_FAULT_SIGBUS) {
+		sig = SIGBUS;
+		si_code = BUS_ADRERR;
+	}
+	else {
+		sig = SIGSEGV;
+	}
 
 	tsk->thread.fault_address = address;
-	force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)address, tsk);
+	force_sig_fault(sig, si_code, (void __user *)address, tsk);
 	return;
 
 no_context:
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
