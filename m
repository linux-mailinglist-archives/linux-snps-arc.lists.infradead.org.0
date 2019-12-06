Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2856B1157D9
	for <lists+linux-snps-arc@lfdr.de>; Fri,  6 Dec 2019 20:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NugNij7uY68mf1cSwiDB3wNhnwQG/dddnGU1y3MclTQ=; b=LzvXvetMrHblGt
	+RpHMxw/blhdlKb+GDbIRIRmKyGI4jwpfKGEd9q2oKv8LCGqz2wtpuZL9mnFbVSDtb01sGWpUXvw2
	k5+PXa3w573bJVApKDAo5PeCbjvl3QMjn6D2ZMgBQRz4bOi9+KhLPuOkM38z8xPJ70mwssBIQjlX7
	+AM7QHn2e5cglQplumhGTljKQwy6T4sp6RL2pzNNhFKWP16wlelOAqHeDclgAXOsIDcm0ahOFXrXm
	uBjmCVTriEz/trIRUXWcFjUqprgLZwbBeHIKD5qSHRtPSX6JTTegrooUsGtZyBbH7abjSoduarAyX
	/tdaeP9jN1wvNP1KTlFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJRu-0005Si-Tn; Fri, 06 Dec 2019 19:39:34 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJRq-0005Qh-CZ
 for linux-snps-arc@lists.infradead.org; Fri, 06 Dec 2019 19:39:32 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 57A2AC0AFC;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1575661167; bh=Gy2yjZ7sVJh+Vbcaz8aBELqwpPIS0grfmvwS2gvT2EM=;
 h=From:To:Cc:Subject:Date:From;
 b=gNiar7543JrpdhZj5dF1O2P83SpBAEzBNx84Og+pd8BI2TlIGCGzaht5cWFjokkOF
 xKdWNCPPuIf+5jHAg7vl9Nt/37P4rKXpojSOmUbF6+1KDpNvoI80IfnKGOAd5qFdy3
 HYBgCdVrR3arTZIlP54/j29nAtBzwS/CydbY5t+KGkxoYWDA62mh119vkc9ZCZE8dN
 iVvar72XrIPnPf2TgXwcgD6kX1p8l+RV1s7Pp8DaJxs/uOlAu3Bqiby3ZDIoMGrxwL
 JA2Zof+V1XsYodQIsgBsK43+MGhBN5zAHLgCcuHKNc2SgFnQ4OTovUBH6mdwkNRHHL
 psPHtIJnoBz7w==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7F89FA005F;
 Fri,  6 Dec 2019 19:39:25 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH 0/3] ARC toolchian related fixes
Date: Fri,  6 Dec 2019 11:39:21 -0800
Message-Id: <20191206193924.18777-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_113930_473393_92738944 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Evgeniy.Didin@synopsys.com, linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Alexey.Brodkin@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

PFA some improvements agan out of my glibc porting work.

Thx,
-Vineet

Vineet Gupta (3):
  toolchain,glibc: Allow ARC big endian glibc builds
  binutils/ARC: move ARC specific code together
  toolchain/ARC: Enable ability to build with upstream gcc/binutils

 arch/Config.in.arc                      | 4 ++++
 package/binutils/Config.in.host         | 6 +++---
 package/binutils/binutils.mk            | 7 ++-----
 package/gcc/Config.in.host              | 4 ++--
 toolchain/toolchain-buildroot/Config.in | 2 +-
 5 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
