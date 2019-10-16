Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8886DD971E
	for <lists+linux-snps-arc@lfdr.de>; Wed, 16 Oct 2019 18:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuwusB0/74dXZT69dRMJdqCBxZavk5OlzrteJaME0v4=; b=qGS4Aq4b4aLRax
	AXjhH6mKwNScr3Dfy8/0ElWTu/m1zG9lyUhdxgHqxKn+lyaJG86R6dZoWglwlu+tkK9RAodH/zZsA
	batQsJdrYLZpzpetusQLkFU/Ufsn4gBTF0C75TksT3nMwVjeE/7LUnE4YK3Bw51GjXyNFmsGma6uw
	fXfg3ptxLGJ0jJ5zcCp93E/y3JiB1t84ftNOU9b4eSZIHVDgq/mOfHoKo4Qa2EIEBVi/m0c9rnaTe
	rm2Kmn6ndA0S+NT9L18YFDdy6qYDBBREatrR7TXXZHJ7SJks0lcaALfgZxsxnxQwWHOns+r8bTacH
	r4KTQxxkvbc82elkfNcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm5s-0007GI-9c; Wed, 16 Oct 2019 16:24:12 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm5n-0007DT-IE
 for linux-snps-arc@lists.infradead.org; Wed, 16 Oct 2019 16:24:10 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F047AC2FFE;
 Wed, 16 Oct 2019 16:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571243046; bh=Gl7iBE75XELfcNREiXW7mW3FbQ2SBGxgIlhfE4i/THg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=baeRmgMAmW6WkrxQQwh5Dss5cDho+NCZTIh3/kYQRbrxlbQYYnCUUV80yWxL8H0/J
 d8S/+J4HEECuH3MYrxLV3pLeXtFD2JAUzjKXRvkqpR/X4ELMr8iZQybIMuZJbfISoU
 iYwc+C4D5EK2JAJCd6KzB8JDePUK8wMRzY9R8XETXrHXN5yWuv/NrWfQWSpI07SIb8
 FFsQbN91Ji3gM6rKELHHpn8xKwzA75fK4dHpzqsBL+63tL9Vib6YfAy73KDK37y6I6
 GdvkF1GFwFMjJDNf9UwRYVDgSpTAfZKa3g1yzHgAoE/wea/kEl/gYA1Yws5pa3mMwL
 LRMDu/phyxaNg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6A909A007A;
 Wed, 16 Oct 2019 16:24:04 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 2/5] asm-generic/tlb: stub out pud_free_tlb() if nopud ...
Date: Wed, 16 Oct 2019 09:23:57 -0700
Message-Id: <20191016162400.14796-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016162400.14796-1-vgupta@synopsys.com>
References: <20191016162400.14796-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092407_676317_B2E2E089 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org,
 Nick Piggin <npiggin@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

... independent of __ARCH_HAS_4LEVEL_HACK

This came up when removing __ARCH_HAS_5LEVEL_HACK for ARC as code bloat.
With this patch we see the following code reduction

| bloat-o-meter2 vmlinux-B-elide-ARCH_USE_5LEVEL_HACK vmlinux-C-elide-pud_free_tlb
| add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-104 (-104)
| function                                     old     new   delta
| free_pgd_range                               656     552    -104
| Total: Before=4137276, After=4137172, chg -1.000000%

Note: The primary change is alternate defintion for pud_free_tlb() but
while there also removed empty stubs for __pud_free_tlb, which is anyhow
called only from pud_free_tlb()

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 include/asm-generic/4level-fixup.h  | 1 -
 include/asm-generic/pgtable-nopud.h | 2 +-
 include/asm-generic/tlb.h           | 2 --
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
index e3667c9a33a5..c86cf7cb4bba 100644
--- a/include/asm-generic/4level-fixup.h
+++ b/include/asm-generic/4level-fixup.h
@@ -30,7 +30,6 @@
 #undef pud_free_tlb
 #define pud_free_tlb(tlb, x, addr)	do { } while (0)
 #define pud_free(mm, x)			do { } while (0)
-#define __pud_free_tlb(tlb, x, addr)	do { } while (0)
 
 #undef  pud_addr_end
 #define pud_addr_end(addr, end)		(end)
diff --git a/include/asm-generic/pgtable-nopud.h b/include/asm-generic/pgtable-nopud.h
index c77a1d301155..d3776cb494c0 100644
--- a/include/asm-generic/pgtable-nopud.h
+++ b/include/asm-generic/pgtable-nopud.h
@@ -59,7 +59,7 @@ static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
  */
 #define pud_alloc_one(mm, address)		NULL
 #define pud_free(mm, x)				do { } while (0)
-#define __pud_free_tlb(tlb, x, a)		do { } while (0)
+#define pud_free_tlb(tlb, x, a)		        do { } while (0)
 
 #undef  pud_addr_end
 #define pud_addr_end(addr, end)			(end)
diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index 04c0644006fd..5e0c2d01e656 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -584,7 +584,6 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 	} while (0)
 #endif
 
-#ifndef __ARCH_HAS_4LEVEL_HACK
 #ifndef pud_free_tlb
 #define pud_free_tlb(tlb, pudp, address)			\
 	do {							\
@@ -594,7 +593,6 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 		__pud_free_tlb(tlb, pudp, address);		\
 	} while (0)
 #endif
-#endif
 
 #ifndef __ARCH_HAS_5LEVEL_HACK
 #ifndef p4d_free_tlb
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
