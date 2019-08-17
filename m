Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0330090F2C
	for <lists+linux-snps-arc@lfdr.de>; Sat, 17 Aug 2019 09:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NEsbQ0O7DPD15S/7ubPoXdngB4n6/tzZ255yoRTbug=; b=UPokT923/nwO6X
	gKOCqqlIwYRFlysayfL0KvZx/dqD8vYS0ZC/iwr51Vm3LGVcSfIgP/IQKMCmppQUowTVJmule3idz
	2O1sDGEGZJJT4qqU8kyGgk/ZOYWixzEtQ0lez5o3C3G0e8OmrR+ir1uRzgbI9f47FcneMppX4t+2O
	GgrpnR7jZ36L9jkZde4Uy9S8795J8l9iQwRhk4pkk8Ze10WcKMN3WW4NU3oRUsZbK7g2BIQyH78k4
	BZJeQuF4EeQCgs3MUItMnKt4kFPSrjmtPhumsEi5eh0a785UV1jjSbABLGuNbsXahVCSAQ4NUJd2N
	XVnRmKAiBaCmQ0ZYMRYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytXa-0003F1-Gx; Sat, 17 Aug 2019 07:54:22 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSN-0005GA-NB; Sat, 17 Aug 2019 07:49:00 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 16/26] asm-generic: don't provide ioremap for CONFIG_MMU
Date: Sat, 17 Aug 2019 09:32:43 +0200
Message-Id: <20190817073253.27819-17-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190817073253.27819-1-hch@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
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

All MMU-enabled ports have a non-trivial ioremap and should thus provide
the prototype for their implementation instead of providing a generic
one unless a different symbol is not defined.  Note that this only
affects sparc32 nds32 as all others do provide their own version.

Also update the kerneldoc comments in asm-generic/io.h to explain the
situation around the default ioremap* implementations correctly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nds32/include/asm/io.h    |  2 ++
 arch/sparc/include/asm/io_32.h |  1 +
 include/asm-generic/io.h       | 29 ++++++++---------------------
 3 files changed, 11 insertions(+), 21 deletions(-)

diff --git a/arch/nds32/include/asm/io.h b/arch/nds32/include/asm/io.h
index 16f262322b8f..fb0e8a24c7af 100644
--- a/arch/nds32/include/asm/io.h
+++ b/arch/nds32/include/asm/io.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+void __iomem *ioremap(phys_addr_t phys_addr, size_t size);
 extern void iounmap(volatile void __iomem *addr);
 #define __raw_writeb __raw_writeb
 static inline void __raw_writeb(u8 val, volatile void __iomem *addr)
@@ -80,4 +81,5 @@ static inline u32 __raw_readl(const volatile void __iomem *addr)
 #define writew(v,c)	({ __iowmb(); writew_relaxed((v),(c)); })
 #define writel(v,c)	({ __iowmb(); writel_relaxed((v),(c)); })
 #include <asm-generic/io.h>
+
 #endif /* __ASM_NDS32_IO_H */
diff --git a/arch/sparc/include/asm/io_32.h b/arch/sparc/include/asm/io_32.h
index df2dc1784673..9a52d9506f80 100644
--- a/arch/sparc/include/asm/io_32.h
+++ b/arch/sparc/include/asm/io_32.h
@@ -127,6 +127,7 @@ static inline void sbus_memcpy_toio(volatile void __iomem *dst,
  * Bus number may be embedded in the higher bits of the physical address.
  * This is why we have no bus number argument to ioremap().
  */
+void __iomem *ioremap(phys_addr_t offset, size_t size);
 void iounmap(volatile void __iomem *addr);
 /* Create a virtual mapping cookie for an IO port range */
 void __iomem *ioport_map(unsigned long port, unsigned int nr);
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index a98ed6325727..6a5edc23afe2 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -922,28 +922,16 @@ static inline void *phys_to_virt(unsigned long address)
 /**
  * DOC: ioremap() and ioremap_*() variants
  *
- * If you have an IOMMU your architecture is expected to have both ioremap()
- * and iounmap() implemented otherwise the asm-generic helpers will provide a
- * direct mapping.
+ * Architectures with an MMU are expected to provide ioremap() and iounmap()
+ * themselves.  For NOMMU architectures we provide a default nop-op
+ * implementation that expect that the physical address used for MMIO are
+ * already marked as uncached, and can be used as kernel virtual addresses.
  *
- * There are ioremap_*() call variants, if you have no IOMMU we naturally will
- * default to direct mapping for all of them, you can override these defaults.
- * If you have an IOMMU you are highly encouraged to provide your own
- * ioremap variant implementation as there currently is no safe architecture
- * agnostic default. To avoid possible improper behaviour default asm-generic
- * ioremap_*() variants all return NULL when an IOMMU is available. If you've
- * defined your own ioremap_*() variant you must then declare your own
- * ioremap_*() variant as defined to itself to avoid the default NULL return.
+ * ioremap_wc() and ioremap_wt() can provide more relaxed caching attributes
+ * for specific drivers if the architecture choses to implement them.  If they
+ * are not implemented we fall back to plain ioremap.
  */
 #ifndef CONFIG_MMU
-
-/*
- * Change "struct page" to physical address.
- *
- * This implementation is for the no-MMU case only... if you have an MMU
- * you'll need to provide your own definitions.
- */
-
 #ifndef ioremap
 #define ioremap ioremap
 static inline void __iomem *ioremap(phys_addr_t offset, size_t size)
@@ -954,14 +942,13 @@ static inline void __iomem *ioremap(phys_addr_t offset, size_t size)
 
 #ifndef iounmap
 #define iounmap iounmap
-
 static inline void iounmap(void __iomem *addr)
 {
 }
 #endif
 #endif /* CONFIG_MMU */
+
 #ifndef ioremap_nocache
-void __iomem *ioremap(phys_addr_t phys_addr, size_t size);
 #define ioremap_nocache ioremap_nocache
 static inline void __iomem *ioremap_nocache(phys_addr_t offset, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
