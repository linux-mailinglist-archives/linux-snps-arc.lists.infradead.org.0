Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70043102705
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 Nov 2019 15:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UnGvDExZIZim7VH+/6MduckOqB8V/6Ote/T7/GIQtGk=; b=ekk2Pp7OPid/Kq
	PAhuyvMC6y42S4sNkoaTDeIqvjhw8PeJDX+SZ8VGOP1G8lUUAjBVfnXOdWpBX09i/3Vbc72KWn7o/
	I+PSKwb6QQ/STG2mEUOYGcWINNpDjHN2oNphISR9l9CwXIs8TuOVSppXE2fTv24qUofQeKpZxpeZg
	2hqXSpwXLM4gMTCD6HO1Y2BKzwe6ndEvuZ6PxBjhiB2WeznFvX+qUEptYh1tP34a6e3PuFIiCMkFF
	ym49S7uhvbXMnSJzkOyPEg/Hk5k4SwXlnOSebIuWvsccjmCr/nvrPEySNgmVUoVA9ZicMV7nRxMqD
	DePqN09nQl5STlt7KbDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4ha-0008Eh-3d; Tue, 19 Nov 2019 14:41:58 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4hY-0008DS-9d
 for linux-snps-arc@lists.infradead.org; Tue, 19 Nov 2019 14:41:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C9CCDC04B6;
 Tue, 19 Nov 2019 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574174515; bh=G4p50MA5mFWmjXCuDGR29jySUNUSgvmL37nTesfoCHE=;
 h=From:To:Cc:Subject:Date:From;
 b=ZcPGV1yuUi+weiF9t/xM5EPXYfLagwjWjkAIv41Z/Tb9YhloRYkFVkVSN4aBJxX1L
 fKKxGwZqQ81oK7aA7+1wcFJmX1Gj80q908fv4/CXFhoA3mgnzXNt0g9kqU2D9Eh1sE
 zP13Eqh3bCqaHxMi3wEUjUQByO4Ylb9r1a5i45R7RiIMrCwMD/7hShOV/3VttUDC3z
 vuQHLbj0ldkCZDuOOryPvWlb/xbR3dzJG6xfqzSEUo+qMMtAyScWnsGVkXotopcx4E
 phr7wAJJ0fTCKqHV9NVAmVD54l9/M36we+9zdvullHtRBqnDE9Oik1qV9rEkZm/iah
 rA/cm0sZo8Njg==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id DEEC8A005D;
 Tue, 19 Nov 2019 14:41:50 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: dri-devel@lists.freedesktop.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH 0/4] DRM: PGU: ARC: fixies related to framebuffer format
Date: Tue, 19 Nov 2019 17:41:43 +0300
Message-Id: <20191119144147.8022-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_064156_384343_DC6E2F6D 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
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

Eugeniy Paltsev (4):
  DRM: ARC: PGU: fix framebuffer format switching
  DRM: ARC: PGU: cleanup supported format list code
  DRM: ARC: PGU: replace unsupported by HW RGB888 format by XRGB888
  DRM: ARC: PGU: add ARGB8888 format to supported format list

 drivers/gpu/drm/arc/arcpgu_crtc.c | 36 +++++++++++++++----------------
 drivers/gpu/drm/arc/arcpgu_regs.h |  2 +-
 2 files changed, 19 insertions(+), 19 deletions(-)

-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
