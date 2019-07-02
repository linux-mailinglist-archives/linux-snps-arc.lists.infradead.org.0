Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B175D476
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jul 2019 18:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tP9fQy7VunFcdiWFDqBwUQxWbw2r6DYDSla4e53rUZk=; b=njC
	wh9dpbdShda4m7gAp2uGPd2P5R+uzS3FbYZP4MWA/5MBZZ0JVB1w7hbwFfZRE83BveNgwZ/KbFCR9
	YHROgQE+R215XmPP5ADrePvTSdintlY0hhznBLo7pjaLbRQ+A2DBMkl0qKI+wSIvKSOwDZBI8iGaB
	bEEATv40gY9z5bjYDshjwS4JOorAOj8IcSWZaynuwEwfbAxigGgN0SHMskYacD1VVS7Yw1G7YxIZE
	De0lmwO1naud7wRVeMAPQGiFNeJ3iHY75RQIpuOF9Gky18JSQsnlhGXf3H3jtJlw3ql5X+PxeB3cC
	VRZkylr8+inXNWe+ILn5eNTyVtyToUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiLpo-0004rT-2T; Tue, 02 Jul 2019 16:40:48 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiLpl-0004qN-EZ
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jul 2019 16:40:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 23AC0C0BE5;
 Tue,  2 Jul 2019 16:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562085642; bh=9IoJlF0bpOR5UbhByS88AdDEz43pdCkSBVjHAo4Jav0=;
 h=From:To:Cc:Subject:Date:From;
 b=KuxZdBhbSw2w0rHtbuX+g5sQGuRW6Y8bhNAGbPqR7vdfL+DwzjAhHjqlwQu/zHFGh
 eQ7InYW9hWVzNRcicRoZDnCpysZ0xp/x5xiyKgFGO76fGzSLowUj288cbkWQKApI3C
 MJrJiI6k++K73xJYpmXZ7RC5TrxrIss2ewNQTfbqzI4EVCmIHljwfUW7cALp2CYzAo
 AX7eMAdybeyRMYzG3fJMgTvAmXf66HaEPIdeIUnrvOQgYiJEvCE8nqnXA8OOr9I3yx
 nuVRWEzdlSASeWuXnBHUTDJGr/AYslBArXqzTlx7MtVw0uwtmzBeMqgNgr9SnH3esJ
 fc2LcARFvIBfQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4DF49A0057;
 Tue,  2 Jul 2019 16:40:39 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: [haps] Add Virtio support
Date: Tue,  2 Jul 2019 19:40:33 +0300
Message-Id: <20190702164033.43933-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_094045_500463_84BC3373 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As a preparation for QEMU usage for ARC let's add basic Virtio-MMIO
peripherals support for the platform we're going to use.

For now we add 5 Virtio slots in .dts and enable block and network devices
via Virtio-MMIO.

Note even though typically Virtio register set fits in 0x200 bytes
we "allocate" here 0x2000 so that it matches ARC's default 8KiB page size
and so remapping of that area is done clearly.

We also enable DEVTMPFS automount for more convenient use
of external root file-stystem. Before that we used to use built-in
Initramfs which didn't automount DEVTMPFS anyways so we didn't need
that option, while now it starts making sense.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 arch/arc/boot/dts/haps_hs.dts      | 30 ++++++++++++++++++++++++++++++
 arch/arc/configs/haps_hs_defconfig |  5 ++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arc/boot/dts/haps_hs.dts b/arch/arc/boot/dts/haps_hs.dts
index 1ebfa046492b..44bc522fdec8 100644
--- a/arch/arc/boot/dts/haps_hs.dts
+++ b/arch/arc/boot/dts/haps_hs.dts
@@ -62,5 +62,35 @@
 			#interrupt-cells = <1>;
 			interrupts = <20>;
 		};
+
+		virtio0: virtio@f0100000 {
+			compatible = "virtio,mmio";
+			reg = <0xf0100000 0x2000>;
+			interrupts = <31>;
+		};
+
+		virtio1: virtio@f0102000 {
+			compatible = "virtio,mmio";
+			reg = <0xf0102000 0x2000>;
+			interrupts = <32>;
+		};
+
+		virtio2: virtio@f0104000 {
+			compatible = "virtio,mmio";
+			reg = <0xf0104000 0x2000>;
+			interrupts = <33>;
+		};
+
+		virtio3: virtio@f0106000 {
+			compatible = "virtio,mmio";
+			reg = <0xf0106000 0x2000>;
+			interrupts = <34>;
+		};
+
+		virtio4: virtio@f0108000 {
+			compatible = "virtio,mmio";
+			reg = <0xf0108000 0x2000>;
+			interrupts = <35>;
+		};
 	};
 };
diff --git a/arch/arc/configs/haps_hs_defconfig b/arch/arc/configs/haps_hs_defconfig
index b117e6c16d41..436f2135bdc1 100644
--- a/arch/arc/configs/haps_hs_defconfig
+++ b/arch/arc/configs/haps_hs_defconfig
@@ -35,10 +35,12 @@ CONFIG_INET=y
 # CONFIG_IPV6 is not set
 # CONFIG_WIRELESS is not set
 CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_STANDALONE is not set
 # CONFIG_PREVENT_FIRMWARE_BUILD is not set
-# CONFIG_BLK_DEV is not set
+CONFIG_VIRTIO_BLK=y
 CONFIG_NETDEVICES=y
+CONFIG_VIRTIO_NET=y
 # CONFIG_NET_VENDOR_ARC is not set
 # CONFIG_NET_VENDOR_BROADCOM is not set
 # CONFIG_NET_VENDOR_INTEL is not set
@@ -68,6 +70,7 @@ CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_LOGO=y
 # CONFIG_HID is not set
 # CONFIG_USB_SUPPORT is not set
+CONFIG_VIRTIO_MMIO=y
 # CONFIG_IOMMU_SUPPORT is not set
 CONFIG_EXT2_FS=y
 CONFIG_EXT2_FS_XATTR=y
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
