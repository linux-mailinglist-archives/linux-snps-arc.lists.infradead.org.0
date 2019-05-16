Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8D320319
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 12:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=axfnT40A5jx5eKi6mnrkLwj4GnrHOGkIxF54vYxQaS8=; b=KJM
	L89K04OvWc0l2lp7DxcRqhEJxKzKElLy+uvChxZ6AVeMOH2kx0jEes98G17ueHIjkgegAcupfF95y
	egVCSxIY7qJ7jwicjgfXO8nkE16I8CNgbOHCvkDl/vcntowTXLO1iRjBu3PDNHF2//zccefHmwoJL
	bVqeAqQcBVw/Ody/72e2257FdA0gDN6Go3AEveC7mzenD8N1MhkM3f4e961ZCAWqIk7SwIqqT/nDN
	3IJ4jNioTtUHFBhbvFe1nvPSsDNHoA6gI9QjVMJvy01vHk5THDRiJtqShh4GJNARUrF4s72aRTTtt
	bYglt32TFFFUiOv8n2sWDmZ6X/4859Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDG9-0002Jc-KV; Thu, 16 May 2019 10:05:09 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDG6-0001WJ-Ia
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 10:05:07 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id ECD37C1F31;
 Thu, 16 May 2019 10:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558001109; bh=ol9URR19tH7eq8Y4CYe1csjPcbIOlKJgB/PXWcwgEbc=;
 h=From:To:Cc:Subject:Date:From;
 b=J8pjdZG7AS4vvTkOWazb1nUexNU2WWJrw0Iq0r1R+iS7y3iclr1KBjM+fGC5hFmcI
 kq7FjYrQfdIx4cj0jAb/s9lqb+5JgHOhepbjWo1V27jNzC9TAgJEMGULP9SU4w9XtY
 bDN4DB/7KmLU5b5X+PQDDkgjs06p6To4iAAeI7BX7GBGVyiz1kOcmB+AvOcr2kwd8T
 v9C2JgyGdlGrijfa7bq6RKBdKmzOD3ywVx/6BW8BTx1coL56OugK+BTqbOy+1DT/8O
 YqrmuYxO79JlZWg0OPROPA8OubsXLTJTqfGMcD7VcDwU/KbqmcJU+tNYJ7AXIYwAFI
 CrlMZOeXUTrVQ==
Received: from ru20arcgnu1.internal.synopsys.com (unknown [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id D80F9A0067;
 Thu, 16 May 2019 10:04:59 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: [plat-axs10x] Specify PHY node in .dtsi
Date: Thu, 16 May 2019 13:04:53 +0300
Message-Id: <20190516100453.41530-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_030506_630170_793A7BDC 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Trent Piepho <tpiepho@impinj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

For completeness of the HW description add missing PHY entry in
AXS10x base-board .dtsi.

Cc: Trent Piepho <tpiepho@impinj.com>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/boot/dts/axs10x_mb.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arc/boot/dts/axs10x_mb.dtsi b/arch/arc/boot/dts/axs10x_mb.dtsi
index 4ead6dc9af2f..98e9d63e868e 100644
--- a/arch/arc/boot/dts/axs10x_mb.dtsi
+++ b/arch/arc/boot/dts/axs10x_mb.dtsi
@@ -79,6 +79,7 @@
 			interrupts = < 4 >;
 			interrupt-names = "macirq";
 			phy-mode = "rgmii";
+			phy-handle = <&phy0>;
 			snps,pbl = < 32 >;
 			clocks = <&apbclk>;
 			clock-names = "stmmaceth";
@@ -86,6 +87,16 @@
 			resets = <&creg_rst 5>;
 			reset-names = "stmmaceth";
 			mac-address = [00 00 00 00 00 00]; /* Filled in by U-Boot */
+
+			mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "snps,dwmac-mdio";
+				phy0: ethernet-phy@1 {
+					reg = <1>;
+				};
+			};
+
 		};
 
 		ehci@40000 {
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
