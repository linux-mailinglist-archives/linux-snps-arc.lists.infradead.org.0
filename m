Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEA41A8011
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Apr 2020 16:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZY5mSgibA0MCxLSMzSk1z0NXPjQU/1Z2ug3/tUiofU=; b=GhPxxt8zqoD7vB
	DlKVNMkciL028VS0Kkq5HL+18Ic+QX8MUiz2hOCOT7y+K6Qhk+QHBQxbPfVCm9vQ9SprgeZdG8CCb
	kGtOCo6PFGtLCL/wQ7GYwNLsqgnfLmPA5hE9enU6GK1t3wyyHx9+PJj4hgUyOWNCJXKhyy04VB4Ma
	8ABDidjmW3wkrTtRMetSIFWeATPPr2xwvZrVDVcUKmeEor366GGj5VGVlVPgefAsh2Cs5ZqcEyGB0
	gwB8uFyB1x+VNy7ey65ymBdg0znCUmr/l21cqR05Pg3vUo4BptRaHODuxl6d7gPWP7grbUZm9DThq
	Wij99DL466fdd9WZQv4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMnN-0000Fr-P1; Tue, 14 Apr 2020 14:44:13 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMnL-0000EB-FD
 for linux-snps-arc@lists.infradead.org; Tue, 14 Apr 2020 14:44:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 98B2F40484;
 Tue, 14 Apr 2020 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586875449; bh=eIIjCzTpeJMIfjiUtE1G7XmBmAu7WJWsaBPpYxUyTbY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZjpJwCvjTZ21Cw6M82VbKtkgqmtUwYkUiWoPlLLJG+DfRoun9E8cp9Xvx8Itvp3wt
 LlC9t4GqFfRUGGr6le6HQNBMia/TtaTMPbNX9fVX3FuA6ekNnOiH1QRKYgpMa/75MH
 DKdRc6xdsas3aQyo9kmM+0t9Nbs+LEF6vMjz61MYT5rEu3xtZ+S1rzaJJWe85jaLh8
 ZFWvMB3i6OkPlPdgdB/DySbCKVKRo90Pu7d92gpl3nihdJ7dgji/68V4/GHsGyxS6W
 PW5qWMekRh4C/2HlCgCL5ENxJer93//39vyh0ueus1G988FsoofGhWeL4HGSlWYRTm
 vPELGrUEnHjNQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.225.48.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id D6D14A0065;
 Tue, 14 Apr 2020 14:44:06 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH v2 2/2] dt-bindings: Document the Synopsys ARC HDMI TX bindings
Date: Tue, 14 Apr 2020 17:44:02 +0300
Message-Id: <20200414144402.27643-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
References: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074411_519466_905C818F 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-snps-arc@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This patch adds documentation of device tree bindings for the Synopsys
HDMI 2.0 TX encoder driver for ARC SoCs.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 .../display/bridge/snps,arc-dw-hdmi.yaml      | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
new file mode 100644
index 000000000000..f52fc3b114b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/snps,arc-dw-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare HDMI 2.0 TX encoder driver
+
+maintainers:
+  - Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
+
+description: |
+  The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP
+  with a companion of Synopsys DesignWare HDMI 2.0 TX PHY IP.
+
+  These DT bindings follow the Synopsys DWC HDMI TX bindings defined in
+  Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt
+  with the following device-specific properties.
+
+properties:
+  compatible:
+    const: snps,dw-hdmi-hsdk
+
+  reg:
+    maxItems: 1
+    description: |
+      Memory mapped base address and length of the DWC HDMI TX registers.
+
+  clocks:
+    items:
+      - description: The bus clock for AHB / APB
+      - description: The internal register configuration clock
+
+  clock-names:
+    items:
+      - const: iahb
+      - const: isfr
+
+  reg-io-width:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [1, 4]
+        description:
+          Width of the registers specified by the reg property. The
+          value is expressed in bytes and must be equal to 1 or 4 if specified.
+          The register width defaults to 1 if the property is not present.
+
+  ports:
+    type: object
+    description: |
+      A ports node with endpoint definitions as defined in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description: |
+          Video input endpoints of the controller.
+          Usually the associated with PGU.
+
+      port@1:
+        type: object
+        description: |
+          Output endpoints of the controller. HDMI connector.
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    hdmi: hdmi@0x10000 {
+        compatible = "snps,dw-hdmi-hsdk";
+        reg = <0x10000 0x10000>;
+        reg-io-width = <4>;
+        interrupts = <14>;
+        clocks = <&apbclk>, <&hdmi_pix_clk>;
+        clock-names = "iahb", "isfr";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                hdmi_enc_input: endpoint {
+                    remote-endpoint = <&pgu_output>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                hdmi_enc_out: endpoint {
+                    remote-endpoint = <&hdmi_con>;
+                };
+            };
+        };
+    };
+
+    hdmi-out {
+        port {
+            hdmi_con: endpoint {
+                remote-endpoint = <&hdmi_enc_out>;
+            };
+        };
+    };
+
+    pgu {
+        port_o: port {
+            pgu_output: endpoint {
+                remote-endpoint = <&hdmi_enc_input>;
+            };
+        };
+    };
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
