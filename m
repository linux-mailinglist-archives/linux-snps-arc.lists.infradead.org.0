Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B52C23873
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 May 2019 15:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wBZaRHCHDV22731LF7IWzBjRTBu12HrJJzYYIcBVaqU=; b=O/cOZ0m6ptmL/qN29QUbD28H9F
	RoVkwUmF6JGkgDhVxbfudqcRyHMpRq5Nc3OtZRaRsFJ4LZqd3fw3FwnZ3FIR5TZnUe2L+yJnLYUer
	rgZxryqE+CP55AvpvaUOZ2HJw7kVxlt5WN1abPSzajh9rfX7hMrEZb7PD0Cq/NcFkCERm3zt6toHe
	YXV3E1d/2EB7tm7zejeopHJZP0VdWXdGVh56B7ask/kxIdgSRtJpEr9//8TNoaqJwJBs15SCbucVx
	WnJiXdepoc8fd1C7MRSRpBP9UrbD5kj9k64EsIDINCnlVwpIrgUXhc4xKH80K6WUH/3Qs+R6isyt/
	zLutT8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiZV-0007Ae-PY; Mon, 20 May 2019 13:43:21 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiZT-00079j-LM
 for linux-snps-arc@lists.infradead.org; Mon, 20 May 2019 13:43:20 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4EB2BC00E3;
 Mon, 20 May 2019 13:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558359805; bh=VGV0IaRcp0Os12Sgeg/6h5w+hLcWNDbOL/qVFeIQa1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=e4WLdHVqblAXG71aGiRXf+ND3+Gqa203EtyqAgHWYjY6I/WoDDoIYWUpTPDjvL5Ap
 VhXjbxp9SKJgUbSl7qZ5FymZk3YdOS66kxp462wELwEApJ5gpuk2Og1i426ymsy5Mx
 JhI0r9LimLa96zBjuiHjE9Qh2dZ3bYb3GGoN9uJTzH4G1hKGuBlxts/zXVcrXj0aMz
 s66+W84u2yFGPahUU8ceyIdk6SLbJzAtjrVjJ6+4gujcp+HeqRmZuzx87G588jsISK
 PR7MZ7Fww5DOggC7ZDvLoUaMtrxiMlUy0KnXNBe1gMhlIt2rGoDbpGrjDl1MmK4wyl
 q2HsPhmLVW1lQ==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id A9F96A0093;
 Mon, 20 May 2019 13:43:15 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id D8E423CE8B;
 Mon, 20 May 2019 15:43:14 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: devicetree@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Date: Mon, 20 May 2019 15:43:12 +0200
Message-Id: <efc8afc421f2461c2df4489c979545548782d857.1558359611.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1558359611.git.joabreu@synopsys.com>
References: <cover.1558359611.git.joabreu@synopsys.com>
In-Reply-To: <cover.1558359611.git.joabreu@synopsys.com>
References: <cover.1558359611.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064319_696867_2A82A1D6 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Mark Rutland <mark.rutland@arm.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, Rob Herring <robh+dt@kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

GMAC controller on HSDK boards supports 256 Hash Table size so we need to
add the multicast filter bins property. This allows for the Hash filter
to work properly using stmmac driver.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/boot/dts/hsdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 69bc1c9e8e50..b0f059377ab0 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -187,6 +187,7 @@
 			interrupt-names = "macirq";
 			phy-mode = "rgmii";
 			snps,pbl = <32>;
+			snps,multicast-filter-bins = <256>;
 			clocks = <&gmacclk>;
 			clock-names = "stmmaceth";
 			phy-handle = <&phy0>;
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
