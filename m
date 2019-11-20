Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68E1038B4
	for <lists+linux-snps-arc@lfdr.de>; Wed, 20 Nov 2019 12:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+hPpxuWxXnRJhwoWlIL+0frXWXaT7IiohfPygjPw0WI=; b=RmfFBnIDhn7O0r
	Rb8RTBr+7Js3KtEbFF+/nnaaqM7z0x/8GLh092moI9lFpz3f5EMwZE1jiM77t2rLxbjYJVv2hsPkq
	bwAsKtcqKHQbgryPkg8zpiFQzJG94VVVMUfRoJ2mHt+3mmy4EoeTCae6cZz5DT2nY9qkSv4A//WTv
	guvuJgcAnsCyj68APPIbsWYM/qKkanvmoQCzrIjrUOS6j5PtEp6zrGzAs0AejDkbSEzmNIvLVqf84
	sldOBtbk52W0D/yIIrnJ6Wopix5H84EsAZePkgYgE/4VYBTZqrpG8BgwDLH++3p4xacUmYKjODkGa
	iDVxm3Mq43lGI/9dDkHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOAu-0006OY-8G; Wed, 20 Nov 2019 11:29:32 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOAr-0006N4-8n
 for linux-snps-arc@lists.infradead.org; Wed, 20 Nov 2019 11:29:30 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C4281C2EC6;
 Wed, 20 Nov 2019 11:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574249367; bh=xZuiw9xcWz5xaSLQT61O3wtX7ReJt+MIEb7btLMma1A=;
 h=From:To:Cc:Subject:Date:From;
 b=JpI+SdPewEQsTsLKOKZhfiREdC0oEbtTpa5I6VATJE5tzhnQRul7fUNUfJ/bvOqdo
 ivJa2vsGMeGJElfD8+Dq0G2NaCp7jV4rGIgfTK6LGfpc8JoFE//qJs46PaagrpCJ1V
 FnXnrzV942haXg3KRAsDJQu/aGwhdow6YJA0WgLLxlFqF3TW2pD9aD85RFq4/+UGI1
 3RTxwtFOXI+V+U8RxeUjMKpfjtqYDPoiHyTkmlM1PkB4UeyHlWu4ribFFqQl+mONpZ
 Q/pD+CoPFgR1xaLz3mVxgJOIcJUuBDyTxzNmV8k5tZZVCIdEOK1FXYB6h6gbRk8son
 Dp7QggbVyOqnA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id AE626A0057;
 Wed, 20 Nov 2019 11:29:24 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2 1/2] ARC: [plat-axs10x]: use pgu pll instead of fixed clock
Date: Wed, 20 Nov 2019 14:29:22 +0300
Message-Id: <20191120112923.431-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_032929_350680_D8A8902D 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Use PLL driver instead of fixed-clock for PGU pixel clock.
That allows us to support wider range of graphic modes.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v1->v2:
 * add missing input_clk node to AXS101. No changes for AXS103 /
   AXS103 SMP.

 arch/arc/boot/dts/axc001.dtsi    |  6 ++++++
 arch/arc/boot/dts/axs10x_mb.dtsi | 11 ++++++-----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arc/boot/dts/axc001.dtsi b/arch/arc/boot/dts/axc001.dtsi
index 6ec1fcdfc0d7..79ec27c043c1 100644
--- a/arch/arc/boot/dts/axc001.dtsi
+++ b/arch/arc/boot/dts/axc001.dtsi
@@ -28,6 +28,12 @@
 			clock-frequency = <750000000>;
 		};
 
+		input_clk: input-clk {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <33333333>;
+		};
+
 		core_intc: arc700-intc@cpu {
 			compatible = "snps,arc700-intc";
 			interrupt-controller;
diff --git a/arch/arc/boot/dts/axs10x_mb.dtsi b/arch/arc/boot/dts/axs10x_mb.dtsi
index 08bcfed6b80f..f9a5c9ddcae7 100644
--- a/arch/arc/boot/dts/axs10x_mb.dtsi
+++ b/arch/arc/boot/dts/axs10x_mb.dtsi
@@ -61,12 +61,13 @@
 				clock-frequency = <25000000>;
 				#clock-cells = <0>;
 			};
+		};
 
-			pguclk: pguclk {
-				#clock-cells = <0>;
-				compatible = "fixed-clock";
-				clock-frequency = <74250000>;
-			};
+		pguclk: pguclk@10080 {
+			compatible = "snps,axs10x-pgu-pll-clock";
+			reg = <0x10080 0x10>, <0x110 0x10>;
+			#clock-cells = <0>;
+			clocks = <&input_clk>;
 		};
 
 		gmac: ethernet@18000 {
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
