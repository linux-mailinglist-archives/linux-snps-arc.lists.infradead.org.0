Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D2DE8081
	for <lists+linux-snps-arc@lfdr.de>; Tue, 29 Oct 2019 07:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k9N0K7TX2JYHaXYG80vW0IMnv+CR85bgY5p67V5bIY=; b=mvFQuxJnKcgDTM
	pknvNR803zT/MO2HsJDBq+WlBkJCL+plnvcoRxy/ssUvCRMQWEjtwEKzRUglV5aRj4WQYcoxy6nDr
	/XSMotB0RZN2wObEWJ+NVL9tUfeZ2nDiBxP6CVgPgbPT2c6GeRQDs1OuwtlerKWmLIca8h7v3rItl
	w4eg8pReG8uKV5NhKzm56YHxwNRis8oHlFW2pSw7kQPXYq6OTytAelybfFNDYGhw1bUb2V2Vec19A
	WcY13M4/XEFtYGl4H/oN6DWttTug5gRcZaLFbuI1A6+zgDNdzTLBV8LyM21WTz3MHppV+KimAUf3U
	xLyIg5Qt3BgQSkDzwzlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLJ6-0003KL-Gj; Tue, 29 Oct 2019 06:48:44 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJ2-0003J6-Ca; Tue, 29 Oct 2019 06:48:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 01/21] arm: remove ioremap_cached
Date: Tue, 29 Oct 2019 07:48:14 +0100
Message-Id: <20191029064834.23438-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029064834.23438-1-hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
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

No users of ioremap_cached are left, remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/io.h | 6 ------
 arch/arm/mm/ioremap.c     | 4 ----
 arch/arm/mm/mmu.c         | 2 +-
 arch/arm/mm/nommu.c       | 4 ----
 4 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 7a0596fcb2e7..924f9dd502ed 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -400,12 +400,6 @@ void __iomem *ioremap(resource_size_t res_cookie, size_t size);
 void __iomem *ioremap_cache(resource_size_t res_cookie, size_t size);
 #define ioremap_cache ioremap_cache
 
-/*
- * Do not use ioremap_cached in new code. Provided for the benefit of
- * the pxa2xx-flash MTD driver only.
- */
-void __iomem *ioremap_cached(resource_size_t res_cookie, size_t size);
-
 void __iomem *ioremap_wc(resource_size_t res_cookie, size_t size);
 #define ioremap_wc ioremap_wc
 #define ioremap_wt ioremap_wc
diff --git a/arch/arm/mm/ioremap.c b/arch/arm/mm/ioremap.c
index d42b93316183..72286f9a4d30 100644
--- a/arch/arm/mm/ioremap.c
+++ b/arch/arm/mm/ioremap.c
@@ -382,15 +382,11 @@ void __iomem *ioremap(resource_size_t res_cookie, size_t size)
 EXPORT_SYMBOL(ioremap);
 
 void __iomem *ioremap_cache(resource_size_t res_cookie, size_t size)
-	__alias(ioremap_cached);
-
-void __iomem *ioremap_cached(resource_size_t res_cookie, size_t size)
 {
 	return arch_ioremap_caller(res_cookie, size, MT_DEVICE_CACHED,
 				   __builtin_return_address(0));
 }
 EXPORT_SYMBOL(ioremap_cache);
-EXPORT_SYMBOL(ioremap_cached);
 
 void __iomem *ioremap_wc(resource_size_t res_cookie, size_t size)
 {
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index 48c2888297dd..5d0d0f86e790 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -259,7 +259,7 @@ static struct mem_type mem_types[] __ro_after_init = {
 		.prot_sect	= PROT_SECT_DEVICE,
 		.domain		= DOMAIN_IO,
 	},
-	[MT_DEVICE_CACHED] = {	  /* ioremap_cached */
+	[MT_DEVICE_CACHED] = {	  /* ioremap_cache */
 		.prot_pte	= PROT_PTE_DEVICE | L_PTE_MT_DEV_CACHED,
 		.prot_l1	= PMD_TYPE_TABLE,
 		.prot_sect	= PROT_SECT_DEVICE | PMD_SECT_WB,
diff --git a/arch/arm/mm/nommu.c b/arch/arm/mm/nommu.c
index 24ecf8d30a1e..8b3d7191e2b8 100644
--- a/arch/arm/mm/nommu.c
+++ b/arch/arm/mm/nommu.c
@@ -206,15 +206,11 @@ void __iomem *ioremap(resource_size_t res_cookie, size_t size)
 EXPORT_SYMBOL(ioremap);
 
 void __iomem *ioremap_cache(resource_size_t res_cookie, size_t size)
-	__alias(ioremap_cached);
-
-void __iomem *ioremap_cached(resource_size_t res_cookie, size_t size)
 {
 	return __arm_ioremap_caller(res_cookie, size, MT_DEVICE_CACHED,
 				    __builtin_return_address(0));
 }
 EXPORT_SYMBOL(ioremap_cache);
-EXPORT_SYMBOL(ioremap_cached);
 
 void __iomem *ioremap_wc(resource_size_t res_cookie, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
