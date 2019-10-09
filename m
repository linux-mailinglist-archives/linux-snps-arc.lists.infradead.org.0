Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907B0D17E7
	for <lists+linux-snps-arc@lfdr.de>; Wed,  9 Oct 2019 20:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igKkqjuf6uexZwnGqM76voFaPIq/1tLRhjSu7m6mlHs=; b=Pk7e8KTjEWgWKJ
	8TFhhik8OTVEiuuz1pufnmIYeEzEt5RWAMc0pFpYmtYJpzGt6ygF7hgyN8GFGmKMjJ92JnoW5DjyV
	3szz5ZvED5GRK5WN+v4LXmHzIhAdZ0u61mxvIVFLZJNpr7eYLc/SUpluagmRpThjNPxx3kubkve7c
	5ivhc8SgDmwtQGcjStN3n1Fe42UMs0PyJuG/yCYYY+tAFlwoppIAr1kbhfGEdBhwmZJm6Dn7GoFDp
	EVlx8mcp/jhk4VJGwC3cOfvtUR8UbX1PawWSzbOgoQ/4IRc0tuOrAKgRvSA5i1t/WD0t5Oha/T0pF
	WDH1IcI0LUgxG8dtGJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIH9c-0006Vj-CB; Wed, 09 Oct 2019 18:57:44 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIH9Z-0006VK-5b
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 18:57:42 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1B40BC04D5;
 Wed,  9 Oct 2019 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570647460; bh=MgRIVfEAJ94OkyjrBQhZFPU5pG5MPCWR3XI6euyMrTY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P+q9EXk90lZx9V+thbZSLXi49Y0ooOEh5vUOV8p3jhCTwLzIHl/RZ7ohsPJYil6S5
 MX+hMG6F8kJl+0eeDQWxtLCi/cwYPeHsOOdRGya1RISfM9OIOB2RQrkk1GecY+QMjj
 a/2Pn0fH8yKHPvi1RFOqc+3/3N4OND0/sYKMktnctjKSxiyuv6ceGCKkkh4dSwi6z/
 PayIEkKnBy3eEQxM10ruy0N3aFHd8dQOnMMvL5skgVWo+Wkdb7TJKBlw7Idw7ra3Qn
 nAiX1/VYXOy14er8uHy08AgCTMs9si1hkMijKYZ1o7w0ezfl4kf6mwUKW4hgYHc6SR
 jZs8RKEqLqEog==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 93B7EA006B;
 Wed,  9 Oct 2019 18:57:33 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH v3] ARC: mm: remove __ARCH_USE_5LEVEL_HACK
Date: Wed,  9 Oct 2019 11:57:31 -0700
Message-Id: <20191009185731.25814-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009184350.18323-1-vgupta@synopsys.com>
References: <20191009184350.18323-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_115741_277127_B3A32F05 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mm@kvack.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add the intermediate p4d accessors to make it 5 level compliant.

This is a non-functional change anyways since ARC has software page walker
with 2 lookup levels (pgd -> pte)

There is slight code bloat due to pulling in needless p*d_free_tlb()
macros which needs to be addressed seperately.

| bloat-o-meter2 vmlinux-with-5LEVEL_HACK vmlinux-patched
| add/remove: 0/0 grow/shrink: 2/0 up/down: 128/0 (128)
| function                                     old     new   delta
| free_pgd_range                               546     656    +110
| p4d_clear_bad                                  2      20     +18
| Total: Before=4137148, After=4137276, chg 0.000000%

Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
v3 <- v2
  - fix highmem build error

v2 <- v1
 - fix highmem code
---
 arch/arc/include/asm/pgtable.h |  1 -
 arch/arc/mm/fault.c            | 10 ++++++++--
 arch/arc/mm/highmem.c          |  4 +++-
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 976b5931372e..902d45428cea 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -33,7 +33,6 @@
 #define _ASM_ARC_PGTABLE_H
 
 #include <linux/bits.h>
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 #include <asm/page.h>
 #include <asm/mmu.h>	/* to propagate CONFIG_ARC_MMU_VER <n> */
diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 3861543b66a0..fb86bc3e9b35 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -30,6 +30,7 @@ noinline static int handle_kernel_vaddr_fault(unsigned long address)
 	 * with the 'reference' page table.
 	 */
 	pgd_t *pgd, *pgd_k;
+	p4d_t *p4d, *p4d_k;
 	pud_t *pud, *pud_k;
 	pmd_t *pmd, *pmd_k;
 
@@ -39,8 +40,13 @@ noinline static int handle_kernel_vaddr_fault(unsigned long address)
 	if (!pgd_present(*pgd_k))
 		goto bad_area;
 
-	pud = pud_offset(pgd, address);
-	pud_k = pud_offset(pgd_k, address);
+	p4d = p4d_offset(pgd, address);
+	p4d_k = p4d_offset(pgd_k, address);
+	if (!p4d_present(*p4d_k))
+		goto bad_area;
+
+	pud = pud_offset(p4d, address);
+	pud_k = pud_offset(p4d_k, address);
 	if (!pud_present(*pud_k))
 		goto bad_area;
 
diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
index a4856bfaedf3..fc8849e4f72e 100644
--- a/arch/arc/mm/highmem.c
+++ b/arch/arc/mm/highmem.c
@@ -111,12 +111,14 @@ EXPORT_SYMBOL(__kunmap_atomic);
 static noinline pte_t * __init alloc_kmap_pgtable(unsigned long kvaddr)
 {
 	pgd_t *pgd_k;
+	p4d_t *p4d_k;
 	pud_t *pud_k;
 	pmd_t *pmd_k;
 	pte_t *pte_k;
 
 	pgd_k = pgd_offset_k(kvaddr);
-	pud_k = pud_offset(pgd_k, kvaddr);
+	p4d_k = p4d_offset(pgd_k, kvaddr);
+	pud_k = pud_offset(p4d_k, kvaddr);
 	pmd_k = pmd_offset(pud_k, kvaddr);
 
 	pte_k = (pte_t *)memblock_alloc_low(PAGE_SIZE, PAGE_SIZE);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
