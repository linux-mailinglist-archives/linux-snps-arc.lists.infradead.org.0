Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DE01E625
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MX/raN7qFH6u1gRYHyCItNjxGCzNUpb0SclXxxbCyw=; b=igi6WZJdFD/kyR
	7911UpJb0aizMOgnzfU04lJikc7NIp3jD8p6BnZZCGgKjDp5wNYp0LZifMJ+u0pXeSG0b+64jADsS
	+18cQhHiOdf7o6Jw4/zuMrcz3rnBwUYVZg5vWY6uLeAAatMuJMbYmDhjhd3z74fo5nw6Uo/iei+dI
	1/pGPoHEmxMKOVQhxi2GpRlPGkQSvXlKQDyF20wM7buoxXZ1E7G1j+WUrkHBKhSRZQxJniM/VdUIY
	zlrELaSgg9liLHLXY3HN35LGYgNyz68/y07gKaypVNJY4j+ww/LMDGVR2+zG5p8AgEpeynD+JyEmI
	5Fg81E0tHlmp1r0qb6Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoD-0003vr-1H; Wed, 15 May 2019 00:30:13 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoA-0003v0-7A
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:11 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2BD98C01E5;
 Wed, 15 May 2019 00:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880215; bh=zoCTft68JktbsggQz6TW+TG89hjYIxyCWbFeh7G+lg4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=EpYk8kaWid8FQBKfJdGrhLXxVpGOeb1N4dWenHNLmFcJioi4AS39WFurV1uxKVlIm
 V5wM6MKd80saj10PfiNlsgi//Pu0DRYsDZZqej121oDgyoM8BDohqL3KVLdX/YGp2H
 VsGadn4JiLz65/sb/QYi7G/sEtCKLjBUu/Y+FOvQ0c+XrOHo1m22f0JHQxgn42e2Q8
 E+I5bO7/WijqDxswUmuaIJoFiTMB+FS14U8EFgbqptKTOvOOenGZyszSyVehmduL50
 EPXc/lT2VwRWbrTmoi4P/UViXmXjRNF818JklZPvQA/emHA+OB7CEGodW7gJB9+j7A
 u0EUIfSNEAlYQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B2CF7A0378;
 Wed, 15 May 2019 00:30:08 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:08 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:04 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:16 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma access
 permission code
Date: Tue, 14 May 2019 17:29:31 -0700
Message-ID: <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173010_273067_8993FE47 
X-CRM114-Status: GOOD (  14.24  )
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

The coding pattern to NOT intialize variables at declaration time but
rather near code which makes us eof them makes it much easier to grok
the overall logic, specially when the init is not simply 0 or 1

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 39 +++++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index f1175685d914..ae890a8d5ebf 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -67,9 +67,9 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
 	int si_code = SEGV_MAPERR;
+	unsigned int write = 0, exec = 0, mask;
 	vm_fault_t fault;
-	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
-	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
+	unsigned int flags;
 
 	/*
 	 * NOTE! We MUST NOT take any locks for this case. We may
@@ -91,8 +91,18 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	if (faulthandler_disabled() || !mm)
 		goto no_context;
 
+	if (regs->ecr_cause & ECR_C_PROTV_STORE)	/* ST/EX */
+		write = 1;
+	else if ((regs->ecr_vec == ECR_V_PROTV) &&
+	         (regs->ecr_cause == ECR_C_PROTV_INST_FETCH))
+		exec = 1;
+
+	flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 	if (user_mode(regs))
 		flags |= FAULT_FLAG_USER;
+	if (write)
+		flags |= FAULT_FLAG_WRITE;
+
 retry:
 	down_read(&mm->mmap_sem);
 
@@ -105,24 +115,17 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	}
 
 	/*
-	 * Ok, we have a good vm_area for this memory access, so
-	 * we can handle it..
+	 * vm_area is good, now check permissions for this memory access
 	 */
-	si_code = SEGV_ACCERR;
-
-	/* Handle protection violation, execute on heap or stack */
-
-	if ((regs->ecr_vec == ECR_V_PROTV) &&
-	    (regs->ecr_cause == ECR_C_PROTV_INST_FETCH))
+	mask = VM_READ;
+	if (write)
+		mask = VM_WRITE;
+	if (exec)
+		mask = VM_EXEC;
+
+	if (!(vma->vm_flags & mask)) {
+		si_code = SEGV_ACCERR;
 		goto bad_area;
-
-	if (write) {
-		if (!(vma->vm_flags & VM_WRITE))
-			goto bad_area;
-		flags |= FAULT_FLAG_WRITE;
-	} else {
-		if (!(vma->vm_flags & (VM_READ | VM_EXEC)))
-			goto bad_area;
 	}
 
 	/*
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
