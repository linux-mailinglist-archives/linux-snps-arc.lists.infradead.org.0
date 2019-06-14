Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595DC4614E
	for <lists+linux-snps-arc@lfdr.de>; Fri, 14 Jun 2019 16:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jR2pwHVsRstFXMaco11E+qxH37lkgztyixNJmbbYapE=; b=qeQIGSLLuQ4SOG
	EKyyWNN/8mFarrPRaG1io7IiOykWGcuT2CeqK1ZXnWn0+uErPOdeEzQ1UxROlZRzXSg2d5kHy4WqZ
	WmmRu2P/9YlXPS7ZhFFDtZLDbca5FcIz06BUNIBNZtLtk613Ty23Oq1WbgicLq/nRavFKvVBPt6f3
	JcfRNbBIOv9FotVYjXVrtSGomYTh7xQfKDaWbArtXaPftJYeu8wraDmhfALcbsIpM/R/f7pjnjhtu
	bt6Vk4VDKRFUa7utJDT6M2rbGqrrofSFIfMXc8PjZwgOXbnNBIo3HN+5SHShTtZUWbSfdbhGoZRUv
	Jtq+NzNxnIgAueTEEs1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnSG-0007bU-7K; Fri, 14 Jun 2019 14:45:24 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRb-0005pn-PS; Fri, 14 Jun 2019 14:44:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 2/7] arc: remove the partial DMA_ATTR_NON_CONSISTENT support
Date: Fri, 14 Jun 2019 16:44:26 +0200
Message-Id: <20190614144431.21760-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The arc DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but does
not provide a cache_sync operation.  This means any user of it will
never be able to actually transfer cache ownership and thus cause
coherency bugs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arc/mm/dma.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/arch/arc/mm/dma.c b/arch/arc/mm/dma.c
index 1525ac00fd02..9832928f896d 100644
--- a/arch/arc/mm/dma.c
+++ b/arch/arc/mm/dma.c
@@ -24,7 +24,6 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	struct page *page;
 	phys_addr_t paddr;
 	void *kvaddr;
-	bool need_coh = !(attrs & DMA_ATTR_NON_CONSISTENT);
 
 	/*
 	 * __GFP_HIGHMEM flag is cleared by upper layer functions
@@ -46,14 +45,10 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	 * A coherent buffer needs MMU mapping to enforce non-cachability.
 	 * kvaddr is kernel Virtual address (0x7000_0000 based).
 	 */
-	if (need_coh) {
-		kvaddr = ioremap_nocache(paddr, size);
-		if (kvaddr == NULL) {
-			__free_pages(page, order);
-			return NULL;
-		}
-	} else {
-		kvaddr = (void *)(u32)paddr;
+	kvaddr = ioremap_nocache(paddr, size);
+	if (kvaddr == NULL) {
+		__free_pages(page, order);
+		return NULL;
 	}
 
 	/*
@@ -66,9 +61,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	 * Currently flush_cache_vmap nukes the L1 cache completely which
 	 * will be optimized as a separate commit
 	 */
-	if (need_coh)
-		dma_cache_wback_inv(paddr, size);
-
+	dma_cache_wback_inv(paddr, size);
 	return kvaddr;
 }
 
@@ -78,9 +71,7 @@ void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 	phys_addr_t paddr = dma_handle;
 	struct page *page = virt_to_page(paddr);
 
-	if (!(attrs & DMA_ATTR_NON_CONSISTENT))
-		iounmap((void __force __iomem *)vaddr);
-
+	iounmap((void __force __iomem *)vaddr);
 	__free_pages(page, get_order(size));
 }
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
