Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB86CDB93
	for <lists+linux-snps-arc@lfdr.de>; Mon,  7 Oct 2019 07:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8ogaIB35BRSuVBUWpwnajE6Eu1qB/r0xvjFEsomcBo8=; b=nVjRzCgTBVrplpinnhDoYO14eo
	55u6ci7jNidztAVeadMXoJIDa8IH6oVCQG7KkqwNBfqQTG+reqVGtSerc7kJsfAZaSsVFFz5BJqG9
	1dgnqtFYBIku7ywHMqZuU0Jm59y7MCbpbLCnxWkGqTg2ot/EF/wdQHd3HjsTa2dvgFpchNJrZ+7tO
	3/bjereciyB8ouSL+U6SrlqgWsIwzJ34qkzYeZxaNgy3LPNr0LQiGa2t/xmm/uclvQciM5MrQFSj2
	ob8bksdDjl35flvO39OPrhMGPsH5lqGsh5YuXeDPQk9Od2eDoaKrH+ExSfs0UNJdJEV1gz4m54ZjF
	zwUI6BzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHLqK-0006iz-N9; Mon, 07 Oct 2019 05:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLq0-0006LT-Ca; Mon, 07 Oct 2019 05:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C997E15AB;
 Sun,  6 Oct 2019 22:45:39 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9F30F3F68E;
 Sun,  6 Oct 2019 22:48:07 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V4 1/2] mm/hugetlb: Make alloc_gigantic_page() available for
 general use
Date: Mon,  7 Oct 2019 11:15:23 +0530
Message-Id: <1570427124-21887-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_224540_532471_16976106 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

alloc_gigantic_page() implements an allocation method where it scans over
various zones looking for a large contiguous memory block which could not
have been allocated through the buddy allocator. A subsequent patch which
tests arch page table helpers needs such a method to allocate PUD_SIZE
sized memory block. In the future such methods might have other use cases
as well. So alloc_gigantic_page() has been split carving out actual memory
allocation method and made available via new alloc_gigantic_page_order().

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Steven Price <Steven.Price@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sri Krishna chowdary <schowdary@nvidia.com>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: James Hogan <jhogan@kernel.org>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 include/linux/hugetlb.h |  9 +++++++++
 mm/hugetlb.c            | 24 ++++++++++++++++++++++--
 2 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
index 53fc34f930d0..cc50d5ad4885 100644
--- a/include/linux/hugetlb.h
+++ b/include/linux/hugetlb.h
@@ -299,6 +299,9 @@ static inline bool is_file_hugepages(struct file *file)
 }
 
 
+struct page *
+alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
+			  int nid, nodemask_t *nodemask);
 #else /* !CONFIG_HUGETLBFS */
 
 #define is_file_hugepages(file)			false
@@ -310,6 +313,12 @@ hugetlb_file_setup(const char *name, size_t size, vm_flags_t acctflag,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct page *
+alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
+			  int nid, nodemask_t *nodemask)
+{
+	return NULL;
+}
 #endif /* !CONFIG_HUGETLBFS */
 
 #ifdef HAVE_ARCH_HUGETLB_UNMAPPED_AREA
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index ef37c85423a5..3fb81252f52b 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -1112,10 +1112,9 @@ static bool zone_spans_last_pfn(const struct zone *zone,
 	return zone_spans_pfn(zone, last_pfn);
 }
 
-static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
+struct page *alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
 		int nid, nodemask_t *nodemask)
 {
-	unsigned int order = huge_page_order(h);
 	unsigned long nr_pages = 1 << order;
 	unsigned long ret, pfn, flags;
 	struct zonelist *zonelist;
@@ -1151,6 +1150,14 @@ static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
 	return NULL;
 }
 
+static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
+					int nid, nodemask_t *nodemask)
+{
+	unsigned int order = huge_page_order(h);
+
+	return alloc_gigantic_page_order(order, gfp_mask, nid, nodemask);
+}
+
 static void prep_new_huge_page(struct hstate *h, struct page *page, int nid);
 static void prep_compound_gigantic_page(struct page *page, unsigned int order);
 #else /* !CONFIG_CONTIG_ALLOC */
@@ -1159,6 +1166,12 @@ static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
 {
 	return NULL;
 }
+
+struct page *alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
+				       int nid, nodemask_t *nodemask)
+{
+	return NULL;
+}
 #endif /* CONFIG_CONTIG_ALLOC */
 
 #else /* !CONFIG_ARCH_HAS_GIGANTIC_PAGE */
@@ -1167,6 +1180,13 @@ static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
 {
 	return NULL;
 }
+
+struct page *alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
+				       int nid, nodemask_t *nodemask)
+{
+	return NULL;
+}
+
 static inline void free_gigantic_page(struct page *page, unsigned int order) { }
 static inline void destroy_compound_gigantic_page(struct page *page,
 						unsigned int order) { }
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
