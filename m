Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377E012B938
	for <lists+linux-snps-arc@lfdr.de>; Fri, 27 Dec 2019 19:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8eny6IskrIDceiTBxm/F7mprrJyOUhnVWYuKwdioDw=; b=AxWidXq9q5hY6w
	ilxMXWP8/jQqiv0ShI2ihaea4PW2DFtpC0cQnBn8ufBGUxHIyFY0ThBsC7+NBSW0ubdm8RCJZRvd2
	pEpPoBiaIwaDGaWcAIWoQoD27ep/teBbwMjBiRy7IZ6x8/GVOUyYpbHmY3tPYGsbE6MmbFyl4oms/
	B7dimWzKcHQDzWEVn9KSZ3JkqLMz1zQM+aw3gBQdlRIX2xaCkQMtR66jRSss/Jaa80A4/uPNTSXRo
	14JEphRxse1SxICQEMH8d4CiatZl7TNnXIZF+2VrYYoXvGvdaJ4iUrf7cjGO8UQBdH+EVw5rentzf
	iBI7Y10aA9n4fjbwchqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktxz-0005Xv-N1; Fri, 27 Dec 2019 18:04:03 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktxw-0005Vf-6w
 for linux-snps-arc@lists.infradead.org; Fri, 27 Dec 2019 18:04:01 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 147EA42CEC;
 Fri, 27 Dec 2019 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577469839; bh=K9nVMzXjv/U0xWlciQSrraVPV47CuH+TmfJ3GoJIPOk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=karlLXPlB0NUc1By9++iLqaxYMOiYLQuxwRc7SdCO9ngbGySJphqH9dn4niioUoo7
 jMMcX7wZd9iUKOantumODW3QPonT2/VmDG5sQtXHgPetw4CZI0xb4l1wHI3yPgMmRa
 KI9SrCoMO0sY4HT12sPDntJKs5K1aTg/9AgJ8j56Gw9Nvcz3MPwP1UOe8A2FsLJc0E
 yvdKiJRsCPOlhTHAKx7XuLLdZiwzIuNrvxCeYvOEYr+HtAvZHM0bq78ZrPcuZeEtEG
 i4GHFcRpgw/aWPLRvnutAsthATs28cUCLhpIgkMexbf+9y5yp2U7bajQ/9YpjbeY1H
 iTBm9B4x2MVag==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.65])
 by mailhost.synopsys.com (Postfix) with ESMTP id 79825A0064;
 Fri, 27 Dec 2019 18:03:57 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 4/5] ARC: add support for DSP-enabled userspace applications
Date: Fri, 27 Dec 2019 21:03:46 +0300
Message-Id: <20191227180347.3579-5-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191227180347.3579-1-Eugeniy.Paltsev@synopsys.com>
References: <20191227180347.3579-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_100400_258899_C7242A22 
X-CRM114-Status: GOOD (  18.69  )
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

To be able to run DSP-enabled userspace applications we need to
save and restore following DSP-related registers:
At IRQ/exception entry/exit:
 * ACC0_GLO, ACC0_GHI, DSP_CTRL
 * ACC0_LO, ACC0_HI (we already save them as r58, r59 pair)
At context switch:
 * DSP_BFLY0, DSP_FFT_CTRL

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/Kconfig                   |  7 +++
 arch/arc/include/asm/arcregs.h     |  2 +
 arch/arc/include/asm/dsp-impl.h    | 75 +++++++++++++++++++++++++++++-
 arch/arc/include/asm/dsp.h         | 42 +++++++++++++++++
 arch/arc/include/asm/entry-arcv2.h |  3 ++
 arch/arc/include/asm/processor.h   |  4 ++
 arch/arc/include/asm/ptrace.h      |  4 ++
 arch/arc/include/asm/switch_to.h   |  2 +
 arch/arc/kernel/asm-offsets.c      |  7 +++
 arch/arc/kernel/setup.c            |  2 +-
 10 files changed, 146 insertions(+), 2 deletions(-)
 create mode 100644 arch/arc/include/asm/dsp.h

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index b9cd7ce3f878..c3210754a3d2 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -432,6 +432,13 @@ config ARC_DSP_KERNEL
 	  DSP extension presence in HW, no support for DSP-enabled userspace
 	  applications. We don't save / restore DSP registers and only do
 	  some minimal preparations so userspace won't be able to break kernel
+
+config ARC_DSP_USERSPACE
+	bool "Support DSP for userspace apps"
+	select ARC_HAS_ACCL_REGS
+	help
+	  DSP extension presence in HW, support save / restore DSP registers to
+	  run DSP-enabled userspace applications
 endchoice
 
 config ARC_IRQ_NO_AUTOSAVE
diff --git a/arch/arc/include/asm/arcregs.h b/arch/arc/include/asm/arcregs.h
index 0004b1e9b325..a713819cab3c 100644
--- a/arch/arc/include/asm/arcregs.h
+++ b/arch/arc/include/asm/arcregs.h
@@ -118,6 +118,8 @@
 
 /*
  * DSP-related registers
+ * Registers names must correspond to dsp_callee_regs structure fields names
+ * for automatic offset calculation in DSP_AUX_SAVE_RESTORE macros.
  */
 #define ARC_AUX_DSP_BUILD	0x7A
 #define ARC_AUX_ACC0_LO		0x580
diff --git a/arch/arc/include/asm/dsp-impl.h b/arch/arc/include/asm/dsp-impl.h
index 788093cbe689..7b640a680dfc 100644
--- a/arch/arc/include/asm/dsp-impl.h
+++ b/arch/arc/include/asm/dsp-impl.h
@@ -7,6 +7,8 @@
 #ifndef __ASM_ARC_DSP_IMPL_H
 #define __ASM_ARC_DSP_IMPL_H
 
+#include <asm/dsp.h>
+
 #define DSP_CTRL_DISABLED_ALL		0
 
 #ifdef __ASSEMBLY__
@@ -28,11 +30,82 @@
 	 * able to break kernel */
 	mov	r58, DSP_CTRL_DISABLED_ALL
 	sr	r58, [ARC_AUX_DSP_CTRL]
-#endif /* ARC_DSP_KERNEL */
+
+#elif defined(ARC_DSP_SAVE_RESTORE_REGS)
+	lr	r58, [ARC_AUX_ACC0_GLO]
+	lr	r59, [ARC_AUX_ACC0_GHI]
+	ST2	r58, r59, PT_ACC0_GLO
+
+	lr	r58, [ARC_AUX_DSP_CTRL]
+	st	r58, [sp, PT_DSP_CTRL]
+
+#endif
+.endm
+
+/* clobbers r58, r59 registers pair */
+.macro DSP_RESTORE_REGFILE_IRQ
+#if defined(ARC_DSP_SAVE_RESTORE_REGS)
+	LD2	r58, r59, PT_ACC0_GLO
+	sr	r58, [ARC_AUX_ACC0_GLO]
+	sr	r59, [ARC_AUX_ACC0_GHI]
+
+	ld	r58, [sp, PT_DSP_CTRL]
+	sr	r58, [ARC_AUX_DSP_CTRL]
+
+#endif
 .endm
 
 #else /* __ASEMBLY__ */
 
+#include <linux/sched.h>
+#include <asm/switch_to.h>
+
+#ifdef ARC_DSP_SAVE_RESTORE_REGS
+
+/*
+ * As we save new and restore old AUX register value in the same place we
+ * can optimize a bit and use AEX instruction (swap contents of an auxiliary
+ * register with a core register) instead of LR + SR pair.
+ */
+#define AUX_SAVE_RESTORE(_saveto, _readfrom, _offt, _aux, _scratch)	\
+do {									\
+	__asm__ __volatile__(						\
+		"ld	%0, [%2, %4]			\n"		\
+		"aex	%0, [%3]			\n"		\
+		"st	%0, [%1, %4]			\n"		\
+		:							\
+		  "=&r" (_scratch)	/* must be early clobber */	\
+		:							\
+		   "r" (_saveto),					\
+		   "r" (_readfrom),					\
+		   "I" (_aux),						\
+		   "I" (_offt)						\
+		:							\
+		  "memory"						\
+	);								\
+} while (0)
+
+#define DSP_AUX_SAVE_RESTORE(_saveto, _readfrom, _aux, _scratch)	\
+	AUX_SAVE_RESTORE(_saveto, _readfrom,				\
+		offsetof(struct dsp_callee_regs, _aux),			\
+		ARC_AUX_##_aux, _scratch)
+
+static inline void arc_dsp_save_restore(struct task_struct *prev,
+					struct task_struct *next)
+{
+	long unsigned int *saveto = &prev->thread.dsp.DSP_BFLY0;
+	long unsigned int *readfrom = &next->thread.dsp.DSP_BFLY0;
+
+	long unsigned int zero = 0;
+
+	DSP_AUX_SAVE_RESTORE(saveto, readfrom, DSP_BFLY0, zero);
+	DSP_AUX_SAVE_RESTORE(saveto, readfrom, DSP_FFT_CTRL, zero);
+}
+
+#else /* !ARC_DSP_SAVE_RESTORE_REGS */
+#define arc_dsp_save_restore(p, n)
+#endif /* ARC_DSP_SAVE_RESTORE_REGS */
+
 static inline bool dsp_exist(void)
 {
 	struct bcr_generic bcr;
diff --git a/arch/arc/include/asm/dsp.h b/arch/arc/include/asm/dsp.h
new file mode 100644
index 000000000000..68507f04dea4
--- /dev/null
+++ b/arch/arc/include/asm/dsp.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Synopsys, Inc. (www.synopsys.com)
+ *
+ * Author: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
+ */
+#ifndef __ASM_ARC_DSP_H
+#define __ASM_ARC_DSP_H
+
+#if defined(CONFIG_ARC_DSP_USERSPACE)
+#define ARC_DSP_SAVE_RESTORE_REGS	1
+#endif
+
+#ifndef __ASSEMBLY__
+
+/* some defines to simplify config sanitize in kernel/setup.c */
+#if defined(CONFIG_ARC_DSP_KERNEL) 	|| \
+    defined(CONFIG_ARC_DSP_USERSPACE)
+#define ARC_DSP_HANDLED			1
+#else
+#define ARC_DSP_HANDLED			0
+#endif
+
+#if defined(CONFIG_ARC_DSP_USERSPACE)
+#define ARC_DSP_OPT_NAME		"CONFIG_ARC_DSP_USERSPACE"
+#else
+#define ARC_DSP_OPT_NAME		"CONFIG_ARC_DSP_KERNEL"
+#endif
+
+/*
+ * DSP-related saved registers - need to be saved only when you are
+ * scheduled out.
+ * structure fields name must correspond to aux register defenitions for
+ * automatic offset calculation in DSP_AUX_SAVE_RESTORE macros
+ */
+struct dsp_callee_regs {
+	unsigned long DSP_BFLY0, DSP_FFT_CTRL;
+};
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_ARC_DSP_H */
diff --git a/arch/arc/include/asm/entry-arcv2.h b/arch/arc/include/asm/entry-arcv2.h
index e3f8bd3e2eba..5d079f0b6243 100644
--- a/arch/arc/include/asm/entry-arcv2.h
+++ b/arch/arc/include/asm/entry-arcv2.h
@@ -192,6 +192,9 @@
 	ld	r25, [sp, PT_user_r25]
 #endif
 
+	/* clobbers r58, r59 registers pair, so must be before r58, r59 restore */
+	DSP_RESTORE_REGFILE_IRQ
+
 #ifdef CONFIG_ARC_HAS_ACCL_REGS
 	LD2	r58, r59, PT_r58
 #endif
diff --git a/arch/arc/include/asm/processor.h b/arch/arc/include/asm/processor.h
index 706edeaa5583..1716df0f4472 100644
--- a/arch/arc/include/asm/processor.h
+++ b/arch/arc/include/asm/processor.h
@@ -14,6 +14,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/ptrace.h>
+#include <asm/dsp.h>
 
 #ifdef CONFIG_ARC_FPU_SAVE_RESTORE
 /* These DPFP regs need to be saved/restored across ctx-sw */
@@ -39,6 +40,9 @@ struct thread_struct {
 	unsigned long ksp;	/* kernel mode stack pointer */
 	unsigned long callee_reg;	/* pointer to callee regs */
 	unsigned long fault_address;	/* dbls as brkpt holder as well */
+#ifdef ARC_DSP_SAVE_RESTORE_REGS
+	struct dsp_callee_regs dsp;
+#endif
 #ifdef CONFIG_ARC_FPU_SAVE_RESTORE
 	struct arc_fpu fpu;
 #endif
diff --git a/arch/arc/include/asm/ptrace.h b/arch/arc/include/asm/ptrace.h
index ba9854ef39e8..a5851ee141de 100644
--- a/arch/arc/include/asm/ptrace.h
+++ b/arch/arc/include/asm/ptrace.h
@@ -8,6 +8,7 @@
 #define __ASM_ARC_PTRACE_H
 
 #include <uapi/asm/ptrace.h>
+#include <asm/dsp.h>
 
 #ifndef __ASSEMBLY__
 
@@ -91,6 +92,9 @@ struct pt_regs {
 #ifdef CONFIG_ARC_HAS_ACCL_REGS
 	unsigned long r58, r59;	/* ACCL/ACCH used by FPU / DSP MPY */
 #endif
+#ifdef ARC_DSP_SAVE_RESTORE_REGS
+	unsigned long ACC0_GLO, ACC0_GHI, DSP_CTRL;
+#endif
 
 	/*------- Below list auto saved by h/w -----------*/
 	unsigned long r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11;
diff --git a/arch/arc/include/asm/switch_to.h b/arch/arc/include/asm/switch_to.h
index 77f123385e96..b49f025136af 100644
--- a/arch/arc/include/asm/switch_to.h
+++ b/arch/arc/include/asm/switch_to.h
@@ -9,6 +9,7 @@
 #ifndef __ASSEMBLY__
 
 #include <linux/sched.h>
+#include <asm/dsp-impl.h>
 
 #ifdef CONFIG_ARC_FPU_SAVE_RESTORE
 
@@ -37,6 +38,7 @@ struct task_struct *__switch_to(struct task_struct *p, struct task_struct *n);
 do {					\
 	ARC_EZNPS_DP_PREV(prev, next);	\
 	ARC_FPU_PREV(prev, next);	\
+	arc_dsp_save_restore(prev, next);\
 	last = __switch_to(prev, next);\
 	ARC_FPU_NEXT(next);		\
 	mb();				\
diff --git a/arch/arc/kernel/asm-offsets.c b/arch/arc/kernel/asm-offsets.c
index c783bcd35eb8..f74426a71ba8 100644
--- a/arch/arc/kernel/asm-offsets.c
+++ b/arch/arc/kernel/asm-offsets.c
@@ -11,6 +11,8 @@
 #include <linux/ptrace.h>
 #include <asm/hardirq.h>
 #include <asm/page.h>
+#include <asm/dsp.h>
+
 
 int main(void)
 {
@@ -75,6 +77,11 @@ int main(void)
 	OFFSET(PT_r58, pt_regs, r58);
 	OFFSET(PT_r59, pt_regs, r59);
 #endif
+#ifdef ARC_DSP_SAVE_RESTORE_REGS
+	OFFSET(PT_ACC0_GLO, pt_regs, ACC0_GLO);
+	OFFSET(PT_ACC0_GHI, pt_regs, ACC0_GHI);
+	OFFSET(PT_DSP_CTRL, pt_regs, DSP_CTRL);
+#endif
 
 	return 0;
 }
diff --git a/arch/arc/kernel/setup.c b/arch/arc/kernel/setup.c
index b3995dd673d9..30d31579c51d 100644
--- a/arch/arc/kernel/setup.c
+++ b/arch/arc/kernel/setup.c
@@ -447,7 +447,7 @@ static void arc_chk_core_config(void)
 		CHK_OPT_STRICT(CONFIG_ARC_HAS_ACCL_REGS, present);
 
 		present = dsp_exist();
-		CHK_OPT_STRICT(CONFIG_ARC_DSP_KERNEL, present);
+		chk_opt_strict(ARC_DSP_OPT_NAME, present, ARC_DSP_HANDLED);
 	}
 }
 
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
