Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C521E620
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RWgb82AuocXfRmHatB+fCIfZlvt6HoWbh7W32U080w=; b=pBqHMjDDOa19jI
	Q8AQhU6IBMI+v2b4pcXfAU+AT5JwLaVNIP4tpBhEqjAsYmglfIb0YikBrjQawXjHvOd0KqBDGc/kM
	UVcjc6kUa9PZ/3SJgx9myElKjSXv/ixejLI7u9GQDZO7kM9DFp65ymFOXDJkMjUTD9YLLUviGliE9
	d2JVPyDoiRYWvHLhk7Z3gLs3F2g8d7TG4xgCvVkQMwFBaxFDcYgC66mWAkYTj8ltSy9rx68XTKwB6
	RWhJUiu9bpcFnfdQKQM2usMlQzQ0UwTkscGp0DPqt841fUVwvd3XkT2eyMjwuWRn/2Ovag42Y/gUj
	CjBQ8aj5qrNu7WHI/iiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQho0-0002hY-Qc; Wed, 15 May 2019 00:30:00 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhny-0002gX-Gu
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:29:59 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 79857C125A;
 Wed, 15 May 2019 00:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880203; bh=c+tBAWKr/xKiZA4fRxsv2x0bDL2srnRGcv7daF0X8oU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=fm8wJJTRYvByHd81d5Z5I9rzlO3TJp/3oPm3BJr7Q2pL+QY82ToWFR8FvRXXNZzVO
 AC9KoJovQdsJWDB/o3C5Lp+YSD8G5FztED2SkH56d1JpgEzdF7mqo86yJye/L7Nt3r
 DwgF1YwoMyFwgBj0POwA+4ywtkEMRXV4zS7Yit4HVNy6JA/kKWVEdOxcmcnCdoYAAE
 qVzKE66HS7Tlv88d4rnQa2/+dxprK3Ke29tSTdBnxgddP5e/q9ZOkviyAJDu2XWVNB
 9V+gT1d+/dkMtlkPDs4WejwVBZRy9txAF2qEmOTeMbtWo6YqWzD6+gMnEa3aurgEa6
 xbRq0T9YfkvUQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0751CA023C;
 Wed, 15 May 2019 00:29:58 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:29:57 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 05:59:54 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:05 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 1/9] ARC: mm: SIGSEGV userspace trying to access kernel
 virtual memory
Date: Tue, 14 May 2019 17:29:28 -0700
Message-ID: <1557880176-24964-2-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_172958_561889_5C1078B6 
X-CRM114-Status: GOOD (  15.62  )
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
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

As of today if userspace process tries to access a kernel virtual addres
(0x7000_0000 to 0x7ffff_ffff) such that a legit kernel mapping already
exists, that process hangs instead of being killed with SIGSEGV

Fix that by ensuring that do_page_fault() handles kenrel vaddr only if
in kernel mode.

And given this, we can also simplify the code a bit. Now a vmalloc fault
implies kernel mode so its failure (for some reason) can reuse the
@no_context label and we can remove @bad_area_nosemaphore.

Reproduce user test for original problem:

------------------------>8-----------------
 #include <stdlib.h>
 #include <stdint.h>

 int main(int argc, char *argv[])
 {
 	volatile uint32_t temp;

 	temp = *(uint32_t *)(0x70000000);
 }
------------------------>8-----------------

Cc: <stable@vger.kernel.org>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
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
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
