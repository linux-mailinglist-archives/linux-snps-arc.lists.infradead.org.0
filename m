Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AA6186DB9
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Mar 2020 15:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnWE+mIUxP3MmtH+p8bc+gQ0PU4axJbHssKgqcjFFG0=; b=TNsstJKRyQBw1o
	vNfh1TFkMEs3d9Ba1NrYFmOcO/34eqD6cF9YCWAKHx20qbmvJAETX9a4mYVOuCZreMmQ+sDfeHde9
	oY3yRKNgJOVLd1s1KZ4z5mw7p5y2LFHIjjxekIFA1o1sksxmmlYjxlTNLu4PsJknQ9yrMPSFcEGrl
	mLRRCMvE9tVjbvZ7sZCxneFexzcFP8rlmLFms5/0fXqECkdxew6qc9CO6R7YGSKYz2EiDOecqTb+m
	q+FGZX4dtfhKvVBTf3jLKxHllHPNzFReIAUNDHxuHFh8xTw7KdIZe/Cnw1VJu91JduChDRn+dGXxW
	pGweUe4ib+eztOSHVv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDr1C-0006qk-2P; Mon, 16 Mar 2020 14:47:02 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDr19-0006pW-NC
 for linux-snps-arc@lists.infradead.org; Mon, 16 Mar 2020 14:47:01 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4BC48400DE;
 Mon, 16 Mar 2020 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584370019; bh=CSXgu1Fl5WfUS91bKBQktad7Yrg6yqP4RJTvw8e9FHw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VWs8ZLZ0AfPj6Q/AcdXj0hwzeGadPXLw3W8nSwoG4wJpmIki57IfdJdS7hpu2pq1C
 FTnXU4XNxQlktkYxjTkiVFoeN7alFG5yluIDc1qDsibHrY+YtO3Y2Cl4r3lCcnWZV7
 a426jVae5VjmhPDYbEW3gYVfRu3l16r3+6+hMYnAd3Dyk3I7Db3dZeHMRNJhyXrbz5
 JjAYGQUWPrLBjG/2kcs8xN5sHnzHhMSUTV+SLI/rgjBm6wzQ7zofdO7PU4L5aEbEQ4
 12wxtryS4JMyLnSug5A0KXF7T7ht9QJeJaNaAcDLLMtOL6Hi41fmJ9Ug0wqWochtJF
 QM9Bg5o2JwAig==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4EB44A0062;
 Mon, 16 Mar 2020 14:46:57 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH 2/2] dt-bindings: Document the Synopsys ARC HDMI TX bindings
Date: Mon, 16 Mar 2020 17:46:47 +0300
Message-Id: <20200316144647.10416-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200316144647.10416-1-Eugeniy.Paltsev@synopsys.com>
References: <20200316144647.10416-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074659_773395_193BFF05 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This patch adds documentation of device tree bindings for the Synopsys
HDMI 2.0 TX encoder driver for ARC SoCs.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 .../display/bridge/snps,arc-dw-hdmi.txt       | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.txt b/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.txt
new file mode 100644
index 000000000000..d5e006b392cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.txt
@@ -0,0 +1,73 @@
+Synopsys DesignWare HDMI 2.0 TX encoder driver for ARC SoCs
+================================
+
+The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP
+with a companion of Synopsys DesignWare HDMI 2.0 TX PHY IP.
+
+These DT bindings follow the Synopsys DWC HDMI TX bindings defined in
+Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt
+with the following device-specific properties.
+
+
+Required properties:
+
+- compatible : Shall contain
+  - "snps,dw-hdmi-hsdk" for HSDK4xD compatible HDMI TX
+
+- reg: See dw_hdmi.txt.
+- interrupts: HDMI interrupt number.
+- clocks: See dw_hdmi.txt.
+- clock-names: Must contain "iahb" and "isfr" as defined in dw_hdmi.txt.
+- ports: See dw_hdmi.txt. The DWC HDMI shall have one port numbered 0
+  corresponding to the video input of the controller and one port numbered 1
+  corresponding to its HDMI output.
+
+Example:
+
+hdmi: hdmi@0x10000 {
+	compatible = "snps,dw-hdmi-hsdk";
+	reg = <0x10000 0x10000>;
+	reg-io-width = <4>;
+	interrupts = <14>;
+	clocks = <&apbclk>, <&hdmi_pix_clk>;
+	clock-names = "iahb", "isfr";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			hdmi_enc_input: endpoint {
+				remote-endpoint = <&pgu_output>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			hdmi_enc_out: endpoint {
+				remote-endpoint = <&hdmi_con>;
+			};
+		};
+	};
+};
+
+hdmi-out {
+	...
+
+	port {
+		hdmi_con: endpoint {
+			remote-endpoint = <&hdmi_enc_out>;
+		};
+	};
+};
+
+pgu {
+	...
+
+	port_o: port {
+		pgu_output: endpoint {
+			remote-endpoint = <&hdmi_enc_input>;
+		};
+	};
+};
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
