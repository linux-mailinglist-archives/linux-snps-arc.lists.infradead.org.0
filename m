Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA481A8012
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Apr 2020 16:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e071Ust5iDxm0GuaaqKo9en9eHcs7mK2h3vgbG6016E=; b=oyIOLHcb7cUDF+
	09Xxv8gERDU5cGKip3wlS9s+p96cnOAtxpML71MqkqgiUjXbL8FWamXd+pL9PodMAm5UDKMVPSZbw
	Fslj01Rs2+Fgvrr0yDumr3k9JQp0UDJG5wLS8WfvntAaIxZ7Q2VnL5NTxz6xDLMRX5KbPdtc2wGmR
	hs0PpJRi5B8Rrx/DAWSZFaXFALYsRsO7KBFMVaBbxL1vZ8kgBRr/wd825HyoclmvJKkdM1eHksol5
	TkyMUWXINLRMnqCERr1WItgArr44AOXa29QGYGRoo9GZS+B3Nxa2PB6h67iK4IprSrK2G4io/6Cl5
	SCh9lRtRnrMJhcfSHGww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMnP-0000GJ-0h; Tue, 14 Apr 2020 14:44:15 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMnL-0000EC-F8
 for linux-snps-arc@lists.infradead.org; Tue, 14 Apr 2020 14:44:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EA6994047D;
 Tue, 14 Apr 2020 14:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586875449; bh=fOFAIwfV92Nxl+N2d1KwfN84aJoQPKpCZ6SCsZMgqQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EBzaK+3SOYURUIXN7oZK4SO48aMksclGaqUwH8mu10O6Hve8AWUjpseUvWt0oo9Kk
 I5Cw24Ot0RcIVlAXKtg5nq5MsNrqCBxi/I5ALCaw/DrjHs/jrpTi6k4CCuGkTr0LVO
 2jXp3bwl+VL5PAa8Z9Lb7aicnOR0hrPcA1X12DtI1KdWRfVc66fUu+oMCfACy30gSk
 gUVrgkncM0TBu0jPMbKSft0uhmU65f3OPLa5qdSwz5G7WXGcM/5+9xt1Quj7kyI365
 Dia8H2nq2z95M3vfzKFriy4M8B77Guzyx3wgHoAgC6tlL9POrFWs+bLL0WGk451AZC
 66mdyG7GRpz2g==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.225.48.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 39016A0062;
 Tue, 14 Apr 2020 14:44:06 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH v2 1/2] DRM: ARC: add HDMI 2.0 TX encoder support
Date: Tue, 14 Apr 2020 17:44:01 +0300
Message-Id: <20200414144402.27643-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
References: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074411_527554_0DC6A44F 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-snps-arc@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The Synopsys ARC SoCs (like HSDK4xD) include on-chip DesignWare HDMI
encoders. Support them with a platform driver to provide platform glue
data to the dw-hdmi driver.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 MAINTAINERS                       |   6 ++
 drivers/gpu/drm/Makefile          |   2 +-
 drivers/gpu/drm/arc/Kconfig       |   7 ++
 drivers/gpu/drm/arc/Makefile      |   1 +
 drivers/gpu/drm/arc/arc-dw-hdmi.c | 126 ++++++++++++++++++++++++++++++
 5 files changed, 141 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/arc/arc-dw-hdmi.c

diff --git a/MAINTAINERS b/MAINTAINERS
index a6fbdf354d34..2aaed1190370 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1258,6 +1258,12 @@ S:	Supported
 F:	drivers/gpu/drm/arc/
 F:	Documentation/devicetree/bindings/display/snps,arcpgu.txt
 
+ARC DW HDMI DRIVER
+M:	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
+S:	Supported
+F:	drivers/gpu/drm/arc/arc-dw-hdmi.c
+F:	Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
+
 ARCNET NETWORK LAYER
 M:	Michael Grzeschik <m.grzeschik@pengutronix.de>
 L:	netdev@vger.kernel.org
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 6493088a0fdd..5b0bcf7f45cd 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -109,7 +109,7 @@ obj-y			+= panel/
 obj-y			+= bridge/
 obj-$(CONFIG_DRM_FSL_DCU) += fsl-dcu/
 obj-$(CONFIG_DRM_ETNAVIV) += etnaviv/
-obj-$(CONFIG_DRM_ARCPGU)+= arc/
+obj-y			+= arc/
 obj-y			+= hisilicon/
 obj-$(CONFIG_DRM_ZTE)	+= zte/
 obj-$(CONFIG_DRM_MXSFB)	+= mxsfb/
diff --git a/drivers/gpu/drm/arc/Kconfig b/drivers/gpu/drm/arc/Kconfig
index e8f3d63e0b91..baec9d2a4fba 100644
--- a/drivers/gpu/drm/arc/Kconfig
+++ b/drivers/gpu/drm/arc/Kconfig
@@ -8,3 +8,10 @@ config DRM_ARCPGU
 	  Choose this option if you have an ARC PGU controller.
 
 	  If M is selected the module will be called arcpgu.
+
+config DRM_ARC_DW_HDMI
+	tristate "ARC DW HDMI"
+	depends on DRM && OF
+	select DRM_DW_HDMI
+	help
+	  Synopsys DW HDMI driver for various ARC development boards
diff --git a/drivers/gpu/drm/arc/Makefile b/drivers/gpu/drm/arc/Makefile
index c7028b7427b3..7a156d8c2c3c 100644
--- a/drivers/gpu/drm/arc/Makefile
+++ b/drivers/gpu/drm/arc/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 arcpgu-y := arcpgu_crtc.o arcpgu_hdmi.o arcpgu_sim.o arcpgu_drv.o
 obj-$(CONFIG_DRM_ARCPGU) += arcpgu.o
+obj-$(CONFIG_DRM_ARC_DW_HDMI) += arc-dw-hdmi.o
diff --git a/drivers/gpu/drm/arc/arc-dw-hdmi.c b/drivers/gpu/drm/arc/arc-dw-hdmi.c
new file mode 100644
index 000000000000..4869dd668a51
--- /dev/null
+++ b/drivers/gpu/drm/arc/arc-dw-hdmi.c
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Synopsys DW HDMI driver for various ARC development boards
+//
+// Copyright (C) 2020 Synopsys
+// Author: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
+
+#include <linux/component.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <drm/bridge/dw_hdmi.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_encoder_slave.h>
+#include <drm/drm_of.h>
+
+static const struct dw_hdmi_mpll_config snps_hdmi_mpll_cfg[] = {
+	{
+		27000000, {
+			{ 0x00B3, 0x0000 },
+			{ 0x00B3, 0x0000 },
+			{ 0x00B3, 0x0000 }
+		},
+	}, {
+		74250000, {
+			{ 0x0072, 0x0001},
+			{ 0x0072, 0x0001},
+			{ 0x0072, 0x0001}
+		},
+	}, {
+		148500000, {
+			{ 0x0051, 0x0002},
+			{ 0x0051, 0x0002},
+			{ 0x0051, 0x0002}
+		},
+	}, {
+		~0UL, {
+			{ 0x00B3, 0x0000 },
+			{ 0x00B3, 0x0000 },
+			{ 0x00B3, 0x0000 },
+		},
+	}
+};
+
+static const struct dw_hdmi_curr_ctrl snps_hdmi_cur_ctr[] = {
+	/* pixelclk    bpp8    bpp10   bpp12 */
+	{ 27000000,  { 0x0000, 0x0000, 0x0000 }, },
+	{ 74250000,  { 0x0008, 0x0008, 0x0008 }, },
+	{ 148500000, { 0x001b, 0x001b, 0x001b }, },
+	{ ~0UL,      { 0x0000, 0x0000, 0x0000 }, }
+};
+
+
+static const struct dw_hdmi_phy_config snps_hdmi_phy_config[] = {
+	/* pixelclk   symbol  term    vlev */
+	{ 27000000,   0x8009, 0x0004, 0x0232},
+	{ 74250000,   0x8009, 0x0004, 0x0232},
+	{ 148500000,  0x8009, 0x0004, 0x0232},
+	{ ~0UL,       0x8009, 0x0004, 0x0232}
+};
+
+static enum drm_mode_status snps_dw_hdmi_mode_valid(struct drm_connector *con,
+						    const struct drm_display_mode *mode)
+{
+	return MODE_OK;
+}
+
+static struct dw_hdmi_plat_data snps_dw_hdmi_drv_data = {
+	.mpll_cfg   = snps_hdmi_mpll_cfg,
+	.cur_ctr    = snps_hdmi_cur_ctr,
+	.phy_config = snps_hdmi_phy_config,
+	.mode_valid = snps_dw_hdmi_mode_valid,
+};
+
+static const struct of_device_id snps_dw_hdmi_dt_ids[] = {
+	{
+		.compatible = "snps,dw-hdmi-hsdk",
+		.data = &snps_dw_hdmi_drv_data
+	}, { /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, snps_dw_hdmi_dt_ids);
+
+static int snps_dw_hdmi_probe(struct platform_device *pdev)
+{
+	const struct dw_hdmi_plat_data *plat_data;
+	const struct of_device_id *match;
+	struct dw_hdmi *hdmi;
+
+	if (!pdev->dev.of_node)
+		return -ENODEV;
+
+	match = of_match_node(snps_dw_hdmi_dt_ids, pdev->dev.of_node);
+	plat_data = match->data;
+
+	hdmi = dw_hdmi_probe(pdev, plat_data);
+	if (IS_ERR(hdmi))
+		return PTR_ERR(hdmi);
+
+	platform_set_drvdata(pdev, hdmi);
+
+	return 0;
+}
+
+static int snps_dw_hdmi_remove(struct platform_device *pdev)
+{
+	struct dw_hdmi *hdmi = platform_get_drvdata(pdev);
+
+	dw_hdmi_remove(hdmi);
+
+	return 0;
+}
+
+static struct platform_driver snps_dw_hdmi_platform_driver = {
+	.probe  = snps_dw_hdmi_probe,
+	.remove = snps_dw_hdmi_remove,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = snps_dw_hdmi_dt_ids,
+	},
+};
+module_platform_driver(snps_dw_hdmi_platform_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("ARC specific DW-HDMI driver extension");
+MODULE_AUTHOR("Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>");
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
