Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FF7D1BAF
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 00:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uh0y0CZY1ePRZDGNO2KdFU2/dK4qZy/9YiffsH1SzU=; b=PadXeZyfRnmj3j
	uYB4cyJ5e/xkh4eDl1ysiiaDDKyVL0yiR0c2Lp2x1qAiPDiiVOuK4EEdvgzqIcR9pvaQ6xFx6GCGr
	jpXjarYs+HyqrEMCaVOw3Tmtj/B/lrrZyALUpG7MLc4xSKdMQQSQzFMiJwfiYAmJKwJ0pCtuRrU5i
	nvCo705ThfdsiG+afD7pwWh6xlzcPKPgPsw8JqYYa2Dk9OUz98riPCBlGcOZGvMYbG7AWE1UjBg3v
	IE2kxWAGpO+ULW5tew50i9uqt0vkivXlZ5hfdfAuHtTr8+ABhdKXkokX6sk5PyvQ6BE0UJnGbrXXc
	+qCsyDRvPTNcJ247tUMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKQK-0003Wc-NG; Wed, 09 Oct 2019 22:27:12 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKQH-0003UD-32
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 22:27:11 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 259C4C03E9;
 Wed,  9 Oct 2019 22:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570660027; bh=XxzbN0PHHliJ1GEgTBBhwhTwFL7gliZm+a80vwiducE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XvdFUi+ZLbje6h/k7NQ+34A51uDkE4f0v62XxLwgo5K4i6n/pQIc8QGF8929MXasd
 4dHo69SZnO+cf4qoy1n915cdiAwVb9PWQdgcqdkU1a7XPqLvspjhePiYVTWGIOKdpx
 10MtHWYcdFiGuS8ceKnSxwYF9ueaiHOmvC6eQ5fwPJzXEcpOD689UpJCANu55ZAGsv
 4Qwa2dTx5DSW/8pDRpIC8glXW///WreThFJZo2dwSGt6I+wtjggkOdrfE2wSpejs32
 pIA5UyCEwI5cDUS/1wxpFWQieMn/bz8qenl8YJsFQNwqs+Hk3Nvm2/ewIlZ4vV9qpx
 lxKnoQGk8Gcgw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9A5B7A0074;
 Wed,  9 Oct 2019 22:27:06 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [PATCH 2/3] asm-generic/tlb: stub out p4d_free_tlb() if
 __PAGETABLE_P4D_FOLDED ...
Date: Wed,  9 Oct 2019 15:26:57 -0700
Message-Id: <20191009222658.961-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009222658.961-1-vgupta@synopsys.com>
References: <20191009222658.961-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_152709_152044_0692FBFA 
X-CRM114-Status: GOOD (  10.61  )
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

... independent of __ARCH_HAS_5LEVEL_HACK

This came up when removing __ARCH_HAS_5LEVEL_HACK for ARC as code bloat
from p4d_free_tlb() despite pud being folded (with 2 levels on ARC)

| bloat-o-meter2 vmlinux-C-elide-pud_free_tlb vmlinux-D-elide-p4d_free_tlb
| add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-104 (-104)
| function                                     old     new   delta
| free_pgd_range                               552     422    -130
| Total: Before=4137172, After=4137042, chg -1.000000%

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 include/asm-generic/5level-fixup.h | 2 --
 include/asm-generic/tlb.h          | 4 +++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
index f6947da70d71..c855b5cf4425 100644
--- a/include/asm-generic/5level-fixup.h
+++ b/include/asm-generic/5level-fixup.h
@@ -48,8 +48,6 @@ static inline int p4d_present(p4d_t p4d)
 #define __p4d(x)			__pgd(x)
 #define set_p4d(p4dp, p4d)		set_pgd(p4dp, p4d)
 
-#undef p4d_free_tlb
-#define p4d_free_tlb(tlb, x, addr)	do { } while (0)
 #define p4d_free(mm, x)			do { } while (0)
 #define __p4d_free_tlb(tlb, x, addr)	do { } while (0)
 
diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index 1f83188cb331..f3dad87f4ecc 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -598,7 +598,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 #define pud_free_tlb(tlb, pudp, address)	do { } while (0)
 #endif
 
-#ifndef __ARCH_HAS_5LEVEL_HACK
+#ifndef __PAGETABLE_P4D_FOLDED
 #ifndef p4d_free_tlb
 #define p4d_free_tlb(tlb, pudp, address)			\
 	do {							\
@@ -607,6 +607,8 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 		__p4d_free_tlb(tlb, pudp, address);		\
 	} while (0)
 #endif
+#else
+#define p4d_free_tlb(tlb, pudp, address)	do { } while (0)
 #endif
 
 #endif /* CONFIG_MMU */
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
