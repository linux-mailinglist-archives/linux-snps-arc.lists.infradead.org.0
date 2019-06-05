Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990A4362BA
	for <lists+linux-snps-arc@lfdr.de>; Wed,  5 Jun 2019 19:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LcO4WRLcKp+HlrXm5CsYaSNdRan3Nxt3ooPGab3GhEw=; b=m111p//P9P67Pk
	MqPqs2JtTpWQ4TUVxWTiJLgFyR3FIYNLB9g/A4slt8cjQGXJaJm33Ar9NuujgCJAfxg8IecGhPQUl
	qZHX4I6Kb63u4Xgkbb9M5G0V3Feg+H9U5KoULqXhcGJcUDa3Gmt+jXXI/RPX9s4UzP5XTOaIn4dHh
	XRr8Mc6rkXKCs6MQ+TmbmiWkSmkSUUjMrJVIv3Mrh/jSWZmb14ZfmYZPnHgRpaJ+CHwfKCd1Kfcre
	zmt+v5AP5m1AHP1eLMXr47oRdfBQSr+11/BbICgTTU8Q1Fp4rF3xvdOOvKdDDHuytkKo6SgLmTm9p
	mhfyKRa/YBu7pdBV0a/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZmq-0000mE-B4; Wed, 05 Jun 2019 17:33:20 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZmn-0000ls-Iq
 for linux-snps-arc@lists.infradead.org; Wed, 05 Jun 2019 17:33:19 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E3ACEC00F9;
 Wed,  5 Jun 2019 17:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559756005; bh=SaYLEkJTX4DxqdBIckjC7wQdBOIneyhb13AgIwfGuMg=;
 h=From:To:Cc:Subject:Date:From;
 b=AEjt92SAcsrkvW0KisKYIKWjCKaSjsWoJMYLikP2L+dV+Zr5gdR8CCQWVNGkUpwXS
 y4nDB32y16TgHn20Cb1Sk84iJQ1z+3CyVVDoGrDvlpSflbwVcKhBIJzQiUgigosfZT
 RyYyYH2htFBIu6tE0Vczm/uPO3dLP9f7X+QjfGXa23Csyu3edC6oINzKlghsDg3Kqb
 y1zNYIcI9q4D5G4Dbm7o9+EwAG9wwOW6I23iiZXjPpujCLDliUXAOeW5CvKpbf6ch0
 gZ5LQKyJFymKO9HBtlNDnNtQj1BFYGlIHzxGzeUOftYsxDWRkKi60RvIInwfKBBlUT
 7xLVyfY5/O0yQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.20])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8003AA0057;
 Wed,  5 Jun 2019 17:33:10 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2] ARC: [plat-hsdk]: unify memory apertures configuration
Date: Wed,  5 Jun 2019 20:32:50 +0300
Message-Id: <20190605173250.11716-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_103317_636642_055ABB33 
X-CRM114-Status: GOOD (  13.19  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

HSDK SoC has memory bridge which allows to configure memory map
for different AXI masters in runtime.
As of today we adjust memory apertures configuration in U-boot
so we have different configuration in case of loading kernel
via U-boot and JTAG.

It isn't really critical in case of existing platform configuration
as configuration differs for <currently> unused address space
regions or unused AXI masters. However we may face with this
issue when we'll bringup new peripherals or touch their address
space.

Fix that by perform full configuration of memory bridge in HSDK
platform code. Basically we simply copy memory bridge configuration
code from U-boot.

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v1->v2:
 * Changes in comments and commit message. No functional change intended.

 arch/arc/plat-hsdk/platform.c | 161 ++++++++++++++++++++++++++++++++--
 1 file changed, 153 insertions(+), 8 deletions(-)

diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
index 2588b842407c..0e70e47358c6 100644
--- a/arch/arc/plat-hsdk/platform.c
+++ b/arch/arc/plat-hsdk/platform.c
@@ -35,8 +35,6 @@ static void __init hsdk_init_per_cpu(unsigned int cpu)
 
 #define ARC_PERIPHERAL_BASE	0xf0000000
 #define CREG_BASE		(ARC_PERIPHERAL_BASE + 0x1000)
-#define CREG_PAE		(CREG_BASE + 0x180)
-#define CREG_PAE_UPDATE		(CREG_BASE + 0x194)
 
 #define SDIO_BASE		(ARC_PERIPHERAL_BASE + 0xA000)
 #define SDIO_UHS_REG_EXT	(SDIO_BASE + 0x108)
@@ -102,20 +100,167 @@ static void __init hsdk_enable_gpio_intc_wire(void)
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
+ * This is modified configuration of AXI bridge. Default settings
+ * are specified in "Table 111 CREG Address Decoder register reset values".
+ *
+ * AXI_M_m_SLV{0|1} - Slave Select register for master 'm'.
+ * Possible slaves are:
+ *  - 0  => no slave selected
+ *  - 1  => DDR controller port #1
+ *  - 2  => SRAM controller
+ *  - 3  => AXI tunnel
+ *  - 4  => EBI controller
+ *  - 5  => ROM controller
+ *  - 6  => AXI2APB bridge
+ *  - 7  => DDR controller port #2
+ *  - 8  => DDR controller port #3
+ *  - 9  => HS38x4 IOC
+ *  - 10 => HS38x4 DMI
+ * AXI_M_m_OFFSET{0|1} - Addr Offset register for master 'm'
+ *
+ * Please read ARC HS Development IC Specification, section 17.2 for more
+ * information about apertures configuration.
+ *
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
+ */
+
+#define CREG_AXI_M_SLV0(m)  ((void __iomem *)(CREG_BASE + 0x20 * (m)))
+#define CREG_AXI_M_SLV1(m)  ((void __iomem *)(CREG_BASE + 0x20 * (m) + 0x04))
+#define CREG_AXI_M_OFT0(m)  ((void __iomem *)(CREG_BASE + 0x20 * (m) + 0x08))
+#define CREG_AXI_M_OFT1(m)  ((void __iomem *)(CREG_BASE + 0x20 * (m) + 0x0C))
+#define CREG_AXI_M_UPDT(m)  ((void __iomem *)(CREG_BASE + 0x20 * (m) + 0x14))
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
+	 * M_HS_CORE has one unique register - BOOT.
+	 * We need to clean boot mirror (BOOT[1:0]) bits in them to avoid first
+	 * aperture to be masked by 'boot mirror'.
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
