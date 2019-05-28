Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D372C1D9
	for <lists+linux-snps-arc@lfdr.de>; Tue, 28 May 2019 10:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mbHPSccjhVNCeuvzMdrXh4SUPQ1uHwBsaonFcQdjevk=; b=B58OXjg5x7ghi4
	a0cIQSFn3qRHs+sFAFFBZWE+xx1f6Qs7fFNcH2MHt9oY6OkAyPUMUVRK2tnK59DXxdrTGZf+uziwr
	lz6zn5mfLLVYt2vnvNoFUoR5hnuoEmSzwijg3C9FI3p3FZ16ARwglfq7CMIDru6TF7UHHKLVadExu
	O3LXo+tHGfgdb4wxeK6ADvr+Qf2iWmM25px6Q1jcZmkoZ5nE2pQY6ChUueKw7LXvenwdr9iJBDMbb
	iYP4kaG1StbI+KGbdbH8/frxZAuVHbGQiLCbRbp82xlElyxRElnYCLDzXdPVDqvuU4eKQkiLr+n0f
	zGW38t8s4AOcETLCsKdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXt3-0002wc-So; Tue, 28 May 2019 08:55:13 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXt0-0002vi-IR
 for linux-snps-arc@lists.infradead.org; Tue, 28 May 2019 08:55:12 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F349FC1F35;
 Tue, 28 May 2019 08:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559033692; bh=FkFfnY0AkDJgmG4XxsfFGaS/2mNpPB8fw/BMIeXFMC4=;
 h=From:To:Cc:Subject:Date:From;
 b=lM6Gbu7jXInf5Y5jrz79PdnBXnnBuP6dikSLo2CT1t8xVwLnWuyt0d2EIXmY0GHVd
 AspwvtbFdMXxeBe9SlI5QtiW9x76iDvfoNOxP8sAwRsUSlxXHJUcTBYeYoJDB/bOqA
 WpEi+++uqInF/WOR12NKGCR0nrcCgjYZZmkDnhFWnY+4uoYANCpMD7PefQHwbZJwKg
 7ZcaCYoCJhsjc+gsR3CzNWGDp5iU4KkcW9wSA2vFInM0qm9pxT6+qAjgZ1Vn6hnztj
 aNPzJ/4v1qXEHRWk7y6rQiprD9WjhD9Crt2Qca0ZfR+L6GdC2qMwTgUOM0i8QuNW3x
 FrfFRiCsIMvxA==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.58])
 by mailhost.synopsys.com (Postfix) with ESMTP id CF2DBA0099;
 Tue, 28 May 2019 08:55:06 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: [plat-hsdk]: unify memory apertures configuration
Date: Tue, 28 May 2019 11:54:44 +0300
Message-Id: <20190528085444.3813-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_015510_618735_61A17671 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

HSDK SOC has memory bridge which allows to configure memory map
for different AXI masters in runtime.
As of today we adjust memory apertures configuration in U-boot
so we have different configuration in case of loading kernel
via U-boot and JTAG.

It isn't really critical in case of existing platform configuration
as configuration differs for <currently> unused address space
regions or unused AXI masters. However we may face with this
issue when we'll bringup new peripherals or touch their address
space.

Fix that by copy memory apertures configuration from U-boot to
HSDK platform code.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
This should be done a long time ago and this could save me from a lot
of debugging while bringing up GPU on HSDKv2...

 arch/arc/plat-hsdk/platform.c | 144 ++++++++++++++++++++++++++++++++--
 1 file changed, 136 insertions(+), 8 deletions(-)

diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
index 2588b842407c..e336e34925b7 100644
--- a/arch/arc/plat-hsdk/platform.c
+++ b/arch/arc/plat-hsdk/platform.c
@@ -35,8 +35,6 @@ static void __init hsdk_init_per_cpu(unsigned int cpu)
 
 #define ARC_PERIPHERAL_BASE	0xf0000000
 #define CREG_BASE		(ARC_PERIPHERAL_BASE + 0x1000)
-#define CREG_PAE		(CREG_BASE + 0x180)
-#define CREG_PAE_UPDATE		(CREG_BASE + 0x194)
 
 #define SDIO_BASE		(ARC_PERIPHERAL_BASE + 0xA000)
 #define SDIO_UHS_REG_EXT	(SDIO_BASE + 0x108)
@@ -102,20 +100,150 @@ static void __init hsdk_enable_gpio_intc_wire(void)
 	iowrite32(GPIO_INT_CONNECTED_MASK, (void __iomem *) GPIO_INTEN);
 }
 
-static void __init hsdk_init_early(void)
+enum hsdk_axi_masters {
+	M_HS_CORE = 0,
+	M_HS_RTT,
+	M_AXI_TUN,
+	M_HDMI_VIDEO,
+	M_HDMI_AUDIO,
+	M_USB_HOST,
+	M_ETHERNET,
+	M_SDIO,
+	M_GPU,
+	M_DMAC_0,
+	M_DMAC_1,
+	M_DVFS
+};
+
+#define UPDATE_VAL	1
+
+/*
+ * m	master		AXI_M_m_SLV0	AXI_M_m_SLV1	AXI_M_m_OFFSET0	AXI_M_m_OFFSET1
+ * 0	HS (CBU)	0x11111111	0x63111111	0xFEDCBA98	0x0E543210
+ * 1	HS (RTT)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 2	AXI Tunnel	0x88888888	0x88888888	0xFEDCBA98	0x76543210
+ * 3	HDMI-VIDEO	0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 4	HDMI-ADUIO	0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 5	USB-HOST	0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
+ * 6	ETHERNET	0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
+ * 7	SDIO		0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
+ * 8	GPU		0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 9	DMAC (port #1)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 10	DMAC (port #2)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
+ * 11	DVFS		0x00000000	0x60000000	0x00000000	0x00000000
+ *
+ * Please read ARC HS Development IC Specification, section 17.2 for more
+ * information about apertures configuration.
+ * NOTE: we intentionally modify default settings in U-boot. Default settings
+ * are specified in "Table 111 CREG Address Decoder register reset values".
+ */
+
+#define CREG_AXI_M_SLV0(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m)))
+#define CREG_AXI_M_SLV1(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x004))
+#define CREG_AXI_M_OFT0(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x008))
+#define CREG_AXI_M_OFT1(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x00C))
+#define CREG_AXI_M_UPDT(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x014))
+
+#define CREG_AXI_M_HS_CORE_BOOT	((void __iomem *)(CREG_BASE + 0x010))
+
+#define CREG_PAE		((void __iomem *)(CREG_BASE + 0x180))
+#define CREG_PAE_UPDT		((void __iomem *)(CREG_BASE + 0x194))
+
+static void __init hsdk_init_memory_bridge(void)
 {
+	u32 reg;
+
+	/*
+	 * M_HS_CORE has one unic register - BOOT.
+	 * We need to clean boot mirror (BOOT[1:0]) bits in them.
+	 */
+	reg = readl(CREG_AXI_M_HS_CORE_BOOT) & (~0x3);
+	writel(reg, CREG_AXI_M_HS_CORE_BOOT);
+	writel(0x11111111, CREG_AXI_M_SLV0(M_HS_CORE));
+	writel(0x63111111, CREG_AXI_M_SLV1(M_HS_CORE));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_HS_CORE));
+	writel(0x0E543210, CREG_AXI_M_OFT1(M_HS_CORE));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_HS_CORE));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_HS_RTT));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_HS_RTT));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_HS_RTT));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_HS_RTT));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_HS_RTT));
+
+	writel(0x88888888, CREG_AXI_M_SLV0(M_AXI_TUN));
+	writel(0x88888888, CREG_AXI_M_SLV1(M_AXI_TUN));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_AXI_TUN));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_AXI_TUN));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_AXI_TUN));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_HDMI_VIDEO));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_HDMI_VIDEO));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_HDMI_VIDEO));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_HDMI_VIDEO));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_HDMI_VIDEO));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_HDMI_AUDIO));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_HDMI_AUDIO));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_HDMI_AUDIO));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_HDMI_AUDIO));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_HDMI_AUDIO));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_USB_HOST));
+	writel(0x77999999, CREG_AXI_M_SLV1(M_USB_HOST));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_USB_HOST));
+	writel(0x76DCBA98, CREG_AXI_M_OFT1(M_USB_HOST));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_USB_HOST));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_ETHERNET));
+	writel(0x77999999, CREG_AXI_M_SLV1(M_ETHERNET));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_ETHERNET));
+	writel(0x76DCBA98, CREG_AXI_M_OFT1(M_ETHERNET));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_ETHERNET));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_SDIO));
+	writel(0x77999999, CREG_AXI_M_SLV1(M_SDIO));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_SDIO));
+	writel(0x76DCBA98, CREG_AXI_M_OFT1(M_SDIO));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_SDIO));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_GPU));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_GPU));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_GPU));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_GPU));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_GPU));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_0));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_DMAC_0));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_0));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_DMAC_0));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_0));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_1));
+	writel(0x77777777, CREG_AXI_M_SLV1(M_DMAC_1));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_1));
+	writel(0x76543210, CREG_AXI_M_OFT1(M_DMAC_1));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_1));
+
+	writel(0x00000000, CREG_AXI_M_SLV0(M_DVFS));
+	writel(0x60000000, CREG_AXI_M_SLV1(M_DVFS));
+	writel(0x00000000, CREG_AXI_M_OFT0(M_DVFS));
+	writel(0x00000000, CREG_AXI_M_OFT1(M_DVFS));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DVFS));
+
 	/*
 	 * PAE remapping for DMA clients does not work due to an RTL bug, so
 	 * CREG_PAE register must be programmed to all zeroes, otherwise it
 	 * will cause problems with DMA to/from peripherals even if PAE40 is
 	 * not used.
 	 */
+	writel(0x00000000, CREG_PAE);
+	writel(UPDATE_VAL, CREG_PAE_UPDT);
+}
 
-	/* Default is 1, which means "PAE offset = 4GByte" */
-	writel_relaxed(0, (void __iomem *) CREG_PAE);
-
-	/* Really apply settings made above */
-	writel(1, (void __iomem *) CREG_PAE_UPDATE);
+static void __init hsdk_init_early(void)
+{
+	hsdk_init_memory_bridge();
 
 	/*
 	 * Switch SDIO external ciu clock divider from default div-by-8 to
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
