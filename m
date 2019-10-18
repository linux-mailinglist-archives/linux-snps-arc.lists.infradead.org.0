Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8C9DC486
	for <lists+linux-snps-arc@lfdr.de>; Fri, 18 Oct 2019 14:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+9IS6TauJwZmw8Q4gQsbm9tOfk1vTyd7STF0yyWSA0=; b=QCrDs2m/N+Zoxf
	eWzFAJ9MTvwc2Rdo520L/VM1AoOre7e2eZs2lrhUFw9KYWNWigcSeUVnWQrI1CMmxNgpVtcSKasye
	TMzpUJgaIEtiDrjnWMGB4aIXGB7y+hI6fJrfawq6JzMEGh2FgW1J9qFA1vpmj7rN9rG7PC9+lMN2I
	Tji781FxMHV3IZxLnSC+lKLJcGLIGrf0U/s8X+0Ov5qCw5uyGtYoVPfeytxQPlyeYuGrJ6KJBgPYr
	NhAmCvA9GsAwag/ORm4pintguwxMf/f/iaYVtLCxaNtwxgaq6U+RXIpLtneQEdSTARcR4++wqv9fJ
	+Xgozovx00cUh+x9ir+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRAj-0007DA-7A; Fri, 18 Oct 2019 12:15:57 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRAc-00079i-Kp
 for linux-snps-arc@lists.infradead.org; Fri, 18 Oct 2019 12:15:53 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E2CB6C0488;
 Fri, 18 Oct 2019 12:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571400950; bh=9bNHRLE5N78H1xT78BVFMS/DIn9uGRWP5TXcJX4sEgI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cWZ5LNFZzJRboEUikg+T6P0uEr5Rpao9ocdZua/0Zfebkhj9mpj5xS5Txk2mVHqjS
 jI1nJIh9+5pa1pgSkPesrAsJGvB06qCy3YAoRyyR/x/7oxohA/22zfDGkPwb3fC4Ua
 4l0MsctXKIKqkll97ZELw0acr7I9guJ4KJhe3CeuacxgVbDH05v1kSClbD7RXoExet
 r0zX+/WAEdShsQfoyHsaaHGoWaUijwCwHqEoaYHwZN8jqNZYLAWwEJXDRSaVuUdYlv
 ePCQs6z+5TXCBhf0lyLJcDi31E2BFGJcxATSubkBFTL1LGxbSY+uyPjbEXr3dXU4Ly
 uyL1IDKbclidQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id 51016A0065;
 Fri, 18 Oct 2019 12:15:48 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [RFC 2/6] ARC: HAPS: cleanup defconfigs from unused IO-related options
Date: Fri, 18 Oct 2019 15:15:41 +0300
Message-Id: <20191018121545.8907-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018121545.8907-1-Eugeniy.Paltsev@synopsys.com>
References: <20191018121545.8907-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_051550_702683_1EE4FA30 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

We don't have any peripherals on HAPS which may require FB or
input_devices support. So get rid of them.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/configs/haps_hs_defconfig     | 9 +++------
 arch/arc/configs/haps_hs_smp_defconfig | 9 +++------
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arc/configs/haps_hs_defconfig b/arch/arc/configs/haps_hs_defconfig
index e22f40612089..33b7a402b6bd 100644
--- a/arch/arc/configs/haps_hs_defconfig
+++ b/arch/arc/configs/haps_hs_defconfig
@@ -48,9 +48,9 @@ CONFIG_VIRTIO_NET=y
 # CONFIG_NET_VENDOR_WIZNET is not set
 # CONFIG_WLAN is not set
 CONFIG_INPUT_EVDEV=y
-CONFIG_MOUSE_PS2_TOUCHKIT=y
-# CONFIG_SERIO_SERPORT is not set
-CONFIG_SERIO_ARC_PS2=y
+# CONFIG_INPUT_KEYBOARD is not set
+# CONFIG_INPUT_MOUSE is not set
+# CONFIG_SERIO is not set
 # CONFIG_LEGACY_PTYS is not set
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
@@ -60,9 +60,6 @@ CONFIG_SERIAL_8250_DW=y
 CONFIG_SERIAL_OF_PLATFORM=y
 # CONFIG_HW_RANDOM is not set
 # CONFIG_HWMON is not set
-CONFIG_FB=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_LOGO=y
 # CONFIG_HID is not set
 # CONFIG_USB_SUPPORT is not set
 CONFIG_VIRTIO_MMIO=y
diff --git a/arch/arc/configs/haps_hs_smp_defconfig b/arch/arc/configs/haps_hs_smp_defconfig
index ff4fcd7640a4..5586511a00bf 100644
--- a/arch/arc/configs/haps_hs_smp_defconfig
+++ b/arch/arc/configs/haps_hs_smp_defconfig
@@ -49,9 +49,9 @@ CONFIG_NETDEVICES=y
 # CONFIG_NET_VENDOR_WIZNET is not set
 # CONFIG_WLAN is not set
 CONFIG_INPUT_EVDEV=y
-CONFIG_MOUSE_PS2_TOUCHKIT=y
-# CONFIG_SERIO_SERPORT is not set
-CONFIG_SERIO_ARC_PS2=y
+# CONFIG_INPUT_KEYBOARD is not set
+# CONFIG_INPUT_MOUSE is not set
+# CONFIG_SERIO is not set
 # CONFIG_LEGACY_PTYS is not set
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
@@ -61,9 +61,6 @@ CONFIG_SERIAL_8250_DW=y
 CONFIG_SERIAL_OF_PLATFORM=y
 # CONFIG_HW_RANDOM is not set
 # CONFIG_HWMON is not set
-CONFIG_FB=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_LOGO=y
 # CONFIG_HID is not set
 # CONFIG_USB_SUPPORT is not set
 # CONFIG_IOMMU_SUPPORT is not set
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
