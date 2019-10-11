Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A22FD4A6E
	for <lists+linux-snps-arc@lfdr.de>; Sat, 12 Oct 2019 00:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Szm3GFHAp0rUi+vyWvI9u23ZKvQLsbRGvPQTcxNiGrk=; b=hznOZvEFf+mvkj
	9feGPKNPqlpLumxLtbp0SSsU7Dp3cJUrwsrNO0wD6CdsE1jp/hp24luhR721F6FGVTnv7nfsqjCrH
	AJFKrOq6dxROeIIAzhJzXv4L80I+TGmXejHUTfxLgA29wifHdSPFOsPYBINA/QcWScXfGcPsvgNwr
	/Jc1pPLn2uhc2ENW3sAsR0W4B7a2SUuzrRucW5gkmohVqJtv5MTReUNkhHbx4vp+lSF07YLABF/PM
	9TBPgBeiv+cLSFwY3mewMe9CB3nLNWe2eQ8LY6A49TABG/p8G/Qwnzr0BtKXyMYRdtIHO5GvjZL/b
	17oA0kvO67X/3/1vDKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ3YP-0003Bn-03; Fri, 11 Oct 2019 22:38:33 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ3YM-0003BN-8I
 for linux-snps-arc@lists.infradead.org; Fri, 11 Oct 2019 22:38:31 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 80CEFC04A7;
 Fri, 11 Oct 2019 22:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570833508; bh=E0P1RFAQD2Jf3g/rlBhYfNzwHdOeyXPqBOG/QZTvieM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A6IYKky8AdyUQ2QMjcIa2Uj+0XJjLeGbu6SH7JKVYKXMO6VLVywzRybptkCdTakG0
 RDHIGz82Gfiajkpm4OCoDCz9X4UjVucNxnWyUWfz+tlwwNcSs1lfGeqyUqmRKJ3LFS
 tBwLL8Ru9EXyP/LBxMEtY6xAHed0FQeC59VOQqR9UUlgMl+BFNEPVVNI9SqOd5WLg0
 jRQ+NyVOSXkfzBGVDgUyBMjNBT83MBQiNVhn3m6ENnXJdTZM9bDCep+rLXiai1UQkv
 UIYZzv9FSGgroLSDe0WPaDu0yK3CsCcEcUiNmvP+v0zljLl4HIl6q2weZjeDtxqIVu
 zIeuNs1TDq8ZA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id AC1E4A006B;
 Fri, 11 Oct 2019 22:38:21 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-mm@kvack.org
Subject: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
Date: Fri, 11 Oct 2019 15:38:18 -0700
Message-Id: <20191011223818.7238-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011121951.nxna6hruuskvdxod@box>
References: <20191011121951.nxna6hruuskvdxod@box>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_153830_363415_9ADB6E11 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This is inine with similar patches for nopud [1] and nop4d [2] cases.

  However I'm not really sure I understand clearly how the nopmd code is
  supposed to work (for a 2 tier paging system) - hence the RFC.
  Consider free_pmd_range() simplified/annotated below

  free_pmd_range
  ...
	pmd = pmd_offset(pud, addr);
	do {
		next = pmd_addr_end(addr, end);
		if (pmd_none_or_clear_bad(pmd)) => *pmd_bad()/pmd_clear_bad() [a]*
			continue;
		free_pte_range(tlb, pmd, addr);
	} while (pmd++, addr = next, addr != end);
   ...
	*pmd_free_tlb(tlb, pmd, start); => [b]*

   For ARC/nopmd case [a] is actually checking pgd and consequently
   pmd_clear_bad() can't be stubbed out for PMD_FOLDED case. However it seems
   case [b] can be stubbed out (hence this patch) along same lines as [1] and [2]

| bloat-o-meter2 vmlinux-E-elide-p?d_clear_bad vmlinux-F-elide-pmd_free_tlb
| add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-112 (-112)
| function                                     old     new   delta
| free_pgd_range                               422     310    -112
| Total: Before=4137002, After=4136890, chg -1.000000%

[1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-October/006266.html
[2] http://lists.infradead.org/pipermail/linux-snps-arc/2019-October/006265.html

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 include/asm-generic/tlb.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/asm-generic/tlb.h b/include/asm-generic/tlb.h
index f3dad87f4ecc..a1edad7d4170 100644
--- a/include/asm-generic/tlb.h
+++ b/include/asm-generic/tlb.h
@@ -574,6 +574,7 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 	} while (0)
 #endif
 
+#ifndef __PAGETABLE_PMD_FOLDED
 #ifndef pmd_free_tlb
 #define pmd_free_tlb(tlb, pmdp, address)			\
 	do {							\
@@ -583,6 +584,9 @@ static inline void tlb_end_vma(struct mmu_gather *tlb, struct vm_area_struct *vm
 		__pmd_free_tlb(tlb, pmdp, address);		\
 	} while (0)
 #endif
+#else
+#define pmd_free_tlb(tlb, pmdp, address)        do { } while (0)
+#endif
 
 #ifndef __PAGETABLE_PUD_FOLDED
 #ifndef pud_free_tlb
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
