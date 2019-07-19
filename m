Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36C86EACA
	for <lists+linux-snps-arc@lfdr.de>; Fri, 19 Jul 2019 20:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nW+mAc6ZSJIe/xCglg+JxSUIrKLht1jwDFMFZ9z5f+w=; b=rg/w6e/7Sm3Gh5
	yg3Qe3KL4Dtory7ADi1m5Cc0a24foe382mKgqNY7gnNATh7ajCJHdls2BjRGv+slQpsXw40ck0rnI
	tFJaSUp1OB2j9laOux4ug8egKSurdBpP0F++qHX98emkbRFzvI7nH9edR+XhwOLPanEXMZcwDGVt5
	85Y6humyH3T8vULOIYzSyhFe8tnw/rvUF6X0YLJcy2LHeZ0c9NetVtBpTt+U8gApVaplWprJSlKN5
	D9tyguqVgmSO7r7yOteUA+NpeK5Hlhmm6ChwjqPNjKy9AH3rRLP3z0ubHHinLP4INdxGXxuVVBvum
	MYMpLNLoDjOfpAKUsCUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoXtS-0005Hg-KM; Fri, 19 Jul 2019 18:46:10 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoXtQ-0005Gq-23
 for linux-snps-arc@lists.infradead.org; Fri, 19 Jul 2019 18:46:09 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E7A17C0089;
 Fri, 19 Jul 2019 18:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563561964; bh=a1asybTUPoXPdVigAZxuS9IKo7g1CCQ4rNlJLzJjBM0=;
 h=From:To:Cc:Subject:Date:From;
 b=gwaRnNKGTHW7BxpoWauP/KRzeqsHtp/N+TBTMa5qmEcRwVsSN2b6Wae+dRkRivsPo
 4HQJn++dwgwis40Gcf+Es97IXxTQZto/KBX4GWaXafgbKDGmJauUyrWGWSLiSZb4ei
 ojP1z3xfioHv/W36iueB+kmqOpQK2jDoNhzoRZJSvRWpve1u/51VNfmj8rVEv9eQN+
 c/iHW1WyOPRy9zZGHiweyML4OtborbDla41hXIEkFHj6hyAkfye405mj8u1lhjcdi6
 u2N9f8qEuCMaACrTanTTDnWxnFegf+bTc8lDhXsGeaatoJ02rBuvo8wKTDo5Pcoldm
 QQZ0O3vbDUQDw==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 333EBA0057;
 Fri, 19 Jul 2019 18:46:02 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: fix typo in setup_dma_ops log message
Date: Fri, 19 Jul 2019 21:46:00 +0300
Message-Id: <20190719184600.23188-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_114608_106177_CD8A9932 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/mm/dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arc/mm/dma.c b/arch/arc/mm/dma.c
index 0bf1468c35a3..e9cd0a1733bf 100644
--- a/arch/arc/mm/dma.c
+++ b/arch/arc/mm/dma.c
@@ -158,6 +158,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 	if (is_isa_arcv2() && ioc_enable && coherent)
 		dev->dma_coherent = true;
 
-	dev_info(dev, "use %sncoherent DMA ops\n",
+	dev_info(dev, "use %scoherent DMA ops\n",
 		 dev->dma_coherent ? "" : "non");
 }
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
