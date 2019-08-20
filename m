Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A89671A
	for <lists+linux-snps-arc@lfdr.de>; Tue, 20 Aug 2019 19:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OkXOTP/sdKSdpNrzEUe0EhpYYWE7Kd2yKYBbCKzuvrw=; b=DUK
	WQzQJGYg6lEdsxnQg3tUjVm5ZfRi2Mx4F5tpkfErXhDtzyRPXa8KIoGUqGeF42IfHV8AeJn7zUOhz
	3WBWm13agKSMW00uI0OLweQwx2qG8oO1Jy+WoPLPeHATwptKteqlPBGhdr9zLJYa/Da6xSth5ZvmR
	brxpYVWvBCBJGq1b1NnIj3SOvg4aXHSBaKzJ1xsTX+bN/SdzlMm5JCeAvrsJkX7pXkAj3pUZQVphQ
	MVH8Xv7KSOK/xVnBGnS9Z1QFsI/1VgpVJxly5SUCi9inlMsr+zk0uC1H1U0YMQyRwsRkxhXG7JCAe
	4eYf6vY4fopVZm+74lym8JOR4NW9jLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07eC-0007CP-7k; Tue, 20 Aug 2019 17:10:16 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07e9-00072X-QI
 for linux-snps-arc@lists.infradead.org; Tue, 20 Aug 2019 17:10:15 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x7KH9n49020646;
 Wed, 21 Aug 2019 02:09:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7KH9n49020646
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566320990;
 bh=NX+Y5RmE+GMCx3VPH/N13pbHW6+fZL4TprkkbxCZzTA=;
 h=From:To:Cc:Subject:Date:From;
 b=CeHhXalJuSQA8t5jvXhsUEcBno1LH0g/7/wBeHXqHemLSXlyo+TOq1pHDHA+MpYiD
 UK1RCeZBWi2T/yGyaZYs1+p3f9GPKzxixFlYjDfsueoUVzUZwx1OrL/6X2s8+o5JTa
 WF51kTWXfKc6vUW0dpZZkQ9f3dmFlTGUUGfYPQmWcQ8iJKOHnLYWaeE5MkDH0n3a8j
 6ZbZ4eehAf1UpFsiBhgUy63edhVCWz1zuGwurdZ52Z0GVnnTYIEmbDjpBNLgAq2Ztk
 lGXEUjn270PiEuE1onY/yluLSbUB0bDEjd26H6ChvB3GyLE+1h8L2NEMWYUCZmXaYe
 t1J9YxjWEICjA==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 1/3] init/Kconfig: rework help of CONFIG_CC_OPTIMIZE_FOR_SIZE
Date: Wed, 21 Aug 2019 02:09:39 +0900
Message-Id: <20190820170941.26193-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_101014_158920_077F9A7B 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CONFIG_CC_OPTIMIZE_FOR_SIZE was originally an independent boolean
option, but commit 877417e6ffb9 ("Kbuild: change CC_OPTIMIZE_FOR_SIZE
definition") turned it into a choice between _PERFORMANCE and _SIZE.

The phrase "If unsure, say N." sounds like an independent option.
Reword the help text to make it appropriate for the choice menu.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 init/Kconfig | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index bf971b5c707d..149efd82447f 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -1219,10 +1219,8 @@ config CC_OPTIMIZE_FOR_SIZE
 	bool "Optimize for size"
 	imply CC_DISABLE_WARN_MAYBE_UNINITIALIZED  # avoid false positives
 	help
-	  Enabling this option will pass "-Os" instead of "-O2" to
-	  your compiler resulting in a smaller kernel.
-
-	  If unsure, say N.
+	  Choosing this option will pass "-Os" to your compiler resulting
+	  in a smaller kernel.
 
 endchoice
 
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
