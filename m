Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0B62AA73
	for <lists+linux-snps-arc@lfdr.de>; Sun, 26 May 2019 17:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=seux+3a9NBjbOCiBP/MLDQJa0ckWvDhf+VouceEgXSE=; b=V5jRuozcM65r3ww+6LT0IkQUo8
	tRfoOIeXhDoyhvQmP3881vHG7E2rbiWI8h/2xjj5wUi8Lkuk0oMks3kvuFBZJmdxC3Cdj2jw9EMJ0
	aJy/NNrNQAtuw2Kq9zjOc2VW9v6me2YjTCStRqQujB1SfPGwNIAMCcFSPEaGGjdt2gDWTpRQugw6L
	kvG1ErqzAI8uIWsu7WQuyEGWSBwamnQOAuo9+hp0kSURslEWZ1gGl0EcafHN8gbokDPjvCwgxmCkV
	oU2XIxlKURNiNtqXw0oJTtXHjenNONVD4+ZDWZlGvqxEOn8DdGWgQ+DUGou44t+uNGln/bXjcSm1I
	BTfPO5MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvEJ-0007Pg-1C; Sun, 26 May 2019 15:38:35 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvEF-0007Om-Pk
 for linux-snps-arc@lists.infradead.org; Sun, 26 May 2019 15:38:33 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4QFVYoZ020608
 for <linux-snps-arc@lists.infradead.org>; Sun, 26 May 2019 11:38:27 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sqjp1qxcy-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Sun, 26 May 2019 11:38:27 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sun, 26 May 2019 16:38:25 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 26 May 2019 16:38:23 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4QFcMr952101274
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 26 May 2019 15:38:22 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0A4A4A4051;
 Sun, 26 May 2019 15:38:22 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A62CBA404D;
 Sun, 26 May 2019 15:38:20 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.206.104])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun, 26 May 2019 15:38:20 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Sun, 26 May 2019 18:38:19 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [RFC/RFT WIP PATCH] arc: add sparsemem support
Date: Sun, 26 May 2019 18:38:15 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558885095-21540-1-git-send-email-rppt@linux.ibm.com>
References: <1558885095-21540-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19052615-0008-0000-0000-000002EA9501
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052615-0009-0000-0000-000022575B6D
Message-Id: <1558885095-21540-2-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-26_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905260109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_083831_943636_0922D891 
X-CRM114-Status: GOOD (  28.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: linux-snps-arc@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add support for initialization of SPARSE memory model along with Kconfig
options that will allow its selection during the kernel configuration.

Certain configurations of ARC require that the memory that is not directly
mapped by the kernel (ZONE_HIGHMEM) will be below the memory that is always
mapped into the kernel page tables (ZONE_NORMAL).

For such configurations ZONE_NORMAL and ZONE_HIGHMEM were present on
different nodes.

With SPARSEMEM, there is a single node containing all the memory, but it is
initialized using dedicated free_area_init_node_exact_zones() routing that
takes the exact zone extents rather then their sizes.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arc/Kconfig                 |  9 +++++
 arch/arc/include/asm/sparsemem.h | 13 +++++++
 arch/arc/mm/init.c               | 84 ++++++++++++++++++++++++++++------------
 include/linux/mm.h               |  3 ++
 mm/page_alloc.c                  | 37 ++++++++++++++++++
 5 files changed, 121 insertions(+), 25 deletions(-)
 create mode 100644 arch/arc/include/asm/sparsemem.h

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 23e063d..9b6c31d 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -47,6 +47,7 @@ config ARC
 	select OF_EARLY_FLATTREE
 	select PCI_SYSCALL if PCI
 	select PERF_USE_VMALLOC if ARC_CACHE_VIPT_ALIASING
+	select SPARSEMEM_STATIC if SPARSEMEM
 
 config ARCH_HAS_CACHE_LINE_SIZE
 	def_bool y
@@ -66,9 +67,15 @@ config GENERIC_CSUM
 config ARCH_DISCONTIGMEM_ENABLE
 	def_bool n
 
+config ARCH_SPARSEMEM_ENABLE
+	def_bool n
+
 config ARCH_FLATMEM_ENABLE
 	def_bool y
 
+config ARCH_SELECT_MEMORY_MODEL
+	def_bool n
+
 config MMU
 	def_bool y
 
@@ -449,6 +456,8 @@ config LINUX_RAM_BASE
 config HIGHMEM
 	bool "High Memory Support"
 	select ARCH_DISCONTIGMEM_ENABLE
+	select ARCH_SPARSEMEM_ENABLE
+	select ARCH_SELECT_MEMORY_MODEL
 	help
 	  With ARC 2G:2G address split, only upper 2G is directly addressable by
 	  kernel. Enable this to potentially allow access to rest of 2G and PAE
diff --git a/arch/arc/include/asm/sparsemem.h b/arch/arc/include/asm/sparsemem.h
new file mode 100644
index 0000000..b23bedd
--- /dev/null
+++ b/arch/arc/include/asm/sparsemem.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARC_SPARSEMEM_H
+#define _ASM_ARC_SPARSEMEM_H
+
+#ifdef CONFIG_ARC_HAS_PAE40
+#define MAX_PHYSMEM_BITS	40
+#define SECTION_SIZE_BITS	32
+#else
+#define MAX_PHYSMEM_BITS	32
+#define SECTION_SIZE_BITS	31
+#endif
+
+#endif /* _ASM_ARC_SPARSEMEM_H */
diff --git a/arch/arc/mm/init.c b/arch/arc/mm/init.c
index 02b7a3b..ad9ba05 100644
--- a/arch/arc/mm/init.c
+++ b/arch/arc/mm/init.c
@@ -78,6 +78,62 @@ void __init early_init_dt_add_memory_arch(u64 base, u64 size)
 		base, TO_MB(size), !in_use ? "Not used":"");
 }
 
+#ifdef CONFIG_SPARSEMEM
+static void setup_memory_model(void)
+{
+	unsigned long zones_size[MAX_NR_ZONES] = { 0 };
+	unsigned long zones_start[MAX_NR_ZONES] = { 0 };
+	unsigned long node_min_pfn = min_low_pfn;
+
+	memblocks_present();
+	sparse_init();
+
+	zones_start[ZONE_NORMAL] = min_low_pfn;
+	zones_size[ZONE_NORMAL] = max_low_pfn - min_low_pfn;
+
+	if (high_mem_sz) {
+		zones_start[ZONE_HIGHMEM] = min_high_pfn;
+		zones_size[ZONE_HIGHMEM] = max_high_pfn - min_high_pfn;
+
+		node_min_pfn = min(min_low_pfn, min_high_pfn);
+	}
+
+	free_area_init_node_exact_zones(0,		/* node-id */
+					node_min_pfn,	/* first pfn of node */
+					zones_size,	/* num pages per zone */
+					zones_start);	/* firts pfn of zone */
+}
+
+#elif defined(CONFIG_DISCONTIGMEM)
+
+static void setup_memory_model(void)
+{
+	unsigned long zones_size[MAX_NR_ZONES] = { 0 };
+	unsigned long zones_holes[MAX_NR_ZONES] = { 0 };
+
+	/*
+	 * Populate a new node with highmem
+	 *
+	 * On ARC (w/o PAE) HIGHMEM addresses are actually smaller (0 based)
+	 * than addresses in normal ala low memory (0x8000_0000 based).
+	 * Even with PAE, the huge peripheral space hole would waste a lot of
+	 * mem with single mem_map[]. This warrants a mem_map per region design.
+	 * Thus HIGHMEM on ARC is imlemented with DISCONTIGMEM.
+	 *
+	 * DISCONTIGMEM in turns requires multiple nodes. node 0 above is
+	 * populated with normal memory zone while node 1 only has highmem
+	 */
+	node_set_online(1);
+
+	zones_size[ZONE_HIGHMEM] = max_high_pfn - min_high_pfn;
+
+	free_area_init_node(1,			/* node-id */
+			    zones_size,		/* num pages per zone */
+			    min_high_pfn,	/* first pfn of node */
+			    zones_holes);	/* holes */
+}
+#endif /* CONFIG_SPARSEMEM || CONFIG_DISCONTIGMEM */
+
 /*
  * First memory setup routine called from setup_arch()
  * 1. setup swapper's mm @init_mm
@@ -142,6 +198,7 @@ void __init setup_arch_memory(void)
 	zones_size[ZONE_NORMAL] = max_low_pfn - min_low_pfn;
 	zones_holes[ZONE_NORMAL] = 0;
 
+#ifdef CONFIG_FLATMEM
 	/*
 	 * We can't use the helper free_area_init(zones[]) because it uses
 	 * PAGE_OFFSET to compute the @min_low_pfn which would be wrong
@@ -153,34 +210,11 @@ void __init setup_arch_memory(void)
 			    min_low_pfn,	/* first pfn of node */
 			    zones_holes);	/* holes */
 
-#ifdef CONFIG_HIGHMEM
-	/*
-	 * Populate a new node with highmem
-	 *
-	 * On ARC (w/o PAE) HIGHMEM addresses are actually smaller (0 based)
-	 * than addresses in normal ala low memory (0x8000_0000 based).
-	 * Even with PAE, the huge peripheral space hole would waste a lot of
-	 * mem with single mem_map[]. This warrants a mem_map per region design.
-	 * Thus HIGHMEM on ARC is imlemented with DISCONTIGMEM.
-	 *
-	 * DISCONTIGMEM in turns requires multiple nodes. node 0 above is
-	 * populated with normal memory zone while node 1 only has highmem
-	 */
-	node_set_online(1);
-
+#else
 	min_high_pfn = PFN_DOWN(high_mem_start);
 	max_high_pfn = PFN_DOWN(high_mem_start + high_mem_sz);
 
-	zones_size[ZONE_NORMAL] = 0;
-	zones_holes[ZONE_NORMAL] = 0;
-
-	zones_size[ZONE_HIGHMEM] = max_high_pfn - min_high_pfn;
-	zones_holes[ZONE_HIGHMEM] = 0;
-
-	free_area_init_node(1,			/* node-id */
-			    zones_size,		/* num pages per zone */
-			    min_high_pfn,	/* first pfn of node */
-			    zones_holes);	/* holes */
+	setup_memory_model();
 
 	high_memory = (void *)(min_high_pfn << PAGE_SHIFT);
 	kmap_init();
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0e8834a..5d47dee 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2107,6 +2107,9 @@ extern void __init pagecache_init(void);
 extern void free_area_init(unsigned long * zones_size);
 extern void __init free_area_init_node(int nid, unsigned long * zones_size,
 		unsigned long zone_start_pfn, unsigned long *zholes_size);
+extern void __init free_area_init_node_exact_zones(int nid,
+		unsigned long node_start_pfn, unsigned long *zones_size,
+		unsigned long *zones_start);
 extern void free_initmem(void);
 
 /*
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 3b13d39..7a708b9 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6810,6 +6810,43 @@ void __init free_area_init_node(int nid, unsigned long *zones_size,
 	free_area_init_core(pgdat);
 }
 
+void __init free_area_init_node_exact_zones(int nid,
+					    unsigned long node_start_pfn,
+					    unsigned long *zones_size,
+					    unsigned long *zones_start)
+{
+	pg_data_t *pgdat = NODE_DATA(nid);
+	unsigned long totalpages = 0;
+	enum zone_type i;
+
+	/* pg_data_t should be reset to zero when it's allocated */
+	WARN_ON(pgdat->nr_zones || pgdat->kswapd_classzone_idx);
+
+	pgdat->node_id = nid;
+	pgdat->node_start_pfn = node_start_pfn;
+	pgdat->per_cpu_nodestats = NULL;
+
+	for (i = 0; i < MAX_NR_ZONES; i++) {
+		struct zone *zone = pgdat->node_zones + i;
+		unsigned long size = zones_size[i];
+
+		zone->zone_start_pfn = zones_start[i];
+		zone->spanned_pages = zone->present_pages = size;
+
+		totalpages += size;
+	}
+
+	pgdat->node_spanned_pages = totalpages;
+	pgdat->node_present_pages = totalpages;
+	printk(KERN_DEBUG "On node %d totalpages: %lu\n", pgdat->node_id,
+							totalpages);
+
+	alloc_node_mem_map(pgdat);
+	pgdat_set_deferred_range(pgdat);
+
+	free_area_init_core(pgdat);
+}
+
 #if !defined(CONFIG_FLAT_NODE_MEM_MAP)
 /*
  * Zero all valid struct pages in range [spfn, epfn), return number of struct
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
