Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036F81C9386
	for <lists+linux-snps-arc@lfdr.de>; Thu,  7 May 2020 17:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APgeUiof8ZeSHHTILvKGPu69BjE0z6bM5t2qlDGJ73o=; b=RLa+t7Xy2xUbmI
	WuelR2POVEIlRkKt5IvcCBB/qrDjeSgZhHdlMorUWKiIzEWy37qGdhAd5pk+StkHHpOkZ6Xx/IFYH
	lSmNRpNKaE2c1K3WaA7hUPXu6UOoL02RXMoyK8+X+u3TtgSikXx6wJ8l4dOag6HL238R1V06uQfKq
	00cjnJzHItDVeuyytShweEloLn90zYHuXH2hLXWUCXoZmyDUlknIA3JQqGy9SxEkErXjwHRZW0hov
	LGmnF+XLfJzGgpDFSrHHax6WNp0oglBU6EQaLSnsiWn/dR8EzA75AVMawDSfQYHXHdmx0kxjaZHQP
	J85w/4TR6l9zXiE/W3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi4H-0008CG-N6; Thu, 07 May 2020 15:04:09 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi0X-0002wn-8V; Thu, 07 May 2020 15:00:27 +0000
IronPort-SDR: FI1dy1jkD1le502HNeJSZmLKRSE/bio1NdngeccvaWUKyNr9BC9KHizfEsuFr3/nlbwLJoR6dO
 L7HemuuHIqTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:15 -0700
IronPort-SDR: qQQ2UtAVf/+ecUf1YB42jYt/1DFYs+9DxIB+L1WDXyPHTIWgA2vog+O0Lrh9ULYzJVkeNAtHUd
 hyt9cMZnFEMA==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="249309582"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:00:14 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH V3 07/15] arch/kunmap_atomic: Consolidate duplicate code
Date: Thu,  7 May 2020 07:59:55 -0700
Message-Id: <20200507150004.1423069-8-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200507150004.1423069-1-ira.weiny@intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080017_542363_C083F2A5 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

Every single architecture (including !CONFIG_HIGHMEM) calls...

	pagefault_enable();
	preempt_enable();

... before returning from __kunmap_atomic().  Lift this code into the
kunmap_atomic() macro.

While we are at it rename __kunmap_atomic() to kunmap_atomic_high() to
be consistent.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>

---
Changes from V1:
	Adjust to preserve bisect-ability
	Remove uneeded kunmap_atomic_high() declarations
---
 arch/arc/include/asm/highmem.h        |  2 --
 arch/arc/mm/highmem.c                 |  7 ++-----
 arch/arm/include/asm/highmem.h        |  1 -
 arch/arm/mm/highmem.c                 |  6 ++----
 arch/csky/include/asm/highmem.h       |  1 -
 arch/csky/mm/highmem.c                |  9 +++------
 arch/microblaze/include/asm/highmem.h |  1 -
 arch/microblaze/mm/highmem.c          |  6 ++----
 arch/mips/include/asm/highmem.h       |  1 -
 arch/mips/mm/cache.c                  |  4 ++--
 arch/mips/mm/highmem.c                |  6 ++----
 arch/nds32/include/asm/highmem.h      |  1 -
 arch/nds32/mm/highmem.c               |  6 ++----
 arch/parisc/include/asm/cacheflush.h  |  4 +---
 arch/powerpc/include/asm/highmem.h    |  1 -
 arch/powerpc/mm/highmem.c             |  6 ++----
 arch/sparc/include/asm/highmem.h      |  2 --
 arch/sparc/mm/highmem.c               |  6 ++----
 arch/x86/include/asm/highmem.h        |  1 -
 arch/x86/mm/highmem_32.c              |  7 ++-----
 arch/xtensa/include/asm/highmem.h     |  2 --
 arch/xtensa/mm/highmem.c              |  7 ++-----
 include/linux/highmem.h               | 11 +++++++----
 23 files changed, 31 insertions(+), 67 deletions(-)

diff --git a/arch/arc/include/asm/highmem.h b/arch/arc/include/asm/highmem.h
index db425cd38545..70900a73bfc8 100644
--- a/arch/arc/include/asm/highmem.h
+++ b/arch/arc/include/asm/highmem.h
@@ -30,8 +30,6 @@
 
 #include <asm/cacheflush.h>
 
-extern void __kunmap_atomic(void *kvaddr);
-
 extern void kmap_init(void);
 
 static inline void flush_cache_kmaps(void)
diff --git a/arch/arc/mm/highmem.c b/arch/arc/mm/highmem.c
index 0964b011c29f..5d3eab4ac0b0 100644
--- a/arch/arc/mm/highmem.c
+++ b/arch/arc/mm/highmem.c
@@ -65,7 +65,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kv)
+void kunmap_atomic_high(void *kv)
 {
 	unsigned long kvaddr = (unsigned long)kv;
 
@@ -87,11 +87,8 @@ void __kunmap_atomic(void *kv)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 static noinline pte_t * __init alloc_kmap_pgtable(unsigned long kvaddr)
 {
diff --git a/arch/arm/include/asm/highmem.h b/arch/arm/include/asm/highmem.h
index 8c80bfe18a34..b0d4bd8dc3c1 100644
--- a/arch/arm/include/asm/highmem.h
+++ b/arch/arm/include/asm/highmem.h
@@ -60,7 +60,6 @@ static inline void *kmap_high_get(struct page *page)
  * when CONFIG_HIGHMEM is not set.
  */
 #ifdef CONFIG_HIGHMEM
-extern void __kunmap_atomic(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 #endif
 
diff --git a/arch/arm/mm/highmem.c b/arch/arm/mm/highmem.c
index 075fdc235091..ac8394655a6e 100644
--- a/arch/arm/mm/highmem.c
+++ b/arch/arm/mm/highmem.c
@@ -73,7 +73,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int idx, type;
@@ -95,10 +95,8 @@ void __kunmap_atomic(void *kvaddr)
 		/* this address was obtained through kmap_high_get() */
 		kunmap_high(pte_page(pkmap_page_table[PKMAP_NR(vaddr)]));
 	}
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void *kmap_atomic_pfn(unsigned long pfn)
 {
diff --git a/arch/csky/include/asm/highmem.h b/arch/csky/include/asm/highmem.h
index 8ceee12f9bc1..263fbddcd0a3 100644
--- a/arch/csky/include/asm/highmem.h
+++ b/arch/csky/include/asm/highmem.h
@@ -32,7 +32,6 @@ extern pte_t *pkmap_page_table;
 
 #define ARCH_HAS_KMAP_FLUSH_TLB
 extern void kmap_flush_tlb(unsigned long addr);
-extern void __kunmap_atomic(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 extern struct page *kmap_atomic_to_page(void *ptr);
 
diff --git a/arch/csky/mm/highmem.c b/arch/csky/mm/highmem.c
index 63d74b47eee6..0aafbbbe651c 100644
--- a/arch/csky/mm/highmem.c
+++ b/arch/csky/mm/highmem.c
@@ -39,13 +39,13 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int idx;
 
 	if (vaddr < FIXADDR_START)
-		goto out;
+		return;
 
 #ifdef CONFIG_DEBUG_HIGHMEM
 	idx = KM_TYPE_NR*smp_processor_id() + kmap_atomic_idx();
@@ -58,11 +58,8 @@ void __kunmap_atomic(void *kvaddr)
 	(void) idx; /* to kill a warning */
 #endif
 	kmap_atomic_idx_pop();
-out:
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 /*
  * This is the same as kmap_atomic() but can map memory that doesn't
diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
index f7c5467df5ad..c3cbda90391d 100644
--- a/arch/microblaze/include/asm/highmem.h
+++ b/arch/microblaze/include/asm/highmem.h
@@ -61,7 +61,6 @@ static inline void *kmap_atomic_prot(struct page *page, pgprot_t prot)
 
 	return kmap_atomic_high_prot(page, prot);
 }
-extern void __kunmap_atomic(void *kvaddr);
 
 static inline void *kmap_atomic_high(struct page *page)
 {
diff --git a/arch/microblaze/mm/highmem.c b/arch/microblaze/mm/highmem.c
index 0e3efaa8a004..ee8a422b2b76 100644
--- a/arch/microblaze/mm/highmem.c
+++ b/arch/microblaze/mm/highmem.c
@@ -51,7 +51,7 @@ void *kmap_atomic_high_prot(struct page *page, pgprot_t prot)
 }
 EXPORT_SYMBOL(kmap_atomic_high_prot);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type;
@@ -77,7 +77,5 @@ void __kunmap_atomic(void *kvaddr)
 	local_flush_tlb_page(NULL, vaddr);
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/mips/include/asm/highmem.h b/arch/mips/include/asm/highmem.h
index 8bdbbfc322ad..76dec0bd4f59 100644
--- a/arch/mips/include/asm/highmem.h
+++ b/arch/mips/include/asm/highmem.h
@@ -48,7 +48,6 @@ extern pte_t *pkmap_page_table;
 
 #define ARCH_HAS_KMAP_FLUSH_TLB
 extern void kmap_flush_tlb(unsigned long addr);
-extern void __kunmap_atomic(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 
 #define flush_cache_kmaps()	BUG_ON(cpu_has_dc_aliases)
diff --git a/arch/mips/mm/cache.c b/arch/mips/mm/cache.c
index f015bb51fab0..1873c2a01fdb 100644
--- a/arch/mips/mm/cache.c
+++ b/arch/mips/mm/cache.c
@@ -104,7 +104,7 @@ void __flush_dcache_page(struct page *page)
 	flush_data_cache_page(addr);
 
 	if (PageHighMem(page))
-		__kunmap_atomic((void *)addr);
+		kunmap_atomic((void *)addr);
 }
 
 EXPORT_SYMBOL(__flush_dcache_page);
@@ -147,7 +147,7 @@ void __update_cache(unsigned long address, pte_t pte)
 			flush_data_cache_page(addr);
 
 		if (PageHighMem(page))
-			__kunmap_atomic((void *)addr);
+			kunmap_atomic((void *)addr);
 
 		ClearPageDcacheDirty(page);
 	}
diff --git a/arch/mips/mm/highmem.c b/arch/mips/mm/highmem.c
index 2bda56372995..155fbb107b35 100644
--- a/arch/mips/mm/highmem.c
+++ b/arch/mips/mm/highmem.c
@@ -36,7 +36,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type __maybe_unused;
@@ -63,10 +63,8 @@ void __kunmap_atomic(void *kvaddr)
 	}
 #endif
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 /*
  * This is the same as kmap_atomic() but can map memory that doesn't
diff --git a/arch/nds32/include/asm/highmem.h b/arch/nds32/include/asm/highmem.h
index a3970e566ede..4d21308549c9 100644
--- a/arch/nds32/include/asm/highmem.h
+++ b/arch/nds32/include/asm/highmem.h
@@ -51,7 +51,6 @@ extern void kmap_init(void);
  * when CONFIG_HIGHMEM is not set.
  */
 #ifdef CONFIG_HIGHMEM
-extern void __kunmap_atomic(void *kvaddr);
 extern void *kmap_atomic_pfn(unsigned long pfn);
 extern struct page *kmap_atomic_to_page(void *ptr);
 #endif
diff --git a/arch/nds32/mm/highmem.c b/arch/nds32/mm/highmem.c
index f5f3a21460c4..f6e6915c0d31 100644
--- a/arch/nds32/mm/highmem.c
+++ b/arch/nds32/mm/highmem.c
@@ -34,7 +34,7 @@ void *kmap_atomic_high(struct page *page)
 
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	if (kvaddr >= (void *)FIXADDR_START) {
 		unsigned long vaddr = (unsigned long)kvaddr;
@@ -45,8 +45,6 @@ void __kunmap_atomic(void *kvaddr)
 		ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
 		set_pte(ptep, 0);
 	}
-	pagefault_enable();
-	preempt_enable();
 }
 
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/parisc/include/asm/cacheflush.h b/arch/parisc/include/asm/cacheflush.h
index 0c83644bfa5c..119c9a7681bc 100644
--- a/arch/parisc/include/asm/cacheflush.h
+++ b/arch/parisc/include/asm/cacheflush.h
@@ -122,11 +122,9 @@ static inline void *kmap_atomic(struct page *page)
 	return page_address(page);
 }
 
-static inline void __kunmap_atomic(void *addr)
+static inline void kunmap_atomic_high(void *addr)
 {
 	flush_kernel_dcache_page_addr(addr);
-	pagefault_enable();
-	preempt_enable();
 }
 
 #define kmap_atomic_prot(page, prot)	kmap_atomic(page)
diff --git a/arch/powerpc/include/asm/highmem.h b/arch/powerpc/include/asm/highmem.h
index 74fa2c726fde..373a470df205 100644
--- a/arch/powerpc/include/asm/highmem.h
+++ b/arch/powerpc/include/asm/highmem.h
@@ -69,7 +69,6 @@ static inline void *kmap_atomic_prot(struct page *page, pgprot_t prot)
 
 	return kmap_atomic_high_prot(page, prot);
 }
-extern void __kunmap_atomic(void *kvaddr);
 
 static inline void *kmap_atomic_high(struct page *page)
 {
diff --git a/arch/powerpc/mm/highmem.c b/arch/powerpc/mm/highmem.c
index 67aaa5217f7f..35071c2913f1 100644
--- a/arch/powerpc/mm/highmem.c
+++ b/arch/powerpc/mm/highmem.c
@@ -40,7 +40,7 @@ void *kmap_atomic_high_prot(struct page *page, pgprot_t prot)
 }
 EXPORT_SYMBOL(kmap_atomic_high_prot);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 
@@ -66,7 +66,5 @@ void __kunmap_atomic(void *kvaddr)
 	}
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/sparc/include/asm/highmem.h b/arch/sparc/include/asm/highmem.h
index 458210c5bc38..f4babe67cb5d 100644
--- a/arch/sparc/include/asm/highmem.h
+++ b/arch/sparc/include/asm/highmem.h
@@ -50,8 +50,6 @@ void kmap_init(void) __init;
 
 #define PKMAP_END (PKMAP_ADDR(LAST_PKMAP))
 
-void __kunmap_atomic(void *kvaddr);
-
 #define flush_cache_kmaps()	flush_cache_all()
 
 #endif /* __KERNEL__ */
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index b53070ab6a31..469786bc430f 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -84,7 +84,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 	int type;
@@ -126,7 +126,5 @@ void __kunmap_atomic(void *kvaddr)
 #endif
 
 	kmap_atomic_idx_pop();
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
diff --git a/arch/x86/include/asm/highmem.h b/arch/x86/include/asm/highmem.h
index 9393d55a2adb..be66b77885a0 100644
--- a/arch/x86/include/asm/highmem.h
+++ b/arch/x86/include/asm/highmem.h
@@ -72,7 +72,6 @@ static inline void *kmap_atomic_high(struct page *page)
 {
 	return kmap_atomic_high_prot(page, kmap_prot);
 }
-void __kunmap_atomic(void *kvaddr);
 void *kmap_atomic_pfn(unsigned long pfn);
 void *kmap_atomic_prot_pfn(unsigned long pfn, pgprot_t prot);
 
diff --git a/arch/x86/mm/highmem_32.c b/arch/x86/mm/highmem_32.c
index c3e272a759e0..075fe51317b0 100644
--- a/arch/x86/mm/highmem_32.c
+++ b/arch/x86/mm/highmem_32.c
@@ -30,7 +30,7 @@ void *kmap_atomic_pfn(unsigned long pfn)
 }
 EXPORT_SYMBOL_GPL(kmap_atomic_pfn);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
 
@@ -60,11 +60,8 @@ void __kunmap_atomic(void *kvaddr)
 		BUG_ON(vaddr >= (unsigned long)high_memory);
 	}
 #endif
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void __init set_highmem_pages_init(void)
 {
diff --git a/arch/xtensa/include/asm/highmem.h b/arch/xtensa/include/asm/highmem.h
index 1e6aa15c4bdf..d6a10704307a 100644
--- a/arch/xtensa/include/asm/highmem.h
+++ b/arch/xtensa/include/asm/highmem.h
@@ -68,8 +68,6 @@ static inline void flush_cache_kmaps(void)
 	flush_cache_all();
 }
 
-void __kunmap_atomic(void *kvaddr);
-
 void kmap_init(void);
 
 #endif
diff --git a/arch/xtensa/mm/highmem.c b/arch/xtensa/mm/highmem.c
index 90b85a897cb0..4de323e43682 100644
--- a/arch/xtensa/mm/highmem.c
+++ b/arch/xtensa/mm/highmem.c
@@ -54,7 +54,7 @@ void *kmap_atomic_high(struct page *page)
 }
 EXPORT_SYMBOL(kmap_atomic_high);
 
-void __kunmap_atomic(void *kvaddr)
+void kunmap_atomic_high(void *kvaddr)
 {
 	if (kvaddr >= (void *)FIXADDR_START &&
 	    kvaddr < (void *)FIXADDR_TOP) {
@@ -73,11 +73,8 @@ void __kunmap_atomic(void *kvaddr)
 
 		kmap_atomic_idx_pop();
 	}
-
-	pagefault_enable();
-	preempt_enable();
 }
-EXPORT_SYMBOL(__kunmap_atomic);
+EXPORT_SYMBOL(kunmap_atomic_high);
 
 void __init kmap_init(void)
 {
diff --git a/include/linux/highmem.h b/include/linux/highmem.h
index 86b93dee758a..c36c0ee09423 100644
--- a/include/linux/highmem.h
+++ b/include/linux/highmem.h
@@ -33,6 +33,7 @@ static inline void invalidate_kernel_vmap_range(void *vaddr, int size)
 
 #ifdef CONFIG_HIGHMEM
 extern void *kmap_atomic_high(struct page *page);
+extern void kunmap_atomic_high(void *kvaddr);
 #include <asm/highmem.h>
 
 #ifndef ARCH_HAS_KMAP_FLUSH_TLB
@@ -146,10 +147,10 @@ static inline void *kmap_atomic(struct page *page)
 }
 #define kmap_atomic_prot(page, prot)	kmap_atomic(page)
 
-static inline void __kunmap_atomic(void *addr)
+static inline void kunmap_atomic_high(void *addr)
 {
-	pagefault_enable();
-	preempt_enable();
+	/* Nothing to do in the CONFIG_HIGHMEM=n case as kunmap_atomic()
+	 * handles re-enabling faults + preemption */
 }
 
 #define kmap_atomic_pfn(pfn)	kmap_atomic(pfn_to_page(pfn))
@@ -199,7 +200,9 @@ static inline void kmap_atomic_idx_pop(void)
 #define kunmap_atomic(addr)                                     \
 do {                                                            \
 	BUILD_BUG_ON(__same_type((addr), struct page *));       \
-	__kunmap_atomic(addr);                                  \
+	kunmap_atomic_high(addr);                                  \
+	pagefault_enable();                                     \
+	preempt_enable();                                       \
 } while (0)
 
 
-- 
2.25.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
