Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0301BBED
	for <lists+linux-snps-arc@lfdr.de>; Mon, 13 May 2019 19:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BLEO7c5gWWTTvYV0PLIoCiEVkYZguy6uljfol8uywjE=; b=L/7
	vwEQvKR1CgZQxRrU3xWq0K0uZn54FNQuoLpYkNkaW58/Z/Vmz6jiye4lmb/zioOTeEkvwvF8Zp08a
	xpooFf4/y+cXVaCPbzmWxwQhuK52rIlPRCI6OpzH6AJBAc1DaHSFVTOGyu1okC83a9fmbu925HbIg
	I7PDejsRzqByNf7LLRtpvr3LxX45+5kmdrNEEimsW/V3MfQk4KhwiSVWUkn22hKEJiA2oUvfy3sD4
	giY5i4hmZcPafNgyuLiwzdCplinugBmPN902IcQP5ne1pKCj0+kiKmsihIxivr2t1OU1EA/gE7oLf
	WaVyYvbJTS5Sz201+yWM1nI6rrOfUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEkD-0005kL-KX; Mon, 13 May 2019 17:28:09 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEkB-0005jz-NS
 for linux-snps-arc@lists.infradead.org; Mon, 13 May 2019 17:28:09 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id ECBD6C01BE;
 Mon, 13 May 2019 17:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557768475; bh=xuOs4qwSdffNeE4cSBsvtl4Yi23BFWFZxAfSB82nI1M=;
 h=From:To:Cc:Subject:Date:From;
 b=mH1hrvejYv/qBh+ZvZnGVo/Y2EgAw4cQN5pr+nC2j8vqY/JBjREeO4YRrcU0uQ/yE
 qFmr9QeibhNm6XhcC0sb2OonJOey1p+mdpqH7W0s5ZFGw5bcDs5PQ+GXlF0m19Pv+i
 eZxkGG4q44wqzaJEZVhafKDERsKIicbCCU2Aekm7w9aMUnF+Bm45pghzJ8/AMn8yfU
 mS5qOHbx+IhA5yo3LUeYMGYUiAjvtUHZj9ynCVXr0b6aUMgEk8KaDdSaZ+q52iTj1A
 uhnlpXxG4Fm/JJ1U0R8A4QLvy+0VAOw4AMsGZV+zcOA8bNwnd5r/4v5qG6Otgi1Q70
 046cx5c0/a9lA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.8.106])
 by mailhost.synopsys.com (Postfix) with ESMTP id 66F75A005A;
 Mon, 13 May 2019 17:28:02 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2] ARC: Send SIGSEGV if userspace process accesses kernel
 virtual memory
Date: Mon, 13 May 2019 20:28:00 +0300
Message-Id: <20190513172800.27940-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.14.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102807_768801_7C7C2EA3 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As of today if userspace process tries to access address which belongs
to kernel virtual memory area and kernel have mapping for this address
that process hangs instead of receiving SIGSEGV and being killed.

Steps to reproduce:
Create userspace application which reads from the beginning of
kernel-space virtual memory area (I.E. read from 0x7000_0000 on most
of existing platforms):
------------------------>8-----------------
 #include <stdlib.h>
 #include <stdint.h>

 int main(int argc, char *argv[])
 {
 	volatile uint32_t temp;

 	temp = *(uint32_t *)(0x70000000);
 }
------------------------>8-----------------
That application hangs after such memory access.

Fix that by checking which access (user or kernel) caused the exception
before handling kernel virtual address fault.

Fix that by checking that VMALLOC_FAULT was caused in kernel mode
before trying to handle it.
Thus we can use @no_context label, removing the need for
@bad_area_nosemaphore and untangling the code mess a bit.

Cc: <stable@vger.kernel.org> # 4.20+
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/mm/fault.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 8df1638259f3..6836095251ed 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -66,7 +66,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct vm_area_struct *vma = NULL;
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
-	int si_code = 0;
+	int si_code = SEGV_MAPERR;
 	int ret;
 	vm_fault_t fault;
 	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
@@ -81,16 +81,14 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	 * only copy the information from the master page table,
 	 * nothing more.
 	 */
-	if (address >= VMALLOC_START) {
+	if (address >= VMALLOC_START && !user_mode(regs)) {
 		ret = handle_kernel_vaddr_fault(address);
 		if (unlikely(ret))
-			goto bad_area_nosemaphore;
+			goto no_context;
 		else
 			return;
 	}
 
-	si_code = SEGV_MAPERR;
-
 	/*
 	 * If we're in an interrupt or have no user
 	 * context, we must not take the fault..
@@ -198,7 +196,6 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 bad_area:
 	up_read(&mm->mmap_sem);
 
-bad_area_nosemaphore:
 	/* User mode accesses just cause a SIGSEGV */
 	if (user_mode(regs)) {
 		tsk->thread.fault_address = address;
-- 
2.14.5


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
