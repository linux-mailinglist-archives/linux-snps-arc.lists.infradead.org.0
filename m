Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2831C11C54
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 17:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6LoRDvywzroKN/kdsgeE0Yu9e8kmImP8i2dt5+hR4gE=; b=e9X
	T6T9sve2Q2bcBcsyvBE03YkBQ2qGlgkgAKMFt0fEoM97Cy/s8VMlCNwI3ZCFxjuTMMYI9xKu0bmLX
	NWqwsCyCMHnfyob6lZPeMWK4HrkxRhAN3YCbF1OIK9bVFjjDSh/ODU6fasAGUfYyuKLp/cPf5P/mi
	+Ggama8mF+NVC1xtXw3s+uIray3aG5aiua0WcSN8hHtucXRrBUyr0v7kcsL3M7+CBELLBmUkgadJ3
	D6vAVcxBd5QoBqO98X5V7E3rpp9qq28raLdTDlGHHZ+FOBErkiG5vEgMHRFQL+htYf2ktDNPOvs5/
	HseT8ge99eVmOY2OS5ds8bXwQezywnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDO9-0007f3-Sk; Thu, 02 May 2019 15:12:45 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDO7-0007eE-0w
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 15:12:44 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1DF77C01F1;
 Thu,  2 May 2019 15:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556809962; bh=nbxnvC5IsjfFaLonIOAbwjN79asF92ckV1yrBYSaHus=;
 h=From:To:Cc:Subject:Date:From;
 b=j1pLWpADLhsfNTWATom9WObhnk570vMXr7kPhUx+D390jR7MkcziBiqgQx7mSPLZj
 dl5F0VQIBjCaMZG3EZPtDykg4PQ8P9/q3ps53NVvB13xOJKHw6dLXVO7TPoaOkYe5Q
 7XtYLmsvMIW3Wm8l871apSCNuXZaPWQbJiJpKQZbdOSxIicrZpQlIVWRDDAb45yvB7
 pnFHdOr8ns4MtCc2nfapPZTmQbt892/ggvK/9uC8GzU+vsOXcayuMgJBC88cfth8mw
 7iGHzdhGdAEHrH31y2tM134FTIF300YpmR3HO9hwpqJ49ctTOHChZHTcnH6UL+sYyG
 yI6JmLg+cEtQA==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id CB4D0A0256;
 Thu,  2 May 2019 15:12:34 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id D9C103F475;
 Thu,  2 May 2019 17:12:33 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: devicetree@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins number to
 GMAC node
Date: Thu,  2 May 2019 17:12:32 +0200
Message-Id: <7f36bbadc0df4c93c396690dab59f34775de3874.1556788240.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_081243_072684_AFDC42F6 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Mark Rutland <mark.rutland@arm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>, Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

GMAC controller on HSDK boards supports 256 Hash Table size so we need to
add the multicast filter bins property. This allows for the Hash filter
to work properly using stmmac driver.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/boot/dts/hsdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 69bc1c9e8e50..b0f059377ab0 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -187,6 +187,7 @@
 			interrupt-names = "macirq";
 			phy-mode = "rgmii";
 			snps,pbl = <32>;
+			snps,multicast-filter-bins = <256>;
 			clocks = <&gmacclk>;
 			clock-names = "stmmaceth";
 			phy-handle = <&phy0>;
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
