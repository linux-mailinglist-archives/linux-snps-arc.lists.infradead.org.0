Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A99B6FC37
	for <lists+linux-snps-arc@lfdr.de>; Mon, 22 Jul 2019 11:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y73OfrBIMDuq/MUFDbcm42etL/ebbwa9iptkD/YE3S8=; b=AHD5lvdohU42j2
	jUeGLO2lD6D9RIhOQGR+BtzoqpQwwcyFHe+kTfOMDpuRvaHPRKJYEmZP8ki5oxFdCfTQTSDwSmNCY
	sdL2cI8vwZMPi4NlVyF8O+7WkBVIMOEDEofUGEYswHK90RL0BimVwlsvsGOe4SP/4IgREAwtkirte
	gK3ZjD7LPM0ZgiqFu+NLUB8DcKRmxvObkrUlzcCUpblaI+qYf5mDgJzxYnsHedzTk0Jb4Pxp6AoBo
	NC9dTVgAV3ylqj9UGNAI6Da9EZRiqq2dm63NXQomqTI5IMAIynt6Nb2+JfaI15a8T6MIbV4j8KN3M
	C7lHkr6GFvmu4gMEB7LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUfi-0005k1-0S; Mon, 22 Jul 2019 09:31:54 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUfe-0005j4-Ri
 for linux-snps-arc@lists.infradead.org; Mon, 22 Jul 2019 09:31:52 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E3E31C1215;
 Mon, 22 Jul 2019 09:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563787909; bh=6crldOoHtXOlHRVDTRlZeONbt5sG9NEHGdcIS27ReBo=;
 h=From:To:Cc:Subject:Date:From;
 b=cbhYIp6jMNP1TrSdJkRC7hkP4aga+CCPg0vA7nIzxIim6Ur+/f54J0sPT1Xj1S7Oi
 Xr0qF9LF9pf9DzNH2DFUIQ27gH8jnH1Id4acVSAI/TL+AB+4VtiLIUaTfyn0KoVATv
 K6NR5DPMytA6H/kF1ws0BZlk5vxTl29PlLJcFnHAeEVpwbxqC3DTCeJeesrDVlx456
 g9tiusMc4HNt1FkP9mDT8weCO7LTUztcJIsBxzmcilecGj5ws54cLwI4s0CfaTV9q9
 ufb3ZV1/cBe3lPOaE6NnQMWg/KI/46Z8K+YWrjAK+vbsU+wIHsqie7iu3U4cZ7zB5u
 9SJT1ay2snP1Q==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3ED7BA0057;
 Mon, 22 Jul 2019 09:31:46 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2] ARC: [plat-hsdk]: allow to switch between AXI DMAC port
 configurations
Date: Mon, 22 Jul 2019 12:31:45 +0300
Message-Id: <20190722093145.4626-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_023150_912357_53FA5182 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

We want to use DW AXI DMAC on HSDK board in our automated verification
to test cache & dma kernel code changes. This is perfect candidate
as we don't depend on any external peripherals like MMC card / USB
storage / etc.
To increase test coverage we want to test both options:
 * DW AXI DMAC is connected through IOC port & dma direct ops used
 * DW AXI DMAC is connected to DDR port & dma noncoherent ops used

Introduce 'arc_hsdk_axi_dmac_coherent' global variable which can be
modified by debugger (same way as we patch 'ioc_enable') to switch
between these options without recompiling the kernel.
Depend on this value we tweak memory bridge configuration and
"dma-coherent" DTS property of DW AXI DMAC.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v1->v2:
 * Force putting arc_hsdk_axi_dmac_coherent to data section
 * Add missed __init to hsdk_tweak_node_coherency

 arch/arc/boot/dts/Makefile    |  3 ++
 arch/arc/plat-hsdk/platform.c | 87 ++++++++++++++++++++++++++++++-----
 2 files changed, 78 insertions(+), 12 deletions(-)

diff --git a/arch/arc/boot/dts/Makefile b/arch/arc/boot/dts/Makefile
index a83c4f5e928b..8483a86c743d 100644
--- a/arch/arc/boot/dts/Makefile
+++ b/arch/arc/boot/dts/Makefile
@@ -12,3 +12,6 @@ dtb-y := $(builtindtb-y).dtb
 # for CONFIG_OF_ALL_DTBS test
 dtstree	:= $(srctree)/$(src)
 dtb-	:= $(patsubst $(dtstree)/%.dts,%.dtb, $(wildcard $(dtstree)/*.dts))
+
+# board-specific dtc flags
+DTC_FLAGS_hsdk += --pad 20
diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
index 7dd2dd335cf6..0b961a2a10b8 100644
--- a/arch/arc/plat-hsdk/platform.c
+++ b/arch/arc/plat-hsdk/platform.c
@@ -6,11 +6,15 @@
  */
 
 #include <linux/init.h>
+#include <linux/of_fdt.h>
+#include <linux/libfdt.h>
 #include <linux/smp.h>
 #include <asm/arcregs.h>
 #include <asm/io.h>
 #include <asm/mach_desc.h>
 
+int arc_hsdk_axi_dmac_coherent __section(.data) = 0;
+
 #define ARC_CCM_UNUSED_ADDR	0x60000000
 
 static void __init hsdk_init_per_cpu(unsigned int cpu)
@@ -97,6 +101,42 @@ static void __init hsdk_enable_gpio_intc_wire(void)
 	iowrite32(GPIO_INT_CONNECTED_MASK, (void __iomem *) GPIO_INTEN);
 }
 
+static int __init hsdk_tweak_node_coherency(const char *path, bool coherent)
+{
+	void *fdt = initial_boot_params;
+	const void *prop;
+	int node, ret;
+	bool dt_coh_set;
+
+	node = fdt_path_offset(fdt, path);
+	if (node < 0)
+		goto tweak_fail;
+
+	prop = fdt_getprop(fdt, node, "dma-coherent", &ret);
+	if (!prop && ret != -FDT_ERR_NOTFOUND)
+		goto tweak_fail;
+
+	dt_coh_set = ret != -FDT_ERR_NOTFOUND;
+	ret = 0;
+
+	/* need to remove "dma-coherent" property */
+	if (dt_coh_set && !coherent)
+		ret = fdt_delprop(fdt, node, "dma-coherent");
+
+	/* need to set "dma-coherent" property */
+	if (!dt_coh_set && coherent)
+		ret = fdt_setprop(fdt, node, "dma-coherent", NULL, 0);
+
+	if (ret < 0)
+		goto tweak_fail;
+
+	return 0;
+
+tweak_fail:
+	pr_err("failed to tweak %s to %scoherent\n", path, coherent ? "" : "non");
+	return -EFAULT;
+}
+
 enum hsdk_axi_masters {
 	M_HS_CORE = 0,
 	M_HS_RTT,
@@ -162,6 +202,39 @@ enum hsdk_axi_masters {
 #define CREG_PAE		((void __iomem *)(CREG_BASE + 0x180))
 #define CREG_PAE_UPDT		((void __iomem *)(CREG_BASE + 0x194))
 
+static void __init hsdk_init_memory_bridge_axi_dmac(void)
+{
+	bool coherent = !!arc_hsdk_axi_dmac_coherent;
+	u32 axi_m_slv1, axi_m_oft1;
+
+	/*
+	 * Don't tweak memory bridge configuration if we failed to tweak DTB
+	 * as we will end up in a inconsistent state.
+	 */
+	if (hsdk_tweak_node_coherency("/soc/dmac@80000", coherent))
+		return;
+
+	if (coherent) {
+		axi_m_slv1 = 0x77999999;
+		axi_m_oft1 = 0x76DCBA98;
+	} else {
+		axi_m_slv1 = 0x77777777;
+		axi_m_oft1 = 0x76543210;
+	}
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_0));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_0));
+	writel(axi_m_slv1, CREG_AXI_M_SLV1(M_DMAC_0));
+	writel(axi_m_oft1, CREG_AXI_M_OFT1(M_DMAC_0));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_0));
+
+	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_1));
+	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_1));
+	writel(axi_m_slv1, CREG_AXI_M_SLV1(M_DMAC_1));
+	writel(axi_m_oft1, CREG_AXI_M_OFT1(M_DMAC_1));
+	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_1));
+}
+
 static void __init hsdk_init_memory_bridge(void)
 {
 	u32 reg;
@@ -227,24 +300,14 @@ static void __init hsdk_init_memory_bridge(void)
 	writel(0x76543210, CREG_AXI_M_OFT1(M_GPU));
 	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_GPU));
 
-	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_0));
-	writel(0x77777777, CREG_AXI_M_SLV1(M_DMAC_0));
-	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_0));
-	writel(0x76543210, CREG_AXI_M_OFT1(M_DMAC_0));
-	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_0));
-
-	writel(0x77777777, CREG_AXI_M_SLV0(M_DMAC_1));
-	writel(0x77777777, CREG_AXI_M_SLV1(M_DMAC_1));
-	writel(0xFEDCBA98, CREG_AXI_M_OFT0(M_DMAC_1));
-	writel(0x76543210, CREG_AXI_M_OFT1(M_DMAC_1));
-	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DMAC_1));
-
 	writel(0x00000000, CREG_AXI_M_SLV0(M_DVFS));
 	writel(0x60000000, CREG_AXI_M_SLV1(M_DVFS));
 	writel(0x00000000, CREG_AXI_M_OFT0(M_DVFS));
 	writel(0x00000000, CREG_AXI_M_OFT1(M_DVFS));
 	writel(UPDATE_VAL, CREG_AXI_M_UPDT(M_DVFS));
 
+	hsdk_init_memory_bridge_axi_dmac();
+
 	/*
 	 * PAE remapping for DMA clients does not work due to an RTL bug, so
 	 * CREG_PAE register must be programmed to all zeroes, otherwise it
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
