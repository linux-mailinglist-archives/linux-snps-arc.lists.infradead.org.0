Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A713AEA5
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Jan 2020 17:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2F92UcfD91ksqgQEHKA9YonufKYezTqgsP9NuTueRYc=; b=hRlWuLq4XkJcElzmdvOMctIv5e
	AXWoS8W2Eu3VMJrCCwO2sjD6hMw7bk7XlfNrkRR061gnnqR/UIAEjjUAtbJu0bnomRnwlztoUlszO
	99KS42HMRkGDoQwugtt+QjCvB7C4U/VJuT34a3RWsMXESfSVCWgygisQFIzJmkJMhb4bYKnHrVz0d
	3ZodKYvKreoKM+MHZdfHUH9qp/VQLH+RFrNZh3MEi8Q+BPWEtk//LsBh5gKy/l84rPWbNIcLOA5N5
	c737lf7NxqZQzYJEikJw6K0Y4yruB0fxQkgCpLfXtDSjG3/KpJysw9Zhxi8WLNF3ZNS89AjBI5sX1
	fIoklgKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOmR-0008El-2n; Tue, 14 Jan 2020 16:10:59 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOlC-0005vJ-DU; Tue, 14 Jan 2020 16:09:48 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8BBB0C0622;
 Tue, 14 Jan 2020 16:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579018181; bh=ZUcejPObu8oHBPIY+jDHZmtqjrP/NpkNh9B+0IOcr6s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=CSJ1TE9Da/2Cwv52ZJtVkmhg0oeulSS5Z1nmTFqNa1dItw/2WpgwT8ylC5h1Minmj
 qvdPb3KAvc6lHu3r2QSM9PJCeUFOwb4A8p0cfPNAOnkY+d58kbdk8P4xADU/z3N83b
 arX9mSmc5CfoRMOxj5dJrLJGwDIqtpgLpdbbtpcG01XSQv1XN6F+GVngvA1VVrwNVw
 FDbT6mtUQzN8eA6UtVp9vJwSq5O5Be3f6M2d1bTXuJ8IwGyiexWbrOC9v6ObU77kyc
 dzRVdO5teG6TPopscRVdxmJl3UfJhKmIOR8cazKNCmsHEmBKwwzx4PpvSY8u8O759A
 PkgnepzRaPYQQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 32E86A0072;
 Tue, 14 Jan 2020 16:09:35 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 3/4] net: stmmac: selftests: Guard VLAN Perfect test
 against non supported HW
Date: Tue, 14 Jan 2020 17:09:23 +0100
Message-Id: <8dd7b44a9daa12301b34c3cb4b393c6d0e4a104a.1579017787.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_080942_561671_6E4051D2 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-snps-arc@lists.infradead.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

When HW does not support perfect filtering the feature will not be
enabled in the net_device. Add a check for this to prevent failures.

Fixes: 1b2250a04c1f ("net: stmmac: selftests: Add tests for VLAN Perfect Filtering")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: linux-snps-arc@lists.infradead.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 7edee3c87ac9..450d7dac3ea6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -971,6 +971,9 @@ static int stmmac_test_vlanfilt_perfect(struct stmmac_priv *priv)
 {
 	int ret, prev_cap = priv->dma_cap.vlhash;
 
+	if (!(priv->dev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
+		return -EOPNOTSUPP;
+
 	priv->dma_cap.vlhash = 0;
 	ret = __stmmac_test_vlanfilt(priv);
 	priv->dma_cap.vlhash = prev_cap;
@@ -1063,6 +1066,9 @@ static int stmmac_test_dvlanfilt_perfect(struct stmmac_priv *priv)
 {
 	int ret, prev_cap = priv->dma_cap.vlhash;
 
+	if (!(priv->dev->features & NETIF_F_HW_VLAN_STAG_FILTER))
+		return -EOPNOTSUPP;
+
 	priv->dma_cap.vlhash = 0;
 	ret = __stmmac_test_dvlanfilt(priv);
 	priv->dma_cap.vlhash = prev_cap;
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
