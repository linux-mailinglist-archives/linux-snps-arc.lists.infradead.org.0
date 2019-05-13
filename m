Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875341BAD1
	for <lists+linux-snps-arc@lfdr.de>; Mon, 13 May 2019 18:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jv1pK7T28O6mnSWTw3Eki4UQAX7IXeh1YoazjHrwMUY=; b=EEotQz904QPAU3
	RJ3k/s7Myy8vjitjstLNl1cv00+jvAEMr3Cy3x2rdLJv8213Hjtr/29dTD3LPW5lqvF1VRlOVX6Lk
	5wZkba9MLadqZA7GnpOYAI8loM3S9zkHt6sJO8EbTRbJoHN5YVGlPeJSSkmqc4BT7vhDn68J4Uww7
	Bxs2nyuD3uyOQsbVijxSIY7cnWXqszOWQj06xduvFkUA2Z6pb9cBGqFo7amJhoNK4ok1u3OxgpFQs
	QBw7CwhFNnnYKxAnxcsG7eHTsn2KtlwAPqyEotyZYXQXpBubGQ1CqkC1Y+vC4sDwu4oku7OuX8lcl
	6GZPccK1UCr/YlCpxfxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDbX-0000lv-6u; Mon, 13 May 2019 16:15:07 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDbT-0008RM-PL
 for linux-snps-arc@lists.infradead.org; Mon, 13 May 2019 16:15:05 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 26950C01BA;
 Mon, 13 May 2019 16:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557764107; bh=1UIXnWpN2stn7OKWZRnkEbT0UgLrT0y/BoOBunS8G0I=;
 h=From:To:CC:Subject:Date:References:From;
 b=j17T7Of/hBOrNK38ZO2r/ci079+xtrEsdfAlqhGAuuSt/+4uDUhVyKBJ0ZMru6zSr
 y8gy6anSKZD6nLwxjyxUAeqcqvgpnO2z02fEkAuS6b7/Q4AjtTUcSrCIiroCuZkg5c
 ymsYyOWqRQ/jGs2cOYJbwn9xFTzgHeO51hfsZ0mc8HfGBAqF3fPziBjdjIvSJNZFXQ
 I0FT/qdnS7+RjhkcrSLsgCzcJSTYIxJzCOvmEXyAwwGpvF96lBcqOFkKJ7FLjyq2PW
 Ob3troL7ZgtnN7f1BodE3J6Xp18I7PtOxV3gyVUWjUE/Lk6VZGgtCsyOnxXOfpB2Ia
 rIZs/eooggzLg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 130F9A006B;
 Mon, 13 May 2019 16:15:01 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 us01wehtc1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Mon, 13
 May 2019 09:15:02 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: Send SIGSEGV if userspace process accesses kernel
 virtual memory
Thread-Topic: [PATCH] ARC: Send SIGSEGV if userspace process accesses kernel
 virtual memory
Thread-Index: AQHVCZoEUnlBQBMrBkWcmOMjypie1w==
Date: Mon, 13 May 2019 16:15:01 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2512567@us01wembx1.internal.synopsys.com>
References: <20190513144153.6112-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091503_844376_DAFCCDD0 
X-CRM114-Status: GOOD (  16.11  )
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
Cc: Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/13/19 7:41 AM, Eugeniy Paltsev wrote:
> As of today if userspace process tries to access address which belongs
> to kernel virtual memory area and kernel have mapping for this address
> that process hangs instead of receiving SIGSEGV and being killed.
>
> Steps to reproduce:
> Create userspace application which reads from the beginning of
> kernel-space virtual memory area (I.E. read from 0x7000_0000 on most
> of existing platforms):
> ------------------------>8-----------------
>  #include <stdlib.h>
>  #include <stdint.h>
>
>  int main(int argc, char *argv[])
>  {
>  	volatile uint32_t temp;
>
>  	temp = *(uint32_t *)(0x70000000);
>  }
> ------------------------>8-----------------
> That application hangs after such memory access.
>
> Fix that by checking which access (user or kernel) caused the exception
> before handling kernel virtual address fault.
>
> Cc: <stable@vger.kernel.org> # 4.20+
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  arch/arc/mm/fault.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
> index 8df1638259f3..53fb4ba6cd08 100644
> --- a/arch/arc/mm/fault.c
> +++ b/arch/arc/mm/fault.c
> @@ -66,7 +66,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
>  	struct vm_area_struct *vma = NULL;
>  	struct task_struct *tsk = current;
>  	struct mm_struct *mm = tsk->mm;
> -	int si_code = 0;
> +	int si_code = SEGV_ACCERR;
>  	int ret;
>  	vm_fault_t fault;
>  	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
> @@ -82,6 +82,10 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
>  	 * nothing more.
>  	 */
>  	if (address >= VMALLOC_START) {
> +		/* Forbid userspace to access kernel-space virtual memory */
> +		if (unlikely(user_mode(regs)))
> +			goto bad_area_nosemaphore;
> +
>  		ret = handle_kernel_vaddr_fault(address);
>  		if (unlikely(ret))
>  			goto bad_area_nosemaphore;

LGTM. However I have an old patch as part of do_page_fault cleanup - the idea is
to delete one label, but hopefully it will fix ur case too - can u please give it
a spin with ur test case and report here. I will update the changelog

---->
From 942c55d1ccbd3db12409a3dcdb1d20747041862b Mon Sep 17 00:00:00 2001
From: Vineet Gupta <vgupta@synopsys.com>
Date: Mon, 10 Dec 2018 18:15:17 -0800
Subject: [PATCH] ARC: mm: do_page_fault fixes #2: remove label
 bad_area_nosemaphore

This is first step in untangling the code mess.

VMALLOC_FAULT is only handled kernel mode so failure in its handling can
assume kernel mode, thus we can use @no_context label, removing the need
for @bad_area_nosemaphore

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 8df1638259f3..342c0820c9e3 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -81,10 +81,10 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
      * only copy the information from the master page table,
      * nothing more.
      */
-    if (address >= VMALLOC_START) {
+    if (address >= VMALLOC_START && !user_mode(regs)) {
         ret = handle_kernel_vaddr_fault(address);
         if (unlikely(ret))
-            goto bad_area_nosemaphore;
+            goto no_context;
         else
             return;
     }
@@ -198,7 +198,6 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
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
