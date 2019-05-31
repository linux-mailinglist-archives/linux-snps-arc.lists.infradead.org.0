Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6E030A2A
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 May 2019 10:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMMPifjvrLlMXZV23dMtYAT/8sWEhqzcv56yNMgwQUg=; b=WzMCjEQ0bhUQuA
	mz26M45GU1+1tXO+PvWAVlDjx7AfrcdX1dE+xpp36UrcVBwYZ+xW5nVe+85yc40yl9uqfXv/qSJfG
	FFhI68eYM5fxyuJWiF6mvkWIjOpiv45UtVLZ42pYn5NrFXDc6Elpt6pSnl/UBY5MyT3pWzxyorY7+
	9n5f76Uz55djNIGljovCW0G1Qc1jTvv88rBjdivYT+gZcX9RRV2HFdjyPsemtK+8wQDTOSGIfsVoO
	n18zjbPAf70/hGtMj4l6VvwN6dI6mbTn+HwclBxUU612SiCLMTW06OokKdPg3OsZVf4tmCSLdUpY/
	oj4eUhkB+5w7Q3N+y+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcov-000717-Qv; Fri, 31 May 2019 08:23:25 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcou-00070v-B1; Fri, 31 May 2019 08:23:24 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C9BA6201B8CFE; Fri, 31 May 2019 10:23:22 +0200 (CEST)
Date: Fri, 31 May 2019 10:23:22 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Message-ID: <20190531082322.GI2623@hirez.programming.kicks-ass.net>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190530185358.GG28207@linux.ibm.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2520D9C@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2520D9C@us01wembx1.internal.synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 arcml <linux-snps-arc@lists.infradead.org>,
 "paulmck@linux.ibm.com" <paulmck@linux.ibm.com>,
 Will Deacon <Will.Deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 07:16:36PM +0000, Vineet Gupta wrote:
> On 5/30/19 11:55 AM, Paul E. McKenney wrote:
> >
> >> I'm not sure how to interpret "natural alignment" for the case of double
> >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> >>
> >> I presume (and the question) that lkmm doesn't expect such 8 byte load/stores to
> >> be atomic unless 8-byte aligned
> > I would not expect 8-byte accesses to be atomic on 32-bit systems unless
> > some special instruction was in use.  But that usually means special
> > intrinsics or assembly code.
> 
> Thx for confirming.
> 
> In cases where we *do* expect the atomicity, it seems there's some existing type
> checking but isn't water tight.
> e.g.
> 
> #define __smp_load_acquire(p)                        \
> ({                                    \
>     typeof(*p) ___p1 = READ_ONCE(*p);                \
>     compiletime_assert_atomic_type(*p);                \
>     __smp_mb();                            \
>     ___p1;                                \
> })
> 
> #define compiletime_assert_atomic_type(t)                \
>     compiletime_assert(__native_word(t),                \
>         "Need native word sized stores/loads for atomicity.")
> 
> #define __native_word(t) \
>     (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
>      sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
> 
> 
> So it won't catch the usage of 4 byte aligned long long which gcc targets to
> single double load instruction.

Yes, we didn't do those because that would result in runtime overhead.

We assume natural alignment for any type the hardware can do.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
