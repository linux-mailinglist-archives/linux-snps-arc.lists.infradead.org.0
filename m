Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9037C1BDB93
	for <lists+linux-snps-arc@lfdr.de>; Wed, 29 Apr 2020 14:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ClTsjjK67YGHLwOcnu3bgg2QEW9eojdYiHZ7iBW31A=; b=T3lyJLuJOaowdt
	C37h36coHFVeD5n8aM93vBhzLl+/Prks1EglglmG+RweolALP1kbTEoHf0GguKUsXGO9e//TPhEZs
	UPN42kFFEB7UsBjbGpfrkwZiNK7N5/rOZN8R9EYSOlUdZNK9M65acb/t7URD1ESHnDO/TksHkWiDN
	pXl5dsvuJ6S6rUnQLEeBr4lWcPj2nbX6zedzQBTSonia1bxSrEQYQ2W8vCeuEbCSXEdx3JIejGF2H
	IbOoZve4PGIX/7xXVdvzj+NfegCnLhPw8TCfEbrNqjsymO2PlpBvB/1PXbY9msetm0kYeSssC7mUo
	vMdqgeDLbgCEss0jRX4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlac-0008Lx-40; Wed, 29 Apr 2020 12:13:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlaW-0008JH-Df; Wed, 29 Apr 2020 12:13:18 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4A5D214D8;
 Wed, 29 Apr 2020 12:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588162396;
 bh=xCD8Y/kd3G+zo9d43Xupa6qzwYaNWXqSD5qbAFzBgFI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sKdoFODIT4ZvFUxuV5of6OEwvfKVmWekDzmFoFBrrs8VDp59UY8IckqFwaSxiy958
 cpUehuwPEc9sHS0pttZlFDCrmiqnDEx1TjHV/wv3kt8qEDnO7Rwk0PAIHQ9cGErs4r
 43FLuk07i1WUqoIEHhAN1KL/hybsliiFKcLTb8kU=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/20] mm: use free_area_init() instead of
 free_area_init_nodes()
Date: Wed, 29 Apr 2020 15:11:11 +0300
Message-Id: <20200429121126.17989-6-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200429121126.17989-1-rppt@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051316_503648_68E1C796 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Qian Cai <cai@lca.pw>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The free_area_init() has effectively became a wrapper for
free_area_init_nodes() and there is no point of keeping it. Still
free_area_init() name is shorter and more general as it does not imply
necessity to initialize multiple nodes.

Rename free_area_init_nodes() to free_area_init(), update the callers and
drop old version of free_area_init().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm64/mm/init.c             |  2 +-
 arch/ia64/mm/contig.c            |  2 +-
 arch/ia64/mm/discontig.c         |  2 +-
 arch/microblaze/mm/init.c        |  2 +-
 arch/mips/loongson64/numa.c      |  2 +-
 arch/mips/mm/init.c              |  2 +-
 arch/mips/sgi-ip27/ip27-memory.c |  2 +-
 arch/powerpc/mm/mem.c            |  2 +-
 arch/riscv/mm/init.c             |  2 +-
 arch/s390/mm/init.c              |  2 +-
 arch/sh/mm/init.c                |  2 +-
 arch/sparc/mm/init_64.c          |  2 +-
 arch/x86/mm/init.c               |  2 +-
 include/linux/mm.h               |  7 +++----
 mm/page_alloc.c                  | 10 ++--------
 15 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e42727e3568e..a650adb358ee 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -206,7 +206,7 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max;
 
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 #else
diff --git a/arch/ia64/mm/contig.c b/arch/ia64/mm/contig.c
index 5b00dc3898e1..8786fa5c7612 100644
--- a/arch/ia64/mm/contig.c
+++ b/arch/ia64/mm/contig.c
@@ -210,6 +210,6 @@ paging_init (void)
 		printk("Virtual mem_map starts at 0x%p\n", mem_map);
 	}
 #endif /* !CONFIG_VIRTUAL_MEM_MAP */
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 	zero_page_memmap_ptr = virt_to_page(ia64_imva(empty_zero_page));
 }
diff --git a/arch/ia64/mm/discontig.c b/arch/ia64/mm/discontig.c
index 4f33f6e7e206..dd8284bcbf16 100644
--- a/arch/ia64/mm/discontig.c
+++ b/arch/ia64/mm/discontig.c
@@ -627,7 +627,7 @@ void __init paging_init(void)
 	max_zone_pfns[ZONE_DMA32] = max_dma;
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max_pfn;
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 
 	zero_page_memmap_ptr = virt_to_page(ia64_imva(empty_zero_page));
 }
diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index 1ffbfa96b9b8..dcaa53d11339 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -112,7 +112,7 @@ static void __init paging_init(void)
 #endif
 
 	/* We don't have holes in memory map */
-	free_area_init_nodes(zones_size);
+	free_area_init(zones_size);
 }
 
 void __init setup_memory(void)
diff --git a/arch/mips/loongson64/numa.c b/arch/mips/loongson64/numa.c
index 1ae072df4831..901f5be5ee76 100644
--- a/arch/mips/loongson64/numa.c
+++ b/arch/mips/loongson64/numa.c
@@ -247,7 +247,7 @@ void __init paging_init(void)
 	zones_size[ZONE_DMA32] = MAX_DMA32_PFN;
 #endif
 	zones_size[ZONE_NORMAL] = max_low_pfn;
-	free_area_init_nodes(zones_size);
+	free_area_init(zones_size);
 }
 
 void __init mem_init(void)
diff --git a/arch/mips/mm/init.c b/arch/mips/mm/init.c
index 79684000de0e..19719e8b41a5 100644
--- a/arch/mips/mm/init.c
+++ b/arch/mips/mm/init.c
@@ -418,7 +418,7 @@ void __init paging_init(void)
 	}
 #endif
 
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 #ifdef CONFIG_64BIT
diff --git a/arch/mips/sgi-ip27/ip27-memory.c b/arch/mips/sgi-ip27/ip27-memory.c
index a45691e6ab90..1213215ea965 100644
--- a/arch/mips/sgi-ip27/ip27-memory.c
+++ b/arch/mips/sgi-ip27/ip27-memory.c
@@ -419,7 +419,7 @@ void __init paging_init(void)
 
 	pagetable_init();
 	zones_size[ZONE_NORMAL] = max_low_pfn;
-	free_area_init_nodes(zones_size);
+	free_area_init(zones_size);
 }
 
 void __init mem_init(void)
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 041ed7cfd341..0fcea21f26b4 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -271,7 +271,7 @@ void __init paging_init(void)
 	max_zone_pfns[ZONE_HIGHMEM] = max_pfn;
 #endif
 
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 
 	mark_nonram_nosave();
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index b55be44ff9bd..f2ceab77b8e6 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -39,7 +39,7 @@ static void __init zone_sizes_init(void)
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
 
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 static void setup_zero_page(void)
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index 87b2d024e75a..b11bcf4da531 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -122,7 +122,7 @@ void __init paging_init(void)
 	memset(max_zone_pfns, 0, sizeof(max_zone_pfns));
 	max_zone_pfns[ZONE_DMA] = PFN_DOWN(MAX_DMA_ADDRESS);
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 void mark_rodata_ro(void)
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index 8d2a68aea1fc..628f461b8993 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -334,7 +334,7 @@ void __init paging_init(void)
 
 	memset(max_zone_pfns, 0, sizeof(max_zone_pfns));
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 unsigned int mem_init_done = 0;
diff --git a/arch/sparc/mm/init_64.c b/arch/sparc/mm/init_64.c
index 1cf0d666dea3..79d3c5e0802e 100644
--- a/arch/sparc/mm/init_64.c
+++ b/arch/sparc/mm/init_64.c
@@ -2488,7 +2488,7 @@ void __init paging_init(void)
 
 		max_zone_pfns[ZONE_NORMAL] = end_pfn;
 
-		free_area_init_nodes(max_zone_pfns);
+		free_area_init(max_zone_pfns);
 	}
 
 	printk("Booting Linux...\n");
diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
index 1bba16c5742b..4016f2bf5d87 100644
--- a/arch/x86/mm/init.c
+++ b/arch/x86/mm/init.c
@@ -949,7 +949,7 @@ void __init zone_sizes_init(void)
 	max_zone_pfns[ZONE_HIGHMEM]	= max_pfn;
 #endif
 
-	free_area_init_nodes(max_zone_pfns);
+	free_area_init(max_zone_pfns);
 }
 
 __visible DEFINE_PER_CPU_SHARED_ALIGNED(struct tlb_state, cpu_tlbstate) = {
diff --git a/include/linux/mm.h b/include/linux/mm.h
index d9a256a97ac5..1c2ecb42e043 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2272,7 +2272,6 @@ static inline spinlock_t *pud_lock(struct mm_struct *mm, pud_t *pud)
 }
 
 extern void __init pagecache_init(void);
-extern void free_area_init(unsigned long * max_zone_pfn);
 extern void __init free_area_init_node(int nid, unsigned long * zones_size,
 		unsigned long zone_start_pfn, unsigned long *zholes_size);
 extern void free_initmem(void);
@@ -2353,21 +2352,21 @@ static inline unsigned long get_num_physpages(void)
  *
  * An architecture is expected to register range of page frames backed by
  * physical memory with memblock_add[_node]() before calling
- * free_area_init_nodes() passing in the PFN each zone ends at. At a basic
+ * free_area_init() passing in the PFN each zone ends at. At a basic
  * usage, an architecture is expected to do something like
  *
  * unsigned long max_zone_pfns[MAX_NR_ZONES] = {max_dma, max_normal_pfn,
  * 							 max_highmem_pfn};
  * for_each_valid_physical_page_range()
  * 	memblock_add_node(base, size, nid)
- * free_area_init_nodes(max_zone_pfns);
+ * free_area_init(max_zone_pfns);
  *
  * free_bootmem_with_active_regions() calls free_bootmem_node() for each
  * registered physical page range.  Similarly
  * sparse_memory_present_with_active_regions() calls memory_present() for
  * each range when SPARSEMEM is enabled.
  */
-extern void free_area_init_nodes(unsigned long *max_zone_pfn);
+void free_area_init(unsigned long *max_zone_pfn);
 unsigned long node_map_pfn_alignment(void);
 unsigned long __absent_pages_in_range(int nid, unsigned long start_pfn,
 						unsigned long end_pfn);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 530701b38bc7..7f6a3081edb8 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -7428,7 +7428,7 @@ static void check_for_memory(pg_data_t *pgdat, int nid)
 }
 
 /**
- * free_area_init_nodes - Initialise all pg_data_t and zone data
+ * free_area_init - Initialise all pg_data_t and zone data
  * @max_zone_pfn: an array of max PFNs for each zone
  *
  * This will call free_area_init_node() for each active node in the system.
@@ -7440,7 +7440,7 @@ static void check_for_memory(pg_data_t *pgdat, int nid)
  * starts where the previous one ended. For example, ZONE_DMA32 starts
  * at arch_max_dma_pfn.
  */
-void __init free_area_init_nodes(unsigned long *max_zone_pfn)
+void __init free_area_init(unsigned long *max_zone_pfn)
 {
 	unsigned long start_pfn, end_pfn;
 	int i, nid;
@@ -7700,12 +7700,6 @@ void __init set_dma_reserve(unsigned long new_dma_reserve)
 	dma_reserve = new_dma_reserve;
 }
 
-void __init free_area_init(unsigned long *max_zone_pfn)
-{
-	init_unavailable_mem();
-	free_area_init_nodes(max_zone_pfn);
-}
-
 static int page_alloc_cpu_dead(unsigned int cpu)
 {
 
-- 
2.26.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
