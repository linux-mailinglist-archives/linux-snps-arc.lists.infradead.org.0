Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9A312AC63
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Dec 2019 14:31:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f61fkGkd2fZ3exhGZep00LvO851M7uTiDXuj89oIJCs=; b=OaP
	CpnSAppg8IL/Lme18Tovy+Ef/w5moDdfje0dQnwyw41w+zoYnAoWPgBPXwpmHDsB1RtQfhYi2GQyH
	GLE0cZiDE7skqcUB/VmvWNZrZJcQDK2IVwvw3NA7J6LIWnlUaLdYHNsB2QwM3toa9zELTcp+HDscO
	UhFszd8xAqnB+6Xo3Y2NSTiG4kvu/AqlzxYoaUWClHVma1GdPH6g3O/c8cSynAEgbcRdBYN9tzF0x
	yLp5D0wWVgIHdWok1aVDKL/+TwbbIH5DaS3ceTlghp2HNEGVPcsRIiOpaY4wu0p4txTuF1nZOQOeR
	kN81Fb8n7ZgDULP5ShwqYDESWRTYgcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikTEl-0006ct-Ud; Thu, 26 Dec 2019 13:31:35 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTEj-0006cE-KR
 for linux-snps-arc@lists.infradead.org; Thu, 26 Dec 2019 13:31:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 20FE8C0961;
 Thu, 26 Dec 2019 13:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577367090; bh=mmqhZ6xOuWQ/RR2eyFm8XnxdO0UMDrt4uSocM/5aX3Y=;
 h=From:To:Cc:Subject:Date:From;
 b=PYbhpaSG497+clReJIUx5HUIAiPSjBOSoqCp9uYstlIFrSCH9HUDIUeWiDyhBMc4Y
 Gn6Ovx2YYMbXn/9VFAGrchbVnFK+UGjXeFMQlUrs/5h9WfAT1srcF+jc/5ux8ML5Ox
 qJ+8FZ/kvIP0L22+TtjAqma9e3Gs/MnLA53A+uTUIeSU7X+qUUs97G4VD0El9aUF47
 j0KIeL2DxNgEKbcC6moJrdfoyIj2WTItxuf4QgDhPu2ArXxPgLhFTGe2i0ELE6bgpj
 mKxAwhhAdBjIQ2+wYAd2hV0W9bgSzX2r4+8J8rNt7EYrOtOflgtzRgXlXKCFy5k7wt
 TaYriYDWNxOKQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id E561CA005B;
 Thu, 26 Dec 2019 13:31:27 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH 0/3] ARC nSIM (AKA virtual & prototyping platform) updates
Date: Thu, 26 Dec 2019 16:31:22 +0300
Message-Id: <20191226133125.47973-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_053133_708116_73CA2040 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

In this small series we refubrish olde good nSIM configs & platform
so that it no uses standard 16650 (in fact DesignWare) UART and
little-endian HS version also gets Virtio support (Net & BLK) for use
with QEMU.

Alexey Brodkin (3):
  ARC: nSIM: switch from ARC UART to DW UART
  ARC: nsim_{700|700be|hs38be}_defconfigs: Disable networking
  ARC: nsim_hs38: Add support of Virtio NET & BLK

 arch/arc/Kconfig                  |  4 ++--
 arch/arc/dts/nsim.dts             | 41 ++++++++++++++++++++++++++++++++++-----
 board/synopsys/{ => nsim}/Kconfig |  3 +++
 board/synopsys/nsim/MAINTAINERS   |  6 ++++++
 board/synopsys/nsim/Makefile      |  7 +++++++
 board/synopsys/nsim/nsim.c        | 26 +++++++++++++++++++++++++
 configs/nsim_700_defconfig        |  9 +++++----
 configs/nsim_700be_defconfig      |  9 +++++----
 configs/nsim_hs38_defconfig       | 17 ++++++++++++----
 configs/nsim_hs38be_defconfig     |  9 +++++----
 10 files changed, 108 insertions(+), 23 deletions(-)
 rename board/synopsys/{ => nsim}/Kconfig (74%)
 create mode 100644 board/synopsys/nsim/MAINTAINERS
 create mode 100644 board/synopsys/nsim/Makefile
 create mode 100644 board/synopsys/nsim/nsim.c

-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
