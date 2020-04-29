Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E51BDBCA
	for <lists+linux-snps-arc@lfdr.de>; Wed, 29 Apr 2020 14:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vjSq2ILnw/jEyoi9hLXhg5tKHOTVZXGF4X8a2yehBg=; b=B+uKiBkFwbVI0u
	5vF1WZbTP4L0RxZjcEajuXU2clE2X6i0d+Z3NNr7WZi68xfbAvNQ/fpGA3weJfdLNEmqu9WNCQJVF
	TK/iIOeDTFtdsldgcPoVcNQ4DXa6FXYSgnBrJqg5k25WrA2wN5Tu88nnfFFsT1un4dUMoUVsnwudt
	JAhHdCBVVx9usOD/xZrZeFzxBbcUIOXb3BGhvXGQVAyr5yufkurFC9iNstsVy0zeOisH+QzUC1GJL
	vJ6/VVs/E7XrYoVVdaNp9fixUqM41d67pWOWBViIetdIKkp8UCVKaedPR/YC3tHYVI6V3YGhbivyL
	saOzpAd8P9qXSiSFBtfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTldl-0004LE-RV; Wed, 29 Apr 2020 12:16:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTldf-0004Hs-8Q; Wed, 29 Apr 2020 12:16:32 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E60E21D79;
 Wed, 29 Apr 2020 12:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588162590;
 bh=xtQCR6+gW45a9s1aGOZwforC/OBYLweyw2X6q9DWFXw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MVapj8SsT30fKxBTn0Apttu/7GlrjJjZcmdh9WMLTiB0JUywWX/5AiqxRuTxFgHIP
 rH3NYqL9b59R3mLsf+fOR9qhHN+nTDuBaQCgt9S53tDcsPNYMgGQBBBsfSwJqTxHKT
 WeCUAPnHsp222zaSZwX12ykRwSykBzBR1RFvBA+4=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 19/20] mm: simplify find_min_pfn_with_active_regions()
Date: Wed, 29 Apr 2020 15:11:25 +0300
Message-Id: <20200429121126.17989-20-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200429121126.17989-1-rppt@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051631_352533_385485D5 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Qian Cai <cai@lca.pw>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The find_min_pfn_with_active_regions() calls find_min_pfn_for_node() with
nid parameter set to MAX_NUMNODES. This makes the find_min_pfn_for_node()
traverse all memblock memory regions although the first PFN in the system
can be easily found with memblock_start_of_DRAM().

Use memblock_start_of_DRAM() in find_min_pfn_with_active_regions() and drop
now unused find_min_pfn_for_node().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 mm/page_alloc.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 30d171451d4c..b990e9734474 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -7045,24 +7045,6 @@ unsigned long __init node_map_pfn_alignment(void)
 	return ~accl_mask + 1;
 }
 
-/* Find the lowest pfn for a node */
-static unsigned long __init find_min_pfn_for_node(int nid)
-{
-	unsigned long min_pfn = ULONG_MAX;
-	unsigned long start_pfn;
-	int i;
-
-	for_each_mem_pfn_range(i, nid, &start_pfn, NULL, NULL)
-		min_pfn = min(min_pfn, start_pfn);
-
-	if (min_pfn == ULONG_MAX) {
-		pr_warn("Could not find start_pfn for node %d\n", nid);
-		return 0;
-	}
-
-	return min_pfn;
-}
-
 /**
  * find_min_pfn_with_active_regions - Find the minimum PFN registered
  *
@@ -7071,7 +7053,7 @@ static unsigned long __init find_min_pfn_for_node(int nid)
  */
 unsigned long __init find_min_pfn_with_active_regions(void)
 {
-	return find_min_pfn_for_node(MAX_NUMNODES);
+	return PHYS_PFN(memblock_start_of_DRAM());
 }
 
 /*
-- 
2.26.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
