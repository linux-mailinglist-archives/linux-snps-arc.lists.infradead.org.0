Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25482D1BB0
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 00:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5c9jgSwWdJ4AR0sJkaiR5DY7KtME2jVR4fPm+fKmvDM=; b=K6odUEqEd+QLeI
	+vxpYaC4wmsdDVKyWgF1CsNRemVWaQmLjlNDoiaCePeQwIjCiRqcASQS4zSpPWXhyvseM2DNJddzF
	Rz4zZJA7aU6Ksc8O05UgWw/IPvd0hSoczZ7OwgyaNJf1nitvNCWjqsvE9Mc0tjvjPKvF1/B53nuKc
	qYJAZH9AJlJP1Hnxvg1MtB4+bvM9KBhl7HmcLZMRMQIEqbvleACHR0HeZn23tHW7cpfLs+ntxHtA0
	3AeDNRFANpH2frEJwi2+hZl6fko+yxN6lmNaPJbikQX3PvvkSIFL6KVxOiUYOIEfgw5/YXmzRRgpc
	P4S8IEUqn6p+3dT5HT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKQK-0003Wu-Sc; Wed, 09 Oct 2019 22:27:12 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKQH-0003UI-3Q
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 22:27:11 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 21006C03E7;
 Wed,  9 Oct 2019 22:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570660027; bh=+fXx98X7ZWlodVdTQmpmbXd7E1kSCADK/6WXe3QmHgw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cIRDG8mgI2ftLTQM4oxqslIpCO+BLxHMgPosEygMlLNYtUrCBPX7HDsVJZAAvgs+v
 MBdm2BR2LOOFSTZcnjQaS+qJl5O4cuoIsHsvc9mlMwcIoNWnLIILjeTHR+WFAIJzHU
 B8L/u6D/fkO2uaFTi21XUmWGCTg0vnELZxIOmiEBQLHRXsyFNGh7HsYUk35e7QQ7eV
 +S+TgO0TQxJTFVHmNjJXHyEIL58XZPnJdBuDYAbVDHFiPPWfcufJCgPxJM6plviC5H
 vKjcH3QfIS7Nv5fYwHF04NRonkEGe1Jia82mTrlbwP1erZvZxiRfKWmLJc6hbATUm4
 /AGi62m11VFvw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8A22CA006D;
 Wed,  9 Oct 2019 22:27:06 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [PATCH 1/3] asm-generic/tlb: stub out pud_free_tlb() if
 __PAGETABLE_PUD_FOLDED ...
Date: Wed,  9 Oct 2019 15:26:56 -0700
Message-Id: <20191009222658.961-2-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009222658.961-1-vgupta@synopsys.com>
References: <20191009222658.961-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_152709_157926_FC32E057 
X-CRM114-Status: GOOD (  10.41  )
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

... independent of __ARCH_HAS_4LEVEL_HACK

This came up when removing __ARCH_HAS_5LEVEL_HACK for ARC as code bloat
from pud_free_tlb() despite pud being folded (with 2 levels on ARC)

| bloat-o-meter2 vmlinux-B-elide-ARCH_USE_5LEVEL_HACK vmlinux-C-elide-pud_free_tlb
| add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-104 (-104)
| function                                     old     new   delta
| free_pgd_range                               656     552    -104
| Total: Before=4137276, After=4137172, chg -1.000000%

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 include/asm-generic/4level-fixup.h | 2 --
 include/asm-generic/tlb.h          | 4 +++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
index e3667c9a33a5..d7c5ba1968d3 100644
--- a/include/asm-generic/4level-fixup.h
+++ b/include/asm-generic/4level-fixup.h
@@ -27,8 +27,6 @@
 #define pud_page(pud)			pgd_page(pud)
 #define pud_page_vaddr(pud)		pgd_page_vaddr(pud)
 
-#undef pud_free_tlb
-#define pud_free_tlb(tlb, x, addr)	do { } while (0)
 #define pud_free(mm, x)			do { } while (0)
 #define __pud_free_tlb(tlb, x, addr)	do { } while (0)
 
diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index 04c0644006fd..1f83188cb331 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -584,7 +584,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 	} while (0)
 #endif
 
-#ifndef __ARCH_HAS_4LEVEL_HACK
+#ifndef __PAGETABLE_PUD_FOLDED
 #ifndef pud_free_tlb
 #define pud_free_tlb(tlb, pudp, address)			\
 	do {							\
@@ -594,6 +594,8 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 		__pud_free_tlb(tlb, pudp, address);		\
 	} while (0)
 #endif
+#else
+#define pud_free_tlb(tlb, pudp, address)	do { } while (0)
 #endif
 
 #ifndef __ARCH_HAS_5LEVEL_HACK
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
