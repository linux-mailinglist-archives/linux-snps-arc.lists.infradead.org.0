Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAA9DB4B6
	for <lists+linux-snps-arc@lfdr.de>; Thu, 17 Oct 2019 19:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGcDKeIObJrMcoMoyIakZuI95is6zARBa5bxg8ZL8go=; b=qy/P9lGAyOfwoK
	3BPK7+e0MKDYRnD0cbaZaaeEcC3kCtvqsTv1VL27qIoRpS4HLzQQzV+JIAEsQvjz7FDPDvsHYCCSQ
	f8w0j8UQZKW1YOAArE8aKn6nDh2d34eMwRDAr4PgTvn8SM2zeGdAiNNeIMvZcj+75ww581pK7Qtnr
	8fGL3kLNZiQ5+kzAAFlr1lNIwvf6J4C7UsmAOkVMWrwtKvURCMg1Ny/RwHxrVxztSthj6IWc8SVlS
	Z5T5NSIWk4ZfMsnU1jOJ8QTSSeSqAEi/GJ4HP7mxEMaRiPDO/IK/oWtLZlLk5bBbPsumvN7+/XsD0
	gYwldoVW+wnA5lwkQpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9tn-00008K-Lf; Thu, 17 Oct 2019 17:49:19 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9ql-0005fL-Vc; Thu, 17 Oct 2019 17:46:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 06/21] nios2: remove __ioremap
Date: Thu, 17 Oct 2019 19:45:39 +0200
Message-Id: <20191017174554.29840-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174554.29840-1-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-mtd@lists.infradead.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linux-riscv@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The cacheflag argument to __ioremap is always 0, so just implement
ioremap directly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nios2/include/asm/io.h | 20 ++++----------------
 arch/nios2/mm/ioremap.c     | 17 +++--------------
 2 files changed, 7 insertions(+), 30 deletions(-)

diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
index 9010243077ab..74ab34aa6731 100644
--- a/arch/nios2/include/asm/io.h
+++ b/arch/nios2/include/asm/io.h
@@ -25,29 +25,17 @@
 #define writew_relaxed(x, addr)	writew(x, addr)
 #define writel_relaxed(x, addr)	writel(x, addr)
 
-extern void __iomem *__ioremap(unsigned long physaddr, unsigned long size,
-			unsigned long cacheflag);
+void __iomem *ioremap(unsigned long physaddr, unsigned long size);
 extern void __iounmap(void __iomem *addr);
 
-static inline void __iomem *ioremap(unsigned long physaddr, unsigned long size)
-{
-	return __ioremap(physaddr, size, 0);
-}
-
-static inline void __iomem *ioremap_nocache(unsigned long physaddr,
-						unsigned long size)
-{
-	return __ioremap(physaddr, size, 0);
-}
-
 static inline void iounmap(void __iomem *addr)
 {
 	__iounmap(addr);
 }
 
-#define ioremap_nocache ioremap_nocache
-#define ioremap_wc ioremap_nocache
-#define ioremap_wt ioremap_nocache
+#define ioremap_nocache ioremap
+#define ioremap_wc ioremap
+#define ioremap_wt ioremap
 
 /* Pages to physical address... */
 #define page_to_phys(page)	virt_to_phys(page_to_virt(page))
diff --git a/arch/nios2/mm/ioremap.c b/arch/nios2/mm/ioremap.c
index 3a28177a01eb..7a1a27f3daa3 100644
--- a/arch/nios2/mm/ioremap.c
+++ b/arch/nios2/mm/ioremap.c
@@ -112,8 +112,7 @@ static int remap_area_pages(unsigned long address, unsigned long phys_addr,
 /*
  * Map some physical address range into the kernel address space.
  */
-void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
-			unsigned long cacheflag)
+void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 {
 	struct vm_struct *area;
 	unsigned long offset;
@@ -139,15 +138,6 @@ void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
 				return NULL;
 	}
 
-	/*
-	 * Map uncached objects in the low part of address space to
-	 * CONFIG_NIOS2_IO_REGION_BASE
-	 */
-	if (IS_MAPPABLE_UNCACHEABLE(phys_addr) &&
-	    IS_MAPPABLE_UNCACHEABLE(last_addr) &&
-	    !(cacheflag & _PAGE_CACHED))
-		return (void __iomem *)(CONFIG_NIOS2_IO_REGION_BASE + phys_addr);
-
 	/* Mappings have to be page-aligned */
 	offset = phys_addr & ~PAGE_MASK;
 	phys_addr &= PAGE_MASK;
@@ -158,14 +148,13 @@ void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
 	if (!area)
 		return NULL;
 	addr = area->addr;
-	if (remap_area_pages((unsigned long) addr, phys_addr, size,
-		cacheflag)) {
+	if (remap_area_pages((unsigned long) addr, phys_addr, size, 0)) {
 		vunmap(addr);
 		return NULL;
 	}
 	return (void __iomem *) (offset + (char *)addr);
 }
-EXPORT_SYMBOL(__ioremap);
+EXPORT_SYMBOL(ioremap);
 
 /*
  * __iounmap unmaps nearly everything, so be careful
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
