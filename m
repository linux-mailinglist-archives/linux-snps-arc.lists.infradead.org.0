Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69DFA531F
	for <lists+linux-snps-arc@lfdr.de>; Mon,  2 Sep 2019 11:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3H8kPq75XQmJrsjodsPT8bdJCbaGTN1l7WZ2DTLnYqE=; b=pUB
	pZyswvc9RMR+h6yZ4eZr2pQYnBiNgmMqGUIO9rDhFrBdfb9yU+ogzTLOmRIFmw/d9rcAo7D6Eb61b
	AS6CayGBbrJPfl3A5qexkhSt4Mjd7yMa/MUwcmCBScqcma0lPaLaIg+rpzzVG8NKE5SZG3AmmgvwP
	RMv0ARNVgm8fJHgzftcIvSNEey+Fy6Fi9fr+Nx6Ipwn3CNTpT1p9sNZIuNtBSZGYMpkWsnLZ9mi2K
	4ih788vXgIk87Me0qgpVSNKwZ7aPKvl85WUkwli4mRcuF2luusNZGjopx4dA7PLtfKFW5vmqpNiNG
	lXxfIiuBCZpGXCzaQ9sEB8QXsOmi/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ira-0006AR-R7; Mon, 02 Sep 2019 09:43:06 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4irP-00062z-Jm
 for linux-snps-arc@lists.infradead.org; Mon, 02 Sep 2019 09:42:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B172BC0127;
 Mon,  2 Sep 2019 09:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567417373; bh=jVNmAUD5Cwbt2ozMcB/EflTSILfqR7k2Dnn2VWyr7Y4=;
 h=From:To:Cc:Subject:Date:From;
 b=I6leSOlB09VC/BhbLRRPSjfyC0RgT5Nw2SeD4kyGiR6vmvhWYYEOg9/uUsbqi49+b
 HHMv9vf2lJHuFFukRFbz86pstKsLO0+/cO61+Tt+/SfDonLGBCl1ONvcDegrvjQMvf
 lfZcmcpM8dLTL5nwSxfJ1GFNfsfC9HrU7FjLBnoSK7cp7HgnQ1OIe3NwCM8fjwScMc
 vW5ARfbvwq/IFGv5sMKzoCA/WMv9BoIB3aLgM1gkw8Fx+7wPAci+9mC7FDkgaSp5BW
 KFLwbbyxSaLh4LreIa/fdStN018KT6NWDc8kDlNxK+T5YsdxZb8KI/kzNSgbZ290U0
 WFP5A+sDoq4iQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id C1B4DA005E;
 Mon,  2 Sep 2019 09:42:49 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] arc: libgcc: Import __udivdi3 & __udivmoddi4 to allow 64-bit
 division
Date: Mon,  2 Sep 2019 12:42:44 +0300
Message-Id: <20190902094244.486-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024255_670473_646CAFED 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Kever Yang <kever.yang@rock-chips.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As reported by Kever here [1] we were unable to compile 64-bit division
code due to missing definition of __udivdi3().

Import its implementation and __udivmoddi4() as its direct dependency
from today's libgcc [2].

[1] https://patchwork.ozlabs.org/patch/1146845/
[2] https://github.com/gcc-mirror/gcc/commit/5d8723600bc0eed41226b5a6785bc02a053b45d5

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arc/lib/libgcc2.c | 75 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arc/lib/libgcc2.c b/arch/arc/lib/libgcc2.c
index b92a841a37..ab1dbe1c13 100644
--- a/arch/arc/lib/libgcc2.c
+++ b/arch/arc/lib/libgcc2.c
@@ -158,3 +158,78 @@ __umodsi3(long a, long b)
 {
 	return udivmodsi4(a, b, 1);
 }
+
+UDWtype
+__udivmoddi4(UDWtype n, UDWtype d, UDWtype *rp)
+{
+	UDWtype q = 0, r = n, y = d;
+	UWtype lz1, lz2, i, k;
+
+	/*
+	 * Implements align divisor shift dividend method. This algorithm
+	 * aligns the divisor under the dividend and then perform number of
+	 * test-subtract iterations which shift the dividend left. Number of
+	 * iterations is k + 1 where k is the number of bit positions the
+	 * divisor must be shifted left  to align it under the dividend.
+	 * quotient bits can be saved in the rightmost positions of the
+	 * dividend as it shifts left on each test-subtract iteration.
+	 */
+
+	if (y <= r) {
+		lz1 = __builtin_clzll(d);
+		lz2 = __builtin_clzll(n);
+
+		k = lz1 - lz2;
+		y = (y << k);
+
+		/*
+		 * Dividend can exceed 2 ^ (width - 1) - 1 but still be less
+		 * than the aligned divisor. Normal iteration can drops the
+		 * high order bit of the dividend. Therefore, first
+		 * test-subtract iteration is a special case, saving its
+		 * quotient bit in a separate location and not shifting
+		 * the dividend.
+		 */
+
+		if (r >= y) {
+			r = r - y;
+			q = (1ULL << k);
+		}
+
+		if (k > 0) {
+			y = y >> 1;
+
+			/*
+			 * k additional iterations where k regular test
+			 * subtract shift dividend iterations are done.
+			 */
+			i = k;
+			do {
+				if (r >= y)
+					r = ((r - y) << 1) + 1;
+				else
+					r = (r << 1);
+				i = i - 1;
+			} while (i != 0);
+
+			/*
+			 * First quotient bit is combined with the quotient
+			 * bits resulting from the k regular iterations.
+			 */
+			q = q + r;
+			r = r >> k;
+			q = q - (r << k);
+		}
+	}
+
+	if (rp)
+		*rp = r;
+
+	return q;
+}
+
+UDWtype
+__udivdi3(UDWtype n, UDWtype d)
+{
+	return __udivmoddi4(n, d, (UDWtype *)0);
+}
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
