Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BB7132BF2
	for <lists+linux-snps-arc@lfdr.de>; Tue,  7 Jan 2020 17:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P6q813JqiZkkb/LEyFVeVz4vZLs1dBS20K5apiGgN1o=; b=JttMMFtHFa0IaFnJlHlr1P4Ils
	G/KLwMggbqXGcT4nvJBAD36XAMhrrSSFMYzFUCnGQIDVmIeGqgs+v1CywJSD1rDalmGusIKhusezY
	vIFTJL0I7zLhAXmm8ntv9l+QF0/UMKke719WpEVWZFzeDiau6SGkWwSIzGAFl79xke657KuxYqgVR
	870u41FzDBwCRHcNn4zuWq0N0uJns7z3h8eVQs/rh8/mOVVnKc6In6JJDEag/s4RDmmpnjwj4+bC8
	qsQyTnm6DKPyIBRav3Y/ltkQfV56OicftJk30BdJ3PamAMxdiROMYJwwWe9KHIfaFrTizxsyHIhn0
	wu64QpwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ios8V-0003l9-GQ; Tue, 07 Jan 2020 16:55:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ios8T-0003ko-MS
 for linux-snps-arc@lists.infradead.org; Tue, 07 Jan 2020 16:55:19 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D18324672;
 Tue,  7 Jan 2020 16:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578416117;
 bh=oXTZ8M1BBmTHLjjcFVmN9zcXDQy9s5Bq9l8BtwLstpc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qNYZQFlBu+SoU3ZIF8lpxeWmalSoh46HkqgMC/ZofikhUtazAC1EIawH/lJcnkWf4
 WnToP3+0ja2JEKlI39yDsGBzuaCzhvg3Nga02GX4gM4dlTsXonHYjTtZ9zaHWF2rxn
 /UxwKagBv0pG9j4wvtUzG0LSzVLfKhGLWanGLoz8=
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
Subject: [RFT 10/13] net: wireless: ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:09 +0100
Message-Id: <1578415992-24054-13-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_085517_772026_4FB820EE 
X-CRM114-Status: GOOD (  12.77  )
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

The ioreadX() helpers have inconsistent interface.  On some architectures
void *__iomem address argument is a pointer to const, on some not.

Implementations of ioreadX() do not modify the memory under the address
so they can be converted to a "const" version for const-safety and
consistency among architectures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireless/ath/ath5k/ahb.c
index 2c9cec8b53d9..8bd01df369fb 100644
--- a/drivers/net/wireless/ath/ath5k/ahb.c
+++ b/drivers/net/wireless/ath/ath5k/ahb.c
@@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Enable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg |= AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 
 		/* Enable global WMAC swapping */
-		reg = ioread32((void __iomem *) AR5K_AR2315_BYTESWAP);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_BYTESWAP);
 		reg |= AR5K_AR2315_BYTESWAP_WMAC;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_BYTESWAP);
 	} else {
 		/* Enable WMAC DMA access (assuming 5312 or 231x*/
 		/* TODO: check other platforms */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg |= AR5K_AR5312_ENABLE_WLAN0;
 		else
@@ -202,12 +202,12 @@ static int ath_ahb_remove(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Disable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg &= ~AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 	} else {
 		/*Stop DMA access */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg &= ~AR5K_AR5312_ENABLE_WLAN0;
 		else
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
