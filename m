Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8BF72E72
	for <lists+linux-snps-arc@lfdr.de>; Wed, 24 Jul 2019 14:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kEvEYVrF+8e0C368aUXf6yOxMwaeYUfceMA6B41kwic=; b=dqqDCptRbIDuQ6UBzncwPovO22
	xWjaopG4RG3zNhawUQcsi31FuUJgC8oeIYvI2M/vOyLdPYiK+I9H0cuaBSAe8Ufni7RkLpnTwki5Z
	oSe+dTj1jyvEHaDW/n792lnvcav1qEdfnBX7p8qahp9rHnq997TE+4iFvgf1m9nmYyzU2EvRYzOIB
	7eN4vqURz/rosBJa/Akt9I1jwswYUtrM5Hkfh6sy6OwjHiz4/mhmAQMMAF0RsLLAdE+kkmbDU2g7t
	LcUqn9fu55X8opVSYu1CNxZhwG+m/077T8i198XLgCKHCYfeC6f/rT0T4c4kBnE/e150cFRjwcO9a
	4wupsOgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqG3F-0007bY-2p; Wed, 24 Jul 2019 12:07:21 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqG31-0007PE-T2
 for linux-snps-arc@lists.infradead.org; Wed, 24 Jul 2019 12:07:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 54B66C1BE9;
 Wed, 24 Jul 2019 12:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563970027; bh=9yLr3tHkJx37O0E/j4hIar6/6qoO+IpYNGwETfHlldA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cCpiPXF0AwsV7qgl0JUT5rMuBZUMTpVIf40gtQSj8H/6VvDmDEmYf3Ay1fSje8Kd3
 PHQ0pROrmGyKjL1Wy2VyrO6vCSWqLWiiHHazBire7O1wIDUYh+uaogDsI4cp1r0Ul7
 BCvTNwBe21KHWjvJcs2XhB2w/H10YHQDAJXR/6Y1jNY+FEhoQ40JWJJI4vahmrlCiF
 8H5oyQZGQSL653hIQQu8eGIXAMRVnnDMwCLALwmeYHnkSkAg4WoUIgikcjrvTbK7hV
 qCT8s97qLGD2plBUyj/IonY5FmGVQJhDl6F7RKB1CKib8s4CYMvsLedIObevANHx97
 02BYz6DaB3NJg==
Received: from de02arcdev1.internal.synopsys.com
 (de02arcdev1.internal.synopsys.com [10.225.22.192])
 by mailhost.synopsys.com (Postfix) with ESMTP id 22187A005C;
 Wed, 24 Jul 2019 12:07:06 +0000 (UTC)
From: Mischa Jonker <Mischa.Jonker@synopsys.com>
To: Alexey.Brodkin@synopsys.com, Vineet.Gupta1@synopsys.com,
 kstewart@linuxfoundation.org, tglx@linutronix.de, robh+dt@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] dt-bindings: IDU-intc: Add support for edge-triggered
 interrupts
Date: Wed, 24 Jul 2019 14:04:36 +0200
Message-Id: <20190724120436.8537-3-mischa.jonker@synopsys.com>
X-Mailer: git-send-email 2.8.3
In-Reply-To: <20190724120436.8537-1-mischa.jonker@synopsys.com>
References: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
 <20190724120436.8537-1-mischa.jonker@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_050707_977739_6F60D99E 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mischa Jonker <Mischa.Jonker@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This updates the documentation for supporting an optional extra interrupt
cell to specify edge vs level triggered.

Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
---
 .../interrupt-controller/snps,archs-idu-intc.txt      | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
index c5a1c7b..a5c1db9 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
@@ -8,11 +8,20 @@ Properties:
 
 - compatible: "snps,archs-idu-intc"
 - interrupt-controller: This is an interrupt controller.
-- #interrupt-cells: Must be <1>.
-
-  Value of the cell specifies the "common" IRQ from peripheral to IDU. Number N
-  of the particular interrupt line of IDU corresponds to the line N+24 of the
-  core interrupt controller.
+- #interrupt-cells: Must be <1> or <2>.
+
+  Value of the first cell specifies the "common" IRQ from peripheral to IDU.
+  Number N of the particular interrupt line of IDU corresponds to the line N+24
+  of the core interrupt controller.
+
+  The (optional) second cell specifies any of the following flags:
+    - bits[3:0] trigger type and level flags
+        1 = low-to-high edge triggered
+        2 = NOT SUPPORTED (high-to-low edge triggered)
+        4 = active high level-sensitive <<< DEFAULT
+        8 = NOT SUPPORTED (active low level-sensitive)
+  When no second cell is specified, the interrupt is assumed to be level
+  sensitive.
 
   The interrupt controller is accessed via the special ARC AUX register
   interface, hence "reg" property is not specified.
-- 
2.8.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
