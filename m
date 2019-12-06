Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F271157DA
	for <lists+linux-snps-arc@lfdr.de>; Fri,  6 Dec 2019 20:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SjiSE8IYsqftwbRsdK4ubucNGQzJma+7ULPpd5xphI=; b=cXFjbFJkDfqJ/o
	oGoMET7WMYvq3rnaIWUoTt+9gIW2moEboFrTE0p2a1Jca/9vhMRuZAB0wyMG2plIBUTWoEfSzQ/EU
	U7ER1DKelhWuf6kIwZvCbIjJrHI7jZHz3xo05oLVdWsdoc3Zabhupm0pfJvota/vbtNdxJ912K6TM
	spsHDhuSR7vATS09luwlCtwz7DFdBPNFOe2SwZKPZ12untW8kjBlH6HpHOb4Ta7QyX1K0QkhtMjP/
	ExS7U+KWsoQVL+i/NvZsyEzcN/EPmiWvIXBYA99s/SyEyG06NR5DZYBhco0s/bKOhqbBO1E8SNLNQ
	gSgRgmsXf82StpNOi78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJRv-0005Su-3t; Fri, 06 Dec 2019 19:39:35 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJRq-0005Qf-Cn
 for linux-snps-arc@lists.infradead.org; Fri, 06 Dec 2019 19:39:33 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 61FBAC0AFF;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1575661167; bh=jhNz/HfuKRjvuyprq54lhs21rf6H/bLv+FKJgjVX1kQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VGXEh4+7nprdDLckgQ0kRMgTpoJdIj2Xcdm+B9aKo6wcVKH4NhDpMDmrerWVsUGi/
 d3RZCr+ffhTS33/JRt0lyl+FWI1wv0wynGbbDl2KMsjSnr0zLA5xG4gEWX7Hzcfl97
 iB9bF9PuuvBFWY3DWTaF50FHNW3lIT1bpriZGepg3T2f3WBjxLcWUd0/h7SzmNXMUv
 9/yz0vo6PxVeDXQYiomD7LgXA6PngFC8v9BmL6/mmGJDNFNfQRcnPVL33OKKvM8shD
 IkyVVznWL3hwzKn+Zlx436b+aUiezNzcHxtBOz/pNHwEif4HUmElUzwS2DraLnP9Jb
 8b8l5lzxA61VQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 248D1A0069;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH 3/3] toolchain/ARC: Enable ability to build with upstream
 gcc/binutils
Date: Fri,  6 Dec 2019 11:39:24 -0800
Message-Id: <20191206193924.18777-4-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191206193924.18777-1-vgupta@synopsys.com>
References: <20191206193924.18777-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_113930_492933_6D830A50 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Evgeniy.Didin@synopsys.com, linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Alexey.Brodkin@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

While ARC upstream gcc/binutils work, they are still trailing behind
the more up to date code at github. To help expedite this gap, we want
to test the upstreeam versiosn more often, hence this patch. It allows
ARC tools to be built of upstream gcc/binutils.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/Config.in.arc              | 4 ++++
 package/binutils/Config.in.host | 6 +++---
 package/binutils/binutils.mk    | 2 +-
 package/gcc/Config.in.host      | 4 ++--
 4 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/Config.in.arc b/arch/Config.in.arc
index fdfafda31c72..c389ba8b42c9 100644
--- a/arch/Config.in.arc
+++ b/arch/Config.in.arc
@@ -59,6 +59,10 @@ config BR2_arc
 	bool
 	default y if BR2_arcle || BR2_arceb
 
+config BR2_arc_gh
+	bool "ARC github tools"
+	default y if BR2_arc
+
 config BR2_ENDIAN
 	default "LITTLE" if BR2_arcle
 	default "BIG"	 if BR2_arceb
diff --git a/package/binutils/Config.in.host b/package/binutils/Config.in.host
index 514f620086eb..78785878cecc 100644
--- a/package/binutils/Config.in.host
+++ b/package/binutils/Config.in.host
@@ -7,8 +7,8 @@ config BR2_PACKAGE_HOST_BINUTILS_SUPPORTS_CFI
 
 choice
 	prompt "Binutils Version"
-	default BR2_BINUTILS_VERSION_2_32_X if !BR2_arc && !BR2_csky
-	default BR2_BINUTILS_VERSION_ARC if BR2_arc
+	default BR2_BINUTILS_VERSION_2_32_X if !BR2_arc_gh && !BR2_csky
+	default BR2_BINUTILS_VERSION_ARC if BR2_arc_gh
 	default BR2_BINUTILS_VERSION_CSKY if BR2_csky
 	help
 	  Select the version of binutils you wish to use.
@@ -27,7 +27,7 @@ config BR2_BINUTILS_VERSION_2_33_X
 
 config BR2_BINUTILS_VERSION_ARC
 	bool "binutils arc (2.31)"
-	depends on BR2_arc
+	depends on BR2_arc_gh
 
 config BR2_BINUTILS_VERSION_CSKY
 	bool "binutils csky"
diff --git a/package/binutils/binutils.mk b/package/binutils/binutils.mk
index ecc78b81e59f..63567db069ab 100644
--- a/package/binutils/binutils.mk
+++ b/package/binutils/binutils.mk
@@ -11,7 +11,7 @@ ifeq ($(BINUTILS_VERSION),)
 BINUTILS_VERSION = 2.32
 endif
 
-ifeq ($(BR2_arc),y)
+ifeq ($(BR2_arc_gh),y)
 BINUTILS_VERSION = arc-2019.09-rc1
 BINUTILS_SITE = $(call github,foss-for-synopsys-dwc-arc-processors,binutils-gdb,$(BINUTILS_VERSION))
 BINUTILS_SOURCE = binutils-gdb-$(BINUTILS_VERSION).tar.gz
diff --git a/package/gcc/Config.in.host b/package/gcc/Config.in.host
index 92af40b19fc3..d9f4c6cae14b 100644
--- a/package/gcc/Config.in.host
+++ b/package/gcc/Config.in.host
@@ -2,7 +2,7 @@ comment "GCC Options"
 
 choice
 	prompt "GCC compiler Version"
-	default BR2_GCC_VERSION_ARC if BR2_arc
+	default BR2_GCC_VERSION_ARC if BR2_arc_gh
 	default BR2_GCC_VERSION_CSKY if BR2_csky
 	default BR2_GCC_VERSION_OR1K if BR2_or1k
 	default BR2_GCC_VERSION_8_X
@@ -12,7 +12,7 @@ choice
 config BR2_GCC_VERSION_ARC
 	bool "gcc arc (9.x)"
 	# Only supported architecture
-	depends on BR2_arc
+	depends on BR2_arc_gh
 	select BR2_TOOLCHAIN_GCC_AT_LEAST_9
 
 config BR2_GCC_VERSION_CSKY
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
