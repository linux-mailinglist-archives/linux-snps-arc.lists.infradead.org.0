Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DEE1819FE
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 14:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=or1Hd0W6rALrn2yL/j+UfBzp5nF8Wndw55XQni8xifg=; b=ep9oKfQ4U1Bzad
	Pfl5ZL9gB6FAHAPYDNurhwkApia0GBGCdANmnxoDq79W7g4RQUGwmsAFIgbdRPHBZwimHTz+eJdA2
	XTAUJyXWEv2AQ8Wrgu1tvEnqYkaKa11pb7SaSn4hzUz4MrrAAy74YY3w2PpNc+BIv4Q7A/x94PKvZ
	379kB5oI7/aZEAQ4vhDSPja7v6B6VfZ7MJuul/F6obrt9f37ckkoxgPH+rRioOsuoB2a0lvFu6j86
	zMcp/IEuscenuDqwINyAPXFWPBPYQYsUyX3GbeFUqGMgm1NZM8BCLd853Ce9WH05ZT16lmGiy1sR0
	1YUuToqH5htLqmiWS1gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1bw-0002aF-C1; Wed, 11 Mar 2020 13:41:24 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1bt-0002Z0-EI
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 13:41:22 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3383643B13;
 Wed, 11 Mar 2020 13:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583934080; bh=Jsae6YmAanO4z9FCcsjbrAEHTLrNXGOZPwk43q6ik60=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jzc8SlbhBKj3TbiyL2YRoFTe5fhXmG1Z0VAoSeJbljwzo/7pZuO533oHLT1M8RNoZ
 TABbi9Pza/pL5Y2fJpzD6/cH5X8yaBSI+NJ1e/8P8bFUvLVoQvTmUzwA3KlRfhzc/7
 7zSLlza3k2qtD15FVKjXgigCzRH+gOoCDHg5Z42yg7TXRJc68nDVAUHhg5FBzJBnOA
 qVQ6Li/zeCIlTIhKaZrL4gQn4itl3tNz9DS8HX+rld77XFmNfKyqPC3rZzocq7bdu0
 W89agejxYGrlH/bmhkip6R8VOvaS1zOU9iMqXzCz5asMeX/gQWGAIVrtKMbk44LX49
 8CzvI7N1QzUWg==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5A381A0062;
 Wed, 11 Mar 2020 13:41:18 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/3] CLK: HSDK: CGU: check if PLL is bypassed first
Date: Wed, 11 Mar 2020 16:41:13 +0300
Message-Id: <20200311134115.13257-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200311134115.13257-1-Eugeniy.Paltsev@synopsys.com>
References: <20200311134115.13257-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_064121_492800_7BF9D565 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

If PLL is bypassed the EN (enable) bit has no effect on
output clock.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 drivers/clk/clk-hsdk-pll.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk-hsdk-pll.c b/drivers/clk/clk-hsdk-pll.c
index 97d1e8c35b71..b47a559f3528 100644
--- a/drivers/clk/clk-hsdk-pll.c
+++ b/drivers/clk/clk-hsdk-pll.c
@@ -172,14 +172,14 @@ static unsigned long hsdk_pll_recalc_rate(struct clk_hw *hw,
 
 	dev_dbg(clk->dev, "current configuration: %#x\n", val);
 
-	/* Check if PLL is disabled */
-	if (val & CGU_PLL_CTRL_PD)
-		return 0;
-
 	/* Check if PLL is bypassed */
 	if (val & CGU_PLL_CTRL_BYPASS)
 		return parent_rate;
 
+	/* Check if PLL is disabled */
+	if (val & CGU_PLL_CTRL_PD)
+		return 0;
+
 	/* input divider = reg.idiv + 1 */
 	idiv = 1 + ((val & CGU_PLL_CTRL_IDIV_MASK) >> CGU_PLL_CTRL_IDIV_SHIFT);
 	/* fb divider = 2*(reg.fbdiv + 1) */
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
