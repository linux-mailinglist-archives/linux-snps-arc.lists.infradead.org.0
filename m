Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9077438153
	for <lists+linux-snps-arc@lfdr.de>; Fri,  7 Jun 2019 00:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=68iPqE3xTybHdxu2I4JsdXh+tfaOQnLkybjsFMNrBkI=; b=qWjbkkvFnKXf1y
	4r34EVNZ1vI0qa97A6Q5v6ydIDUavLKAyJwRH/7CstfJqo5/ml+rxcgrc+Igdqi4t2cjqATD1rzCy
	jRfjJXYIAcezW3ZYI+rHLNewz4GJzFTaMtGL6YZ3o3ckGAsdnretEsI6FMI+hQgE7oMrHHBEyZkqq
	/Cn2GIp3SGVhUvvARi6Y1FmNnn2WVfk9uSPaXjMZG2TnVAQHj4Kjfrth0hpaIsZT0/1hhbCrgoSfw
	QfzAohTfMOhY9NHGesBSH5pD/PKoOgVfTXX8uBZco58H99Fgb36gJE5YKVP0TFKrnxRh9BfVqZx1u
	hhd995Igv8S8CIw7Nmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1HB-0002zp-9M; Thu, 06 Jun 2019 22:54:29 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Gp-0002yO-FU
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 22:54:17 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6CD33C014D
 for <linux-snps-arc@lists.infradead.org>; Thu,  6 Jun 2019 22:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559861644; bh=i6WyJ3vriOZvWVHDR5L3usgfwCBR7UWodc64oYeLPGM=;
 h=From:To:CC:Subject:Date:References:From;
 b=T8DJrhMtGjN4rQdzVPRL/qkvWt+xWb5JdHjze1V4HquAhssBA8+hp4gTNLU67WeHV
 XV787OR4gjt0nimcR134YFB6zl/x7M3Hb0uZdaxxoON6qGM2sZ1x9GA1fvIbN3ziZZ
 aQOgZuHf2XOCY07y7NzoOHHcSedOp9tn7qRMYFCcBcuVmR8i/cN2ZzXX45R428jl1n
 IzhROOhLd+8KDoEqarG1cgAMfmKTqfgdjxkKERCL4QrrEDxblinp2Lo4svjYricD3F
 o1krWGdiofdoNLRE/3LAU5W/1eG9T6/EDrF/EMxdo2/GJX8mI2/S4W+Z/9a5NVdevK
 YERbY5FiS6xOQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 58B09A00C6
 for <linux-snps-arc@lists.infradead.org>; Thu,  6 Jun 2019 22:54:04 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 us01wehtc1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Thu, 6
 Jun 2019 15:53:41 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [RFC-private] ARC: jump label: implement jump label patching
Thread-Topic: [RFC-private] ARC: jump label: implement jump label patching
Thread-Index: AQHU+TV+e6A3fhmMG06tbsnL76PKTw==
Date: Thu, 6 Jun 2019 22:53:40 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2524D99@us01wembx1.internal.synopsys.com>
References: <20190422180144.27452-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155409_122768_CDA6030A 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 4/22/19 11:02 AM, Eugeniy Paltsev wrote:
> Implement jump label patching for ARC. Jump labels provide
> an interface to generate dynamic branches using
> self-modifying code.
>
> This allows us to implement conditional branches where
> changing branch direction is expensive but branch selection
> is basically 'free'

I played with this some - stared at generated code - LGTM overall, minor points below
For real patch do CC PeterZ and some of the other folsk who have recently touch
linux/jump_label.h

>
> TODO:
>  * Think about interaction with arc_cache_init().
>    In current implementation we call flush_icache_range() to
>    make instruction we wrote visible to CPU (CPUs).
>    So we couldn't switch jump labels in code before
>    arc_cache_init() is called for master CPU (as we don't
>    configure several cache callbacks yet)

The "switching" of branch (and needed icache flush) can only happen after system
has booted. So this shd not be an issue.

>  * Move instruction generation test to more appropriate place.

Maybe - im not sure either.

>  * Care about jump_table alignment in linker script (is it
>    required or not?)

From looking at the generated linker script, it is already aligned.

|
|     . = *ALIGN(8);* __start___jump_table = .; KEEP(*(__jump_table))
__stop___jump_table = .;
|

>
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  arch/arc/Kconfig                  |   1 +
>  arch/arc/include/asm/jump_label.h |  48 ++++++++++++++++++
>  arch/arc/kernel/Makefile          |   1 +
>  arch/arc/kernel/jump_label.c      | 102 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 152 insertions(+)
>  create mode 100644 arch/arc/include/asm/jump_label.h
>  create mode 100644 arch/arc/kernel/jump_label.c
>
> diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
> index c781e45d1d99..4b3d33e6aae3 100644
> --- a/arch/arc/Kconfig
> +++ b/arch/arc/Kconfig
> @@ -47,6 +47,7 @@ config ARC
>  	select OF_EARLY_FLATTREE
>  	select PCI_SYSCALL if PCI
>  	select PERF_USE_VMALLOC if ARC_CACHE_VIPT_ALIASING
> +	select HAVE_ARCH_JUMP_LABEL if ISA_ARCV2 && !CPU_ENDIAN_BE32
>  
>  config ARCH_HAS_CACHE_LINE_SIZE
>  	def_bool y
> diff --git a/arch/arc/include/asm/jump_label.h b/arch/arc/include/asm/jump_label.h
> new file mode 100644
> index 000000000000..877b8fcc512c
> --- /dev/null
> +++ b/arch/arc/include/asm/jump_label.h
> @@ -0,0 +1,48 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_ARC_JUMP_LABEL_H
> +#define _ASM_ARC_JUMP_LABEL_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <linux/types.h>
> +
> +#define JUMP_LABEL_NOP_SIZE 4
> +
> +static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
> +{
> +	asm_volatile_goto("1:\n\t"
> +		 "nop \n\t"
> +		 ".pushsection __jump_table,  \"aw\"\n\t"
> +		 ".word 1b, %l[l_yes], %c0\n\t"
> +		 ".popsection\n\t"
> +		 : :  "i" (&((char *)key)[branch]) :  : l_yes);
> +
> +	return false;
> +l_yes:
> +	return true;
> +}
> +
> +static __always_inline bool arch_static_branch_jump(struct static_key *key, bool branch)
> +{
> +	asm_volatile_goto("1:\n\t"
> +		 "b %l[l_yes]\n\t"
> +		 ".pushsection __jump_table,  \"aw\"\n\t"
> +		 ".word 1b, %l[l_yes], %c0\n\t"
> +		 ".popsection\n\t"
> +		 : :  "i" (&((char *)key)[branch]) :  : l_yes);
> +
> +	return false;
> +l_yes:
> +	return true;
> +}
> +
> +typedef u32 jump_label_t;
> +
> +struct jump_entry {
> +	jump_label_t code;
> +	jump_label_t target;
> +	jump_label_t key;
> +};
> +
> +#endif  /* __ASSEMBLY__ */
> +#endif
> diff --git a/arch/arc/kernel/Makefile b/arch/arc/kernel/Makefile
> index 2dc5f4296d44..307f74156d99 100644
> --- a/arch/arc/kernel/Makefile
> +++ b/arch/arc/kernel/Makefile
> @@ -22,6 +22,7 @@ obj-$(CONFIG_ARC_EMUL_UNALIGNED) 	+= unaligned.o
>  obj-$(CONFIG_KGDB)			+= kgdb.o
>  obj-$(CONFIG_ARC_METAWARE_HLINK)	+= arc_hostlink.o
>  obj-$(CONFIG_PERF_EVENTS)		+= perf_event.o
> +obj-$(CONFIG_JUMP_LABEL)		+= jump_label.o
>  
>  obj-$(CONFIG_ARC_FPU_SAVE_RESTORE)	+= fpu.o
>  CFLAGS_fpu.o   += -mdpfp
> diff --git a/arch/arc/kernel/jump_label.c b/arch/arc/kernel/jump_label.c
> new file mode 100644
> index 000000000000..7edb713badaf
> --- /dev/null
> +++ b/arch/arc/kernel/jump_label.c
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/kernel.h>
> +#include <linux/jump_label.h>
> +
> +#include "asm/cache.h"
> +#include "asm/cacheflush.h"
> +
> +static inline u32 arc_gen_nop(void)
> +{
> +	/* 1x 32bit NOP in middle endian */
> +	return 0x7000264a;
> +}
> +
> +/*
> + * ARCv2 Branch unconditionally instruction:
> + * 00000ssssssssss1SSSSSSSSSSNRtttt
> + * s S[n:0] lower bits signed immediate (number is bitfield size)
> + * S S[m:n+1] upper bits signed immediate (number is bitfield size)
> + * t S[24:21] upper bits signed immediate (branch unconditionally far)
> + * N N <.d> delay slot mode
> + * R R Reserved
> + */
> +static inline u32 arc_gen_branch(jump_label_t pc, jump_label_t target)
> +{
> +	u32 instruction_l, instruction_r;

Does defining these as u16 generate slightly better code ?

> +	u32 s, S, t;

ditto

> +
> +	/* check for s25 offset */
> +	if ((s32)u_offset < -16777216 || (s32)u_offset > 16777214) {
> +		pr_err("err: try to generate branch instruction with offset (%d) not fit in s25\n",
> +		       (s32)u_offset);
> +
> +		return 0;
> +	}
> +
> +	if (u_offset & 0x1) {
> +		pr_err("err: try to generate branch instruction with offset (%d) unaligned to half-word\n",
> +		       (s32)u_offset);
> +
> +		return 0;
> +	}
> +
> +	s = (u_offset >> 1)  & GENMASK(9, 0);
> +	S = (u_offset >> 10) & GENMASK(9, 0);
> +	t = (u_offset >> 24) & GENMASK(3, 0);
> +
> +	/* 00000ssssssssss1 */
> +	instruction_l = (s << 1) | 0x1;
> +	/* SSSSSSSSSSNRtttt */
> +	instruction_r = (S << 6) | t;
> +
> +	return (instruction_r << 16) | (instruction_l & GENMASK(15, 0));

maybe compiler is already optimizing away stuff based on prior masking above.

> +}
> +
> +void arch_jump_label_transform(struct jump_entry *entry,
> +			       enum jump_label_type type)
> +{
> +	jump_label_t *instr_addr = (jump_label_t *)entry->code;
> +	u32 instr;
> +
> +	if (type == JUMP_LABEL_JMP)
> +		instr = arc_gen_branch(entry->code, entry->target);
> +	else
> +		instr = arc_gen_nop();

You need to check for !instr error and bail if so.
I'm surprised there's no error propagation back to core code.

> +
> +	WRITE_ONCE(*instr_addr, instr);
> +	flush_icache_range(entry->code, entry->code + JUMP_LABEL_NOP_SIZE);
> +}
> +
> +void arch_jump_label_transform_static(struct jump_entry *entry,
> +				      enum jump_label_type type)
> +{
> +	/*
> +	 * We use only one NOP type (1x, 4 byte) in arch_static_branch, so
> +	 * there's no need to patch an identical NOP over the top of it here.
> +	 * The generic code calls 'arch_jump_label_transform' if the NOP needs
> +	 * to be replaced by a branch, so 'arch_jump_label_transform_static' is
> +	 * newer called with type other than JUMP_LABEL_NOP.
> +	 */
> +	BUG_ON(type != JUMP_LABEL_NOP);
> +}
> +
> +#ifdef CONFIG_STATIC_KEYS_SELFTEST
> +static __init int instr_gen_test(void)
> +{
> +	pr_info("ARC: instruction generation self-test\n");
> +
> +	/* branch with negative offset */
> +	if (arc_gen_branch(0x90007548, 0x90007514) != 0xffcf07cd)
> +		pr_err("FAIL: arc_gen_branch(0x90007548, 0x90007514) != 0xffcf07cd\n");
> +
> +	/* branch with positive offset */
> +	if (arc_gen_branch(0x90007514, 0x9000752c) != 0x00000019)
> +		pr_err("FAIL: arc_gen_branch(0x90007514, 0x9000752c) != 0x00000019\n");
> +
> +	return 0;
> +}
> +early_initcall(instr_gen_test);
> +#endif /* STATIC_KEYS_SELFTEST */


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
