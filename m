Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AECDC3B0
	for <lists+linux-snps-arc@lfdr.de>; Fri, 18 Oct 2019 13:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMejNDwjk+7eFkwqgPodL2ZC77nJaHBHPwxAmgRN2yo=; b=pNWIdXKCOZLnyv
	CpiP79AhZe5G716oi0i/K6ajpjga0c/mIkw1cdS4fpfV/af/rDwgkTQ/wGtf9F3YPWrNeDIhkxm75
	dUuhXQoXgacHyKYYr51VH7IZnRGMd+G6WrQ9VNqZtbQXZthIEg8BtLwxo1yPKOi5V87hb+UKXh+Bx
	34r9urDUw8T6/g4FjxSEgd11dutZANf3CtyED3jWSIU0X/FYpVdxN2E5PDgiZVuXjV6PTWjl5mkCX
	RD9hiNmKAcZDOFj7yJZkuO8RbwqhCH2h92fTvft7StEd1hrJ3wL6YqKrqBNvkEBNsYnB0Gq+SgOvv
	NxClJ5SOVkcipypIGISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQAT-0006p7-PC; Fri, 18 Oct 2019 11:11:37 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQAR-0006nY-5j
 for linux-snps-arc@lists.infradead.org; Fri, 18 Oct 2019 11:11:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BF187C0484;
 Fri, 18 Oct 2019 11:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571397092; bh=PKCSFSj/DMgHXbDYmFjJ5Nek1SN4S32e2P5Yp+opSJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=keG3p18cWGgkgwjPfLgrAIc00sPm+eJXJcSwM+lEVKjWLlXBkIfADq377PX64+Zjy
 uD/jPNqUmeNUtLTFwVsJIJhvtmiM/95uXgNylidVu28+7BKhcHEeGkYwar2VLNfA8n
 VwSNtxBsFbvXb8IVRYpttRuggGl082QZSEaEFjZcl9pDFscrlVt7zSKTf4G/upwynr
 altYSiZx68mV7Hy7vn9P/622klzoHCUjlFyDpsmN2HTFf3sjuWaC4uoR4+9ky/hJQZ
 3UKW0zq7FrVjMlcaBY4TR0GAsHDysAECTg9YQOcIr6fpN9Jfb6nbTGkIltvlVY/9vl
 T21CdWUvJGnHg==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id EEF5BA0061;
 Fri, 18 Oct 2019 11:11:29 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 1/2] ARC: [plat-hsdk]: Enable on-board SPI NOR flash IC
Date: Fri, 18 Oct 2019 14:11:25 +0300
Message-Id: <20191018111126.5246-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018111126.5246-1-Eugeniy.Paltsev@synopsys.com>
References: <20191018111126.5246-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_041135_222488_8BA1B1D4 
X-CRM114-Status: GOOD (  10.10  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

HSDK board has sst26wf016b SPI NOR flash IC installed, enable it.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/hsdk.dts      | 8 ++++++++
 arch/arc/configs/hsdk_defconfig | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index bfc7f5f5d6f2..9bea5daadd23 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -264,6 +264,14 @@
 			clocks = <&input_clk>;
 			cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
 				   <&creg_gpio 1 GPIO_ACTIVE_LOW>;
+
+			spi-flash@0 {
+				compatible = "sst26wf016b", "jedec,spi-nor";
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				spi-max-frequency = <4000000>;
+			};
 		};
 
 		creg_gpio: gpio@14b0 {
diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index 9b9a74444ce2..22fc70396a3b 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -32,6 +32,8 @@ CONFIG_INET=y
 CONFIG_DEVTMPFS=y
 # CONFIG_STANDALONE is not set
 # CONFIG_PREVENT_FIRMWARE_BUILD is not set
+CONFIG_MTD=y
+CONFIG_MTD_SPI_NOR=y
 CONFIG_SCSI=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_NETDEVICES=y
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
