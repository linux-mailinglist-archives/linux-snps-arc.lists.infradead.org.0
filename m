Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23F51A8F18
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 Apr 2020 01:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K9vxR1Tr8kdeZ82wlzmWEINhgnznhDbpzD3tmXtnK7s=; b=rY/lANNyxCnwp2
	oaKTuhTD48Yg1tP/xfL9s83JhCs+rdA9wx/1rIi/03QSoIx5pMQky8PjHfp39U86Df0PlqXmPP6Wp
	mXYmKJqPrvsWL7UN8w+ZGxG5mJOn7VTSssJgnP4XnbTfzlVSJwhK475FjFjSWGzh0rTdCQs7sERrY
	KV97QBL+ufsvFtGykf0g9mvyXxYnTjofcFqUG9STyrqk9tQTGK3xHiTB/RUzpdQNGve4z96F2Zcuo
	kjungzvia16TeMXl6Ak21DUt5gwIq4VDEWwQWyL2qRFD3664dqMjXjDd7WKWG/EXD615YbX1d967A
	6SbVDy9ulneuV3u1ZCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOV01-0003hB-2J; Tue, 14 Apr 2020 23:29:49 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOUzv-0003fI-Me
 for linux-snps-arc@lists.infradead.org; Tue, 14 Apr 2020 23:29:47 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D0DC6C00CC;
 Tue, 14 Apr 2020 23:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586906982; bh=cbwVPNBBMDU3Qsse2SdkAJsbA5fiCp4ztKxUhtvleWQ=;
 h=From:To:Cc:Subject:Date:From;
 b=I9YbktXPbOUEqFICj4aMMImlRJrFxMgJgrPXue5z/GF4twcfeXC/PudnuBQn/VckG
 UR6hyiuapJKc6nnZJDCLPw9BhOl2EvPC3lUesbR3nRrOEupwJl/JhCZI0Qq3qpqaSi
 s3vpDOALJcUmc5XQnImHE2OW97N8JMnMhcns0wW8/Yz4A5AJQsu6X42DHNof/xPm3T
 vU79f60Ouz3TYNOu9mPeLnfLmNjj/l9XwNgQDGTO9ny9ZV32AtbPMnqeYa7v96JpZ7
 NjleVLXs3Rs23sIhNZkjNnuwq5KLIDG+s6ITwpIUXowkS/VvMPE62/Vd3Rm7Jd3IrZ
 x3+BBCnZoG6uQ==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.48.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id C1FB0A005C;
 Tue, 14 Apr 2020 23:29:35 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH v3 0/2] DRM: ARC: add HDMI 2.0 TX encoder support
Date: Wed, 15 Apr 2020 02:29:27 +0300
Message-Id: <20200414232929.22788-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_162943_780102_E2E7313E 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
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

Changes v1->v2:
 * use DT Schema format please (.yaml files) for DT bindings

Changes v2->v3:
 * Add missing 'interrupts' property in DT bindings
 * Drop dummy 'dw_hdmi_bridge_mode_valid'
 * Change bracing format of 'of_device_id' structure
 * Change compatible string to "snps,arc-dw-hdmi-hsdk"
   Now DT binding file is snps,arc-dw-hdmi.yaml and compatible is
   "snps,arc-dw-hdmi-<soc/board>"
 * Minor fixes

Eugeniy Paltsev (2):
  DRM: ARC: add HDMI 2.0 TX encoder support
  dt-bindings: Document the Synopsys ARC HDMI TX bindings

 .../display/bridge/snps,arc-dw-hdmi.yaml      | 136 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/Makefile                      |   2 +-
 drivers/gpu/drm/arc/Kconfig                   |   7 +
 drivers/gpu/drm/arc/Makefile                  |   1 +
 drivers/gpu/drm/arc/arc-dw-hdmi.c             | 116 +++++++++++++++
 6 files changed, 267 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
 create mode 100644 drivers/gpu/drm/arc/arc-dw-hdmi.c

-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
