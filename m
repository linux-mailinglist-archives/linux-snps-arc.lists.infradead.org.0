Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967941F7A0
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 17:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C7OMYJXpEFtD8uAvnzPAsIqRdP3OZab2NJMu4GJUmZE=; b=DeZ
	PoB8rhacPdvssLwWRp7FS9jj3k7YAMv2EDLjodkV8nES19sT/3M4pdawQvh2+Qp2IjXDrTLju7wbF
	irOAFIs117gk3tUxULPEKPZ/yo0GHXLdv9Wk42xchdi4ZkY/8OJi0QWUF1jTa/BCIRaC2GYMNYdY0
	ukfQSouJHWKMpLBgbgywa1GW/yonvgUIKkuHfyBuNDhJK77DRKOSy3me0EvUF8PVIAuV8q1or+qTW
	6MPmMJWWl6Vh0nBa8Izpupi4x0bBRbwrysADG7exRqRW2vddMWLeBZZbMYhLIK638u32kHHVkKUq9
	BR2hq5pp7FYv/vbU7wOCd1XMBm0IxuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvv2-0008Tz-AK; Wed, 15 May 2019 15:34:12 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvuz-0008Th-QY
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 15:34:11 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B3CA8C1284;
 Wed, 15 May 2019 15:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557934454; bh=Jg4Yd5RfGMHbRvftES66Q+l5G//3wv/Kjk6wF+VWL0M=;
 h=From:To:Cc:Subject:Date:From;
 b=ist3JW0sgzDkKDy2OfOiTCXXA9tOF9hr8IN5FfCb2enXPVjajxK9HPsAbtXyvYSNa
 qjYWTsf4gLE3z2hKGDSy/PVIjb/pagEZUPoEbsJRAXuaNIE1Aaqxrz69OYoJEzWDNQ
 688MuSJYsxMHQKjqBFCDYlGYsn/4+B8rRGwkzkOANCe3avwFvKizgJAIov5ztLJVgE
 FB+nEJFuEIgsw0T20ZQhvRQY/jLSWdwLCNbPvni6MzUVXb1HZttseF9wqb5ZmCd8Ln
 cfPgMGgVc8EnAjGxe0limbFMm0USewTyZ2aZNHr/kPw5a3oYRNIM+EgS6/JcLIRpeL
 HNFfKgBNIqOLA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id D0CEFA0065;
 Wed, 15 May 2019 15:34:06 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: [plat-hsdk] Get rid of inappropriate PHY settings
Date: Wed, 15 May 2019 18:33:40 +0300
Message-Id: <20190515153340.40074-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083409_867309_98C9E4E9 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Trent Piepho <tpiepho@impinj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Initial bring-up of the platform was done on FPGA prototype
where TI's DP83867 PHY was used. And so some specific PHY
options were added.

Just to confirm this is what we get on FPGA prototype in the bootlog:
| TI DP83867 stmmac-0:00: attached PHY driver [TI DP83867] ...

On real board though we have Micrel KZS9031 PHY and we even have
CONFIG_MICREL_PHY=y set in hsdk_defconfig. That's what we see in the bootlog:
| Micrel KSZ9031 Gigabit PHY stmmac-0:00: ...

So essentially all TI-related bits have to go away.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Trent Piepho <tpiepho@impinj.com>
Cc: Rob Herring <robh+dt@kernel.org>
---
 arch/arc/boot/dts/hsdk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 7425bb0f2d1b..f88a898029ce 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -11,7 +11,6 @@
  */
 /dts-v1/;
 
-#include <dt-bindings/net/ti-dp83867.h>
 #include <dt-bindings/reset/snps,hsdk-reset.h>
 
 / {
@@ -201,9 +200,6 @@
 				compatible = "snps,dwmac-mdio";
 				phy0: ethernet-phy@0 {
 					reg = <0>;
-					ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
-					ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
-					ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 				};
 			};
 		};
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
