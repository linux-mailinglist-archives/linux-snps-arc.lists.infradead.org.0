Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC51F8259E
	for <lists+linux-snps-arc@lfdr.de>; Mon,  5 Aug 2019 21:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ka1ugJLRdrQBQyTb1jSswttAJGuB0y3NX6yflzvcN/0=; b=nguTUmezxQMeP5
	Is1j3EEQI6K5eRneVQnC8clMbTjhcF8H9BcqZXyRcpOLebn6Pn+l8dZVIkYbGhMVqg/6zXf3s2gPl
	ccx1gLbBdnST6OwHSZnEUWLaN9qJwlw83xcD2ASIRjL1HKFaxZw1UWUd95a+woZLrfR/pIS+llU30
	abpBE0gt1mxEBmWiCBs+Mf3IQrRpIn0Vld49ei5WMJjnolMQI4sOaMpv++fd0mZSEmnbckl/NJUDt
	++j+Iv9UThwtwN2hxXXmCdjT0wFPmzfl/riWyPkcReMp46r4J7p8Q9W0hnbaTfyJvZ+YYXyPbSyvy
	d+5u7wYSV+/TKNwnEqXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiim-0007Zw-HQ; Mon, 05 Aug 2019 19:32:40 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiik-0007Zb-1r
 for linux-snps-arc@lists.infradead.org; Mon, 05 Aug 2019 19:32:39 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id E59066274EB
 for <linux-snps-arc@lists.infradead.org>; Mon,  5 Aug 2019 14:32:36 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id uiiihaBZU4FKpuiiihie2X; Mon, 05 Aug 2019 14:32:36 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qLbVQ1du0xq48vlZ6w7a2uILpIHafL4P5rDN+g/q510=; b=JTNpck1wYdOYUwgJOixJg2E7YD
 OjaPO6sUauGcckryVKRVet/9533GS6vgJmjJZy4LEEsx7gTlTqdoSPWgjO8PYCpdtY9dWQVOFDWrl
 ucQXLdqSqUi3lpdSWVf4liF7ldL42Vva2oVplWx4bSYQK05J/kGe9q9vjBYwGwXKRetcfJpwKTSw1
 2258J68aemgVCw1+mIwCB6fstuUNWD/ANuL7764ckWpMVIEapv5STSoN35I7QJa0FGbGCUwjhbcl3
 UWvK5jOkgHJkLPveZiJe/rSwyG35L78hjD4a1nCQsKND5a5Rdm3AUiIbKizpwaVHW690Ny3aNDsn9
 ehlU/Zzw==;
Received: from [187.192.11.120] (port=37864 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1huiih-003HUC-QA; Mon, 05 Aug 2019 14:32:35 -0500
Date: Mon, 5 Aug 2019 14:32:32 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH] ARC: unwind: Mark expected switch fall-throughs
Message-ID: <20190805193232.GA12826@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1huiih-003HUC-QA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:37864
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_123238_139293_3771CDF8 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.145.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings (Building: haps_hs_defconfig arc):

arch/arc/kernel/unwind.c:827:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arc/kernel/unwind.c:836:20: warning: this statement may fall through [-Wimplicit-fallthrough=]

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arc/kernel/unwind.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arc/kernel/unwind.c b/arch/arc/kernel/unwind.c
index c2663fce7f6c..445e4d702f43 100644
--- a/arch/arc/kernel/unwind.c
+++ b/arch/arc/kernel/unwind.c
@@ -826,7 +826,7 @@ static int processCFI(const u8 *start, const u8 *end, unsigned long targetLoc,
 			case DW_CFA_def_cfa:
 				state->cfa.reg = get_uleb128(&ptr.p8, end);
 				unw_debug("cfa_def_cfa: r%lu ", state->cfa.reg);
-				/*nobreak*/
+				/* fall through */
 			case DW_CFA_def_cfa_offset:
 				state->cfa.offs = get_uleb128(&ptr.p8, end);
 				unw_debug("cfa_def_cfa_offset: 0x%lx ",
@@ -834,7 +834,7 @@ static int processCFI(const u8 *start, const u8 *end, unsigned long targetLoc,
 				break;
 			case DW_CFA_def_cfa_sf:
 				state->cfa.reg = get_uleb128(&ptr.p8, end);
-				/*nobreak */
+				/* fall through */
 			case DW_CFA_def_cfa_offset_sf:
 				state->cfa.offs = get_sleb128(&ptr.p8, end)
 				    * state->dataAlign;
-- 
2.22.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
