Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B6560A34
	for <lists+linux-snps-arc@lfdr.de>; Fri,  5 Jul 2019 18:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ngW4gHeFNe/KzCf20WESL7wn9Xe9LcqbbyNwXKPxc1A=; b=mASfX48oP8sH6u
	owDstCUrlS2VfsIFSFpMGENjAnfGxg7s7pcFo+x7W9cyFFc03ggbd7iwje5ang7GO6nphlb0epV0d
	fjWzgpBnOwjSHFfOc3ljlmn2g3PW6ZfZrkKS6LwrZUqFsKmFDgX6TeBJcobbIFiA1M5IE3ia+S6Db
	+0x+FJUlqFDQ80Nt7+iG2MoDHKoJoJC+rD8QB1AJ72prv0CEaz6C+w/+W+ALzS3BK4lP1rKEdfvNb
	FtmO/pQHepGcma194ArIGabAei2tQdKXy+yuq3CWHGsUxWgvfq2guZXEIwpJp+uCgKvz5tWi533lh
	6tpuuiscH6ZlfC00zCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjR0V-0003sj-1j; Fri, 05 Jul 2019 16:24:19 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjR0S-0003sK-HD
 for linux-snps-arc@lists.infradead.org; Fri, 05 Jul 2019 16:24:17 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E09D0C122A;
 Fri,  5 Jul 2019 16:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562343856; bh=4o2VcCBEFxtaDIdwJ60rzFfjOLVW1pka2ZauMGQyOJA=;
 h=From:To:Cc:Subject:Date:From;
 b=Zr6tzeKamzNRKmkdCrAq3AB7XzU5sVVGD5XeKPD7RcfqR/sP+Kp+9AeTos4zKcFu7
 tINm5CMKyW4FRsc9SF7vS9iRZmekdjL5ywBbo3Y2UnvOz7trnEEHmvIVB4aIF+YfSd
 em50vQnwhX9mXMePz5DhBm33KU2joNbeaEE/KBqoRWSV9Sz5TwW9xB2DbQUp/9Npk+
 49JB+E9k6BcPASjA0/qLxd04KIsqPTg+D7OsGm3lOZtTsYnb5v9YXQjNliBA7FlJ/O
 rlcMEjtbAnhLd/irRW52Z//aCPm8Bc42w8ArgfD7PJaCj+LD5d2cOeKYBXLEr+mKqA
 LMHkECyTCYDxQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 24FA3A005D;
 Fri,  5 Jul 2019 16:24:11 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: [plat-hsdk]: Enable AXI DW DMAC in defconfig
Date: Fri,  5 Jul 2019 19:24:09 +0300
Message-Id: <20190705162409.8916-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_092416_579613_2B554D11 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

For some reasons my previous patch "Enable AXI DW DMAC support"
was applied only partially (only device tree part).
So enable AXI DW DMAC in HSDK defconfig to be able to use it in
verification flow.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/configs/hsdk_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index c8fb5d60c53f..85e7921e0628 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -66,6 +66,8 @@ CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MMC_DW=y
+CONFIG_DMADEVICES=y
+CONFIG_DW_AXI_DMAC=y
 CONFIG_EXT3_FS=y
 CONFIG_VFAT_FS=y
 CONFIG_TMPFS=y
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
