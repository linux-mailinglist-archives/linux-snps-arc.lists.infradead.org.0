Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD4C132B7D
	for <lists+linux-snps-arc@lfdr.de>; Tue,  7 Jan 2020 17:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9i9NyKDg0t+F65Xq/yQ2XP4i9iCvCC2TNJSaQHSHRKM=; b=SWK
	kQ6ZTO1fETCcrUzMwhnsixoNtod4Eqx4ktrjGjIpLWlNFmUCVKG90EW0ayyu5+qBCrpbPacetazVl
	Tn4EZmcUK+EJAM3f4OKli6J/MV8tinPTfq64XvmNzz6DDCpLUaq3PTMewg8G5WXv/06KRlzwQQ2iA
	A0NuClgZczVebh2bscwDp8Gg1pQQxVvtZmUzknGjjkQNOjUyvpfgpTo7ktLE5ARk3wsm9iJR17QEG
	3cXZygtcp7wgeQnxDERw8/T23w992IhoVr0naD0fmaPIwDwqs59jHaDyDjgSSCNV8IA3zsmKYST0H
	w5kMs9y1IEOTT2RguEIom8Ie1SBlg8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ios6m-0002AX-Tl; Tue, 07 Jan 2020 16:53:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ios6j-0002A1-Tm
 for linux-snps-arc@lists.infradead.org; Tue, 07 Jan 2020 16:53:31 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B395D2073D;
 Tue,  7 Jan 2020 16:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578416009;
 bh=5pGZzG2R2Yg9BvXiJJcmzkQkuLAOfS9PEHpiBXb0Uls=;
 h=From:To:Cc:Subject:Date:From;
 b=Q+mZvp8DRBQ+NGLFMRHq+ToaCPgY0sfmDNR9VpdaiZ9T2V/2nT/SeANXkK/wLMDoP
 zenjraQPO9M07VwPEmNNuyRUDTXxaFInE+OA1UUiQvrcd9MJ0C7xFDpFQN49dMy/gI
 GDlqwuMx3bvmjp+6UgH+xyziWuKaIO8OxKhrqNsk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jiri Slaby <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
Subject: [RFT 00/13] iomap: Constify ioreadX() iomem argument
Date: Tue,  7 Jan 2020 17:52:57 +0100
Message-Id: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_085330_002381_9AECACD4 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

The ioread8/16/32() and others have inconsistent interface among the
architectures: some taking address as const, some not.

It seems there is nothing really stopping all of them to take
pointer to const.

Patchset was really tested on all affected architectures.
Build testing is in progress - I hope auto-builders will point any issues.


Todo
====
Convert also string versions (ioread16_rep() etc) if this aproach looks OK.


Merging
=======
The first 5 patches - iomap, alpha, sh, parisc and powerpc - should probably go
via one tree, or even squashed into one.

All other can go separately after these get merged.

Best regards,
Krzysztof


Krzysztof Kozlowski (13):
  iomap: Constify ioreadX() iomem argument (as in generic
    implementation)
  alpha: Constify ioreadX() iomem argument (as in generic
    implementation)
  sh: Constify ioreadX() iomem argument (as in generic implementation)
  parisc: Constify ioreadX() iomem argument (as in generic
    implementation)
  powerpc: Constify ioreadX() iomem argument (as in generic
    implementation)
  arc: Constify ioreadX() iomem argument (as in generic implementation)
  drm/mgag200: Constify ioreadX() iomem argument (as in generic
    implementation)
  drm/nouveau: Constify ioreadX() iomem argument (as in generic
    implementation)
  media: fsl-viu: Constify ioreadX() iomem argument (as in generic
    implementation)
  net: wireless: ath5k: Constify ioreadX() iomem argument (as in generic
    implementation)
  net: wireless: rtl818x: Constify ioreadX() iomem argument (as in
    generic implementation)
  ntb: intel: Constify ioreadX() iomem argument (as in generic
    implementation)
  virtio: pci: Constify ioreadX() iomem argument (as in generic
    implementation)

 arch/alpha/include/asm/core_apecs.h                |  6 +--
 arch/alpha/include/asm/core_cia.h                  |  6 +--
 arch/alpha/include/asm/core_lca.h                  |  6 +--
 arch/alpha/include/asm/core_marvel.h               |  4 +-
 arch/alpha/include/asm/core_mcpcia.h               |  6 +--
 arch/alpha/include/asm/core_t2.h                   |  2 +-
 arch/alpha/include/asm/io.h                        | 12 +++---
 arch/alpha/include/asm/io_trivial.h                | 16 ++++----
 arch/alpha/include/asm/jensen.h                    |  2 +-
 arch/alpha/include/asm/machvec.h                   |  6 +--
 arch/alpha/kernel/core_marvel.c                    |  2 +-
 arch/alpha/kernel/io.c                             |  6 +--
 arch/arc/plat-axs10x/axs10x.c                      |  4 +-
 arch/parisc/include/asm/io.h                       |  4 +-
 arch/parisc/lib/iomap.c                            | 48 +++++++++++-----------
 arch/powerpc/kernel/iomap.c                        | 22 +++++-----
 arch/sh/kernel/iomap.c                             | 10 ++---
 drivers/gpu/drm/mgag200/mgag200_drv.h              |  4 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c               |  2 +-
 drivers/media/platform/fsl-viu.c                   |  2 +-
 drivers/net/wireless/ath/ath5k/ahb.c               | 10 ++---
 .../net/wireless/realtek/rtl818x/rtl8180/rtl8180.h |  6 +--
 drivers/ntb/hw/intel/ntb_hw_gen1.c                 |  2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h                 |  2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h                |  2 +-
 drivers/virtio/virtio_pci_modern.c                 |  6 +--
 include/asm-generic/iomap.h                        | 22 +++++-----
 include/linux/io-64-nonatomic-hi-lo.h              |  4 +-
 include/linux/io-64-nonatomic-lo-hi.h              |  4 +-
 lib/iomap.c                                        | 18 ++++----
 30 files changed, 123 insertions(+), 123 deletions(-)

-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
