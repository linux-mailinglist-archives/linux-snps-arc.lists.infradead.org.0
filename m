Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7666C6CF6F
	for <lists+linux-snps-arc@lfdr.de>; Thu, 18 Jul 2019 16:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NgQz9Gdaty1SEOr4CsJh8XyA7mNOn+JhZjvsO8FT430=; b=On44qJkeLJYBWh
	YR2nZJVKcezmCwxsFNoA8Tu8bWk1o9CvOHYNbU556H9LUKg+IkdY/ttpws8pUeRhsxz8J+VV0/jpu
	8AHp6KclvroAKnUEJrt+VSWoTF+Ri+1XLqc+tH/5fzO9I4hfy4PS+SPIHrbDNFjdR9JIobhcWkNY+
	aDjvKhHg1AnvICrupmULaR5ImyKVrEAcDJ0AbVbzr9wFcQPsNa6SdddK4bJLSI4aBtYLLcyb9E/eE
	isRhpdePvLV80b9LETZNXHcPb9wrg6Xqu14b+Ne7ldF3zwcQsqi0wZtUIVNToFkCnBPxbvgB3jXT6
	LiU/vwG+/U7e50AzQ4DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho748-0003Ti-Eq; Thu, 18 Jul 2019 14:07:24 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho73J-0003AE-6W; Thu, 18 Jul 2019 14:06:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 03C8AC2955;
 Thu, 18 Jul 2019 14:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563458792; bh=v6UNc6lWngEqHMHQcuaMIXOAFhJfAEwqk3fGKGKinmU=;
 h=From:To:Cc:Subject:Date:From;
 b=S7yNsI2y/yubF+7p6A5F42g8p26e4OA1Y6mToIn0s9lyhL+ZYuHj29AYohiRQy/Wk
 eMiOHJyS4CNd2aRbrsEPkV6XTd7+w6dqRXp0IR8pSTAeYkthcGFWTpCCiGrK/gCWp6
 t61HtxsINfAtnBS3al6jieXscvGSl0b1di+Nt7JMdtOFDEDxlzvFYPLTNS2G+kupT4
 RyKK/m+QFidkp/gweb7hsznweWgme9gm6+AEafPDH6BI9myVlbDxMVF6jSDiJRDulN
 j80wqrQIoeQroLsjfk4GOI2EpqlmaM3Dc7D+imJZIS0qWrS7QaWvZZa6Db8o4o5hex
 uZwdvlB8zlxlg==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9CB84A0057;
 Thu, 18 Jul 2019 14:06:27 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-mtd@lists.infradead.org, Marek Vasut <marex@denx.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2] mtd: spi-nor: add support for sst26wf016b memory IC
Date: Thu, 18 Jul 2019 17:06:23 +0300
Message-Id: <20190718140623.20862-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_070633_290916_0B396CAE 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Marek Vasut <marek.vasut@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This commit adds support for the SST sst26wf016b flash memory IC.
This IC was tested with  "snps,dw-apb-ssi" SPI controller.
We don't test dual/quad reads however sst26wf016b flash's datasheet
advertises both dual and quad reads (and support of corresponding
commands)

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v1->v2:
 * drop sst26wf032 support as untested
 * add note about SPI controller used and dual/quad reads to commit
   message.

 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7f512b..0beed856bad8 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1945,6 +1945,7 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
 	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
 	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
+	{ "sst26wf016b", INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 
 	/* ST Microelectronics -- newer production may have feature updates */
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
