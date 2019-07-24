Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F2F72E71
	for <lists+linux-snps-arc@lfdr.de>; Wed, 24 Jul 2019 14:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PebnOr2mIdO8pdX+kCYlsgyc5PA6wrSW4arHLf2Qwms=; b=thflG+efUEw07rAFpzDzbk4Cx2
	DSF0Rbss77TSslSlacL/fhzEPGGG+Jl1fpt2LiLGkgRx2RwLukVNhh8uo9N2j4dsI/pz5zejmZX9G
	MSzls82hwaTOvGDZ57sAZXdj0BUI3hud7iOAoxYwRCeDjtRFwVNQ6kgFJ+LxVrukG2lMqcFyU1I9r
	rp/qfkpPoLFPEhEXnI89dnv0hljB+Z4J1mVhG1E5QTOcSboJVJOzwI9MeVSxd6aBTRdyhzYLafGY+
	1wW8t6xNRhHoGNEwYhW2ZqrtdNIvV/2ElfU8QxMicw9DhQTnOIJjHs1Oo+gSHwaEo2xLamhh0P+BS
	meLUiJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqG3E-0007au-Mf; Wed, 24 Jul 2019 12:07:20 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqG30-0007NT-49
 for linux-snps-arc@lists.infradead.org; Wed, 24 Jul 2019 12:07:11 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C01C3C1CC4;
 Wed, 24 Jul 2019 12:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563970024; bh=bjVetJO1YRRBd9PD5tDYdRS01g5brAO3VU5DPB/N8N8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cgylcunbj2r3JuNUMkcnWBJkh5He+myws3C1WAO8XwnjP3lz7wjFwxr01OKonk/r0
 wWThco2iIA1JNw8QCoQBiIHy/isKZ+Z+LxyVoY9W8FLZH0qtB4YQFTR0K258nTfVcR
 0FtyttswqAO01Ji2XMP7mG5JJkVTek7relYqMEuUu+3pNyZ97235t4DpvZ/x9mZ6IR
 Erdv6CqDz/YgVLQjL2yY9KCqL/pekfTN6kJU7oY6nYzmlHCwJai0Rhyo79DKl+FgqO
 wenFKqICc81+Zx+2ILMDCHjUTz4sFGm3C+S2i6vkjlnoMkpEplMtWutxCTf54wlzCe
 4sH0vgNOxO4jA==
Received: from de02arcdev1.internal.synopsys.com
 (de02arcdev1.internal.synopsys.com [10.225.22.192])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8D8A1A005C;
 Wed, 24 Jul 2019 12:07:03 +0000 (UTC)
From: Mischa Jonker <Mischa.Jonker@synopsys.com>
To: Alexey.Brodkin@synopsys.com, Vineet.Gupta1@synopsys.com,
 kstewart@linuxfoundation.org, tglx@linutronix.de, robh+dt@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: IDU-intc: Clean up documentation
Date: Wed, 24 Jul 2019 14:04:35 +0200
Message-Id: <20190724120436.8537-2-mischa.jonker@synopsys.com>
X-Mailer: git-send-email 2.8.3
In-Reply-To: <20190724120436.8537-1-mischa.jonker@synopsys.com>
References: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
 <20190724120436.8537-1-mischa.jonker@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_050706_423540_57E9BD7B 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
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

* Some lines exceeded 80 characters.
* Clarified statement about AUX register interface

Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
---
 .../bindings/interrupt-controller/snps,archs-idu-intc.txt        | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
index 09fc02b..c5a1c7b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/snps,archs-idu-intc.txt
@@ -1,7 +1,8 @@
 * ARC-HS Interrupt Distribution Unit
 
-  This optional 2nd level interrupt controller can be used in SMP configurations for
-  dynamic IRQ routing, load balancing of common/external IRQs towards core intc.
+  This optional 2nd level interrupt controller can be used in SMP configurations
+  for dynamic IRQ routing, load balancing of common/external IRQs towards core
+  intc.
 
 Properties:
 
@@ -13,8 +14,8 @@ Properties:
   of the particular interrupt line of IDU corresponds to the line N+24 of the
   core interrupt controller.
 
-  intc accessed via the special ARC AUX register interface, hence "reg" property
-  is not specified.
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
