Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4E1186DB6
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Mar 2020 15:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=avPJ7qD/+kt9xeftpVJI3mVKaLF/Y27HEJEWygK4MFw=; b=dfrsnbGioxpGsf
	nYm6ePdKluEqPBfIFK5FkkvopgoTpR63xY2jHJmMWggw9KBzPxzphYJLVwbX/YC7EZOlab8mZuNMU
	CBPfesaxIYnZkgtyXVgUYYM2Cw4CR2qmB1OmpRFxB/Pq1aPaTh8zCRB5p2sqZwDJwQX4uVHIQ1Z3B
	1BxLjd+fy1KMf14AYh1joKje1XTe45gWme+QT0h1YddJUYiWx7Kr1LI02A7G1oF6iuDj20jnMeieA
	mgk779I9c9Sc1V4JW64oAj7EqLwF4Sz6eg0ec7NPT/uHTT9uiG0mvRFa6lcyupZcocJXYM70X36vw
	HTuM7dSb6GXlPFzW26vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDr1B-0006qZ-TU; Mon, 16 Mar 2020 14:47:01 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDr19-0006pV-NB
 for linux-snps-arc@lists.infradead.org; Mon, 16 Mar 2020 14:47:00 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B230040084;
 Mon, 16 Mar 2020 14:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584370019; bh=aFBQtm+prDFNgjmfrUsKNbthIoV6yCpKEB9C+4dQqqY=;
 h=From:To:Cc:Subject:Date:From;
 b=daxUK7Heo5k6tjGfCoJ+k43Xpgo2Eplyu9f4ZA84cZ9kRdHymcRa3NioYZvlEUDCu
 0k/rqbRbG9sEbxNq6KOSU6V91ga15p3+uelmvqhcaRseHB7CeGwyOt1ugOjk/iA+/S
 TD0arN+Rc3+fGtHaqHeHgKZ2uxzdHh1MYE6mfUVqzA4upa8BjOXpSi4vlkjW2iLe+6
 EZUyplh/3L9hl1omB0m+Ms4IN2qTspOqzTdxCQz9aYtXQXbMlhNbD1wY4bh/VJ/dM1
 XABVnoEcnbzNGYFHU7Yrmqw1mKeWoVNmWiFi4MLku8TSR6/FOmho/kpPgrO9hgjWM9
 UVbMxqE75/NNQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id C565DA005B;
 Mon, 16 Mar 2020 14:46:52 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH 0/2] DRM: ARC: add HDMI 2.0 TX encoder support
Date: Mon, 16 Mar 2020 17:46:45 +0300
Message-Id: <20200316144647.10416-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074659_770367_8664C5AD 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
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

Eugeniy Paltsev (2):
  DRM: ARC: add HDMI 2.0 TX encoder support
  dt-bindings: Document the Synopsys ARC HDMI TX bindings

 .../display/bridge/snps,arc-dw-hdmi.txt       |  73 ++++++++++
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/Makefile                      |   2 +-
 drivers/gpu/drm/arc/Kconfig                   |   7 +
 drivers/gpu/drm/arc/Makefile                  |   1 +
 drivers/gpu/drm/arc/arc-dw-hdmi.c             | 126 ++++++++++++++++++
 6 files changed, 214 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.txt
 create mode 100644 drivers/gpu/drm/arc/arc-dw-hdmi.c

-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
