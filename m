Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B07F102807
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 Nov 2019 16:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jo9/QzWxH0hohYBc1pw7kxXaVbxDLoOaFOqJVhaHHaY=; b=T6ZerwQXy5saoC
	rhl8CDtUC0gJm8c8wuSp6v9e5bcCMTJD1prhDcDkWldfp+CfWAXbJwpSYsV4dmrmk73V3rDnTNC5T
	NZVJwzhx+SV9NRAXpYYYLrsfexb/ZN2MJQgbpJUb1OSve30YYJVvHmSYHLHCJmma+wUMvUFbXDQ9h
	8r/8e6lG+yTYW4BtWN7idYKXj/sguC7gJ92GpWeKYdnId8An+A4TlUV9DJRapdsMgRq4/Nqgg4uzz
	avTkvUmPdyQmRSxA6QitK2nILOGY9Uru2BKrljtPPOa4EhkvjcV3SC5gbHfxma835N8f43ggLP/Wl
	x5Yn3ZhY8iUNN+q294AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5OX-0008RE-VN; Tue, 19 Nov 2019 15:26:21 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5OV-0008Qf-QU
 for linux-snps-arc@lists.infradead.org; Tue, 19 Nov 2019 15:26:21 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5E4B0C2584;
 Tue, 19 Nov 2019 15:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574177179; bh=mgDty1pLbITJzm26Ei8U20OJqO/x9UJ2NsqDSy4MQbs=;
 h=From:To:Cc:Subject:Date:From;
 b=W9MTRIqgL7Wxs/n1aQ7kP1f1q4jgrGeD3IeXO8qvoO4WBksKQL5M0IncIniFM15KW
 tWpxibs2Myq9gzzaAQoEE0tvbEey7qZOydUQh1r8/AGnaQnRJhILkzxGaWkQEYdsEe
 Eu2TbKBKJ/Le0+x8jm96aKdwZ+2BVPu3+JISh/OWCrpsbvqZJ9prB9arirtVMWKVX3
 04nDjqnInhZieeUxbWbqCy0h76rzbAgjd4CH7hMRiP5ZXtJTBcumbKYHqurhtrW/3M
 EeuMgGiGgTmXWGnVtg0l9h+xfBbTi58qA4V8UP3XTpktPNm+VGwtM0Q70K3Ky3QFq5
 kJaseiUa5eNKQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id A5DA2A0057;
 Tue, 19 Nov 2019 15:26:17 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: add kmemleak support
Date: Tue, 19 Nov 2019 18:26:15 +0300
Message-Id: <20191119152615.14078-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_072619_867643_C8F7E1F7 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

kmemleak is used internally for a long time and as there isn't
any issue with it we can finally enable it in upstream.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 8383155c8c82..c147ebe51b65 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -30,6 +30,7 @@ config ARC
 	select HAVE_ARCH_KGDB
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_DEBUG_STACKOVERFLOW
+	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_IOREMAP_PROT
 	select HAVE_KERNEL_GZIP
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
