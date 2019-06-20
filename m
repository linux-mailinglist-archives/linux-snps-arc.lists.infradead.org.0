Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D647B4DC66
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 23:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7GgHIXN/B30/veYscRa9bEH+mWQqJZ2YVhKAwIp794=; b=Hdah+DfY8dUSnG
	n9rngzPywsU2PEMx6qjTo1p8rANrlNE66vTfyHTpXwzwhYAv8Or/Lcnh9bO60X2BkVyKkDi2YvcW1
	Blc9gnJAkjYeE4lllfP6TPItz9tqhzUdMG8nv342AIxbFBS7ZMIFIT7n6FNOGo+neemGFumnL0FM5
	ZCPWRxsuF8mqmes6VEb63vpJImbeSsBBRW/gyC47zAL+cBe95IXjl/DLIeTjhDqYCtbkexbLKrXVe
	/g2NvRZ70puoJr4jYmVyKrWuaXCcQhfzPmTdOqW4Ac2bTIOGvpvTGGF/YNER6SG/txjw0lYrY6IwU
	Cx+PMlGnII1dH0Lkkdvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4WM-0005Sn-IL; Thu, 20 Jun 2019 21:23:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4WL-0005SX-4L
 for linux-snps-arc@bombadil.infradead.org; Thu, 20 Jun 2019 21:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lE+8ibHHDChXz68mwHUNlW1qTS9lEBvs+jAu/8RbEdA=; b=XQ/tXsRrj+CE+J2xvQNmTA8w1
 vCadQnJlkqIXhuRqw2dmSvimF/BdiwqY8rb4Wu1OM3EHzQeHDtlsqYMCOrITqAk50fWwzdNqB9kye
 s/j1ee7cBA/gVdMeQKFZTCrbSvNnbwGrsgkFecfVX7QeHKUPLNR89qIN/c91hIUHoR0SraxVUqwc2
 CyZuwpeanVIFIz+ly+XnS9c9vOXWvX3IvCYTcLAsNL/F1XCdA3W+Pxh9ufDqaI9zR/TAzNzzTOgBQ
 5RI3n3pf+zfyd7WDb1RAoA8NwR5t8v3CCnK3EJ8mbF1jqekU+xrWVI5lqeWNgXQGTk5kCDl1oVNTU
 CKy03++Xg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1he4WH-0002qf-S0; Thu, 20 Jun 2019 21:22:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A08542021E585; Thu, 20 Jun 2019 23:22:56 +0200 (CEST)
Date: Thu, 20 Jun 2019 23:22:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190620212256.GC3436@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
 <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
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
 Jason Baron <jbaron@akamai.com>, Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:48:17AM -0700, Vineet Gupta wrote:
> On 6/20/19 12:01 AM, Peter Zijlstra wrote:
> 
> > 
> > In particular we do not need the alignment.
> > 
> > So what the x86 code does is:
> > 
> >  - overwrite the first byte of the instruction with a single byte trap
> >    instruction
> > 
> >  - machine wide IPI which synchronizes I$
> > 
> > At this point, any CPU that encounters this instruction will trap; and
> > the trap handler will emulate the 'new' instruction -- typically a jump.
> > 
> >   - overwrite the tail of the instruction (if there is a tail)
> > 
> >   - machine wide IPI which syncrhonizes I$
> > 
> > At this point, nobody will execute the tail, because we'll still trap on
> > that first single byte instruction, but if they were to read the
> > instruction stream, the tail must be there.
> > 
> >   - overwrite the first byte of the instruction to now have a complete
> >     instruction.
> > 
> >   - machine wide IPI which syncrhonizes I$
> > 
> > At this point, any CPU will encounter the new instruction as a whole,
> > irrespective of alignment.
> > 
> > 
> > So the benefit of this scheme is that is works irrespective of the
> > instruction fetch window size and don't need the 'funny' alignment
> > stuff.
> > 
> > Now, I've no idea if something like this is feasible on ARC; for it to
> > work you need that 2 byte trap instruction -- since all instructions are
> > 2 byte aligned, you can always poke that without issue.
> 
> We do have a 2 byte TRAP_S u6 which is used for all/any trap'ing: syscalls,
> software breakpoint, kprobes etc. But using it like x86 seems a bit excessive for
> ARC. Given that x86 doesn't implement flush_icache_range() it must have I$
> snooping D$ and also this machine wide IPI sync I$ must be totally under the hood
> all hardware affair - unlike ARC which needs on_each_cpu( I$ line range).

I always forget the exact details, but we do have to execute what is
called a serializing instruction to flush CPU state and force it to
re-read the actual instructions -- see sync_core().

> Using TRAP_S would actually requires 2 passes (and 2 rounds of IPI) for code
> patching - the last one to undo the TRAP_S itself.

Correct -- we do 3, like detailed in the other email. But we figured the
actual poking of text is the slow path anyway.

> I do worry about the occasional alignment induced extra NOP_S instruction (2 byte)
> but there doesn't seem to be an easy solution. Heck if we could use the NOP_S /
> B_S in first place. While not a clean solution by any standards, could anything be
> done to reduce the code path of DO_ONCE() so that unlikely code is not too far off.

if one could somehow get the arch_static_branch*() things to
conditionally emit either the 2 or 4 byte jump, depending on the offset
(which is known there, since we stick it in the __jump_table), then we
can have arch_jump_label_transform() use that same condition to switch
between 2 and 4 bytes too.

I just don't know if it's possible :-/

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
