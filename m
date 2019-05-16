Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50153204D1
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 13:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CADcsd607VoF5z3/EGCXkEXEbLnzHRWVbVMNlTLHUhk=; b=DpvGilLYtxtIcm
	nlKnIham1yFXOFG9pIN9LOZAtk8yUK2GdYsPNYvOOJLNgQ/YjiTR2P/JCC+d2RZ+WuBShMJ4KGOgO
	pddIi0/U/lWmxDUCUDu7/K50PEadw/kKaVJSpjoaUXrrpgIODgv3NWw2T0KsfziO5pWXTHh+39XKl
	UyOW7GpWCj94q54+AAjy/i09gSkODp9RfnV5LzKccP4jE8Pn5iGAGbR+g/E15+KE0HlEUbQt3S7zp
	8Z5gKFJnb4/zA9Gh2/OxlReNUrx7T4oNmBEj16GieE2Vm4tlL1ER8poHb0wPuqx6lAroHYQlIEmpQ
	GhwtXupFomxH//REwvDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREjn-0008Be-0m; Thu, 16 May 2019 11:39:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREjk-0008AG-7J
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 11:39:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED1942087E;
 Thu, 16 May 2019 11:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558006785;
 bh=BPwRZglwF9J+rpzxhoY1p4JujbqmzpsKuEcas2nSRh4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cULI1kG9imt9xvSq0oqlgMWGfdJfmejIm2Y0M36MNZx7LbOZBgYnuxV7ZtNkwYt+Y
 NuqMKTXXJXmHlfNZRom8SbCQKcc7isksajbxnYalrGYuJPqaBEIQ2h+5M7Lt7G2SbR
 Ipe64InrQ39S/i02gcYKzNjkj8/IpU7lE2RxY4c0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 09/34] ARC: PAE40: don't panic and instead turn
 off hw ioc
Date: Thu, 16 May 2019 07:39:06 -0400
Message-Id: <20190516113932.8348-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516113932.8348-1-sashal@kernel.org>
References: <20190516113932.8348-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_043948_281944_021EAB1D 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Vineet Gupta <vgupta@synopsys.com>

[ Upstream commit 99bd5fcc505d65ea9c60619202f0b2d926eabbe9 ]

HSDK currently panics when built for HIGHMEM/ARC_HAS_PAE40 because ioc
is enabled with default which doesn't work for the 2 non contiguous
memory nodes. So get PAE working by disabling ioc instead.

Tested with !PAE40 by forcing @ioc_enable=0 and running the glibc
testsuite over ssh

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arc/mm/cache.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/arch/arc/mm/cache.c b/arch/arc/mm/cache.c
index 4135abec3fb09..63e6e65046992 100644
--- a/arch/arc/mm/cache.c
+++ b/arch/arc/mm/cache.c
@@ -113,10 +113,24 @@ static void read_decode_cache_bcr_arcv2(int cpu)
 	}
 
 	READ_BCR(ARC_REG_CLUSTER_BCR, cbcr);
-	if (cbcr.c)
+	if (cbcr.c) {
 		ioc_exists = 1;
-	else
+
+		/*
+		 * As for today we don't support both IOC and ZONE_HIGHMEM enabled
+		 * simultaneously. This happens because as of today IOC aperture covers
+		 * only ZONE_NORMAL (low mem) and any dma transactions outside this
+		 * region won't be HW coherent.
+		 * If we want to use both IOC and ZONE_HIGHMEM we can use
+		 * bounce_buffer to handle dma transactions to HIGHMEM.
+		 * Also it is possible to modify dma_direct cache ops or increase IOC
+		 * aperture size if we are planning to use HIGHMEM without PAE.
+		 */
+		if (IS_ENABLED(CONFIG_HIGHMEM) || is_pae40_enabled())
+			ioc_enable = 0;
+	} else {
 		ioc_enable = 0;
+	}
 
 	/* HS 2.0 didn't have AUX_VOL */
 	if (cpuinfo_arc700[cpu].core.family > 0x51) {
@@ -1158,19 +1172,6 @@ noinline void __init arc_ioc_setup(void)
 	if (!ioc_enable)
 		return;
 
-	/*
-	 * As for today we don't support both IOC and ZONE_HIGHMEM enabled
-	 * simultaneously. This happens because as of today IOC aperture covers
-	 * only ZONE_NORMAL (low mem) and any dma transactions outside this
-	 * region won't be HW coherent.
-	 * If we want to use both IOC and ZONE_HIGHMEM we can use
-	 * bounce_buffer to handle dma transactions to HIGHMEM.
-	 * Also it is possible to modify dma_direct cache ops or increase IOC
-	 * aperture size if we are planning to use HIGHMEM without PAE.
-	 */
-	if (IS_ENABLED(CONFIG_HIGHMEM))
-		panic("IOC and HIGHMEM can't be used simultaneously");
-
 	/* Flush + invalidate + disable L1 dcache */
 	__dc_disable();
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
