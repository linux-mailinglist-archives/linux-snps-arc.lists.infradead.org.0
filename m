Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B83171514
	for <lists+linux-snps-arc@lfdr.de>; Thu, 27 Feb 2020 11:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VCiJhv0hFnbvlHxvOQEiT3R0IkwDw5PzMpS8Cbnc0E0=; b=IJ5
	EwLTGo2xaQycJysbiDc3ZSLbmFXhvGuD674Ik1tatjBTLsJCcNGTdpDNiOwY5zQ0gfqQaZPOt8DKN
	+CmwwspSGV3hUgPJj6OjIIoQgo44A036YGYWb/3zfPY9Se83oB3vZbu6C9N1ceB/vwu4HtBYMz6lA
	U2PqHAnKGftWbdIRG0Fky2Q8nTo/FBxm9UIQExNPbror3IzmDVshRui1yGUoSq9JRc4gA8kkXZjcj
	4F9/MdulbYxLnUon72PciiO8kGoY8xUGXFb/97MIIu3uNNpUKBVPR/AeD1Qa4WIhEWM8mqB9cY7Tz
	9r0wDzuF5kD9kRU+7UKXdZiV0Il2Tcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GVG-0006zV-Al; Thu, 27 Feb 2020 10:34:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GV4-0006nw-5w; Thu, 27 Feb 2020 10:34:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4971A1FB;
 Thu, 27 Feb 2020 02:34:37 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A584B3F881;
 Thu, 27 Feb 2020 02:34:27 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH] mm/debug: Add tests validating arch page table helpers for
 core features
Date: Thu, 27 Feb 2020 16:03:57 +0530
Message-Id: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_023438_313524_D399383F 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This adds new tests validating arch page table helpers for these following
core memory features. These tests create and test specific mapping types at
various page table levels.

* SPECIAL mapping
* PROTNONE mapping
* DEVMAP mapping
* SOFTDIRTY mapping
* SWAP mapping
* MIGRATION mapping
* HUGETLB mapping
* THP mapping

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Tested on arm64 and x86 platforms without any test failures. But this has
only been built tested on several other platforms. Individual tests need
to be verified on all current enabling platforms for the test i.e s390,
ppc32, arc etc.

This patch must be applied on v5.6-rc3 after these patches

1. https://patchwork.kernel.org/patch/11385057/
2. https://patchwork.kernel.org/patch/11407715/

OR

This patch must be applied on linux-next (next-20200227) after this patch

2. https://patchwork.kernel.org/patch/11407715/

 mm/debug_vm_pgtable.c | 310 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 309 insertions(+), 1 deletion(-)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 96dd7d574cef..3fb90d5b604e 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -41,6 +41,44 @@
  * wrprotect(entry)		= A write protected and not a write entry
  * pxx_bad(entry)		= A mapped and non-table entry
  * pxx_same(entry1, entry2)	= Both entries hold the exact same value
+ *
+ * Specific feature operations
+ *
+ * pte_mkspecial(entry)		= Creates a special entry at PTE level
+ * pte_special(entry)		= Tests a special entry at PTE level
+ *
+ * pte_protnone(entry)		= Tests a no access entry at PTE level
+ * pmd_protnone(entry)		= Tests a no access entry at PMD level
+ *
+ * pte_mkdevmap(entry)		= Creates a device entry at PTE level
+ * pmd_mkdevmap(entry)		= Creates a device entry at PMD level
+ * pud_mkdevmap(entry)		= Creates a device entry at PUD level
+ * pte_devmap(entry)		= Tests a device entry at PTE level
+ * pmd_devmap(entry)		= Tests a device entry at PMD level
+ * pud_devmap(entry)		= Tests a device entry at PUD level
+ *
+ * pte_mksoft_dirty(entry)	= Creates a soft dirty entry at PTE level
+ * pmd_mksoft_dirty(entry)	= Creates a soft dirty entry at PMD level
+ * pte_swp_mksoft_dirty(entry)	= Creates a soft dirty swap entry at PTE level
+ * pmd_swp_mksoft_dirty(entry)	= Creates a soft dirty swap entry at PMD level
+ * pte_soft_dirty(entry)	= Tests a soft dirty entry at PTE level
+ * pmd_soft_dirty(entry)	= Tests a soft dirty entry at PMD level
+ * pte_swp_soft_dirty(entry)	= Tests a soft dirty swap entry at PTE level
+ * pmd_swp_soft_dirty(entry)	= Tests a soft dirty swap entry at PMD level
+ * pte_clear_soft_dirty(entry)	   = Clears a soft dirty entry at PTE level
+ * pmd_clear_soft_dirty(entry)	   = Clears a soft dirty entry at PMD level
+ * pte_swp_clear_soft_dirty(entry) = Clears a soft dirty swap entry at PTE level
+ * pmd_swp_clear_soft_dirty(entry) = Clears a soft dirty swap entry at PMD level
+ *
+ * pte_mkhuge(entry)		= Creates a HugeTLB entry at given level
+ * pte_huge(entry)		= Tests a HugeTLB entry at given level
+ *
+ * pmd_trans_huge(entry)	= Tests a trans huge page at PMD level
+ * pud_trans_huge(entry)	= Tests a trans huge page at PUD level
+ * pmd_present(entry)		= Tests an entry points to memory at PMD level
+ * pud_present(entry)		= Tests an entry points to memory at PUD level
+ * pmd_mknotpresent(entry)	= Invalidates an PMD entry for MMU
+ * pud_mknotpresent(entry)	= Invalidates an PUD entry for MMU
  */
 #define VMFLAGS	(VM_READ|VM_WRITE|VM_EXEC)
 
@@ -287,6 +325,233 @@ static void __init pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
 	WARN_ON(pmd_bad(pmd));
 }
 
+#ifdef CONFIG_ARCH_HAS_PTE_SPECIAL
+static void __init pte_special_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_special(pte_mkspecial(pte)));
+}
+#else
+static void __init pte_special_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_NUMA_BALANCING
+static void __init pte_protnone_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_protnone(pte));
+	WARN_ON(!pte_present(pte));
+}
+
+static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_protnone(pmd));
+	WARN_ON(!pmd_present(pmd));
+}
+#else
+static void __init pte_protnone_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
+static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_devmap(pte_mkdevmap(pte)));
+}
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_devmap(pmd_mkdevmap(pmd)));
+}
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	WARN_ON(!pud_devmap(pud_mkdevmap(pud)));
+}
+#else
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+#else
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+#else
+static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_MEM_SOFT_DIRTY
+static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_soft_dirty(pte_mksoft_dirty(pte)));
+	WARN_ON(pte_soft_dirty(pte_clear_soft_dirty(pte)));
+}
+
+static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_swp_soft_dirty(pte_swp_mksoft_dirty(pte)));
+	WARN_ON(pte_swp_soft_dirty(pte_swp_clear_soft_dirty(pte)));
+}
+
+#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
+static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_soft_dirty(pmd_mksoft_dirty(pmd)));
+	WARN_ON(pmd_soft_dirty(pmd_clear_soft_dirty(pmd)));
+}
+
+static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_swp_soft_dirty(pmd_swp_mksoft_dirty(pmd)));
+	WARN_ON(pmd_swp_soft_dirty(pmd_swp_clear_soft_dirty(pmd)));
+}
+#else
+static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+}
+#endif
+#else
+static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+}
+static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+}
+#endif
+
+static void __init pte_swap_tests(unsigned long pfn, pgprot_t prot)
+{
+	swp_entry_t swp;
+	pte_t pte;
+
+	pte = pfn_pte(pfn, prot);
+	swp = __pte_to_swp_entry(pte);
+	WARN_ON(!pte_same(pte, __swp_entry_to_pte(swp)));
+}
+
+#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
+static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot)
+{
+	swp_entry_t swp;
+	pmd_t pmd;
+
+	pmd = pfn_pmd(pfn, prot);
+	swp = __pmd_to_swp_entry(pmd);
+	WARN_ON(!pmd_same(pmd, __swp_entry_to_pmd(swp)));
+}
+#else
+static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_MIGRATION
+static void __init swap_migration_tests(struct page *page)
+{
+	swp_entry_t swp;
+
+	/*
+	 * make_migration_entry() expects given page to be
+	 * locked, otherwise it stumbles upon a BUG_ON().
+	 */
+	__SetPageLocked(page);
+	swp = make_migration_entry(page, 1);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(!is_write_migration_entry(swp));
+
+	make_migration_entry_read(&swp);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(is_write_migration_entry(swp));
+
+	swp = make_migration_entry(page, 0);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(is_write_migration_entry(swp));
+	__ClearPageLocked(page);
+}
+#else
+static void __init swap_migration_tests(struct page *page) { }
+#endif
+
+#ifdef CONFIG_HUGETLB_PAGE
+static void __init hugetlb_tests(unsigned long pfn, pgprot_t prot)
+{
+#ifdef CONFIG_ARCH_WANT_GENERAL_HUGETLB
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_huge(pte_mkhuge(pte)));
+#endif
+}
+#else
+static void __init hugetlb_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd;
+
+	/*
+	 * pmd_trans_huge() and pmd_present() must return negative
+	 * after MMU invalidation with pmd_mknotpresent().
+	 */
+	pmd = pfn_pmd(pfn, prot);
+	WARN_ON(!pmd_trans_huge(pmd_mkhuge(pmd)));
+
+	/*
+	 * Though platform specific test exclusions are not ideal,
+	 * in this case S390 does not define pmd_mknotpresent()
+	 * which should be tested on other platforms enabling THP.
+	 */
+#ifndef CONFIG_S390
+	WARN_ON(pmd_trans_huge(pmd_mknotpresent(pmd)));
+	WARN_ON(pmd_present(pmd_mknotpresent(pmd)));
+#endif
+}
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud;
+
+	/*
+	 * pud_trans_huge() and pud_present() must return negative
+	 * after MMU invalidation with pud_mknotpresent().
+	 */
+	pud = pfn_pud(pfn, prot);
+	WARN_ON(!pud_trans_huge(pud_mkhuge(pud)));
+	WARN_ON(pud_trans_huge(pud_mknotpresent(pud)));
+	WARN_ON(pud_present(pud_mknotpresent(pud)));
+}
+#else
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+#else
+static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot) { }
+#endif
+
 static unsigned long __init get_random_vaddr(void)
 {
 	unsigned long random_vaddr, random_pages, total_user_pages;
@@ -302,13 +567,14 @@ static unsigned long __init get_random_vaddr(void)
 void __init debug_vm_pgtable(void)
 {
 	struct mm_struct *mm;
+	struct page *page;
 	pgd_t *pgdp;
 	p4d_t *p4dp, *saved_p4dp;
 	pud_t *pudp, *saved_pudp;
 	pmd_t *pmdp, *saved_pmdp, pmd;
 	pte_t *ptep;
 	pgtable_t saved_ptep;
-	pgprot_t prot;
+	pgprot_t prot, protnone;
 	phys_addr_t paddr;
 	unsigned long vaddr, pte_aligned, pmd_aligned;
 	unsigned long pud_aligned, p4d_aligned, pgd_aligned;
@@ -322,6 +588,25 @@ void __init debug_vm_pgtable(void)
 		return;
 	}
 
+	/*
+	 * swap_migration_tests() requires a dedicated page as it needs to
+	 * be locked before creating a migration entry from it. Locking the
+	 * page that actually maps kernel text ('start_kernel') can be real
+	 * problematic. Lets allocate a dedicated page explicitly for this
+	 * purpose that will be freed later.
+	 */
+	page = alloc_page(GFP_KERNEL);
+	if (!page) {
+		pr_err("page allocation failed\n");
+		return;
+	}
+
+	/*
+	 * __P000 (or even __S000) will help create page table entries with
+	 * PROT_NONE permission as required for pxx_protnone_tests().
+	 */
+	protnone = __P000;
+
 	/*
 	 * PFN for mapping at PTE level is determined from a standard kernel
 	 * text symbol. But pfns for higher page table levels are derived by
@@ -377,11 +662,34 @@ void __init debug_vm_pgtable(void)
 	p4d_populate_tests(mm, p4dp, saved_pudp);
 	pgd_populate_tests(mm, pgdp, saved_p4dp);
 
+	pte_special_tests(pte_aligned, prot);
+	pte_protnone_tests(pte_aligned, protnone);
+	pmd_protnone_tests(pmd_aligned, protnone);
+
+	pte_devmap_tests(pte_aligned, prot);
+	pmd_devmap_tests(pmd_aligned, prot);
+	pud_devmap_tests(pud_aligned, prot);
+
+	pte_soft_dirty_tests(pte_aligned, prot);
+	pmd_soft_dirty_tests(pmd_aligned, prot);
+	pte_swap_soft_dirty_tests(pte_aligned, prot);
+	pmd_swap_soft_dirty_tests(pmd_aligned, prot);
+
+	pte_swap_tests(pte_aligned, prot);
+	pmd_swap_tests(pmd_aligned, prot);
+
+	swap_migration_tests(page);
+	hugetlb_tests(pte_aligned, prot);
+
+	pmd_thp_tests(pmd_aligned, prot);
+	pud_thp_tests(pud_aligned, prot);
+
 	p4d_free(mm, saved_p4dp);
 	pud_free(mm, saved_pudp);
 	pmd_free(mm, saved_pmdp);
 	pte_free(mm, saved_ptep);
 
+	__free_page(page);
 	mm_dec_nr_puds(mm);
 	mm_dec_nr_pmds(mm);
 	mm_dec_nr_ptes(mm);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
