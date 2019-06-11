Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA813D3E2
	for <lists+linux-snps-arc@lfdr.de>; Tue, 11 Jun 2019 19:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5KvOjA8wKpKqwgMEPJTm4SULAAclYDo1L11WH6MPKAw=; b=KEf8nFz34L2+T1
	cvYehnPvfobxf6jdzccu15RyHOPTheOYPedeAntaOsolOqGgsVV8UcK606CVQYJmWXAaYTgPaaDqa
	hs8PMoYd2qAYNd4RleDpUnZRBgKHUwZIFHIMiNV3j8qYLwYYcEaRdeT6DFgxJv/vRu7Dg5ZLYCFpr
	oRyh/t/57l2f7k0eNq9hI9CqCRwYs/RKdbx37q+jeoVyGXQQ637GG+AhvpjKxYWKjupL68+GjVxyn
	0W7KIDQVR+jCbmr8pz2qyPTMnpAgnEp5m7LBJt5/Y0wWpA3ETAvLZwuJYrrNtB6/1eH0NQdRn6vi3
	nMMrAL7DqDId1xsC4Uug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakTT-00041I-JR; Tue, 11 Jun 2019 17:22:19 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakTQ-00040G-JM
 for linux-snps-arc@lists.infradead.org; Tue, 11 Jun 2019 17:22:17 +0000
Received: from mailhost.synopsys.com (unknown [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B9498C016F;
 Tue, 11 Jun 2019 17:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560273733; bh=0vOMGLO1nb4/1qQXTnpKwZ5ss3VewMScaHY/JKElpRU=;
 h=From:To:Cc:Subject:Date:From;
 b=mEG+Kk+MU17YGXVVNiMP3HavxsIygpQwFuDgaPF+bHbluiugCJ2D5Lkt2ZBC/a1VI
 bvvSqdTRwWuVbzoXESWnEJFYLswnqFnbtAEWIlrYI6Lj3u9hygj2hSQEm4TbCI0owS
 8pXg1m1FIasnnAzp7MB4zTylHtWBBOYe/MMNLEa+EiN9/V5vN8i8se3hAQO6oKjmqV
 1MBohj45Ky1pn1VzpuYrVSAUFuLti88i1VK4epQIeMFit7S/2PWEPflOPWZsfxDCYT
 XzO+bvShRqhgABG5Rpgs4O9X4cyAhVF/Btm5YBc/9k48TL5eoI1xGOlQbjVh9mgGJB
 rbuSCx9xXR6PA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.8.58])
 by mailhost.synopsys.com (Postfix) with ESMTP id 97909A022E;
 Tue, 11 Jun 2019 17:22:08 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH] drm/arcpgu: rework encoder search
Date: Tue, 11 Jun 2019 20:21:59 +0300
Message-Id: <20190611172159.24048-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_102216_647256_9FE53864 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: David Airlie <airlied@linux.ie>, linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Instead of using non-standard "encoder-slave" property to find
encoder let's find it by associated endpoint.

While I'm on it add corresponding log message if we don't find
any encoder and we assume that we use virtual LCD on the
simulation platform.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu_drv.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index c9f78397d345..d08b9977f021 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -23,6 +23,7 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <linux/dma-mapping.h>
 #include <linux/module.h>
@@ -54,7 +55,7 @@ static int arcpgu_load(struct drm_device *drm)
 {
 	struct platform_device *pdev = to_platform_device(drm->dev);
 	struct arcpgu_drm_private *arcpgu;
-	struct device_node *encoder_node;
+	struct device_node *encoder_node = NULL, *endpoint_node = NULL;
 	struct resource *res;
 	int ret;
 
@@ -89,14 +90,23 @@ static int arcpgu_load(struct drm_device *drm)
 	if (arc_pgu_setup_crtc(drm) < 0)
 		return -ENODEV;
 
-	/* find the encoder node and initialize it */
-	encoder_node = of_parse_phandle(drm->dev->of_node, "encoder-slave", 0);
+	/*
+	 * There is only one output port inside each device. It is linked with
+	 * encoder endpoint.
+	 */
+	endpoint_node = of_graph_get_next_endpoint(pdev->dev.of_node, NULL);
+	if (endpoint_node) {
+		encoder_node = of_graph_get_remote_port_parent(endpoint_node);
+		of_node_put(endpoint_node);
+	}
+
 	if (encoder_node) {
 		ret = arcpgu_drm_hdmi_init(drm, encoder_node);
 		of_node_put(encoder_node);
 		if (ret < 0)
 			return ret;
 	} else {
+		dev_info(drm->dev, "no encoder found. Assumed virtual LCD on simulation platform\n");
 		ret = arcpgu_drm_sim_init(drm, NULL);
 		if (ret < 0)
 			return ret;
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
