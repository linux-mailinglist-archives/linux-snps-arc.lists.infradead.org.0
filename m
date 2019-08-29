Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D0EA13EE
	for <lists+linux-snps-arc@lfdr.de>; Thu, 29 Aug 2019 10:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZFmEO+sGYxPzZPbEysiOZyp4HwLiJqrOHuTDGl1Lp2M=; b=Kbp
	xXyOfjnfAg0rQsF4ioFC2w9Sm87BdSodrKJSyN/lsKQYUltSW50DgGLruSyF+VnGzfJ8gsY9OF+dR
	or0FzoXrWPhehJ5iYKYiwNB4r7dzPCEYMqhWH6rt/kyLu011ItkzN0DuwDB8LVVOIYcMD8GpZyHqB
	NXuB5iuIQelgtNXgfnCjJckkMfYSAHwzWj5bDA9sJptTaVVRk05l/xy9RwNNsirspFzAR8rDZmw2r
	41C7nxszJKbupNC4N1oE8wUAp/0bc8vuRI6IV2+t20ruaYw9KRIfWwWkPAXs++b+Vj0Q5DWMue2eK
	01LI9Rah+p+xBI3m5fV3g4D4B8DnRNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3FxB-00023A-W0; Thu, 29 Aug 2019 08:38:50 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Fx9-00022P-7i
 for linux-snps-arc@lists.infradead.org; Thu, 29 Aug 2019 08:38:48 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7B622C036F;
 Thu, 29 Aug 2019 08:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567067925; bh=5bc3jwwoh0ox3M+5j9/9ZcngHWCeuvUhB1Sbek0icE0=;
 h=From:To:Cc:Subject:Date:From;
 b=hrPJ7gsEcIfqUQm63LZwRtKKH3xsMBUbhs8DkcnhJwZ1je1oJANLAKLLbRCQSubMN
 j7uFLhwjz/d8KmsHaFpcHnXYpPuW2PGZUR++ApNAbJnYvprhPdeOdcTkyBxf6hdZpc
 8vlNlpskOdBtW60yvJ0AriWbFdirquglSmAUMfGsroxjaXDLoer9m5DcMhfTeaitG3
 l4MgwJRk7qGKGdRQtl1K2oMUXR4lJeVnxrsiE/lBfaQgZYTeeiAlCrbqdWV0qNrbH4
 /Ra/3XiDVwXz9VY/wi8EEvIC3Rv6oU880lze3EIMBGXI4aDUY33/DDuqVJAX5l4u4F
 SzcT45R2i8Ymg==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2B25EA005D;
 Thu, 29 Aug 2019 08:38:41 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] arc: emsdp: Add initialization of PSRAM
Date: Thu, 29 Aug 2019 11:38:39 +0300
Message-Id: <20190829083839.15515-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_013847_282074_B0F1758E 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

If the "Page Mode" is not enabled on the device,
read operations from PSRAM may result in incorrect data.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 board/synopsys/emsdp/emsdp.c | 37 +++++++++++++++++++++++++++++++++++++
 configs/emsdp_defconfig      |  1 +
 2 files changed, 38 insertions(+)

diff --git a/board/synopsys/emsdp/emsdp.c b/board/synopsys/emsdp/emsdp.c
index c0770b58c1..3bf4a1879b 100644
--- a/board/synopsys/emsdp/emsdp.c
+++ b/board/synopsys/emsdp/emsdp.c
@@ -48,6 +48,43 @@ int mach_cpu_init(void)
 	return 0;
 }
 
+int board_early_init_r(void)
+{
+#define EMSDP_PSRAM_BASE		0xf2001000
+#define PSRAM_FLASH_CONFIG_REG_0	(void *)(EMSDP_PSRAM_BASE + 0x10)
+#define PSRAM_FLASH_CONFIG_REG_1	(void *)(EMSDP_PSRAM_BASE + 0x14)
+#define CRE_ENABLE			BIT(31)
+#define CRE_DRIVE_CMD			BIT(6)
+
+#define PSRAM_RCR_DPD			BIT(4)
+#define PSRAM_RCR_PAGE_MODE		BIT(7)
+
+/*
+ * PSRAM_FLASH_CONFIG_REG_x[30:15] to the address lines[16:1] of flash,
+ * thus "<< 1".
+ */
+#define PSRAM_RCR_SETUP		((PSRAM_RCR_DPD | PSRAM_RCR_PAGE_MODE) << 1)
+
+	// Switch PSRAM controller to command mode
+	writel(CRE_ENABLE | CRE_DRIVE_CMD, PSRAM_FLASH_CONFIG_REG_0);
+	// Program Refresh Configuration Register (RCR) for BANK0
+	writew(0, (void *)(0x10000000 + PSRAM_RCR_SETUP));
+	// Switch PSRAM controller back to memory mode
+	writel(0, PSRAM_FLASH_CONFIG_REG_0);
+
+
+	// Switch PSRAM controller to command mode
+	writel(CRE_ENABLE | CRE_DRIVE_CMD, PSRAM_FLASH_CONFIG_REG_1);
+	// Program Refresh Configuration Register (RCR) for BANK1
+	writew(0, (void *)(0x10800000 + PSRAM_RCR_SETUP));
+	// Switch PSRAM controller back to memory mode
+	writel(0, PSRAM_FLASH_CONFIG_REG_1);
+
+	printf("PSRAM initialized.\n");
+
+	return 0;
+}
+
 int board_mmc_init(bd_t *bis)
 {
 	struct dwmci_host *host = NULL;
diff --git a/configs/emsdp_defconfig b/configs/emsdp_defconfig
index 64281d0529..5e55e3e2b2 100644
--- a/configs/emsdp_defconfig
+++ b/configs/emsdp_defconfig
@@ -7,6 +7,7 @@ CONFIG_ENV_SIZE=0x1000
 CONFIG_SYS_CLK_FREQ=40000000
 # CONFIG_ARCH_FIXUP_FDT_MEMORY is not set
 CONFIG_VERSION_VARIABLE=y
+CONFIG_BOARD_EARLY_INIT_R=y
 CONFIG_HUSH_PARSER=y
 CONFIG_SYS_PROMPT="emsdp# "
 # CONFIG_CMD_BOOTD is not set
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
