Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4214150B28
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Feb 2020 17:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ne/4Yy2pm/a5TumGCOPsuXHJcCjKeX3QoiTDF24ttB8=; b=e166dD+x7rk/nc
	4RondmXpzsNRBx0tUXq3hzaw0c4syZfBQX0C0VeiHpyla0nqNn9KX6I8uf6Uw858BYnos3N4p4EwT
	178Rg506YXTaQCXcmVB3/Nxd4c6jWpQYJ2coe/M3Q7qbJseIqCS9TdR8/eIR4+UCBe7WnfKnPujKg
	tYkOIbFqVKKuQciuOQpzAKe+ijAA3Oz3ANHMeYZ+2aDFPF8An4+JIROyNcPqJFn4h+77l8k+4/O9D
	N/JNPMJ8wmkM+nqTTi5jYhXgHD9b/iYiTKDlHLnQt/TKwHp0KfS5oez9vWkS56/cB/Z0F+5YcWeAE
	OZMAv4IDigSkJUz1OtXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyeXE-0000pX-Cu; Mon, 03 Feb 2020 16:25:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyeXB-0000on-Lt
 for linux-snps-arc@lists.infradead.org; Mon, 03 Feb 2020 16:25:14 +0000
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A27462087E;
 Mon,  3 Feb 2020 16:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580747112;
 bh=g8iDQnd6Yr9F7M26ThvnaNNeqrJbWLkQXykum1JpWXY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RD4RJH0gvlltCVDkFr0YWbOT56WMCNeckyluWO8cCiAIfVH6B1al4uZPgstqP9E++
 uyzwYzsImn3tnULrcMs2GFG4C+zgHQp/jzaMhihRq9NK1JCJzr9iderz8Rva2Qz8JQ
 5WhV3KB9/hzPe4No4O5U5/tiI+cuOD49IRyoAofU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.9 17/68] arc: eznps: fix allmodconfig kconfig warning
Date: Mon,  3 Feb 2020 16:19:13 +0000
Message-Id: <20200203161907.915759199@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200203161904.705434837@linuxfoundation.org>
References: <20200203161904.705434837@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_082513_736394_5D003702 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ofer Levi <oferle@mellanox.com>,
 stable@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit 1928b36cfa4df1aeedf5f2644d0c33f3a1fcfd7b ]

Fix kconfig warning for arch/arc/plat-eznps/Kconfig allmodconfig:

WARNING: unmet direct dependencies detected for CLKSRC_NPS
  Depends on [n]: GENERIC_CLOCKEVENTS [=y] && !PHYS_ADDR_T_64BIT [=y]
  Selected by [y]:
  - ARC_PLAT_EZNPS [=y]

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Ofer Levi <oferle@mellanox.com>
Cc: linux-snps-arc@lists.infradead.org
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arc/plat-eznps/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arc/plat-eznps/Kconfig b/arch/arc/plat-eznps/Kconfig
index 1d175cc6ad6d3..86f844caa405d 100644
--- a/arch/arc/plat-eznps/Kconfig
+++ b/arch/arc/plat-eznps/Kconfig
@@ -7,7 +7,7 @@ menuconfig ARC_PLAT_EZNPS
 	bool "\"EZchip\" ARC dev platform"
 	select ARC_HAS_COH_CACHES if SMP
 	select CPU_BIG_ENDIAN
-	select CLKSRC_NPS
+	select CLKSRC_NPS if !PHYS_ADDR_T_64BIT
 	select EZNPS_GIC
 	select EZCHIP_NPS_MANAGEMENT_ENET if ETHERNET
 	help
-- 
2.20.1




_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
