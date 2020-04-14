Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584A1A800F
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Apr 2020 16:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnyy2COX/X6GGt46AgWkMLBpAu6cgmPeG/dORtbeaGk=; b=D0do3N6xtIySDg
	zYL4e3epjQL7p3oB9mXa5qGQULEId6yPqet4U+/kv875pu1c0yvEG8D0eMdA2th/LBQuhYnZirR2w
	B4AdO1dTNmlkl+s1PEZ2hfKtRCPFBnF5yEJmwl61xrT/hM2aNURWmsxhINlwwFmHtroGb7jfo7ob2
	obkKGpl86d/t44Eb9jDJmGsKloZiTL70lNT0LNIY+Wu6YVZX9DcuZCFVqvVJRW+VNjVHs7qAnC3xl
	G+FfBmqHcIegGw1Sfd5nG261cW6nRGH8lUTB13B5Jc0fj1GSTwiahmH8EIhTqgqJcar2LKDon+B8w
	95lnXB95cILdrzxTqrig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMnM-0000FO-JP; Tue, 14 Apr 2020 14:44:12 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMnK-0000ED-Qg
 for linux-snps-arc@lists.infradead.org; Tue, 14 Apr 2020 14:44:12 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9B2F340443;
 Tue, 14 Apr 2020 14:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586875449; bh=CyQLY6qA9b5hLjN1QZuqQF+tTWfcH+oMNp9NHfFqATo=;
 h=From:To:Cc:Subject:Date:From;
 b=DrTqvCEdWVVYU7NdGBLWNrjs+MH9B2O5Rb2ohpc1in5xryOIb4U2EbiL0Ef/wkcwH
 Ki6Z1BAHuoCMQ36goSJCv8xY48STOzlRx3+2FtESSqdA68MYyHVzYLMvk+BMNHgwj0
 kWe78JO7FcyPIDJeUnguuEpHsEyw7e/1ci17vyCB2AN6uzAeotF9wxkmuAQl+Bjy3b
 oTUemcFSQDQ4lXMnofiTX/KdQl6MpFlbXjznW9j1XFBnym0SoXlVjC/kroqNOZaR6G
 MEMi5MoKzduGVQ5EHHHMBami3dMKcLYJArQCsE4lM31psZxZkphYiY/UsITV8xKLbe
 fC1z3rJUXgOfQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.225.48.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 653FBA005C;
 Tue, 14 Apr 2020 14:44:04 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH v2 0/2] DRM: ARC: add HDMI 2.0 TX encoder support
Date: Tue, 14 Apr 2020 17:44:00 +0300
Message-Id: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074410_874804_BE29E7B5 
X-CRM114-Status: UNSURE (   7.58  )
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

Eugeniy Paltsev (2):
  DRM: ARC: add HDMI 2.0 TX encoder support
  dt-bindings: Document the Synopsys ARC HDMI TX bindings

 .../display/bridge/snps,arc-dw-hdmi.yaml      | 131 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/Makefile                      |   2 +-
 drivers/gpu/drm/arc/Kconfig                   |   7 +
 drivers/gpu/drm/arc/Makefile                  |   1 +
 drivers/gpu/drm/arc/arc-dw-hdmi.c             | 126 +++++++++++++++++
 6 files changed, 272 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
 create mode 100644 drivers/gpu/drm/arc/arc-dw-hdmi.c

-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
