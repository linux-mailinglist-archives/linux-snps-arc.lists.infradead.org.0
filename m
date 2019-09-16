Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9A9B431C
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpprgF65Lk+0rDU7bFPCQz+imxKG8hsV7jADunju598=; b=LNrxqgURFW1+Hd
	sc68IcdE44hdRl8PgQpmATwL4+qKCQ743oo7R5nwpXS7+S1HwG/7UuYW8sxwVI7r7OQS7GZSKj/Jc
	Z4DxmiPDSCRhsbbq824mYKqNlffHubDralinh8lcEOWChFeoGKOc60O+dAPO9PG8H1W8EVQQ5nCEA
	QCHnQ4tebRGVJSJbqCVMErU37ayBjCZQdCcVVB1m5cBKYTD3yZq/3adjB80sV5lxL4S4gXVNsBvAo
	uVbhYyjGDNrTzSQNGe7jpKh+A/qNI2Y2LT2X6pYRDdfxxknmmmRUUjMEaTWkIi208yv23oD8MqRze
	OMVB2AccMm2ifuAzmhLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybU-0003kU-4r; Mon, 16 Sep 2019 21:32:12 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003ia-Dm
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:10 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4DD5AC0428
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=71UGZIAEqFuF6eHWnwEX537M9AFR2O8iM1M7ZcGYBic=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bTePTa12TcGyKqGfWoUGonuSkjT3PSNsjSx4+M4oeeFM4NhmendvsJbU8UPuLbAGu
 Q5w0XGOnJaKfh0A1ffx8PCx3IgVqjRSUoPxxADl1g0Q/PoZXSEGc2nxGp59MSdebxq
 TfC83kAtIC5BxFX7ay9UUK3y1IIxDg1oBBpdq/zKUkB0HGUZew7tC3J6+2oyQaI1sr
 Jlbvt+7SKpWM8Jum3ppFY8zTjic76167BOyXFdbM054NoPzjIbisr4Fp6YydeMDlHA
 YulIiS72fps55By+T5sGB/L8ywiofDU82E7W/pJVFnEaV86zk0W/Zc2Fb3gq+3Oqr+
 KVkzb9m/5AhsA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2E7A8A023A;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 1/6] ARCv2: mm: TLB Miss optim: SMP builds can cache pgd
 pointer in mmu scratch reg
Date: Mon, 16 Sep 2019 14:32:02 -0700
Message-Id: <20190916213207.12792-2-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_468772_45840C49 
X-CRM114-Status: GOOD (  12.05  )
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

ARC700 exception (and intr handling) didn't have auto stack switching
thus had to rely on stashing a reg temporarily (to free it up) at a
known place in memory, allowing to code up the low level stack switching.
This however was not re-entrant in SMP which thus had to repurpose the
per-cpu MMU SCRATCH DATA register otherwise used to "cache" the task pdg
pointer (vs. reading it from mm struct)

The newer HS cores do have auto-stack switching and thus even SMP builds
can use the MMU SCRATCH reg as originally intended.

This patch fixes the restriction to ARC700 SMP builds only

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/entry-compact.h | 4 ++--
 arch/arc/include/asm/mmu.h           | 4 ++++
 arch/arc/include/asm/mmu_context.h   | 2 +-
 arch/arc/include/asm/pgtable.h       | 2 +-
 arch/arc/mm/tlb.c                    | 2 +-
 arch/arc/mm/tlbex.S                  | 2 +-
 6 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arc/include/asm/entry-compact.h b/arch/arc/include/asm/entry-compact.h
index 66a292335ee6..c3aa775878dc 100644
--- a/arch/arc/include/asm/entry-compact.h
+++ b/arch/arc/include/asm/entry-compact.h
@@ -130,7 +130,7 @@
  * to be saved again on kernel mode stack, as part of pt_regs.
  *-------------------------------------------------------------*/
 .macro PROLOG_FREEUP_REG	reg, mem
-#ifdef CONFIG_SMP
+#ifndef ARC_USE_SCRATCH_REG
 	sr  \reg, [ARC_REG_SCRATCH_DATA0]
 #else
 	st  \reg, [\mem]
@@ -138,7 +138,7 @@
 .endm
 
 .macro PROLOG_RESTORE_REG	reg, mem
-#ifdef CONFIG_SMP
+#ifndef ARC_USE_SCRATCH_REG
 	lr  \reg, [ARC_REG_SCRATCH_DATA0]
 #else
 	ld  \reg, [\mem]
diff --git a/arch/arc/include/asm/mmu.h b/arch/arc/include/asm/mmu.h
index 98cadf1a09ac..0abacb82a72b 100644
--- a/arch/arc/include/asm/mmu.h
+++ b/arch/arc/include/asm/mmu.h
@@ -40,6 +40,10 @@
 #define ARC_REG_SCRATCH_DATA0	0x46c
 #endif
 
+#if defined(CONFIG_ISA_ARCV2) || !defined(CONFIG_SMP)
+#define	ARC_USE_SCRATCH_REG
+#endif
+
 /* Bits in MMU PID register */
 #define __TLB_ENABLE		(1 << 31)
 #define __PROG_ENABLE		(1 << 30)
diff --git a/arch/arc/include/asm/mmu_context.h b/arch/arc/include/asm/mmu_context.h
index 035470816be5..3a5e6a5b9ed6 100644
--- a/arch/arc/include/asm/mmu_context.h
+++ b/arch/arc/include/asm/mmu_context.h
@@ -144,7 +144,7 @@ static inline void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	 */
 	cpumask_set_cpu(cpu, mm_cpumask(next));
 
-#ifndef CONFIG_SMP
+#ifdef ARC_USE_SCRATCH_REG
 	/* PGD cached in MMU reg to avoid 3 mem lookups: task->mm->pgd */
 	write_aux_reg(ARC_REG_SCRATCH_DATA0, next->pgd);
 #endif
diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 1d87c18a2976..210eb1df17df 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -351,7 +351,7 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
  * Thus use this macro only when you are certain that "current" is current
  * e.g. when dealing with signal frame setup code etc
  */
-#ifndef CONFIG_SMP
+#ifdef ARC_USE_SCRATCH_REG
 #define pgd_offset_fast(mm, addr)	\
 ({					\
 	pgd_t *pgd_base = (pgd_t *) read_aux_reg(ARC_REG_SCRATCH_DATA0);  \
diff --git a/arch/arc/mm/tlb.c b/arch/arc/mm/tlb.c
index 10025e199353..417f05ac4397 100644
--- a/arch/arc/mm/tlb.c
+++ b/arch/arc/mm/tlb.c
@@ -868,7 +868,7 @@ void arc_mmu_init(void)
 	write_aux_reg(ARC_REG_PID, MMU_ENABLE);
 
 	/* In smp we use this reg for interrupt 1 scratch */
-#ifndef CONFIG_SMP
+#ifdef ARC_USE_SCRATCH_REG
 	/* swapper_pg_dir is the pgd for the kernel, used by vmalloc */
 	write_aux_reg(ARC_REG_SCRATCH_DATA0, swapper_pg_dir);
 #endif
diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
index c55d95dd2f39..d6fbdeda400a 100644
--- a/arch/arc/mm/tlbex.S
+++ b/arch/arc/mm/tlbex.S
@@ -193,7 +193,7 @@ ex_saved_reg1:
 
 	lr  r2, [efa]
 
-#ifndef CONFIG_SMP
+#ifdef ARC_USE_SCRATCH_REG
 	lr  r1, [ARC_REG_SCRATCH_DATA0] ; current pgd
 #else
 	GET_CURR_TASK_ON_CPU  r1
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
