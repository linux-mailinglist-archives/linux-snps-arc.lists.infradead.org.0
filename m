Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A450ED1BAD
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 00:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TAFXcHqKzywOOUFmw1G4AlCsGGO6dTD5jlZuLZnMVA=; b=UmrvoKq6RI3ICD
	eXHTkiqcZJWD0mvfozFAJbbvZ6GeJz6+bXGMJJDgs79fctpisu4gI+wcYeIxnIMoQfKZEvuOipKIT
	IPHEAlWv/ghD1bVrI1vYmBZhjQRQZ9wB7xlhfRxgnzO4aXeaIYTqNyHpCkUQBrfI+/wJYAvbY3Qmu
	5Du032vlSdQ+H47iV/ETQi2dIYw879UpByoAstkmvhYTDHtsiXqsviqMkhPlyOnEw6zAaln/sl+jq
	Cl2UdMsx0axX17Nd8XcvkAJT+Wad86tsFFflovFb316513l/rz/tiCB26Ol4MfrduwnLRNwSUK3WN
	jMd5e9/RdW3AuI1THU7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKQK-0003Vk-BS; Wed, 09 Oct 2019 22:27:12 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKQH-0003U9-3F
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 22:27:10 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 20F71C0161;
 Wed,  9 Oct 2019 22:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570660027; bh=6Aq+CRKQ123HNwQJOwDjxHCXrqx0gY8ewNZL7wsZSIE=;
 h=From:To:Cc:Subject:Date:From;
 b=blyN6FOQZeulLD0rf1SvXjIM81rGAzdstFNamvGPsaElojyMMbzaqYVTCZj9ydVaI
 98ChzD8+Zzd9r82lUCkcUZ0ow0H9UDFTURRj24tyNIEt0x1laSOmwqXhtzXsovPU4f
 ZG7hvAT/GsDUNNbnWqvCcRLa/tNcmyAP7TqHMoG34jSYE4g9/0aCA9CSfpYq/auC9V
 bjivnGSy4eHHx9kIoq5WETVy1zXayxj9iDSOMc/jfoDsftL/Aj43lciQgdrgZDxb9Z
 kMchGMJj1ztHCMXyEQccdFLNG8OUrAYat7gFNAuFwU+S5jF7Dzu6W6+AvVW9IOojR/
 Oc73ruBIiQR/w==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 22EC0A006B;
 Wed,  9 Oct 2019 22:27:03 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [PATCH 0/3] eldie generated code for folded p4d/pud
Date: Wed,  9 Oct 2019 15:26:55 -0700
Message-Id: <20191009222658.961-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_152709_142403_3136A17A 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org,
 Nick Piggin <npiggin@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-snps-arc@lists.infradead.org, Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

This series elides extraneous generate code for folded p4d/pud.
This came up when trying to remove __ARCH_USE_5LEVEL_HACK from ARC port.
The code saving are not a while lot, but still worthwhile IMHO.

bloat-o-meter2 vmlinux-A-baseline vmlinux-E-elide-p?d_clear_bad
add/remove: 0/2 grow/shrink: 0/1 up/down: 0/-146 (-146)
function                                     old     new   delta
p4d_clear_bad                                  2       -      -2
pud_clear_bad                                 20       -     -20
free_pgd_range                               546     422    -124
Total: Before=4137148, After=4137002, chg -1.000000%

Thx,
-Vineet

Vineet Gupta (3):
  asm-generic/tlb: stub out pud_free_tlb() if __PAGETABLE_PUD_FOLDED ...
  asm-generic/tlb: stub out p4d_free_tlb() if __PAGETABLE_P4D_FOLDED ...
  asm-generic/mm: stub out p{4,d}d_clear_bad() if
    __PAGETABLE_P{4,u}D_FOLDED

 include/asm-generic/4level-fixup.h |  2 --
 include/asm-generic/5level-fixup.h |  2 --
 include/asm-generic/pgtable.h      | 11 +++++++++++
 include/asm-generic/tlb.h          |  8 ++++++--
 mm/pgtable-generic.c               |  4 ++++
 5 files changed, 21 insertions(+), 6 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
