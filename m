Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C51E46157
	for <lists+linux-snps-arc@lfdr.de>; Fri, 14 Jun 2019 16:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLrTyOINsG4uNbEmQiYbrX2GAkpuMAov5915OJZQiVw=; b=oE2IaihOdFAt4l
	eI3r4L1aYRreJOd1//E5Y2GOkiYsZuvIwnujr2wMekus2Cz+AanEJF7RzKTR/fWGB/ghjwEtCKZzg
	FMB4g6jFMLtid8yqr7wRK5PC/cNSXQp0wfQFBFnH/zt7kmXJRWUk47EceKdi6hjVlCM9FOGW2Er7W
	jZnqqrHhj0f2Q7mzczW+t4CT356f91YAHWKu/1JuC7THolumpFKC/iC/csPPeJIBQImRXlqS8aHR4
	m3NkSy6cWeso0cVbFAFCkDRsWXFl/zTNNn5XOzRbf/Kcae/psQELki3545jO6+EYv7aCBraPJhsGB
	qVBm1jP8nyFlAB5dnSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnSa-0007xT-NI; Fri, 14 Jun 2019 14:45:44 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRf-0005uj-AL; Fri, 14 Jun 2019 14:44:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 3/7] openrisc: remove the partial DMA_ATTR_NON_CONSISTENT
 support
Date: Fri, 14 Jun 2019 16:44:27 +0200
Message-Id: <20190614144431.21760-4-hch@lst.de>
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

The openrisc DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
does not provide a cache_sync operation.  This means any user of it
will never be able to actually transfer cache ownership and thus cause
coherency bugs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/openrisc/kernel/dma.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/arch/openrisc/kernel/dma.c b/arch/openrisc/kernel/dma.c
index f79457cb3741..9f25fd0fbb5d 100644
--- a/arch/openrisc/kernel/dma.c
+++ b/arch/openrisc/kernel/dma.c
@@ -98,15 +98,13 @@ arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 
 	va = (unsigned long)page;
 
-	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
-		/*
-		 * We need to iterate through the pages, clearing the dcache for
-		 * them and setting the cache-inhibit bit.
-		 */
-		if (walk_page_range(va, va + size, &walk)) {
-			free_pages_exact(page, size);
-			return NULL;
-		}
+	/*
+	 * We need to iterate through the pages, clearing the dcache for
+	 * them and setting the cache-inhibit bit.
+	 */
+	if (walk_page_range(va, va + size, &walk)) {
+		free_pages_exact(page, size);
+		return NULL;
 	}
 
 	return (void *)va;
@@ -122,10 +120,8 @@ arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		.mm = &init_mm
 	};
 
-	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0) {
-		/* walk_page_range shouldn't be able to fail here */
-		WARN_ON(walk_page_range(va, va + size, &walk));
-	}
+	/* walk_page_range shouldn't be able to fail here */
+	WARN_ON(walk_page_range(va, va + size, &walk));
 
 	free_pages_exact(vaddr, size);
 }
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
