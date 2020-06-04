Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5474B1EE98C
	for <lists+linux-snps-arc@lfdr.de>; Thu,  4 Jun 2020 19:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKs6y8TQM08WGVr4GOgg/lEVOWmUj+13OI+YKVweX1E=; b=bjPIdReCAbj1Iw
	AFMykBuFMmYmx4XpT7Rs/zpp3Lra4sDoff3vSq/fbsOwrfVpO7oaumxpZyyQlZjVh9099S2JGGhu5
	9Ol28UATYWyWif3lioYzMXygQkbgSZvUqzVra5s+aH2klLP3Z8aAsq27xSK6lL87D2Le5oXZRswVm
	9zVcvl5DloHuud3tWByTquuJBCV05P6/GL//fHFT2IMPXffJbtIQPmj+h5izdxMyG1Ref9oJYOLwj
	Ubd03pVZbMSQYPI3Ed2GMU8JSqRQUZYJQOej1RshyM3NsXLfO3D9qSJHxW8wG9TVfxxcToCQ/4bcS
	yAzZV6cqPeNn0PAEmB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtqO-0001GX-K0; Thu, 04 Jun 2020 17:39:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtqL-0001Eq-AL
 for linux-snps-arc@lists.infradead.org; Thu, 04 Jun 2020 17:39:54 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CD24A40030;
 Thu,  4 Jun 2020 17:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591292391; bh=BOUD1okbFsKFgS4cJO7HwMo5yaVDRq1gtmBar4MecC4=;
 h=From:To:Cc:Subject:Date:From;
 b=VP+7o3gYWKNyuGlJmZaKb49L+qgki/pR6R9weR24jXo9XxKtAILnITJ9P1WD1mgnl
 hBzFdKP86TzvwyeRZF0fGuKESNM6OoY1w27vKkyK+XHA1zinoOjZDyfswPtXALFT8w
 hz2r/P8gcOPMhCOqNY+TRgGT1OIzK2h2bQngLKCGTOQp3jMe1Fsa4KJKTfhEWsx8PU
 KGOGtRyPqI5g+EH9Tzazownz9bvR7XFwOq91slaG2lfBvzd5VriejkjwwE7i1BVu/c
 jtpv5fT0CxwhhlHwZe3kmkGkiCiSqbOjme6uYHt2cTasmekNsfulT70ZROujS7wT4h
 cj5Ud5FPnBr0Q==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.49.234])
 by mailhost.synopsys.com (Postfix) with ESMTP id 94592A005C;
 Thu,  4 Jun 2020 17:39:44 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2 0/4] ARC: [plat-hsdk-4xd] initial port for HSDK-4xD board
Date: Thu,  4 Jun 2020 20:39:23 +0300
Message-Id: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_103953_380446_C28D1029 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
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
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Changes v1->v2:
 * Fallback to ISA default mcpu flag if custom one isn't supported by
   compiler.
 * Drop HSDK custom Kconfig options (choose between HSDK and HSDK-4xD) as
   we don't need it (at least for now). Instead we select ARC_LPB_DISABLE
   for both boards but it's totally OK as HSDK doesn't have LPB so
   disabling will be skipped by BCR check in runtime.
 * Add missing HSDK-4xD device tree bindings. Convert HSDK device tree
   bindings to json-schema.

Eugeniy Paltsev (4):
  ARC: allow to override default mcpu compiler flag
  ARC: ARCv2: support loop buffer (LPB) disabling
  ARC: [plat-hsdk-4xd] initial port for HSDK-4xD board
  ARC: [plat-hsdk*] document HSDK-4xD board/SoC bindings

 .../devicetree/bindings/arc/hsdk.txt          |   7 -
 .../devicetree/bindings/arc/hsdk.yaml         |  26 ++
 arch/arc/Kconfig                              |  15 +
 arch/arc/Makefile                             |  21 +-
 arch/arc/boot/dts/hsdk-4xd.dts                | 322 ++++++++++++++++++
 arch/arc/configs/hsdk_4xd_defconfig           |  98 ++++++
 arch/arc/kernel/devtree.c                     |   1 +
 arch/arc/kernel/head.S                        |   8 +
 arch/arc/plat-hsdk/Kconfig                    |   3 +-
 arch/arc/plat-hsdk/platform.c                 |   1 +
 10 files changed, 492 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arc/hsdk.txt
 create mode 100644 Documentation/devicetree/bindings/arc/hsdk.yaml
 create mode 100644 arch/arc/boot/dts/hsdk-4xd.dts
 create mode 100644 arch/arc/configs/hsdk_4xd_defconfig

-- 
2.21.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
