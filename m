Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7AF71600
	for <lists+linux-snps-arc@lfdr.de>; Tue, 23 Jul 2019 12:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dVxcePZkCMfPz5l2x5r1CKbdV0IAIQX9wKg1EI3nY/w=; b=Y+pGzrQ3UiJGuMdlfegZmj53Rn
	Nv4mwMbES7s6R3iMpyMK4Cr/DRMM53i4TxEUfJrkpU7UgtXMWkFoK9aLs+xZ1AhkJc86OCGPer1j+
	zotmg7wkPA41sXQAZih8kaEpMnGOd13Jr1ElwILRmWRr7ruCcNkdJ6jS0cInwGb1f1ctXhWmtRk3h
	+fGhXr9k92aAxrETlg3IaBTj5I2Iw4om1lV+LJMI25mlqkb5czNfInv1/q/BqIwAvjAtFrMFCieUm
	D/omh/g0rSY58GX632w8URIFNDUVBHST5lhZ6VHuMWPMiLDVS7acpzLtdhjxvlDrQvg3QSOBKo+bO
	rPWKgotA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hps0F-00011E-O3; Tue, 23 Jul 2019 10:26:39 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hps0B-000102-Kd
 for linux-snps-arc@lists.infradead.org; Tue, 23 Jul 2019 10:26:37 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 334DAC018D;
 Tue, 23 Jul 2019 10:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563877593; bh=9EQdLFPCKtMvNPp2+VskSltaXSuqOCA6tYIGyuKj/eY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TjhbK4O4Y4vQSRWm8bRpyvrgR9/6eL6pp3pX0mtSUq6kLI18Dld5+p9Y5IBD0iet8
 CgKSh/4hQnHCFB03fma5I3yiK3LN7wmD1ENVN1FNir/5SgNXmvoYZk4CMHxWnQ2hw2
 S8ZCojfMPAMvo5RXJ4Wnh0EdO+MrvdFi2wO2BLe0sk+tBUAmdC9R2c7jOY/JVLaiuo
 43jbbdSmqbBPd9t5RJbLnZx94sKRX/4HTXy78Z7AjlyuNFUXtgT5bJcbFs53t8Qy+b
 aCsmGL8gwngaAoABIqZDceGAgM5UzrNSKDwNnlYdrfRAwwfF6lT4dTvZomzUN5NaIu
 /0PIdLNCzQJBw==
Received: from de02arcdev1.internal.synopsys.com
 (de02arcdev1.internal.synopsys.com [10.225.22.192])
 by mailhost.synopsys.com (Postfix) with ESMTP id F2776A005E;
 Tue, 23 Jul 2019 10:26:30 +0000 (UTC)
From: Mischa Jonker <Mischa.Jonker@synopsys.com>
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 kstewart@linuxfoundation.org, tglx@linutronix.de, robh+dt@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: IDU-intc: Add support for edge-triggered
 interrupts
Date: Tue, 23 Jul 2019 12:26:06 +0200
Message-Id: <20190723102606.309089-2-mischa.jonker@synopsys.com>
X-Mailer: git-send-email 2.8.3
In-Reply-To: <20190723102606.309089-1-mischa.jonker@synopsys.com>
References: <20190723102606.309089-1-mischa.jonker@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032635_691046_69F039B4 
X-CRM114-Status: GOOD (  10.69  )
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

This updates the documentation for supporting  a optional extra interrupt
cell to specify edge vs level triggered.

Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
---
 .../interrupt-controller/snps,archs-idu-intc.txt   | 30 ++++++++++++++--------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
index 09fc02b..a5c1db9 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
@@ -1,20 +1,30 @@
 * ARC-HS Interrupt Distribution Unit
 
-  This optional 2nd level interrupt controller can be used in SMP configurations for
-  dynamic IRQ routing, load balancing of common/external IRQs towards core intc.
+  This optional 2nd level interrupt controller can be used in SMP configurations
+  for dynamic IRQ routing, load balancing of common/external IRQs towards core
+  intc.
 
 Properties:
 
 - compatible: "snps,archs-idu-intc"
 - interrupt-controller: This is an interrupt controller.
-- #interrupt-cells: Must be <1>.
-
-  Value of the cell specifies the "common" IRQ from peripheral to IDU. Number N
-  of the particular interrupt line of IDU corresponds to the line N+24 of the
-  core interrupt controller.
-
-  intc accessed via the special ARC AUX register interface, hence "reg" property
-  is not specified.
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
+
+  The interrupt controller is accessed via the special ARC AUX register
+  interface, hence "reg" property is not specified.
 
 Example:
 	core_intc: core-interrupt-controller {
-- 
2.8.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
