Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7B90F45
	for <lists+linux-snps-arc@lfdr.de>; Sat, 17 Aug 2019 09:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuiwzulJ8F6hQZTP0ByQTyxNDvRBgmIcRAhaU3v+GKg=; b=aLhvLobkRf9mGH
	/rSZWpNL6yqTbXUc6N/ViM2zOq22q0hxPzk+vwR0nFI/8k8o9qZcLGBVDSOfHIhiMRl297xHdSknG
	LBqgdW59hq6gYMnAKTeGxAvPiPKuRnf4RQnG/aXEVy06Id2S9zo2iX4fuJnBUzbzmkOPdybN2Pkub
	7OJ9Fw9GdkyPHBKSOkquUx+kzxgGltFp+FhWKArEQd4LfPshlUW56yjJIkRzI8ZUxCoJ6f0/W5nhd
	7lTnvgYZQQEB0hZzHsb31vV5vcw/5zwLYmPZf5xLlZuSqmnn/PZbHA6ok1Uy2GdA5Hm+BTYVVCpu8
	/eNAvKy4gI6c8Zya3Uww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytay-000835-4U; Sat, 17 Aug 2019 07:57:52 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSi-0005ZT-4y; Sat, 17 Aug 2019 07:49:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 22/26] sh: remove __iounmap
Date: Sat, 17 Aug 2019 09:32:49 +0200
Message-Id: <20190817073253.27819-23-hch@lst.de>
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

No need to indirect iounmap for sh.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/sh/include/asm/io.h | 9 ++-------
 arch/sh/mm/ioremap.c     | 4 ++--
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/sh/include/asm/io.h b/arch/sh/include/asm/io.h
index ac0561960c52..1495489225ac 100644
--- a/arch/sh/include/asm/io.h
+++ b/arch/sh/include/asm/io.h
@@ -267,7 +267,7 @@ unsigned long long poke_real_address_q(unsigned long long addr,
 #ifdef CONFIG_MMU
 void __iomem *__ioremap_caller(phys_addr_t offset, unsigned long size,
 			       pgprot_t prot, void *caller);
-void __iounmap(void __iomem *addr);
+void iounmap(void __iomem *addr);
 
 static inline void __iomem *
 __ioremap(phys_addr_t offset, unsigned long size, pgprot_t prot)
@@ -328,7 +328,7 @@ __ioremap_mode(phys_addr_t offset, unsigned long size, pgprot_t prot)
 #else
 #define __ioremap(offset, size, prot)		((void __iomem *)(offset))
 #define __ioremap_mode(offset, size, prot)	((void __iomem *)(offset))
-#define __iounmap(addr)				do { } while (0)
+#define iounmap(addr)				do { } while (0)
 #endif /* CONFIG_MMU */
 
 static inline void __iomem *ioremap(phys_addr_t offset, unsigned long size)
@@ -370,11 +370,6 @@ static inline int iounmap_fixed(void __iomem *addr) { return -EINVAL; }
 #define ioremap_nocache	ioremap
 #define ioremap_uc	ioremap
 
-static inline void iounmap(void __iomem *addr)
-{
-	__iounmap(addr);
-}
-
 /*
  * Convert a physical pointer to a virtual kernel pointer for /dev/mem
  * access
diff --git a/arch/sh/mm/ioremap.c b/arch/sh/mm/ioremap.c
index d09ddfe58fd8..f6d02246d665 100644
--- a/arch/sh/mm/ioremap.c
+++ b/arch/sh/mm/ioremap.c
@@ -103,7 +103,7 @@ static inline int iomapping_nontranslatable(unsigned long offset)
 	return 0;
 }
 
-void __iounmap(void __iomem *addr)
+void iounmap(void __iomem *addr)
 {
 	unsigned long vaddr = (unsigned long __force)addr;
 	struct vm_struct *p;
@@ -134,4 +134,4 @@ void __iounmap(void __iomem *addr)
 
 	kfree(p);
 }
-EXPORT_SYMBOL(__iounmap);
+EXPORT_SYMBOL(iounmap);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
