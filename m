Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9393A6A9
	for <lists+linux-snps-arc@lfdr.de>; Sun,  9 Jun 2019 17:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cTYDqv4+Tjo1BKrjxsMoev8B2JqIsLKKpUPw+8Q40Ic=; b=lPW
	8IjW2dAyVyg9yuilLwbFWbjqCY4nXEUn7l4GGQoMky339XcEWpgaPXrT+OyhNTQMjvyiho38KwkPP
	l5G94Jj7bmH9GWaIIhx7Ho5PpPQpgxybYSl0WPpXSqUaN2sJQMeWPUiqsxUnI/xBWmsdSZ8Vu1KFO
	nosiI91MnFXuFtCanYultOiCJRAO5nFJGn9mCkKJDx7lPfp1ptHyo5OGPL7xjHNTGG/J/bi3TPB+i
	o/TuuhctR2Ar8t7P6dkKGupvBMhRrHY/25/6hdf8ZhX5FuhT17aqKKEJ4JRlUjwv1jjMupqEBIezt
	J1Ow6OCCA2t+bbbPtJCCyrxOVYO13MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZzvi-0005gE-Dm; Sun, 09 Jun 2019 15:40:22 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZzva-0005aL-HQ; Sun, 09 Jun 2019 15:40:16 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x59Fdj4j004189;
 Mon, 10 Jun 2019 00:39:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x59Fdj4j004189
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1560094785;
 bh=QRU//lhSODxOzUbblXINj/fJfjp7ttS/yZ3jFWUK/iQ=;
 h=From:To:Cc:Subject:Date:From;
 b=XPmKEJA4Vyq6WiDIX2dHX9hWuMnEmtDqiunkVloZ+UIhC8Y3VaaP0nJsqIIMka6aW
 OSL7iPqdWuQFF3tJE19uhKveM6qqduw52LpfOATgeXOiexTc2ErOtZRAJeDVbvun+1
 uGMvaR0Hqx2i9hzpuX3gv5EWEVhAIZZGoGsrQAl2Ra0lmlwpjLCHFw2PBfBCccwMyF
 iLOtASe0tKYrxgPVVOLan7JfBoD+RMTs6QaZ/umSRifGwJ+HTBDEz9uMSeKogOyZRV
 xdhEKwsLpco1/aKr9nFTjHEwlgBuIqKC32Y67KDtcbH8JYdixSqPYhhF3JrlfHgEII
 fTnLa7PA+1vPA==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 1/2] linux/bits.h: make BIT(), GENMASK(),
 and friends available in assembly
Date: Mon, 10 Jun 2019 00:39:40 +0900
Message-Id: <20190609153941.17249-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_084014_789730_6A6E25B5 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

BIT(), GENMASK(), etc. are useful to define register bits of hardware.
However, low-level code is often written in assembly, where they are
not available due to the hard-coded 1UL, 0UL.

In fact, in-kernel headers such as arch/arm64/include/asm/sysreg.h
use _BITUL() instead of BIT() so that the register bit macros are
available in assembly.

Using macros in include/uapi/linux/const.h have two reasons:

[1] For use in uapi headers
  We should use underscore-prefixed variants for user-space.

[2] For use in assembly code
  Since _BITUL() uses UL(1) instead of 1UL, it can be used as an
  alternative of BIT().

For [2], it is pretty easy to change BIT() etc. for use in assembly.

This allows to replace _BUTUL() in kernel-space headers with BIT().

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/bits.h | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/include/linux/bits.h b/include/linux/bits.h
index 2b7b532c1d51..669d69441a62 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -1,13 +1,15 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_BITS_H
 #define __LINUX_BITS_H
+
+#include <linux/const.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(1UL << (nr))
-#define BIT_ULL(nr)		(1ULL << (nr))
-#define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
+#define BIT(nr)			(UL(1) << (nr))
+#define BIT_ULL(nr)		(ULL(1) << (nr))
+#define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-#define BIT_ULL_MASK(nr)	(1ULL << ((nr) % BITS_PER_LONG_LONG))
+#define BIT_ULL_MASK(nr)	(ULL(1) << ((nr) % BITS_PER_LONG_LONG))
 #define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
 #define BITS_PER_BYTE		8
 
@@ -17,10 +19,11 @@
  * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
  */
 #define GENMASK(h, l) \
-	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
+	(((~UL(0)) - (UL(1) << (l)) + 1) & \
+	 (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
 
 #define GENMASK_ULL(h, l) \
-	(((~0ULL) - (1ULL << (l)) + 1) & \
-	 (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
+	(((~ULL(0)) - (ULL(1) << (l)) + 1) & \
+	 (~ULL(0) >> (BITS_PER_LONG_LONG - 1 - (h))))
 
 #endif	/* __LINUX_BITS_H */
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
