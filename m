Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1830102707
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 Nov 2019 15:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BgbzlkkZnOU2LkqJAVqyOngh3g5t891NeeYANRNal4=; b=FXhddNQTg2WIGp
	4wqyyydHSG5qicZK5IXEZlwRNlSrlc/Jy8BPhyYo0qZRxBfsDksuqi34fTEB0vZJsokF0m8qUrZI9
	9wHObHr54gx7TBrxdxX0Hij3Xmn8lQSpCw7QPOLn2WOKly3cCW1IjknFxrF69otnTXwuYOQ7WeukL
	eR4OAfG0+/FOVNakJgoKQOXJvpBilgWA8qfmOPDGTRbYCt7BHDx0UVBNYGNyY9ovitLakqbn10egm
	3uZWOycR1t55Ti5/fdo1MzzyKyrURnVw77JKGPSGcmdsztA2kdDc2C1VWTOAzf+eRmj6BqnDme9uA
	+0I6Fq8PimHg5wQGnkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4hc-0008Fv-DU; Tue, 19 Nov 2019 14:42:00 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4hY-0008Db-Ba
 for linux-snps-arc@lists.infradead.org; Tue, 19 Nov 2019 14:41:58 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1B414C08FE;
 Tue, 19 Nov 2019 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574174516; bh=qqXWvfWwuI+nZia268XDs83BGemiBWv1K7uf/sFQhLQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dQUN7TodesjqoTqzqIvGXhuRpK/NqfzwNPoJlTF5j+TtxfPqT1XjjIpgN3t2BkXXh
 CJpNZwhisEUe68pH6sFmzl9kb9NVMLeQtk4MC+C2vwnDnfh+/B0fwHv1CbL9GSmOfu
 SX0muNWsAbZ19+pY43MywWDEs9RScYqNdgRAdicSkqf9e/fypLgWu+KmUFXvCY6yWl
 xjIEQFRwlGHlKexzICn7aFPoO2YHFcXGYIWiAsxF/AK+wQ3sXfAHrvcf3xASYv6KvH
 gGvmIC6DjzjayJXrd+a0Gxf5poxJkXBEmBIr+cXiaXw3ODfHW0VshFA1eAQ2cS30Vo
 c49T1RpbKitQQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id 62061A0060;
 Tue, 19 Nov 2019 14:41:52 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH 1/4] DRM: ARC: PGU: fix framebuffer format switching
Date: Tue, 19 Nov 2019 17:41:44 +0300
Message-Id: <20191119144147.8022-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191119144147.8022-1-Eugeniy.Paltsev@synopsys.com>
References: <20191119144147.8022-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_064156_423477_48B7F3E7 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Current implementation don't switch to RGB565 format if BGR888 was
previously used. Fix that.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu_crtc.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
index dfaddbb7da0d..31d9824c46cc 100644
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
@@ -32,6 +32,7 @@ static void arc_pgu_set_pxl_fmt(struct drm_crtc *crtc)
 	uint32_t pixel_format = fb->format->format;
 	struct simplefb_format *format = NULL;
 	int i;
+	u32 reg_ctrl;
 
 	for (i = 0; i < ARRAY_SIZE(supported_formats); i++) {
 		if (supported_formats[i].fourcc == pixel_format)
@@ -41,11 +42,12 @@ static void arc_pgu_set_pxl_fmt(struct drm_crtc *crtc)
 	if (WARN_ON(!format))
 		return;
 
-	if (format->fourcc == DRM_FORMAT_RGB888)
-		arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
-			      arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) |
-					   ARCPGU_MODE_RGB888_MASK);
-
+	reg_ctrl = arc_pgu_read(arcpgu, ARCPGU_REG_CTRL);
+	if (format->fourcc == DRM_FORMAT_RGB565)
+		reg_ctrl &= ~ARCPGU_MODE_RGB888_MASK;
+	else
+		reg_ctrl |= ARCPGU_MODE_RGB888_MASK;
+	arc_pgu_write(arcpgu, ARCPGU_REG_CTRL, reg_ctrl);
 }
 
 static const struct drm_crtc_funcs arc_pgu_crtc_funcs = {
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
