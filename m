Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790A012AC66
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Dec 2019 14:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t/uM/6RDwJ6omECNhq+2u22uooFwFpzNM/iGNONPr10=; b=faLGWjGPOApUkEm9z2vpKUDErz
	KrKi9YBMpRrOB5zkU585gnG8sLO7ilnChzXzbClFEQNZn9NgiJUQ83wuDCUZnTqE5/dbhInN7a2MI
	Qp6YDJO21RHbtxoVGybTsqXLZ7zOiSf5r5vtletq50nhWzuHs2jX23z+wP/DENJ1i15d1dPQYOKmJ
	Yxd3mJEZQQKWRxAp/4uHPQYgoC1cV/lRvSNn5AkBtcInLhTGXoPIIyPQjK2poUYDZjxlLXFsctzgm
	plLJADUPjKuXB2J3oQgc4C1c2DyNIxfoFCV+JqKZLTrVdCykOffufpyJemhkrjUgzg/uOXy2ymtTI
	SLsaujWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikTEp-0006eO-9b; Thu, 26 Dec 2019 13:31:39 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTEn-0006dA-48
 for linux-snps-arc@lists.infradead.org; Thu, 26 Dec 2019 13:31:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 054CC42677;
 Thu, 26 Dec 2019 13:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577367096; bh=zIqhRGKsDjdLBShMKbxfYsb7g7rB9u1XX0FzuIzk/IM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WMONzxWa3itKbjWEg+JLwR6hlaTa/+jg72oOs1mZQ3rz0UW8wJaH+N66xFoOSWsnd
 BpxHIWzg1cNzc+n+4lthzBTm26HZ7fWyf5HcGBXBI5zBIji4R/el1zHiZ5LqGCXvOE
 TatIdkXcJoSttwWGMRz8Ql7I/4arAQpUvCQrSJLMhpbCo3q508uExsHM1RioAJW1HF
 y5uQAfcXRlTJ/7nMilxQP0mTlFliDJXOC7mDMZyPlLGIt4XkSMxj2YsMLwtgXUbqyl
 JyEjiLiIiBwSchZuLurpVRKvwuTqXj+jDV7mK26atOJQaMIjlWsHl+gOj6dXTmx2Pu
 tNxn7+efi4SWQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3FAE2A006E;
 Thu, 26 Dec 2019 13:31:34 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH 3/3] ARC: nsim_hs38: Add support of Virtio NET & BLK
Date: Thu, 26 Dec 2019 16:31:25 +0300
Message-Id: <20191226133125.47973-4-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20191226133125.47973-1-abrodkin@synopsys.com>
References: <20191226133125.47973-1-abrodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_053137_166262_9B674864 
X-CRM114-Status: GOOD (  14.61  )
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Given now nsim_hs38 configuration is usable on QEMU and in QEMU
we have Virtio working perfectly fine the next logical step
is to add support of supported & known to work net & bkl to this
config.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/Kconfig                  |  4 ++--
 arch/arc/dts/nsim.dts             | 29 +++++++++++++++++++++++++++++
 board/synopsys/{ => nsim}/Kconfig |  3 +++
 board/synopsys/nsim/MAINTAINERS   |  6 ++++++
 board/synopsys/nsim/Makefile      |  7 +++++++
 board/synopsys/nsim/nsim.c        | 26 ++++++++++++++++++++++++++
 configs/nsim_hs38_defconfig       |  9 +++++++++
 7 files changed, 82 insertions(+), 2 deletions(-)
 rename board/synopsys/{ => nsim}/Kconfig (74%)
 create mode 100644 board/synopsys/nsim/MAINTAINERS
 create mode 100644 board/synopsys/nsim/Makefile
 create mode 100644 board/synopsys/nsim/nsim.c

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 0cb97207db..545fc3e243 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -160,7 +160,7 @@ config TARGET_TB100
 	bool "Support tb100"
 
 config TARGET_NSIM
-	bool "Support standalone nSIM & Free nSIM"
+	bool "Support ARC simulation & prototyping platforms"
 
 config TARGET_AXS101
 	bool "Support Synopsys Designware SDP board AXS101"
@@ -184,10 +184,10 @@ config TARGET_IOT_DEVKIT
 endchoice
 
 source "board/abilis/tb100/Kconfig"
-source "board/synopsys/Kconfig"
 source "board/synopsys/axs10x/Kconfig"
 source "board/synopsys/emsdp/Kconfig"
 source "board/synopsys/hsdk/Kconfig"
 source "board/synopsys/iot_devkit/Kconfig"
+source "board/synopsys/nsim/Kconfig"
 
 endmenu
diff --git a/arch/arc/dts/nsim.dts b/arch/arc/dts/nsim.dts
index a3f3964d35..376a776a78 100644
--- a/arch/arc/dts/nsim.dts
+++ b/arch/arc/dts/nsim.dts
@@ -30,4 +30,33 @@
 		clock-frequency = <70000000>;
 	};
 
+	virtio0: virtio@f0100000 {
+		compatible = "virtio,mmio";
+		reg = <0xf0100000 0x2000>;
+		interrupts = <31>;
+	};
+
+	virtio1: virtio@f0102000 {
+		compatible = "virtio,mmio";
+		reg = <0xf0102000 0x2000>;
+		interrupts = <32>;
+	};
+
+	virtio2: virtio@f0104000 {
+		compatible = "virtio,mmio";
+		reg = <0xf0104000 0x2000>;
+		interrupts = <33>;
+	};
+
+	virtio3: virtio@f0106000 {
+		compatible = "virtio,mmio";
+		reg = <0xf0106000 0x2000>;
+		interrupts = <34>;
+	};
+
+	virtio4: virtio@f0108000 {
+		compatible = "virtio,mmio";
+		reg = <0xf0108000 0x2000>;
+		interrupts = <35>;
+	};
 };
diff --git a/board/synopsys/Kconfig b/board/synopsys/nsim/Kconfig
similarity index 74%
rename from board/synopsys/Kconfig
rename to board/synopsys/nsim/Kconfig
index 27e5509b26..22287032bf 100644
--- a/board/synopsys/Kconfig
+++ b/board/synopsys/nsim/Kconfig
@@ -1,5 +1,8 @@
 if TARGET_NSIM
 
+config SYS_BOARD
+	default "nsim"
+
 config SYS_VENDOR
 	default "synopsys"
 
diff --git a/board/synopsys/nsim/MAINTAINERS b/board/synopsys/nsim/MAINTAINERS
new file mode 100644
index 0000000000..ed4b9a9e78
--- /dev/null
+++ b/board/synopsys/nsim/MAINTAINERS
@@ -0,0 +1,6 @@
+EM DEVELOPMENT KIT BOARD
+M:	Alexey Brodkin <abrodkin@synopsys.com>
+S:	Maintained
+F:	arch/arc/dts/nsim.dts
+F:	board/synopsys/nsim/
+F:	configs/nsim_*_defconfig
diff --git a/board/synopsys/nsim/Makefile b/board/synopsys/nsim/Makefile
new file mode 100644
index 0000000000..f4bc65d213
--- /dev/null
+++ b/board/synopsys/nsim/Makefile
@@ -0,0 +1,7 @@
+#
+# Copyright (C) 2019 Synopsys, Inc. All rights reserved.
+#
+# SPDX-License-Identifier:	GPL-2.0+
+#
+
+obj-y	+= nsim.o
diff --git a/board/synopsys/nsim/nsim.c b/board/synopsys/nsim/nsim.c
new file mode 100644
index 0000000000..988ceabf30
--- /dev/null
+++ b/board/synopsys/nsim/nsim.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Synopsys, Inc. All rights reserved.
+ */
+
+#include <common.h>
+#include <dm/device.h>
+#include <virtio_types.h>
+#include <virtio.h>
+
+int board_early_init_r(void)
+{
+	/*
+	 * Make sure virtio bus is enumerated so that peripherals
+	 * on the virtio bus can be discovered by their drivers
+	 */
+	virtio_init();
+
+	return 0;
+}
+
+int checkboard(void)
+{
+	printf("Board: ARC virtual or prototyping platform\n");
+	return 0;
+};
diff --git a/configs/nsim_hs38_defconfig b/configs/nsim_hs38_defconfig
index ce68de3251..6cd01a505b 100644
--- a/configs/nsim_hs38_defconfig
+++ b/configs/nsim_hs38_defconfig
@@ -9,14 +9,23 @@ CONFIG_DEBUG_UART=y
 CONFIG_BOOTDELAY=3
 CONFIG_USE_BOOTARGS=y
 CONFIG_BOOTARGS="console=ttyS0,115200n8"
+CONFIG_BOARD_EARLY_INIT_R=y
 CONFIG_SYS_PROMPT="nsim# "
+CONFIG_CMD_DM=y
 # CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_DHCP=y
 CONFIG_OF_CONTROL=y
 CONFIG_OF_EMBED=y
 CONFIG_DEFAULT_DEVICE_TREE="nsim"
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_DM=y
+CONFIG_BLK=y
+CONFIG_HAVE_BLOCK_DEVICE=y
+CONFIG_DM_ETH=y
 CONFIG_DM_SERIAL=y
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYS_NS16550=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_VIRTIO_NET=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_USE_PRIVATE_LIBGCC=y
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
