Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A938710A827
	for <lists+linux-snps-arc@lfdr.de>; Wed, 27 Nov 2019 02:54:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QC8Qrxf7aHzv81yA1PifNT1nLCPJ3FWYXQDjwgQRLaQ=; b=UiL2BlAPPCh56x
	aiZM1dYQfWTfA3pDd/qfDGuilFTKbm5WQXJeb7X/QVAcUvsu6bg73NebN1II4UH4KmiYgS9EgsOWT
	K2qGla45UYgdAP/viT4oBJTA8sHEXBRMAN6CxSP8pNMGyGQMMlgEbB2YvguEjm7oSWOfXuFxWBTHT
	xB4hEQcH97C8+wGdfZfu16yea3ivEvRF1ILbj93Ki8yhip0iADwdUorwyq6qPmR2zVkhmWXgbsZAR
	bT9kvC+I4TRwQvApk3VaWlr7yXX4BMVUrzm3Yt02S2QtsVemMDBVRtmiSlUVdJ6c+joT0lj6aauki
	hjYRDtSTx/kbAIiUuwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZmWz-0002IU-CJ; Wed, 27 Nov 2019 01:54:13 +0000
Received: from [2603:3004:32:9a00::f45c]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZmWw-0002I0-BT; Wed, 27 Nov 2019 01:54:10 +0000
To: LKML <linux-kernel@vger.kernel.org>, linux-snps-arc@lists.infradead.org
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] arc: eznps: fix allmodconfig kconfig warning
Message-ID: <7f2e6690-f377-86e7-6f56-e85d8d4d22a0@infradead.org>
Date: Tue, 26 Nov 2019 17:54:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Vineet Gupta <vgupta@synopsys.com>, Ofer Levi <oferle@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Fix kconfig warning for arch/arc/plat-eznps/Kconfig allmodconfig:

WARNING: unmet direct dependencies detected for CLKSRC_NPS
  Depends on [n]: GENERIC_CLOCKEVENTS [=y] && !PHYS_ADDR_T_64BIT [=y]
  Selected by [y]:
  - ARC_PLAT_EZNPS [=y]

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Ofer Levi <oferle@mellanox.com>
Cc: linux-snps-arc@lists.infradead.org
---
 arch/arc/plat-eznps/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- lnx-54.orig/arch/arc/plat-eznps/Kconfig
+++ lnx-54/arch/arc/plat-eznps/Kconfig
@@ -7,7 +7,7 @@
 menuconfig ARC_PLAT_EZNPS
 	bool "\"EZchip\" ARC dev platform"
 	select CPU_BIG_ENDIAN
-	select CLKSRC_NPS
+	select CLKSRC_NPS if !PHYS_ADDR_T_64BIT
 	select EZNPS_GIC
 	select EZCHIP_NPS_MANAGEMENT_ENET if ETHERNET
 	help


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
