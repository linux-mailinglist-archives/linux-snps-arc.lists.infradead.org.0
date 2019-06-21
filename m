Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414C4E7D6
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 14:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbnzGUTNHLz9GLU0YG1jHT1RJ9FUv0ugtazFIutBMvs=; b=oEkANh0LdBZVsJ
	nhWwPu4bj5picumQqz5cTQXl1kGRyswP4+hRDkxVY6bmvw+Mtfz0P3SQE4vNdks+JqX45POfrF55z
	HkwBy7GBT3Q3IUdfC6VmPqsG8D1yN+dogIjB0nDGgGJSTt8+9DJvtbEZfdxRchu8/O+GdpM+vo+VG
	z9LIDAkunQlro7Apo/GakBTpBZexB+OVqsJwyp+ZFmp5e252rpZ1avvCBo7KcA3VwAQ1mSTY++KWN
	jjKz9Jqw521ZoNuqwYGad0ZXKsLsBTXrfk2kH1WtUTuBe2b4STqStwhixeJtJbdsDEii+bAUb3s1N
	JFzrIfFhTPcVS+jf9qSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heIPf-0005sw-0b; Fri, 21 Jun 2019 12:13:03 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1heIPd-0005so-88; Fri, 21 Jun 2019 12:13:01 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id ACD962021E58E; Fri, 21 Jun 2019 14:12:59 +0200 (CEST)
Date: Fri, 21 Jun 2019 14:12:59 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190621121259.GU3463@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
 <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
 <20190620212256.GC3436@hirez.programming.kicks-ass.net>
 <20190621120923.GT3463@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621120923.GT3463@hirez.programming.kicks-ass.net>
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

On Fri, Jun 21, 2019 at 02:09:23PM +0200, Peter Zijlstra wrote:

> --- /dev/null
> +++ b/arch/x86/include/asm/jump_label_asm.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_X86_JUMP_LABEL_ASM_H
> +#define _ASM_X86_JUMP_LABEL_ASM_H
> +
> +#include <asm/asm.h>
> +#include <asm/nops.h>
> +
> +#ifdef __ASSEMBLY__
> +
> +.macro STATIC_BRANCH_ENTRY l_target:req l_yes:req key:req branch:req
> +	.pushsection __jump_table, "aw"
> +	.long		\l_target - ., \l_yes - .
> +#ifdef __X86_64__
> +	.quad		(\key - .) + \branch
> +#else
> +	.long		(\key - .) + \branch
> +#endif
> +	.popsection
> +.endm
> +
> +.macro STATIC_BRANCH_NOP l_yes:req key:req branch:req
> +.Lstatic_branch_nop_\@:
> +.iflt 127 - .

That should've been:

.if \l_yes - . < 127

too, I had been playing with various forms to see when it compiles.
But as soon as a label (either \l_yes or '.' gets used) it barfs.

> +	.byte 0x66, 0x90
> +.else
> +	.byte STATIC_KEY_INIT_NOP
> +.endif
> +	STATIC_BRANCH_ENTRY l_target=.Lstatic_branch_nop_\@, l_yes=\l_yes, key=\key, branch=\branch
> +.endm
> +
> +.macro STATIC_BRANCH_JMP l_yes:req key:req branch:req
> +.Lstatic_branch_jmp_\@:
> +.if \l_yes - . < 127
> +	.byte 0xeb
> +	.byte \l_yes - (. + 1)
> +.else
> +	.byte 0xe9
> +	.long \l_yes - (. + 4)
> +.endif
> +	STATIC_BRANCH_ENTRY l_target=.Lstatic_branch_jmp_\@, l_yes=\l_yes, key=\key, branch=\branch
> +.endm
> +
> +#endif /* __ASSEMBLY__ */
> +#endif /* _ASM_X86_JUMP_LABEL_ASM_H */

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
