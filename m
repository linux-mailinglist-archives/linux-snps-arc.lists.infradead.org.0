Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ECE468FD
	for <lists+linux-snps-arc@lfdr.de>; Fri, 14 Jun 2019 22:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JxPisGP1UdoCcrURqmYWPnF9ZoqzS5Tt2BH4UEtWsHA=; b=aZUjwNT0GGT7r2
	/e0mMwUy0kHXXXBlZFi47VlfWnZdgo85SLo2uuZMtJ9Hwmuu7CKQ3fAawiURV/N9lEYZo9vOed6zh
	A6Ac9b7omCEexar561n3CPzcgQmoX/nyXFucsgsNKIYhTzxk1pqlU3Xkr4ENp/SVfxkQeQKg4An7l
	9dDfsAwP304nqRkXIog5IeItzPHJnfBwFFqw8bWmAc4xuMLpWVYuXGtF8YJ/MHg+P1APlHn37ZDED
	/YxDt5Ny5s71nCx/NduirYOFcXVNLTmsxpfAeY4znmhdhWao9unsGTZt7Vq+j+WKRUQAcB1pqPLn3
	txEFTBM3CQvZ+zwkOf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbspa-0006c1-8v; Fri, 14 Jun 2019 20:29:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbspX-0006Rk-8F
 for linux-snps-arc@lists.infradead.org; Fri, 14 Jun 2019 20:29:48 +0000
Received: from sasha-vm.mshome.net (unknown [131.107.159.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD57421841;
 Fri, 14 Jun 2019 20:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560544186;
 bh=l+rTMnFPCsw32TVa9pqRNQKLqnxtdHDYtV8BGIzK+k0=;
 h=From:To:Cc:Subject:Date:From;
 b=zcmg5wlr1x+UEvqnqkF3v6CCcddCVKNIxos2rpjovGKQN0YJujAJrfngMpbhSdwuW
 fBdLc3LPz/vp2hrcM31gLSW7MVhdbvrL8mVIcFkJA6wwfN3ZFEagGWlxNT5QbeIlyr
 z0xUD5FwV//0JPWObNLFp28qEv4XHJgFW4Sb+ZPU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 01/39] ARC: fix build warnings
Date: Fri, 14 Jun 2019 16:29:06 -0400
Message-Id: <20190614202946.27385-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_132947_329219_5DE3B738 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Vineet Gupta <vgupta@synopsys.com>

[ Upstream commit 89c92142f75eb80064f5b9f1111484b1b4d81790 ]

| arch/arc/mm/tlb.c:914:2: warning: variable length array 'pd0' is used [-Wvla]
| arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arc/include/asm/cmpxchg.h | 14 ++++++++++----
 arch/arc/mm/tlb.c              | 13 ++++++++-----
 2 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/arch/arc/include/asm/cmpxchg.h b/arch/arc/include/asm/cmpxchg.h
index d819de1c5d10..3ea4112c8302 100644
--- a/arch/arc/include/asm/cmpxchg.h
+++ b/arch/arc/include/asm/cmpxchg.h
@@ -92,8 +92,11 @@ __cmpxchg(volatile void *ptr, unsigned long expected, unsigned long new)
 
 #endif /* CONFIG_ARC_HAS_LLSC */
 
-#define cmpxchg(ptr, o, n) ((typeof(*(ptr)))__cmpxchg((ptr), \
-				(unsigned long)(o), (unsigned long)(n)))
+#define cmpxchg(ptr, o, n) ({				\
+	(typeof(*(ptr)))__cmpxchg((ptr),		\
+				  (unsigned long)(o),	\
+				  (unsigned long)(n));	\
+})
 
 /*
  * atomic_cmpxchg is same as cmpxchg
@@ -198,8 +201,11 @@ static inline unsigned long __xchg(unsigned long val, volatile void *ptr,
 	return __xchg_bad_pointer();
 }
 
-#define xchg(ptr, with) ((typeof(*(ptr)))__xchg((unsigned long)(with), (ptr), \
-						 sizeof(*(ptr))))
+#define xchg(ptr, with) ({				\
+	(typeof(*(ptr)))__xchg((unsigned long)(with),	\
+			       (ptr),			\
+			       sizeof(*(ptr)));		\
+})
 
 #endif /* CONFIG_ARC_PLAT_EZNPS */
 
diff --git a/arch/arc/mm/tlb.c b/arch/arc/mm/tlb.c
index 4097764fea23..fa18c00b0cfd 100644
--- a/arch/arc/mm/tlb.c
+++ b/arch/arc/mm/tlb.c
@@ -911,9 +911,11 @@ void do_tlb_overlap_fault(unsigned long cause, unsigned long address,
 			  struct pt_regs *regs)
 {
 	struct cpuinfo_arc_mmu *mmu = &cpuinfo_arc700[smp_processor_id()].mmu;
-	unsigned int pd0[mmu->ways];
 	unsigned long flags;
-	int set;
+	int set, n_ways = mmu->ways;
+
+	n_ways = min(n_ways, 4);
+	BUG_ON(mmu->ways > 4);
 
 	local_irq_save(flags);
 
@@ -921,9 +923,10 @@ void do_tlb_overlap_fault(unsigned long cause, unsigned long address,
 	for (set = 0; set < mmu->sets; set++) {
 
 		int is_valid, way;
+		unsigned int pd0[4];
 
 		/* read out all the ways of current set */
-		for (way = 0, is_valid = 0; way < mmu->ways; way++) {
+		for (way = 0, is_valid = 0; way < n_ways; way++) {
 			write_aux_reg(ARC_REG_TLBINDEX,
 					  SET_WAY_TO_IDX(mmu, set, way));
 			write_aux_reg(ARC_REG_TLBCOMMAND, TLBRead);
@@ -937,14 +940,14 @@ void do_tlb_overlap_fault(unsigned long cause, unsigned long address,
 			continue;
 
 		/* Scan the set for duplicate ways: needs a nested loop */
-		for (way = 0; way < mmu->ways - 1; way++) {
+		for (way = 0; way < n_ways - 1; way++) {
 
 			int n;
 
 			if (!pd0[way])
 				continue;
 
-			for (n = way + 1; n < mmu->ways; n++) {
+			for (n = way + 1; n < n_ways; n++) {
 				if (pd0[way] != pd0[n])
 					continue;
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
