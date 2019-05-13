Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5660D1B8AA
	for <lists+linux-snps-arc@lfdr.de>; Mon, 13 May 2019 16:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nWlXJjLd2bKYPAc8XNEe1u+WF3Pg/0zmacWKDqBRoQo=; b=lQr
	nGj+ED1nxbowSESO1c1ZtR0N7KQUkMLpeXuv/XIM4igIHVfWsD1KcvfZ5hTNTrWv8IMS/eTnKWtnn
	BPiLzVZI2y9ojMrdiogLsH1wyFVSdXqx1UHO/NfAnhInmsMBLUjYwt8fL5SMm++aFYNN31pWAxNRt
	5VSLE60JqVSWxaK08laYVUaBtd1hQKt6yPlYL5nOubHaYtwncENFTIr6SkhD/1KqNrOhiotVaHNk0
	uaK+XH5n/4xpM9j36NBjKAqMMVfO8nu+5vNG/MkRlUvmzoFZRQ4uvBZCfWYXV39ZJ6nJ0YFyLsL7X
	py5em7E4e4fxdTSZ4yWaSzq6r/j2AvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQC9R-0006z2-1M; Mon, 13 May 2019 14:42:01 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQC9N-0006xs-Tr
 for linux-snps-arc@lists.infradead.org; Mon, 13 May 2019 14:41:59 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 32332C0161;
 Mon, 13 May 2019 14:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557758508; bh=Q4RwNBuD8FtLCQ9UQgg0ETBjXIo13TCHbTK17grz4lY=;
 h=From:To:Cc:Subject:Date:From;
 b=bxWpXWU/MCnS+mi6hZ8O3LDVNP667dIopzjPVf22P7/Otl8C1qtBdGdadJTe9Ur38
 eoT3IFkJA7d3WG6IBfB8OKHbQ84RzY4Y5YtrmLjhebvKEWEAJdlaWXsZBeZyTl2mrF
 KWOmN7SYBlqzZXBpjU8gLXO5X25c1U4k677uCw/jaoZm1MK0JijbxOE+V9bWUzv7qJ
 6mQ0mLvbjd2PUvvxZGHG5gv3j3kG8ic+hYnEjzfBcTXCetaT5ARV9221nxnvcQyOTE
 61c7NLlK6Ee3o/Xoh0oGGge7avtKuerJQWdZpei1N1giZkvju8/hwnv4jWwEuZ8skP
 fq+OZWHIWp2ZQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.8.106])
 by mailhost.synopsys.com (Postfix) with ESMTP id B5A52A005A;
 Mon, 13 May 2019 14:41:55 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: Send SIGSEGV if userspace process accesses kernel
 virtual memory
Date: Mon, 13 May 2019 17:41:53 +0300
Message-Id: <20190513144153.6112-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.14.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_074157_968989_3DF99804 
X-CRM114-Status: GOOD (  12.17  )
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

Cc: <stable@vger.kernel.org> # 4.20+
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/mm/fault.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 8df1638259f3..53fb4ba6cd08 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -66,7 +66,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct vm_area_struct *vma = NULL;
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
-	int si_code = 0;
+	int si_code = SEGV_ACCERR;
 	int ret;
 	vm_fault_t fault;
 	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
@@ -82,6 +82,10 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	 * nothing more.
 	 */
 	if (address >= VMALLOC_START) {
+		/* Forbid userspace to access kernel-space virtual memory */
+		if (unlikely(user_mode(regs)))
+			goto bad_area_nosemaphore;
+
 		ret = handle_kernel_vaddr_fault(address);
 		if (unlikely(ret))
 			goto bad_area_nosemaphore;
-- 
2.14.5


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
