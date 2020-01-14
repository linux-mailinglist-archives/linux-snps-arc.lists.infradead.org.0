Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF1413AE8C
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Jan 2020 17:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BiMDOU7/aktNrmuVY3M4RtGc3zcLDtPZ4QJwkEK+Ppw=; b=tu9j1h35M230/NPi0EyLaqErF8
	G5P49gSxWDb/9VyTKTQUpPIUONQ8u19NjXTWPWbMmlKnAdGsZJ3GYFOXNQ+AW7CynAgxkrWutVQwy
	kFirsKPx3eHzAee1FDzHS6mOAX9mex4zNYWm1YL4okEMgiOB0aR3bgL8sNlUZyo3nntKbIrJCeW8k
	7au0xP5NozFw11G2TWjYn09vLQsnh3coT3+dVSM0vHS5s+2zPDfMxRlW//HMdpAgXO0usaWJbIrV9
	XkamRmPOfGpwWUJrcGa3Ec/XImJvRCxrmGNyG2ilxR0/ODyN6Sb4gnRsNw0xnyb423+HMAmWz12wl
	8+AZjkAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOlV-00068F-LI; Tue, 14 Jan 2020 16:10:01 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOlA-0005uY-J6
 for linux-snps-arc@lists.infradead.org; Tue, 14 Jan 2020 16:09:44 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 94EADC0624;
 Tue, 14 Jan 2020 16:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579018177; bh=J145tdWmmuWUgjzVVhs0iS89opFX/TcApLpKRx6zF0c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=O0lPhaS3S3fIYCpNoRDZbPPk5SQAh4yMdUpnXVr/ZGzKQTPr6CjUTy/9O4SEDB+ML
 CALgAhGxO6TuCsXJgPuLpkgBwu2+NN+cNlDP3Km1DFXFEcZQ+1P8Hg58qufkc5g2WT
 MkgowU8Fhd/V/RZ3nVrd82Iam6PqeGGQ7Xh2NfzZ8/bZmCo8PE0v9nxJafSENhcp2y
 nKoxWIaOU5VnvH+n/gDcSQrf2rxD+ydl2a/QQiK3fnzV3qLezqdIu3oo5l2xrW7TSz
 4Krlyzo7TIOuHdM2l6zH3ZiEwSytOVzLM29URCY7+JN1iHuA6+Tz8rY4CRIavX+kVk
 TWfbMuvWEfnfQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3BAE1A0073;
 Tue, 14 Jan 2020 16:09:35 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 4/4] ARC: [plat-axs10x]: Add missing multicast filter
 number to GMAC node
Date: Tue, 14 Jan 2020 17:09:24 +0100
Message-Id: <b1abebaf6ac9a0176b82e179944a455fbf1d7a15.1579017787.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_080940_722758_A0E2C927 
X-CRM114-Status: GOOD (  11.77  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Mark Rutland <mark.rutland@arm.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>, devicetree@vger.kernel.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-snps-arc@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add a missing property to GMAC node so that multicast filtering works
correctly.

Fixes: 556cc1c5f528 ("ARC: [axs101] Add support for AXS101 SDP (software development platform)")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: devicetree@vger.kernel.org
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arc/boot/dts/axs10x_mb.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/boot/dts/axs10x_mb.dtsi b/arch/arc/boot/dts/axs10x_mb.dtsi
index f9a5c9ddcae7..1d109b06e7d8 100644
--- a/arch/arc/boot/dts/axs10x_mb.dtsi
+++ b/arch/arc/boot/dts/axs10x_mb.dtsi
@@ -78,6 +78,7 @@
 			interrupt-names = "macirq";
 			phy-mode = "rgmii";
 			snps,pbl = < 32 >;
+			snps,multicast-filter-bins = <256>;
 			clocks = <&apbclk>;
 			clock-names = "stmmaceth";
 			max-speed = <100>;
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
