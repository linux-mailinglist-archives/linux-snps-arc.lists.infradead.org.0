Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D337F3288E
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 08:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2QOeHcwODQTE9STwK/dImbUJW2mE+7NLidYpVhuFQPk=; b=sm1
	xGQfseGifNq+LhvhO7h8FeQVxvFQ73ai8DzSShUIdf+yJtm2Z0PGHJ05s2L7GxrD0l/tsyG8uQo8i
	sbx+BM3bLtzpHNARMUerHauu33MDDBtSqU/SuZH4SZ91Z/4rJhvCIdo9+Y0HUyprEG9pN4OdElor+
	w1M018M536gOoQVmtzle0Q4zLD7znRRU38bRYqxpDKVixSoOpszroPTsn1ALiLOC5AZXY7wmom4Ql
	VQY9szcZ1NGSbI2C3lMECp/lajMiFSIGStkcCz2wQ7qTPMgy7ZsDhmueQEE9XvCyk95c2/i1SGrva
	TrQQ21scbf+jyZhqb6cUUXcEHaHqSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgVK-00078W-FN; Mon, 03 Jun 2019 06:31:34 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgVH-00077I-AF
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 06:31:32 +0000
Received: from mailhost.synopsys.com (unknown [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6F9E3C012D;
 Mon,  3 Jun 2019 06:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559543466; bh=S6XqWpH4MyQCGODhZ07+wgc8TpVvc44BrU/RDAxQsfU=;
 h=From:To:Cc:Subject:Date:From;
 b=by27SEQsokEScbmzC9Q0rNiP+bZKxS5iyiRJe7Pe0uOvbX3tHplq+TQZQkfvqGfjO
 xMphLTG5F+So0LflyRCUpFOKy6VtbxzJs+SrUs8WqJ2iQtzzdCF9WNYksmQrZpqw6i
 fbUtVy8uvewAF5/NFAdv/p/xXpW/W0vKPq6CJSU6mgGdAqm+4UBOahzYZ9GRxVdXRX
 MV6K3Pw/u/9UjrMO4XR9l1Llqj1Me/n3lBzrU/tPk1jWFBawmqSqj7KIA11cW/q3bD
 AR41Vt1KHLgkOWB6zJZkdJEVRS/Zj8HOmqJZLrDUOMTNveqECa/RbgOLG06CpwmWmO
 qVGsjY+3Ok31g==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 36CC2A022E;
 Mon,  3 Jun 2019 06:31:22 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: build: Try to guess CROSS_COMPILE with cc-cross-prefix
Date: Mon,  3 Jun 2019 09:31:19 +0300
Message-Id: <20190603063119.36544-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_233131_360046_82504215 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

For a long time we used to hard-code CROSS_COMPILE prefix
for ARC until it started to cause problems, so we decided to
solely rely on CROSS_COMPILE externally set by a user:
commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").

While it works perfectly fine for build-systems where the prefix
gets defined anyways for us human beings it's quite an annoying
requirement especially given most of time the same one prefix
"arc-linux-" is all what we need.

It looks like finally we're getting the best of both worlds:
 1. W/o cross-toolchain we still may install headers, build .dtb etc
 2. W/ cross-toolchain get the kerne built with only ARCH=arc

Inspired by [1] & [2].

[1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17

A side note: even though "cc-cross-prefix" does its job it pollutes
console with output of "which" for all the prefixes it didn't manage to find
a matching cross-compiler for like that:
| # ARCH=arc make defconfig
| which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
| *** Default configuration is based on 'nsim_hs_defconfig'

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index e2b991f75bc5..9cfd2ba7a12d 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -8,6 +8,10 @@
 
 KBUILD_DEFCONFIG := nsim_hs_defconfig
 
+ifeq ($(CROSS_COMPILE),)
+CROSS_COMPILE := $(call cc-cross-prefix, arc-linux- arceb-linux-)
+endif
+
 cflags-y	+= -fno-common -pipe -fno-builtin -mmedium-calls -D__linux__
 cflags-$(CONFIG_ISA_ARCOMPACT)	+= -mA7
 cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
