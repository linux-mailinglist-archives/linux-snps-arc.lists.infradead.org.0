Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC4B90F38
	for <lists+linux-snps-arc@lfdr.de>; Sat, 17 Aug 2019 09:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkawabzEo90U4pytZr33c0CVQwKAd0nXgOIb8t1HtTY=; b=E40QSNfxJg/tum
	YkuxtdpQx/tV679InW+70cG86mE1Bva6803oEkKFefJzcRVLMUdJ44zcEm6ggtLIn/fudv72iXnu1
	J00v4xoMD3GxDRZyDPYRGJiotSFD2vLMmmDd3EX0kEmXGOCd+4CV1L0cFKQojwUoedPI9pxxwwm3j
	NdZQDjbM+VzjJqvEvu1nEDDyz3qt30eueJPNV5+MNVRmDXYFae8/lw6zOSWV0QDyyS1ryKxZQoG7A
	pw0MisVKdFFgF6DYR56yMzyCV8/zl667w+H1+uc9PnjyfyR+g9DmkNdMKn9IQLXai00AV9h4/3zfG
	CypKBCZvmH7ciHH7t5EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytZH-00064b-H2; Sat, 17 Aug 2019 07:56:07 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSX-0005RI-L0; Sat, 17 Aug 2019 07:49:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 19/26] arm64: remove __iounmap
Date: Sat, 17 Aug 2019 09:32:46 +0200
Message-Id: <20190817073253.27819-20-hch@lst.de>
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

No need to indirect iounmap for arm64.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm64/include/asm/io.h | 3 +--
 arch/arm64/mm/ioremap.c     | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index a61b1469f7d9..1bf5631671c3 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -165,12 +165,11 @@ extern void __memset_io(volatile void __iomem *, int, size_t);
  * I/O memory mapping functions.
  */
 extern void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot);
-extern void __iounmap(volatile void __iomem *addr);
+extern void iounmap(volatile void __iomem *addr);
 extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 
 #define ioremap(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
-#define iounmap				__iounmap
 
 /*
  * PCI configuration space mapping function.
diff --git a/arch/arm64/mm/ioremap.c b/arch/arm64/mm/ioremap.c
index fdb595a5d65f..9be71bee902c 100644
--- a/arch/arm64/mm/ioremap.c
+++ b/arch/arm64/mm/ioremap.c
@@ -69,7 +69,7 @@ void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot)
 }
 EXPORT_SYMBOL(__ioremap);
 
-void __iounmap(volatile void __iomem *io_addr)
+void iounmap(volatile void __iomem *io_addr)
 {
 	unsigned long addr = (unsigned long)io_addr & PAGE_MASK;
 
@@ -80,7 +80,7 @@ void __iounmap(volatile void __iomem *io_addr)
 	if (is_vmalloc_addr((void *)addr))
 		vunmap((void *)addr);
 }
-EXPORT_SYMBOL(__iounmap);
+EXPORT_SYMBOL(iounmap);
 
 void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
