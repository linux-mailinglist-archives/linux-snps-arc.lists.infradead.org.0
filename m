Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06392F50F1
	for <lists+linux-snps-arc@lfdr.de>; Fri,  8 Nov 2019 17:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejSBe7FVtXeYUpwDOJNw1DpzKpnNg1Uo0Obt6NTLYGM=; b=oYY7KOK851nxhT
	raMugK91/b4wW3f46N6sxrnnMkQszpPcRB5h0VpYyT2Ha3gaJ0Ud412qAGUbAazO8MpBsoAakJisp
	cumUkv2b11AWNGvmQFq848NuLxhEYxJBrB8tKdH+gjJb0qb3NK7I6Cz62bM4PxB+86iZFNvERhocp
	LiX/EXH1riSWc5sRHba92PEwzhypf9PuAYsWt+b6FoZAcPxiGa2I5rNkqHh+WPMw46aFZq5rZ69BM
	JzmSS95Hvr/OXh6KPurrTyeCIuJlT+Q9OSRhXBIejkg2u/Bh1h6nULJBY9ScCQq/u4QW/OIv63EpS
	CWEOLsJ08FA20t3SXZSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT70J-0003Ku-58; Fri, 08 Nov 2019 16:20:55 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6zt-0002so-AV
 for linux-snps-arc@lists.infradead.org; Fri, 08 Nov 2019 16:20:31 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D7BBFC0DDF;
 Fri,  8 Nov 2019 16:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573230027; bh=lEh2vJ+HFB4itdNvQR3zgigmBmACBtQME/IsJ9KgRJY=;
 h=From:To:Cc:Subject:Date:From;
 b=cJr8tyqBag44AOx+Dky+jh6Dj683Uqkozl+j/+3EXL3dcWrXPDRkemUTBO3PJsntV
 UWOB3eTsn5VAT+Xq67napW3rTSoyoJvYKsOgu0UyG/XcnuqRFEnkjhxqFdeoKdxVrm
 H5q1L3RrE0Twy8576NodQUdACi6sMsYWjDP2uDN3wyERLbU0uwaB0+1A5V0XZ6sj3+
 63bniCLPDOwjixWJe1IRxVfPskb/v5ZXXzvQNDpxE12yDV+djxX5zWVcUM+2AIaoQ6
 MgbHNVOygQ8k9P6suFDCt4+aO/B0Fs3Ic6guEC3leJ6eoH1jxpqknqBmzJeGYdLOLh
 o7ASP0e0lN4oQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id CBD5AA00AB;
 Fri,  8 Nov 2019 16:20:24 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v3] ARC: ARCv2: jump label: implement jump label patching
Date: Fri,  8 Nov 2019 19:20:22 +0300
Message-Id: <20191108162022.3436-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082029_422761_C01DD2CC 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Implement jump label patching for ARC. Jump labels provide
an interface to generate dynamic branches using
self-modifying code.

This allows us to implement conditional branches where
changing branch direction is expensive but branch selection
is basically 'free'

This implementation uses 32-bit NOP and BRANCH instructions
which forced to be aligned by 4 to guarantee that they don't
cross L1 cache line boundary / L1 I$ cache fetch block
boundary and can be update atomically.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
Changes v1->v2:
 * Patched instruction should not cross L1 I$ fetch block boundary and
   not only L1 I$ line. Fix comments and asserts in code.
 * Other small comments fix and code cleanup.
Changes v2->v3:
 * Code cleanup.
 * Mark testdata array as __initconst
 * Drop check about fetch block in code.
 * Invert ARC_DBG_JUMP_LABEL vs STATIC_KEYS_SELFTEST dependency.

 arch/arc/Kconfig                  |   8 ++
 arch/arc/include/asm/cache.h      |   2 +
 arch/arc/include/asm/jump_label.h |  72 +++++++++++++
 arch/arc/kernel/Makefile          |   1 +
 arch/arc/kernel/jump_label.c      | 170 ++++++++++++++++++++++++++++++
 5 files changed, 253 insertions(+)
 create mode 100644 arch/arc/include/asm/jump_label.h
 create mode 100644 arch/arc/kernel/jump_label.c

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 8383155c8c82..375f9d278139 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -46,6 +46,7 @@ config ARC
 	select OF_EARLY_FLATTREE
 	select PCI_SYSCALL if PCI
 	select PERF_USE_VMALLOC if ARC_CACHE_VIPT_ALIASING
+	select HAVE_ARCH_JUMP_LABEL if ISA_ARCV2 && !CPU_ENDIAN_BE32
 
 config ARCH_HAS_CACHE_LINE_SIZE
 	def_bool y
@@ -525,6 +526,13 @@ config ARC_DW2_UNWIND
 config ARC_DBG_TLB_PARANOIA
 	bool "Paranoia Checks in Low Level TLB Handlers"
 
+config ARC_DBG_JUMP_LABEL
+	bool "Paranoid checks in Static Keys (jump labels) code"
+	depends on JUMP_LABEL
+	default y if STATIC_KEYS_SELFTEST
+	help
+	  Enable paranoid checks and self-test of both ARC-specific and generic
+	  part of static keys (jump labels) related code.
 endif
 
 config ARC_BUILTIN_DTB_NAME
diff --git a/arch/arc/include/asm/cache.h b/arch/arc/include/asm/cache.h
index 918804c7c1a4..d8ece4292388 100644
--- a/arch/arc/include/asm/cache.h
+++ b/arch/arc/include/asm/cache.h
@@ -25,6 +25,8 @@
 
 #ifndef __ASSEMBLY__
 
+#include <linux/build_bug.h>
+
 /* Uncached access macros */
 #define arc_read_uncached_32(ptr)	\
 ({					\
diff --git a/arch/arc/include/asm/jump_label.h b/arch/arc/include/asm/jump_label.h
new file mode 100644
index 000000000000..9d9618079739
--- /dev/null
+++ b/arch/arc/include/asm/jump_label.h
@@ -0,0 +1,72 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARC_JUMP_LABEL_H
+#define _ASM_ARC_JUMP_LABEL_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/stringify.h>
+#include <linux/types.h>
+
+#define JUMP_LABEL_NOP_SIZE 4
+
+/*
+ * NOTE about '.balign 4':
+ *
+ * To make atomic update of patched instruction available we need to guarantee
+ * that this instruction doesn't cross L1 cache line boundary.
+ *
+ * As of today we simply align instruction which can be patched by 4 byte using
+ * ".balign 4" directive. In that case patched instruction is aligned with one
+ * 16-bit NOP_S if this is required.
+ * However 'align by 4' directive is much stricter than it actually required.
+ * It's enough that our 32-bit instruction don't cross L1 cache line boundary /
+ * L1 I$ fetch block boundary which can be achieved by using
+ * ".bundle_align_mode" assembler directive. That will save us from adding
+ * useless NOP_S padding in most of the cases.
+ *
+ * TODO: switch to ".bundle_align_mode" directive using whin it will be
+ * supported by ARC toolchain.
+ */
+
+static __always_inline bool arch_static_branch(struct static_key *key,
+					       bool branch)
+{
+	asm_volatile_goto(".balign "__stringify(JUMP_LABEL_NOP_SIZE)"	\n"
+		 "1:							\n"
+		 "nop							\n"
+		 ".pushsection __jump_table, \"aw\"			\n"
+		 ".word 1b, %l[l_yes], %c0				\n"
+		 ".popsection						\n"
+		 : : "i" (&((char *)key)[branch]) : : l_yes);
+
+	return false;
+l_yes:
+	return true;
+}
+
+static __always_inline bool arch_static_branch_jump(struct static_key *key,
+						    bool branch)
+{
+	asm_volatile_goto(".balign "__stringify(JUMP_LABEL_NOP_SIZE)"	\n"
+		 "1:							\n"
+		 "b %l[l_yes]						\n"
+		 ".pushsection __jump_table, \"aw\"			\n"
+		 ".word 1b, %l[l_yes], %c0				\n"
+		 ".popsection						\n"
+		 : : "i" (&((char *)key)[branch]) : : l_yes);
+
+	return false;
+l_yes:
+	return true;
+}
+
+typedef u32 jump_label_t;
+
+struct jump_entry {
+	jump_label_t code;
+	jump_label_t target;
+	jump_label_t key;
+};
+
+#endif  /* __ASSEMBLY__ */
+#endif
diff --git a/arch/arc/kernel/Makefile b/arch/arc/kernel/Makefile
index de6251132310..e784f5396dda 100644
--- a/arch/arc/kernel/Makefile
+++ b/arch/arc/kernel/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_ARC_EMUL_UNALIGNED) 	+= unaligned.o
 obj-$(CONFIG_KGDB)			+= kgdb.o
 obj-$(CONFIG_ARC_METAWARE_HLINK)	+= arc_hostlink.o
 obj-$(CONFIG_PERF_EVENTS)		+= perf_event.o
+obj-$(CONFIG_JUMP_LABEL)		+= jump_label.o
 
 obj-$(CONFIG_ARC_FPU_SAVE_RESTORE)	+= fpu.o
 CFLAGS_fpu.o   += -mdpfp
diff --git a/arch/arc/kernel/jump_label.c b/arch/arc/kernel/jump_label.c
new file mode 100644
index 000000000000..b8600dc325b5
--- /dev/null
+++ b/arch/arc/kernel/jump_label.c
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/kernel.h>
+#include <linux/jump_label.h>
+
+#include "asm/cacheflush.h"
+
+#define JUMPLABEL_ERR	"ARC: jump_label: ERROR: "
+
+/* Halt system on fatal error to make debug easier */
+#define arc_jl_fatal(format...)						\
+({									\
+	pr_err(JUMPLABEL_ERR format);					\
+	BUG();								\
+})
+
+static inline u32 arc_gen_nop(void)
+{
+	/* 1x 32bit NOP in middle endian */
+	return 0x7000264a;
+}
+
+/*
+ * Atomic update of patched instruction is only available if this
+ * instruction doesn't cross L1 cache line boundary. You can read about
+ * the way we achieve this in arc/include/asm/jump_label.h
+ */
+static inline void instruction_align_assert(void *addr, int len)
+{
+	unsigned long a = (unsigned long)addr;
+
+	if ((a >> L1_CACHE_SHIFT) != ((a + len - 1) >> L1_CACHE_SHIFT))
+		arc_jl_fatal("instruction (addr %px) cross L1 cache line border",
+			     addr);
+}
+
+/*
+ * ARCv2 'Branch unconditionally' instruction:
+ * 00000ssssssssss1SSSSSSSSSSNRtttt
+ * s S[n:0] lower bits signed immediate (number is bitfield size)
+ * S S[m:n+1] upper bits signed immediate (number is bitfield size)
+ * t S[24:21] upper bits signed immediate (branch unconditionally far)
+ * N N <.d> delay slot mode
+ * R R Reserved
+ */
+static inline u32 arc_gen_branch(jump_label_t pc, jump_label_t target)
+{
+	u32 instruction_l, instruction_r;
+	u32 pcl = pc & GENMASK(31, 2);
+	u32 u_offset = target - pcl;
+	u32 s, S, t;
+
+	/*
+	 * Offset in 32-bit branch instruction must to fit into s25.
+	 * Something is terribly broken if we get such huge offset within one
+	 * function.
+	 */
+	if ((s32)u_offset < -16777216 || (s32)u_offset > 16777214)
+		arc_jl_fatal("gen branch with offset (%d) not fit in s25",
+			     (s32)u_offset);
+
+	/*
+	 * All instructions are aligned by 2 bytes so we should never get offset
+	 * here which is not 2 bytes aligned.
+	 */
+	if (u_offset & 0x1)
+		arc_jl_fatal("gen branch with offset (%d) unaligned to 2 bytes",
+			     (s32)u_offset);
+
+	s = (u_offset >> 1)  & GENMASK(9, 0);
+	S = (u_offset >> 11) & GENMASK(9, 0);
+	t = (u_offset >> 21) & GENMASK(3, 0);
+
+	/* 00000ssssssssss1 */
+	instruction_l = (s << 1) | 0x1;
+	/* SSSSSSSSSSNRtttt */
+	instruction_r = (S << 6) | t;
+
+	return (instruction_r << 16) | (instruction_l & GENMASK(15, 0));
+}
+
+void arch_jump_label_transform(struct jump_entry *entry,
+			       enum jump_label_type type)
+{
+	jump_label_t *instr_addr = (jump_label_t *)entry->code;
+	u32 instr;
+
+	instruction_align_assert(instr_addr, JUMP_LABEL_NOP_SIZE);
+
+	if (type == JUMP_LABEL_JMP)
+		instr = arc_gen_branch(entry->code, entry->target);
+	else
+		instr = arc_gen_nop();
+
+	WRITE_ONCE(*instr_addr, instr);
+	flush_icache_range(entry->code, entry->code + JUMP_LABEL_NOP_SIZE);
+}
+
+void arch_jump_label_transform_static(struct jump_entry *entry,
+				      enum jump_label_type type)
+{
+	/*
+	 * We use only one NOP type (1x, 4 byte) in arch_static_branch, so
+	 * there's no need to patch an identical NOP over the top of it here.
+	 * The generic code calls 'arch_jump_label_transform' if the NOP needs
+	 * to be replaced by a branch, so 'arch_jump_label_transform_static' is
+	 * never called with type other than JUMP_LABEL_NOP.
+	 */
+	BUG_ON(type != JUMP_LABEL_NOP);
+}
+
+#ifdef CONFIG_ARC_DBG_JUMP_LABEL
+#define SELFTEST_MSG	"ARC: instruction generation self-test: "
+
+struct arc_gen_branch_testdata {
+	jump_label_t pc;
+	jump_label_t target_address;
+	u32 expected_instr;
+};
+
+static __init int branch_gen_test(const struct arc_gen_branch_testdata *test)
+{
+	u32 instr_got;
+
+	instr_got = arc_gen_branch(test->pc, test->target_address);
+	if (instr_got == test->expected_instr)
+		return 0;
+
+	pr_err(SELFTEST_MSG "FAIL:\n arc_gen_branch(0x%08x, 0x%08x) != 0x%08x, got 0x%08x\n",
+	       test->pc, test->target_address,
+	       test->expected_instr, instr_got);
+
+	return -EFAULT;
+}
+
+/*
+ * Offset field in branch instruction is not continuous. Test all
+ * available offset field and sign combinations. Test data is generated
+ * from real working code.
+ */
+static const struct arc_gen_branch_testdata arcgenbr_test_data[] __initconst = {
+	{0x90007548, 0x90007514, 0xffcf07cd}, /* tiny (-52) offs */
+	{0x9000c9c0, 0x9000c782, 0xffcf05c3}, /* tiny (-574) offs */
+	{0x9000cc1c, 0x9000c782, 0xffcf0367}, /* tiny (-1178) offs */
+	{0x9009dce0, 0x9009d106, 0xff8f0427}, /* small (-3034) offs */
+	{0x9000f5de, 0x90007d30, 0xfc0f0755}, /* big  (-30892) offs */
+	{0x900a2444, 0x90035f64, 0xc9cf0321}, /* huge (-443616) offs */
+	{0x90007514, 0x9000752c, 0x00000019}, /* tiny (+24) offs */
+	{0x9001a578, 0x9001a77a, 0x00000203}, /* tiny (+514) offs */
+	{0x90031ed8, 0x90032634, 0x0000075d}, /* tiny (+1884) offs */
+	{0x9008c7f2, 0x9008d3f0, 0x00400401}, /* small (+3072) offs */
+	{0x9000bb38, 0x9003b340, 0x17c00009}, /* big  (+194568) offs */
+	{0x90008f44, 0x90578d80, 0xb7c2063d}  /* huge (+5701180) offs */
+};
+
+static __init int instr_gen_test(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(arcgenbr_test_data); i++)
+		if (branch_gen_test(&arcgenbr_test_data[i]))
+			return -EFAULT;
+
+	pr_info(SELFTEST_MSG "OK\n");
+
+	return 0;
+}
+early_initcall(instr_gen_test);
+
+#endif /* CONFIG_ARC_DBG_JUMP_LABEL */
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
