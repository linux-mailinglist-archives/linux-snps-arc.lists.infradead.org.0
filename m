Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBE2181C71
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 16:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=67PX6j/f5ZuRK0QTtUGV4wPB/mmAgc4Zonzy/5b3vf0=; b=tCRk48pzcjLQVF
	H4YqqTQH8CfN+IfrqmyXIS+gFwqwcMgbMsN8NJUj/4zIeCRAxn6zh3Cuf5U79YPF0ySiIS4DEPxuR
	RndHdWpsAoerW46IJk8YPbAuDJeDHM26MTRha5j1Uxwkx+zYeade4K6oJMuT6yV7t5rtgMwA3yNe3
	fsbNSGRVM8Y2DYjLKTbR9vEvKYpPgt4qj88zsnHrEbQ6sNXt+tGz+fujTWUClFeFphIBuUOhtYsPH
	IN3ZOnHGVSSYmQjidVyElaqvWY6rFz69lb0Pfjo4FMsPao9Xzad6uu1T3pSnNWSCPRj7Ok1ZSc1c7
	1A6wd3N1A0oKhKtBQENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3QK-0002Du-2e; Wed, 11 Mar 2020 15:37:32 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3QH-0002B4-C8
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 15:37:30 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D4C92C0F6A;
 Wed, 11 Mar 2020 15:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583941048; bh=3I5ra8dGipfbdGLcndVTjdZugHQr9qywD7CxZqjwkjw=;
 h=From:To:Cc:Subject:Date:From;
 b=DfZsbrtweeZbBJKDevvBLxr9lAbrq6NHP0G2oxUupj22c9toV0qKDwaHuPpbH1gzj
 1MxLbfklRPtziZpqWiH7t/cjwDrD2ECbl1UFmpfeI/QSdJZ1QoJuUdaGRumVnVsuSp
 x7DJOF6B6qfkoKPLCUHyAj73NeOlTgv7ymfeikqEfOtYxjoXhxTPqxBqmQQRL1xyvy
 pbPi9Pvs6MVs/SOZC24u2QKm293AmsvVhY+Ngln8s9SJoQNoGlmGIkaLQhSEY5ZoQt
 Ow90hfJir8+6LEo5PqW9LRsaEe4/pMCzA8SmDbYqFcxBymBe+AiIZxe/x6Cd+vdIhr
 VEHzT1Qw2RAeQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 20410A005B;
 Wed, 11 Mar 2020 15:37:25 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: [plat-axs10x]: PGU: remove unused encoder-slave property
Date: Wed, 11 Mar 2020 18:37:24 +0300
Message-Id: <20200311153724.16140-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_083729_449049_128B42A6 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

ARC PGU is looking for encoder via endpoint mechanism and doesn't
use "encoder-slave" property for a long time. Let's drop unused
"encoder-slave" property from ARC PGU node in axs10x.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/axs10x_mb.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arc/boot/dts/axs10x_mb.dtsi b/arch/arc/boot/dts/axs10x_mb.dtsi
index 1d109b06e7d8..99d3e7175bf7 100644
--- a/arch/arc/boot/dts/axs10x_mb.dtsi
+++ b/arch/arc/boot/dts/axs10x_mb.dtsi
@@ -305,7 +305,6 @@
 		pgu@17000 {
 			compatible = "snps,arcpgu";
 			reg = <0x17000 0x400>;
-			encoder-slave = <&adv7511>;
 			clocks = <&pguclk>;
 			clock-names = "pxlclk";
 			memory-region = <&frame_buffer>;
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
