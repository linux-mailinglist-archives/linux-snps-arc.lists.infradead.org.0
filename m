Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A81D4B3B5
	for <lists+linux-snps-arc@lfdr.de>; Wed, 19 Jun 2019 10:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVyuSkmXCPxgWL/xFOo9p0DS6eMuNDPvNBPtf07GFIU=; b=HJwNEJ9toNA3mH
	VM841wFCc94d8T9UaJEMFPpCHrPaZcHg0ZRA5x87bUXuFJX7wm0Xhyp0kQheXvQWy2vHebpYSKzQi
	QLZnN2MDe45lQovXlJdOTc1sfcwZ0xNhrvYuON4zVDM/HDiK14Zz4nnSI7G6+oxWhcfWQ4XZFAaZD
	D1iI8RuRplsbvqajL5X6iJq2vOqrB18sEISv1FfLT24eTOpKeIjK6wsCCcyj6vxec+i3op1pi3zKn
	YrTT0rV7m5qzsdepT3MnMUG/vWXYa1/UNJ5tUmwDGOZZ3MtmiraxfsECNfyCrzcTj80n/tcA3xjZQ
	uOzn0MkD2B7eRXCG4z2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVhn-0006Tl-Ec; Wed, 19 Jun 2019 08:12:31 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVhl-0006TM-LX; Wed, 19 Jun 2019 08:12:29 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 0051120A4E0A0; Wed, 19 Jun 2019 10:12:27 +0200 (CEST)
Date: Wed, 19 Jun 2019 10:12:27 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190619081227.GL3419@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Jason Baron <jbaron@redhat.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 04:16:20PM +0000, Vineet Gupta wrote:

> > +/*
> > + * To make atomic update of patched instruction available we need to guarantee
> > + * that this instruction doesn't cross L1 cache line boundary.
> > + *

Oh urgh. Is that the only way ARC can do text patching? We've actually
considered something like this on x86 at some point, but there we have
the 'fun' detail that the i-fetch window does not in fact align with L1
size on all uarchs, so that got complicated real fast.

I'm assuming you've looked at what x86 currently does and found
something like that doesn't work for ARC?

> > +/* Halt system on fatal error to make debug easier */
> > +#define arc_jl_fatal(format...)						\
> > +({									\
> > +	pr_err(JUMPLABEL_ERR format);					\
> > +	BUG();								\
> 
> Does it make sense to bring down the whole system vs. failing and returning.
> I see there is no error propagation to core code, but still.

It is what x86 does. And I've been fairly adamant about doing so. When
the kernel text is compromised, do you really want to continue running
it?

> > +})
> > +
> > +static inline u32 arc_gen_nop(void)
> > +{
> > +	/* 1x 32bit NOP in middle endian */

I dare not ask...

> > +	return 0x7000264a;
> > +}
> > +

> > +	/*
> > +	 * All instructions are aligned by 2 bytes so we should never get offset
> > +	 * here which is not 2 bytes aligned.
> > +	 */

> > +	WRITE_ONCE(*instr_addr, instr);
> > +	flush_icache_range(entry->code, entry->code + JUMP_LABEL_NOP_SIZE);

So do you have a 2 byte opcode that traps unconditionally? In that case
I'm thinking you could do something like x86 does. And it would avoid
that NOP padding you do to get the alignment.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
