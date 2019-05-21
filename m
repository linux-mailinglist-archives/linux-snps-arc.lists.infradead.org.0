Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460A025710
	for <lists+linux-snps-arc@lfdr.de>; Tue, 21 May 2019 19:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=po9dVPxlMnKdnlnEyyNYbdVUgGN/v+AOtIwUTPg1qEM=; b=oqA
	HkS9BwgzwmJs72Cu4gjX+F+dYBIk+czJW/ZxKT9UwXkaQJUQFI4R26faq9pijxNxIf6uTm2umAd29
	PguVMMRnziAXON554VtBqZrnZB5ZhpNAWuZdmO6jOM9RSIeV6jG358Fwq3NPTxQm8zTwzj0D/eSYd
	lde1J9tu8etkNCvuctjLfnFKyMvI1HaE3T/CRkTcTrx9d6jGQ94srGtfPmTISSBi6qDeXqTr4xyzg
	xHOCrb1EAyS0D2mVonaVt8P4LJM1X16ydAGOACSGqKRUajhh0pQ4OqmfaH9wRMJo7GcKhOUzqHCUW
	A9EF4aYKDEQnbQ5qMf6AgQ4VPrZt0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8ym-0007ur-Sn; Tue, 21 May 2019 17:55:12 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8yk-0007ZA-DN
 for linux-snps-arc@lists.infradead.org; Tue, 21 May 2019 17:55:11 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8089CC01AB;
 Tue, 21 May 2019 17:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558461314; bh=j4xujey4oHXPlAqqw8enUk4zgpaPtQQZ7GJiAvqvb5U=;
 h=From:To:Cc:Subject:Date:From;
 b=eloylbcnJ5MpMfQi3KVwoX5gi5BDGCqQPL8z4WMUQcXQHnMQOVApwjnTEeFez0qmB
 d6NJqsP0wb5smfnJ6XhiXvzisPlCWIokP2AMecXdPzgRaR6QHo++0d3Bs51SiGYiIu
 j8ZP/V2gni2nGmExJZoWo+wD9oCoajeM9sVFCDS39xXEjX+4MfhmVFe2e60wuDqSA0
 11/9hUwL1yvzUafjjGSken9CgX8TXK5P+reyKlRZvLPnuZyY3IFcyOTdthXuSBQvOi
 8hFyqFec8nE4WhXEBYeIVzn0F14im7y4r6ZbTlWAbp9NT0Nz51JjHe2lTJvcdB6i5f
 24PZOehyvdr2w==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.8.106])
 by mailhost.synopsys.com (Postfix) with ESMTP id 240D6A0067;
 Tue, 21 May 2019 17:55:03 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v3] ARC: [plat-hsdk]: Add support of Vivante GPU
Date: Tue, 21 May 2019 20:54:39 +0300
Message-Id: <20190521175439.15723-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.14.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_105510_460825_1B935862 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

HSDK board has built-in Vivante GPU IP which works perfectly fine
with Etnaviv driver, so let's use it.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v2->v3:
 * Rebase onto latest kernel. No functional change intended.

Changes v1->v2:
 * Add clock inputs to etnaviv device tree node (reported by Lucas Stach)

 arch/arc/boot/dts/hsdk.dts      | 29 +++++++++++++++++++++++++++++
 arch/arc/configs/hsdk_defconfig |  2 +-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 7425bb0f2d1b..32b3974ae4e2 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -167,6 +167,24 @@
 			#clock-cells = <0>;
 		};
 
+		gpu_core_clk: gpu-core-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <400000000>;
+			#clock-cells = <0>;
+		};
+
+		gpu_dma_clk: gpu-dma-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <400000000>;
+			#clock-cells = <0>;
+		};
+
+		gpu_cfg_clk: gpu-cfg-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <200000000>;
+			#clock-cells = <0>;
+		};
+
 		dmac_core_clk: dmac-core-clk {
 			compatible = "fixed-clock";
 			clock-frequency = <400000000>;
@@ -252,6 +270,17 @@
 			};
 		};
 
+		gpu_3d: gpu@90000 {
+			compatible = "vivante,gc";
+			reg = <0x90000 0x4000>;
+			clocks = <&gpu_dma_clk>,
+				 <&gpu_cfg_clk>,
+				 <&gpu_core_clk>,
+				 <&gpu_core_clk>;
+			clock-names = "bus", "reg", "core", "shader";
+			interrupts = <28>;
+		};
+
 		dmac: dmac@80000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0x80000 0x400>;
diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index 0e5fd29ed238..643b58be022d 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -53,6 +53,7 @@ CONFIG_GPIO_DWAPB=y
 CONFIG_DRM=y
 # CONFIG_DRM_FBDEV_EMULATION is not set
 CONFIG_DRM_UDL=y
+CONFIG_DRM_ETNAVIV=y
 CONFIG_FB=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB_EHCI_HCD=y
@@ -64,7 +65,6 @@ CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MMC_DW=y
-# CONFIG_IOMMU_SUPPORT is not set
 CONFIG_EXT3_FS=y
 CONFIG_VFAT_FS=y
 CONFIG_TMPFS=y
-- 
2.14.5


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
