Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F9F1EE990
	for <lists+linux-snps-arc@lfdr.de>; Thu,  4 Jun 2020 19:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqbHg8Qxjf4MBtri5LbJTeXO/LkU4QPlUCd4wUin25M=; b=K9xxtUREAKkWpb
	URwrRrR1FBKlZi0wUaSNaHCTEDj60qY4XdAuy9cGWn/H85FEXsxKAe+lpC8N/Ct5j4Wf9q1w+Bh0v
	Ce5zs+F5f4wH8uiwtrluiuqpBg5cAuEMJfnnsrmluVaIaZjb3ubl1gIjSgtzJytLqaT19N1snv0oz
	6wwHujki+U6hMEUvSM4RoPMjkCZ44dVAdFIst6yLjBSMQZw2DLEPlFp4zDi89fjQQ339jFjpVX39U
	z8BebB0mLTftZC+81iopz0jqBE0XCZ1k2oG5UgFGhxfPdjPOWZqUGwvzA46aNC3hVzcdiOSZeODqO
	sEAM03V4hDJvxdcBUlxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtqQ-0001IO-9Z; Thu, 04 Jun 2020 17:39:58 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtqN-0001Fr-Oc
 for linux-snps-arc@lists.infradead.org; Thu, 04 Jun 2020 17:39:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 19668C007F;
 Thu,  4 Jun 2020 17:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591292394; bh=vr/az6MfiBirfILNrjnYt+VLOecopVaBBPoxvJZYCes=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WVJqusIyEi1kg1CoaLRikleQKxsxAZAUtMQpn2N6GLvCIj2q2d5lUSDvl6f8lBGYp
 SUNrgUGAYkH4HIwBxr7NJ3qafYQUXGILsd/l1MJ9qmlZeZtZkie5v7wyBYrxYV1hWU
 /1+QUg9HVoCceSLcdXx+T2g16YvhdzPwmPrHZwqn1GcdxtM0BiHnPPBGaGjGPkYAT1
 e3q8rmel3U5w3J7ZZYW9GFhfP1uUEaItfw+ynVqziKwSkUcJR/hPdtg7KiK/Zic3QI
 IlkrXk3lnOzznvuNunFYBsE+li3BkssSAHbtbr0huH81gNXtcvgEs3/mZ3My7yNbzF
 NdybOtcXMJqBA==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.49.234])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6D5B9A006D;
 Thu,  4 Jun 2020 17:39:50 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2 4/4] ARC: [plat-hsdk*] document HSDK-4xD board/SoC bindings
Date: Thu,  4 Jun 2020 20:39:27 +0300
Message-Id: <20200604173927.23127-5-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
References: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_103955_833324_872E61EE 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add documentation for HSDK-4xD board/SoC bindings. While I'm at it
convert HSDK board/SoC bindings to DT schema format using
json-schema.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 .../devicetree/bindings/arc/hsdk.txt          |  7 -----
 .../devicetree/bindings/arc/hsdk.yaml         | 26 +++++++++++++++++++
 2 files changed, 26 insertions(+), 7 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arc/hsdk.txt
 create mode 100644 Documentation/devicetree/bindings/arc/hsdk.yaml

diff --git a/Documentation/devicetree/bindings/arc/hsdk.txt b/Documentation/devicetree/bindings/arc/hsdk.txt
deleted file mode 100644
index be50654bbf61..000000000000
--- a/Documentation/devicetree/bindings/arc/hsdk.txt
+++ /dev/null
@@ -1,7 +0,0 @@
-Synopsys DesignWare ARC HS Development Kit Device Tree Bindings
----------------------------------------------------------------------------
-
-ARC HSDK Board with quad-core ARC HS38x4 in silicon.
-
-Required root node properties:
-    - compatible = "snps,hsdk";
diff --git a/Documentation/devicetree/bindings/arc/hsdk.yaml b/Documentation/devicetree/bindings/arc/hsdk.yaml
new file mode 100644
index 000000000000..3a269423b3d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arc/hsdk.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arc/hsdk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare ARC HS Development Kits device tree bindings.
+
+maintainers:
+  - Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: ARC HS Development Kit based on quad core ARC HS38
+          processor in silicon
+        items:
+          - const: snps,hsdk
+      - description: ARC HS4x/HS4xD Development Kit based on quad core
+          ARC HS48/HS47D processor in silicon
+        items:
+          - const: snps,hsdk-4xd
+
+...
-- 
2.21.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
