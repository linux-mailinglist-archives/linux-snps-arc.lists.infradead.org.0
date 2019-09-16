Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8874B4321
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E3WFlMX8EX/QObMHxOU/ImFVYfNDY5LSnQFJxHGgaU=; b=teathCdNZWs+Fr
	50Uzl0jjms7fPiv+4SdmZWOzCaM35Sx98o3CaXBclIE02ToxsdShsC59ZOl/qBIkUWBWFWJb/3+DZ
	CSP45r+jxOTmigPtRwpEKxsHdxiBcw6STCj3dEKEfAd9o7+NSyby2RbV1wsmAjZROojIUAdELOQNp
	alOX0UHiXGygzVzi+Zd/DeLLLX3coJqlQmTCFZ4gM8cHPZmIDLqkR1D5BaAanyoe8V3OklHjMTA8K
	hO8sPijb/FIMCFC+EdoUoJ60eADXtpURVes7QoAoTucFaPDNJ1IMrqc1LQ3Lcg6n2sbqmcukS+hX5
	uqPKHJ11WSZ+wG4hCaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybW-0003mf-M8; Mon, 16 Sep 2019 21:32:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003jP-LH
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:12 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 834C1C0486
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=De2DAR3RAwVm9yekmMuslfJbupAQs9qZ1puObqzmTdI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XT9UyO08cs4OZlu0eHkbB9Y8ymRTMfuEskyopFjXlWRWZSz59jo9BcTyCg4FHqBj2
 bbk+tytVDCBn3McU+LpPw9Z2FFZB/ojZYcNziG9Q6FGQVYWbDWiV8a2EMHorLxUM8z
 msZKG/eDWHDDaXwR4iZrIOqbXp/zS8iJduCd1u/W/AEYByk6E2ZMStZ7LTDy6qhqHN
 nPh6YEAalWszm1ymZ4ftt/k0pGnXUt2UHqRvKbWEYESgnFOL4/M1kptw0yWjKdMIKT
 kFcbsiEfsVvpF9+9JuLN2AgkhwfbQg0mhqZ6/s3AMmAQTjXDs2bqyqpgdwATJDQD7D
 yDSKqjumnE9pA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 683C7A023D;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 5/6] ARC: mm: tlb flush optim: elide repeated uTLB invalidate
 in loop
Date: Mon, 16 Sep 2019 14:32:06 -0700
Message-Id: <20190916213207.12792-6-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_702882_FE82BC2D 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The unconditional full TLB flush (on say ASID rollover) iterates over each
entry and uses TLBWrite to zero it out. TLBWrite by design also invalidates
the uTLBs thus we end up invalidating it as many times as numbe rof
entries (512 or 1k)

Optimize this by using a weaker TLBWriteNI cmd in loop, which doesn't
tinker with uTLBs and an explicit one time IVUTLB, outside the loop to
invalidate them all once.

And given the optimiztion, the IVUTLB is now needed on MMUv4 too where
the uTLBs and JTLBs are otherwise coherent given the TLBInsertEntry /
TLBDeleteEntry commands

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/tlb.c | 74 +++++++++++++++++++----------------------------
 1 file changed, 29 insertions(+), 45 deletions(-)

diff --git a/arch/arc/mm/tlb.c b/arch/arc/mm/tlb.c
index 417f05ac4397..210d807983dd 100644
--- a/arch/arc/mm/tlb.c
+++ b/arch/arc/mm/tlb.c
@@ -118,6 +118,33 @@ static inline void __tlb_entry_erase(void)
 	write_aux_reg(ARC_REG_TLBCOMMAND, TLBWrite);
 }
 
+static void utlb_invalidate(void)
+{
+#if (CONFIG_ARC_MMU_VER >= 2)
+
+#if (CONFIG_ARC_MMU_VER == 2)
+	/* MMU v2 introduced the uTLB Flush command.
+	 * There was however an obscure hardware bug, where uTLB flush would
+	 * fail when a prior probe for J-TLB (both totally unrelated) would
+	 * return lkup err - because the entry didn't exist in MMU.
+	 * The Workround was to set Index reg with some valid value, prior to
+	 * flush. This was fixed in MMU v3
+	 */
+	unsigned int idx;
+
+	/* make sure INDEX Reg is valid */
+	idx = read_aux_reg(ARC_REG_TLBINDEX);
+
+	/* If not write some dummy val */
+	if (unlikely(idx & TLB_LKUP_ERR))
+		write_aux_reg(ARC_REG_TLBINDEX, 0xa);
+#endif
+
+	write_aux_reg(ARC_REG_TLBCOMMAND, TLBIVUTLB);
+#endif
+
+}
+
 #if (CONFIG_ARC_MMU_VER < 4)
 
 static inline unsigned int tlb_entry_lkup(unsigned long vaddr_n_asid)
@@ -149,44 +176,6 @@ static void tlb_entry_erase(unsigned int vaddr_n_asid)
 	}
 }
 
-/****************************************************************************
- * ARC700 MMU caches recently used J-TLB entries (RAM) as uTLBs (FLOPs)
- *
- * New IVUTLB cmd in MMU v2 explictly invalidates the uTLB
- *
- * utlb_invalidate ( )
- *  -For v2 MMU calls Flush uTLB Cmd
- *  -For v1 MMU does nothing (except for Metal Fix v1 MMU)
- *      This is because in v1 TLBWrite itself invalidate uTLBs
- ***************************************************************************/
-
-static void utlb_invalidate(void)
-{
-#if (CONFIG_ARC_MMU_VER >= 2)
-
-#if (CONFIG_ARC_MMU_VER == 2)
-	/* MMU v2 introduced the uTLB Flush command.
-	 * There was however an obscure hardware bug, where uTLB flush would
-	 * fail when a prior probe for J-TLB (both totally unrelated) would
-	 * return lkup err - because the entry didn't exist in MMU.
-	 * The Workround was to set Index reg with some valid value, prior to
-	 * flush. This was fixed in MMU v3 hence not needed any more
-	 */
-	unsigned int idx;
-
-	/* make sure INDEX Reg is valid */
-	idx = read_aux_reg(ARC_REG_TLBINDEX);
-
-	/* If not write some dummy val */
-	if (unlikely(idx & TLB_LKUP_ERR))
-		write_aux_reg(ARC_REG_TLBINDEX, 0xa);
-#endif
-
-	write_aux_reg(ARC_REG_TLBCOMMAND, TLBIVUTLB);
-#endif
-
-}
-
 static void tlb_entry_insert(unsigned int pd0, pte_t pd1)
 {
 	unsigned int idx;
@@ -219,11 +208,6 @@ static void tlb_entry_insert(unsigned int pd0, pte_t pd1)
 
 #else	/* CONFIG_ARC_MMU_VER >= 4) */
 
-static void utlb_invalidate(void)
-{
-	/* No need since uTLB is always in sync with JTLB */
-}
-
 static void tlb_entry_erase(unsigned int vaddr_n_asid)
 {
 	write_aux_reg(ARC_REG_TLBPD0, vaddr_n_asid | _PAGE_PRESENT);
@@ -267,7 +251,7 @@ noinline void local_flush_tlb_all(void)
 	for (entry = 0; entry < num_tlb; entry++) {
 		/* write this entry to the TLB */
 		write_aux_reg(ARC_REG_TLBINDEX, entry);
-		write_aux_reg(ARC_REG_TLBCOMMAND, TLBWrite);
+		write_aux_reg(ARC_REG_TLBCOMMAND, TLBWriteNI);
 	}
 
 	if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
@@ -278,7 +262,7 @@ noinline void local_flush_tlb_all(void)
 
 		for (entry = stlb_idx; entry < stlb_idx + 16; entry++) {
 			write_aux_reg(ARC_REG_TLBINDEX, entry);
-			write_aux_reg(ARC_REG_TLBCOMMAND, TLBWrite);
+			write_aux_reg(ARC_REG_TLBCOMMAND, TLBWriteNI);
 		}
 	}
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
