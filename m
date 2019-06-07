Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091338E14
	for <lists+linux-snps-arc@lfdr.de>; Fri,  7 Jun 2019 16:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HIb88gLGcyHv9S6W9JQ6SSQVugzWB/zuM6bvbgjpgX0=; b=pWuIJcmBWvcOKc
	sBkpVhJvRvrwwPs4sAtk1kJReDs6+jI26l9bOx44LreYEfIFRX9ZcGlHY/I+2QhKbTSwP1WJzX1tN
	FyUmvbysve6hYoVYJL//O+4ch8b30UUAgMqm/i89+KaITpF8EZqgK9wZQOXe6sbbb3SlINnoCSC+F
	nabNHwQf2LT8fgnO9wfmdXUrgtf5z/fcY+rGud0929A+wHbsnfhvZ267JYqRTROth4xHXfcTrOK1I
	A2LDYb/KsL1QKBPjIOi4pEWgTjE7v9DURBhHJdIv67E5P025qKtbrYO2qP8IRbuDRpKldHQ9L2aSt
	f+C6mW0wfFLOGvrpifZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGD9-0005m1-Ma; Fri, 07 Jun 2019 14:51:19 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGAJ-0001mN-Tm
 for linux-snps-arc@lists.infradead.org; Fri, 07 Jun 2019 14:48:28 +0000
Received: from mailhost.synopsys.com (unknown [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0571EC01B1;
 Fri,  7 Jun 2019 14:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559918900; bh=c4JCx7xGqtA6Q0yYJPhCoJ8QkXgg6kd7SK1vh9WrDpA=;
 h=From:To:Cc:Subject:Date:From;
 b=PsP48qsv3Wqvn9GbjqndsazHYaUFh6HfW0T1b4/xc3NS53eIoi0XDfmtTL4nl5I+/
 WCXBUwfEa+H5TQM78cUR213pce50BiJWxmoEugYKGGcwPWeoClterp19B4I5QBgJRl
 TlYL7HUgTY/Fr4uLpvwLCicGPshnEGFSr6ib9r3+LVU33ZcUAwdc379FBXoi5F3Dwf
 rGtnafJqCtr/Kc1XqL2Ji8pPyIUiOH0CrhEavpF3Od9+EMYY2ZTExywWbNd+A5r6ks
 A9BW5vADvRGDNLFPHnRyu0+/L5Jtacnug8n2TJ7z0xLaeJ7sRc7Q0xBu1h7mRSDvc/
 lUasJSAdl1Ocw==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.20])
 by mailhost.synopsys.com (Postfix) with ESMTP id 57C63A022E;
 Fri,  7 Jun 2019 14:48:17 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
Date: Fri,  7 Jun 2019 17:48:00 +0300
Message-Id: <20190607144800.19234-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074824_010626_AE4A8C44 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

HSDK SoC has DW SPI controller. Enable it in preparation of
enabling on-board SPI peripherals.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/hsdk.dts      | 14 ++++++++++++++
 arch/arc/configs/hsdk_defconfig |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index e57b24dd02e7..42e1c961ba48 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -11,6 +11,7 @@
  */
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/reset/snps,hsdk-reset.h>
 
 / {
@@ -233,6 +234,19 @@
 			dma-coherent;
 		};
 
+		spi0: spi@20000 {
+			compatible = "snps,dw-apb-ssi";
+			reg = <0x20000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <16>;
+			num-cs = <2>;
+			reg-io-width = <4>;
+			clocks = <&input_clk>;
+			cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
+				   <&creg_gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
 		creg_gpio: gpio@14b0 {
 			compatible = "snps,creg-gpio-hsdk";
 			reg = <0x14b0 0x4>;
diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index 0c4411f50948..ccfa744fe755 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -46,6 +46,9 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_8250_DW=y
 CONFIG_SERIAL_OF_PLATFORM=y
 # CONFIG_HW_RANDOM is not set
+CONFIG_SPI=y
+CONFIG_SPI_DESIGNWARE=y
+CONFIG_SPI_DW_MMIO=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_DWAPB=y
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
