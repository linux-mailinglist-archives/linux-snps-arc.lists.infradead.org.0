Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DCD4E7CD
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 14:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVPzNnejjh8kYy2tG65pxSeuHlXR+Lx6uJbYmrdgLkk=; b=nHZ7V0fQrVT5x+
	FWp2Soc5SbxIFDq4lP1gLr1XvmRhXNdJwweW1HvF/szKB9Za1mNq1pQDLy0+/XltC3idTeyUlscxG
	CgHVH6lX9XLH+pKSxv/m+MyrHYZrpfLf/PbeVRZUKjNuqcumxb+HHPXNL5oTRSZIsRDVF1PDIlWBH
	gLOS0fdcSy7weTMGNM3vVB8MHWDWMHrKeoouZ1PMpeLpMpaZRg9uDYcert9EsB4qgmVoE0SsgCiMC
	bI44cuG8XG/pnDDNzjaD0v46lK5dksVdrGSpOOJkhrFIVNDK2CCToKaYBoUxNCv5ZFO3vnA+6HYYH
	TpXemJvIwkb1JsbWmD6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heIMC-0004Zs-1n; Fri, 21 Jun 2019 12:09:28 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1heIM9-0004Za-CW; Fri, 21 Jun 2019 12:09:25 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 437442021E58E; Fri, 21 Jun 2019 14:09:23 +0200 (CEST)
Date: Fri, 21 Jun 2019 14:09:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190621120923.GT3463@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
 <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
 <20190620212256.GC3436@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620212256.GC3436@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, namit@vmware.com,
 Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:22:56PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 20, 2019 at 11:48:17AM -0700, Vineet Gupta wrote:

> > I do worry about the occasional alignment induced extra NOP_S instruction (2 byte)
> > but there doesn't seem to be an easy solution. Heck if we could use the NOP_S /
> > B_S in first place. While not a clean solution by any standards, could anything be
> > done to reduce the code path of DO_ONCE() so that unlikely code is not too far off.
> 
> if one could somehow get the arch_static_branch*() things to
> conditionally emit either the 2 or 4 byte jump, depending on the offset
> (which is known there, since we stick it in the __jump_table), then we
> can have arch_jump_label_transform() use that same condition to switch
> between 2 and 4 bytes too.
> 
> I just don't know if it's possible :-/

So I had to try; but GAS macro .if directives don't like labels as
arguments, not constant enough for them.

../arch/x86/include/asm/jump_label.h:26: Error: non-constant expression in ".if" statement

Damn!

---
--- a/arch/x86/include/asm/jump_label.h
+++ b/arch/x86/include/asm/jump_label.h
@@ -12,24 +12,19 @@
 # define STATIC_KEY_INIT_NOP GENERIC_NOP5_ATOMIC
 #endif
 
-#include <asm/asm.h>
-#include <asm/nops.h>
+asm(".include \"asm/jump_label_asm.h\"");
 
 #ifndef __ASSEMBLY__
 
 #include <linux/stringify.h>
 #include <linux/types.h>
+#include <asm/asm.h>
+#include <asm/nops.h>
 
 static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
 {
-	asm_volatile_goto("1:"
-		".byte " __stringify(STATIC_KEY_INIT_NOP) "\n\t"
-		".pushsection __jump_table,  \"aw\" \n\t"
-		_ASM_ALIGN "\n\t"
-		".long 1b - ., %l[l_yes] - . \n\t"
-		_ASM_PTR "%c0 + %c1 - .\n\t"
-		".popsection \n\t"
-		: :  "i" (key), "i" (branch) : : l_yes);
+	asm_volatile_goto("STATIC_BRANCH_NOP l_yes=\"%l[l_yes]\", key=\"%c0\", branch=\"%c1\""
+			  : : "i" (key), "i" (branch) : : l_yes);
 
 	return false;
 l_yes:
@@ -38,57 +33,13 @@ static __always_inline bool arch_static_
 
 static __always_inline bool arch_static_branch_jump(struct static_key *key, bool branch)
 {
-	asm_volatile_goto("1:"
-		".byte 0xe9\n\t .long %l[l_yes] - 2f\n\t"
-		"2:\n\t"
-		".pushsection __jump_table,  \"aw\" \n\t"
-		_ASM_ALIGN "\n\t"
-		".long 1b - ., %l[l_yes] - . \n\t"
-		_ASM_PTR "%c0 + %c1 - .\n\t"
-		".popsection \n\t"
-		: :  "i" (key), "i" (branch) : : l_yes);
+	asm_volatile_goto("STATIC_BRANCH_JMP l_yes=\"%l[l_yes]\", key=\"%c0\", branch=\"%c1\""
+			  : : "i" (key), "i" (branch) : : l_yes);
 
 	return false;
 l_yes:
 	return true;
 }
 
-#else	/* __ASSEMBLY__ */
-
-.macro STATIC_JUMP_IF_TRUE target, key, def
-.Lstatic_jump_\@:
-	.if \def
-	/* Equivalent to "jmp.d32 \target" */
-	.byte		0xe9
-	.long		\target - .Lstatic_jump_after_\@
-.Lstatic_jump_after_\@:
-	.else
-	.byte		STATIC_KEY_INIT_NOP
-	.endif
-	.pushsection __jump_table, "aw"
-	_ASM_ALIGN
-	.long		.Lstatic_jump_\@ - ., \target - .
-	_ASM_PTR	\key - .
-	.popsection
-.endm
-
-.macro STATIC_JUMP_IF_FALSE target, key, def
-.Lstatic_jump_\@:
-	.if \def
-	.byte		STATIC_KEY_INIT_NOP
-	.else
-	/* Equivalent to "jmp.d32 \target" */
-	.byte		0xe9
-	.long		\target - .Lstatic_jump_after_\@
-.Lstatic_jump_after_\@:
-	.endif
-	.pushsection __jump_table, "aw"
-	_ASM_ALIGN
-	.long		.Lstatic_jump_\@ - ., \target - .
-	_ASM_PTR	\key + 1 - .
-	.popsection
-.endm
-
-#endif	/* __ASSEMBLY__ */
-
-#endif
+#endif /* __ASSEMBLY__ */
+#endif /* _ASM_X86_JUMP_LABEL_H */
--- /dev/null
+++ b/arch/x86/include/asm/jump_label_asm.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_X86_JUMP_LABEL_ASM_H
+#define _ASM_X86_JUMP_LABEL_ASM_H
+
+#include <asm/asm.h>
+#include <asm/nops.h>
+
+#ifdef __ASSEMBLY__
+
+.macro STATIC_BRANCH_ENTRY l_target:req l_yes:req key:req branch:req
+	.pushsection __jump_table, "aw"
+	.long		\l_target - ., \l_yes - .
+#ifdef __X86_64__
+	.quad		(\key - .) + \branch
+#else
+	.long		(\key - .) + \branch
+#endif
+	.popsection
+.endm
+
+.macro STATIC_BRANCH_NOP l_yes:req key:req branch:req
+.Lstatic_branch_nop_\@:
+.iflt 127 - .
+	.byte 0x66, 0x90
+.else
+	.byte STATIC_KEY_INIT_NOP
+.endif
+	STATIC_BRANCH_ENTRY l_target=.Lstatic_branch_nop_\@, l_yes=\l_yes, key=\key, branch=\branch
+.endm
+
+.macro STATIC_BRANCH_JMP l_yes:req key:req branch:req
+.Lstatic_branch_jmp_\@:
+.if \l_yes - . < 127
+	.byte 0xeb
+	.byte \l_yes - (. + 1)
+.else
+	.byte 0xe9
+	.long \l_yes - (. + 4)
+.endif
+	STATIC_BRANCH_ENTRY l_target=.Lstatic_branch_jmp_\@, l_yes=\l_yes, key=\key, branch=\branch
+.endm
+
+#endif /* __ASSEMBLY__ */
+#endif /* _ASM_X86_JUMP_LABEL_ASM_H */

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
