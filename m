Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E242C36A
	for <lists+linux-snps-arc@lfdr.de>; Tue, 28 May 2019 11:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hAe7d08lIwgnHO5gSAICAI+4ZbGmWiehkqRS7gUA0h8=; b=qkcJE/EAEpTUb1
	GaQhHebvakGCCR9dh23DDtRu/42PU8XFbr/YMguTbLeOz4/proiHVC8sa3/7rdsQhrmSC7ALccyNk
	bs6rNcI7tnWuE0N0YjyKK9x3NX1RHN7tGMgxMJCfriVNhDtwPSHDzl5JN2Ssw/axtYgHbIvT9cV/k
	SyGVpWraKt0P7+tdtGKpK+EzwBx2XViGmuHfJM+suOjRDAOTYw4N0s5t4lrSVQPH5e9s3Soh80RGD
	761jW0RpN6eV++MAYRJB2eOudfhwOBx8JJ/3tcgVljgExv/QcVoG20WzOPGwfj0JxaB7plCtUUgAB
	xY9jamlAZKV0PeJRi8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYbf-0004zl-39; Tue, 28 May 2019 09:41:19 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYbc-0004z2-QW
 for linux-snps-arc@lists.infradead.org; Tue, 28 May 2019 09:41:18 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D5D61C1DBA;
 Tue, 28 May 2019 09:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559036484; bh=D731wz21YeITb5xPmWrEYvvhxG+m4OVL0X26qnGuol4=;
 h=From:To:Cc:Subject:Date:From;
 b=JqvTk2uSNMc3IlMREczO8QhAGmcQmdtNdaKnvNnTaT/Q7jAgKoqgC/vf4M5XjCIaX
 J5WHi0/I4pYBP8d9tjEoYDPIiwtepRVy4ZMG5hkRMZbJ5SZ05doYoSCvGGjIR9Sua5
 3G8iNWZsZaUU1eDN/0sN8MUdnlsA9EUZgOw9M8xHqHArJ13HWQaAWd7k/PYkog51Mi
 fOKXj8Yae7hfys5Rem0wnXmNSAcvVYPF6B+/JGYJOwZwgV1F0I1QT0n+PLKafxq2BL
 5DFTjMNk9nCpAWJvxVD/4K70CxCgENW793Y3LOQejVHfAeZGcr75fulqNkZSapq548
 vmQkdFGK6CXkg==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.58])
 by mailhost.synopsys.com (Postfix) with ESMTP id CDF31A0093;
 Tue, 28 May 2019 09:41:11 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: [plat-hsdk]: enable creg-gpio controller
Date: Tue, 28 May 2019 12:40:52 +0300
Message-Id: <20190528094052.2393-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_024116_867768_30263C12 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

HSDK SOC has CREG GPIO controller which can be used to control
SPI chip select lines.
Enable it in preparation of enabling SPI peripherals.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/hsdk.dts      | 8 ++++++++
 arch/arc/configs/hsdk_defconfig | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 7425bb0f2d1b..83e163e51b34 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -237,6 +237,14 @@
 			dma-coherent;
 		};
 
+		creg_gpio: gpio@14b0 {
+			compatible = "snps,creg-gpio-hsdk";
+			reg = <0x14b0 0x4>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <2>;
+		};
+
 		gpio: gpio@3000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0x3000 0x20>;
diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index 0e5fd29ed238..0c4411f50948 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -49,6 +49,7 @@ CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_DWAPB=y
+CONFIG_GPIO_SNPS_CREG=y
 # CONFIG_HWMON is not set
 CONFIG_DRM=y
 # CONFIG_DRM_FBDEV_EMULATION is not set
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
