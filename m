Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22075D0839
	for <lists+linux-snps-arc@lfdr.de>; Wed,  9 Oct 2019 09:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+0IYYUqzp33CNWt9L5Ny4YFojYr3LTbKZXjfJtS4/OY=; b=UIe
	Imsb3xe0WLejC3tfPM2nOJDgU/5RQuSKtNzRjP6+/kRrW4iNq975+uqHGZ1kwgDzLUEzh/UIwcxaP
	bxYOfsQBolf95m7plogcgvjUXjrgQtajOqV3wwMjd58vs7bL1CutTlBlucsXrniYSGrU0XN2kQ5db
	YS9gfnjQ/e7fUV8/Yb+NiVZFmLxvbrIrzyAKpdlrHc3KoDhoyo6X/DUZNjdjU8z6RZeCg/+TMbKR8
	aQ7Giy1zfMwIn8Xl+OcjeI4J67r5V8sq62OSN9UCkG3QpqRIQxJpF/FVNlI13wYMAyWeV2yRnaAXj
	XN+SFk44bZwZRmhbh6kiKBEB5zI65kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6MQ-0001iw-TD; Wed, 09 Oct 2019 07:26:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6MO-0001iU-Kj
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 07:26:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5BF5CC0198;
 Wed,  9 Oct 2019 07:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570605971; bh=24u3zCNYrlvwHHSqlJLk47QivCer8et6JcfvgNcNndQ=;
 h=From:To:Cc:Subject:Date:From;
 b=Jzgqt5MLCFqSZJHSvP4j6FxNlqCbKZgIgfsvoSce/ZCPTSnOv2Wy/j6IPLSSCDxPp
 063k0/Vz4mF9wHAFi1RtM3yTIodrL436VPvODL2bEEWDcynSaPh52jpIWDe5N5tbsH
 ILqV8qN5+okEbu9bvZ8RedZYLUVoQBjhvDrlhO4QmAZHl9hja9E4vfrTTWiInw+XjE
 MEd5WKpQfZChp9SGZZPATgdlSnkffHS9fNrSSqtOM7I4r2lBZsxPoQIspAKd5PC+1S
 NO6n2uSX2bt/by7HiQX4IiSkbOP0dRmqzAm+29Zv0MthB+iRbNkab34LtqyDaPjv5p
 A10dWw/qdDkoA==
Received: from abrodkin-e7480.internal.synopsys.com
 (abrodkin-e7480.internal.synopsys.com [10.121.8.24])
 by mailhost.synopsys.com (Postfix) with ESMTP id 44702A005B;
 Wed,  9 Oct 2019 07:26:09 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH v3] arc: emsdp/iotdk: Switch to DM_MMC
Date: Wed,  9 Oct 2019 10:26:07 +0300
Message-Id: <20191009072607.3246-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_002612_703436_0D130641 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Somehow EMSDP & IoT DK boards were skipped on ARC boads conversion
to DM MMC. So doing it now.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---

Changes v2 -> v3:
 * Fixed SDIO bus interface unit clock (BIU)
   According to the documentation SDIO BIU clock is just "apb_clk"
   which is 50 MHz by default while SDIO CIU clock is "sdio_ref_clk"
   and by default is 100 MHz.

Changes v1 -> v2:
 * FIFO size on IoTDK is 128 bytes as compared to 256 on EM SDP.
   That gave us timeouts on data read with some cards. Fixed now.

 arch/arc/dts/emsdp.dts                 | 23 ++++++++++++++++++
 arch/arc/dts/iot_devkit.dts            | 22 ++++++++++++++++++
 board/synopsys/emsdp/emsdp.c           | 29 -----------------------
 board/synopsys/iot_devkit/iot_devkit.c | 32 --------------------------
 configs/emsdp_defconfig                |  2 ++
 configs/iot_devkit_defconfig           |  2 ++
 6 files changed, 49 insertions(+), 61 deletions(-)

diff --git a/arch/arc/dts/emsdp.dts b/arch/arc/dts/emsdp.dts
index d307b95d8e..dbebdb4e76 100644
--- a/arch/arc/dts/emsdp.dts
+++ b/arch/arc/dts/emsdp.dts
@@ -32,4 +32,27 @@
 		reg-shift = <2>;
 		reg-io-width = <4>;
 	};
+
+	mmcclk_biu: mmcclk-biu {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		#clock-cells = <0>;
+	};
+
+	mmcclk_ciu: mmcclk-ciu {
+		compatible = "fixed-clock";
+		clock-frequency = <100000000>;
+		#clock-cells = <0>;
+	};
+
+	mmc: mmc0@f0010000 {
+		compatible = "snps,dw-mshc";
+		reg = <0xf0010000 0x400>;
+		bus-width = <4>;
+		fifo-depth = <256>;
+		clocks = <&mmcclk_biu>, <&mmcclk_ciu>;
+		clock-names = "biu", "ciu";
+		max-frequency = <25000000>;
+	};
+
 };
diff --git a/arch/arc/dts/iot_devkit.dts b/arch/arc/dts/iot_devkit.dts
index ebf5a950f0..c0173fa5ab 100644
--- a/arch/arc/dts/iot_devkit.dts
+++ b/arch/arc/dts/iot_devkit.dts
@@ -42,4 +42,26 @@
 		compatible = "nop-phy";
 		#phy-cells = <0>;
 	};
+
+	mmcclk_biu: mmcclk-biu {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		#clock-cells = <0>;
+	};
+
+	mmcclk_ciu: mmcclk-ciu {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		#clock-cells = <0>;
+	};
+
+	mmc: mmc0@f000b000 {
+		compatible = "snps,dw-mshc";
+		reg = <0xf000b000 0x400>;
+		bus-width = <4>;
+		fifo-depth = <128>;
+		clocks = <&mmcclk_biu>, <&mmcclk_ciu>;
+		clock-names = "biu", "ciu";
+		max-frequency = <25000000>;
+	};
 };
diff --git a/board/synopsys/emsdp/emsdp.c b/board/synopsys/emsdp/emsdp.c
index 7a3fd5b7f2..5ba9f862e1 100644
--- a/board/synopsys/emsdp/emsdp.c
+++ b/board/synopsys/emsdp/emsdp.c
@@ -85,35 +85,6 @@ int board_early_init_r(void)
 	return 0;
 }
 
-int board_mmc_init(bd_t *bis)
-{
-	struct dwmci_host *host = NULL;
-
-	host = malloc(sizeof(struct dwmci_host));
-	if (!host) {
-		printf("dwmci_host malloc fail!\n");
-		return 1;
-	}
-
-	memset(host, 0, sizeof(struct dwmci_host));
-	host->name = "Synopsys Mobile storage";
-	host->ioaddr = SDIO_BASE;
-	host->buswidth = 4;
-	host->dev_index = 0;
-	host->bus_hz = 50000000;
-
-	add_dwmci(host, host->bus_hz / 2, 400000);
-
-	return 0;
-}
-
-int board_mmc_getcd(struct mmc *mmc)
-{
-	struct dwmci_host *host = mmc->priv;
-
-	return !(dwmci_readl(host, DWMCI_CDETECT) & 1);
-}
-
 #define CREG_BASE		0xF0001000
 #define CREG_BOOT		(void *)(CREG_BASE + 0x0FF0)
 #define CREG_IP_SW_RESET	(void *)(CREG_BASE + 0x0FF0)
diff --git a/board/synopsys/iot_devkit/iot_devkit.c b/board/synopsys/iot_devkit/iot_devkit.c
index 8424e09bd3..9dbdc128f8 100644
--- a/board/synopsys/iot_devkit/iot_devkit.c
+++ b/board/synopsys/iot_devkit/iot_devkit.c
@@ -145,38 +145,6 @@ int mach_cpu_init(void)
 	return set_cpu_freq(gd->cpu_clk);
 }
 
-#define ARC_PERIPHERAL_BASE	0xF0000000
-#define SDIO_BASE		(ARC_PERIPHERAL_BASE + 0xB000)
-
-int board_mmc_init(bd_t *bis)
-{
-	struct dwmci_host *host = NULL;
-
-	host = malloc(sizeof(struct dwmci_host));
-	if (!host) {
-		printf("dwmci_host malloc fail!\n");
-		return -ENOMEM;
-	}
-
-	memset(host, 0, sizeof(struct dwmci_host));
-	host->name = "Synopsys Mobile storage";
-	host->ioaddr = (void *)SDIO_BASE;
-	host->buswidth = 4;
-	host->dev_index = 0;
-	host->bus_hz = 50000000;
-
-	add_dwmci(host, host->bus_hz / 2, 400000);
-
-	return 0;
-}
-
-int board_mmc_getcd(struct mmc *mmc)
-{
-	struct dwmci_host *host = mmc->priv;
-
-	return !(dwmci_readl(host, DWMCI_CDETECT) & 1);
-}
-
 #define IOTDK_RESET_SEQ		0x55AA6699
 
 void reset_cpu(ulong addr)
diff --git a/configs/emsdp_defconfig b/configs/emsdp_defconfig
index 1eca23fa95..09fe388e58 100644
--- a/configs/emsdp_defconfig
+++ b/configs/emsdp_defconfig
@@ -24,7 +24,9 @@ CONFIG_ENV_FAT_DEVICE_AND_PART="0:1"
 # CONFIG_NET is not set
 CONFIG_DM=y
 CONFIG_MMC=y
+CONFIG_DM_MMC=y
 CONFIG_MMC_DW=y
+CONFIG_MMC_DW_SNPS=y
 CONFIG_DM_SERIAL=y
 CONFIG_SYS_NS16550=y
 CONFIG_FS_FAT_MAX_CLUSTSIZE=32768
diff --git a/configs/iot_devkit_defconfig b/configs/iot_devkit_defconfig
index 24bbe3fc5d..42278d4fb1 100644
--- a/configs/iot_devkit_defconfig
+++ b/configs/iot_devkit_defconfig
@@ -29,7 +29,9 @@ CONFIG_ENV_FAT_DEVICE_AND_PART="0:1"
 # CONFIG_NET is not set
 CONFIG_DM=y
 CONFIG_MMC=y
+CONFIG_DM_MMC=y
 CONFIG_MMC_DW=y
+CONFIG_MMC_DW_SNPS=y
 CONFIG_DM_SERIAL=y
 CONFIG_SYS_NS16550=y
 CONFIG_USB=y
-- 
2.17.1



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
