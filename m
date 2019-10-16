Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F85D971B
	for <lists+linux-snps-arc@lfdr.de>; Wed, 16 Oct 2019 18:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5z5lSdzVpR1NWynfrnZvshLhzVTthljh+TVYMziObY=; b=XfFXARYPszRpQU
	1erZg+Wl0lLztNv8xxFeEQ6iX3P2tOEnlgiCnXr6+IdUdPmlT0kl3VBPNS/uOnuCwpQJUw2nCTLtf
	XqwADh20QBReb+dD2A7MM6B0MweQuURgNfx3OWDOTUqLtILk5gUHzvCX0V1Ry6SE1hhK0+Vh2udfH
	EWtVUy2nIiVP/N3OyyC6eYwdhV3sxYdFJ0k7acZz313sMFT/En4NfkHP63bqYpKQcOBPx9pmEu4y+
	+dMbEkV33xQ/W+L0PFJhQnnqW2S8ZNuok+ryWadO+dT0+k0xht5Dk1lKg2t0Bti3SkFRbvmWh5Jfx
	7YEonAvBnEcu+82FuBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm5p-0007F4-Vx; Wed, 16 Oct 2019 16:24:09 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm5n-0007DR-IE
 for linux-snps-arc@lists.infradead.org; Wed, 16 Oct 2019 16:24:08 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 049A0C3008;
 Wed, 16 Oct 2019 16:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571243046; bh=llraKphMWAkZVO2NRbIWH0Hsr8qlC/sbM1GULVRrJUA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TRjBnf8GTm/MtZQRqem6EfZw/EWLXV54vKOyLdWH41Yi/Zh+abb2M34MgrXYsvbvu
 cSLcKHn7TtUpDBnZKhqyI4Q4DerBCw6gTIlNunmG0mnnV8C2RyuOx3nKVmqHPnM2vf
 6aRdxhq+Yd9BHPUsAxzOXgzgthryy5/ypywUX59dSJil4aKCkYLGHYcYkH443GOOUy
 DYAprqzRmZ56DMtOvFExxBN5z8KUbUeNFwAZW/+uMqoWVd81KNjFRUwVkf8RaEHbdr
 WkktoGeB22hOUhjX5yDpb1HPddZuWyd5rtd81CgJa2cAiD+MhLCgu414vwGlkNl1rz
 xAh/yMqu/fWDw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 85889A0081;
 Wed, 16 Oct 2019 16:24:04 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 4/5] asm-generic/tlb: stub out pmd_free_tlb() if nopmd
Date: Wed, 16 Oct 2019 09:23:59 -0700
Message-Id: <20191016162400.14796-5-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016162400.14796-1-vgupta@synopsys.com>
References: <20191016162400.14796-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092407_662120_677F415D 
X-CRM114-Status: GOOD (  11.89  )
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

This came up when removing __ARCH_HAS_5LEVEL_HACK for ARC as code bloat.
With this patch we see the following code reduction.

| bloat-o-meter2 vmlinux-E-elide-p?d_clear_bad vmlinux-F-elide-pmd_free_tlb
| add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-112 (-112)
| function                                     old     new   delta
| free_pgd_range                               422     310    -112
| Total: Before=4137042, After=4136930, chg -1.000000%

Note that pmd folding can be tricky: In 2-level setup (where pmd is
conceptually folded) most pmd routines are valid and refer to upper levels.
In this patch we can, but see next patch for example where we can't

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 include/asm-generic/pgtable-nopmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/pgtable-nopmd.h b/include/asm-generic/pgtable-nopmd.h
index b85b8271a73d..0d9b28cba16d 100644
--- a/include/asm-generic/pgtable-nopmd.h
+++ b/include/asm-generic/pgtable-nopmd.h
@@ -60,7 +60,7 @@ static inline pmd_t * pmd_offset(pud_t * pud, unsigned long address)
 static inline void pmd_free(struct mm_struct *mm, pmd_t *pmd)
 {
 }
-#define __pmd_free_tlb(tlb, x, a)		do { } while (0)
+#define pmd_free_tlb(tlb, x, a)		do { } while (0)
 
 #undef  pmd_addr_end
 #define pmd_addr_end(addr, end)			(end)
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
