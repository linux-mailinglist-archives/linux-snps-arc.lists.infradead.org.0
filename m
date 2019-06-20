Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BCF4C8AC
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 09:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toE0u8AM+6dCkRB60PTUddX7Gc7yUSevidKfs882ukQ=; b=Y9kOAKLmFoXo+w
	N1c315pRxLJ5uwjmFj/fNrgrp6jW+3pdOWrcIwCHp8RCVLErL4qO7LWZI6fu99D2ph6o//cOmeB+y
	yWRAx0zygAbBPPehwoTkUB9MKGhpKY3qIsE/VTnidDn1xJJ9z55MBXKwm0xHHhPZM6Q2BMxdAgjg/
	byb2uvO2AGZi9kowftOTH/SVG9KSbOgsdi4MP8cKLPwaG9x0egGaLwRm4xRvJS4zHeXSsXG4nk5OV
	LWzwZUouOwOEDedtNswQwE9s+ZkGhOvMn+2mUE+DUbElEa/lRW3kOcpvy595BOoHgF67Y6tLHXMIb
	SBM/kypQCp0dOeLZkVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrrx-0008M0-6X; Thu, 20 Jun 2019 07:52:29 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrru-0008Ll-8o; Thu, 20 Jun 2019 07:52:26 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 73A8120098587; Thu, 20 Jun 2019 09:52:24 +0200 (CEST)
Date: Thu, 20 Jun 2019 09:52:24 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190620075224.GT3419@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
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

On Wed, Jun 19, 2019 at 11:55:41PM +0000, Vineet Gupta wrote:
> On 6/19/19 1:12 AM, Peter Zijlstra wrote:

> >>> +static inline u32 arc_gen_nop(void)
> >>> +{
> >>> +	/* 1x 32bit NOP in middle endian */
> > I dare not ask...
> 
> :-) The public PRM is being worked on for *real* so this will be remedied in a few
> months at best.
> 
> Short answer is it specifies how instruction stream is laid out in code memory for
> efficient next PC decoding given that ARC can freely intermix 2, 4, 6, 8 byte
> instruction fragments w/o any restrictions.
> 
> Consier SWI insn encoding: per PRM is
> 
> 31                                     0
> --------------------------------------------------------------
> 00100    010    01    101111    0    000    000000    111111
> --------------------------------------------------------------
> 
> In regular little endian notation, in memory it would have looked as
> 
> 31                  0
>  0x22    0x6F    0x00    0x3F 
>   b3     b2      b1      b0
> 
> However in middle endian format, the 2 short words are flipped
> 
> 31                   0
> 0x00    0x3F   0x22     0x6F   
>   b1     b0      b3       b2

I'm probably missing something here. I understand the I-fetch likes 2
byte chunks, but I'm not sure I understand how you end up with middle
endian.

With everything little endian, everything seems just fine. If you load
the first 2 byte at offset 0, you get the first 2 bytes of the
instruction.

If OTOH your arch big endian, and you were to load the first two bytes
at offset 0, you get the top two.

So this middle endian scheme, only seems to make sense if you're
otherwise big endian. But AFAICT ARC is bi-endian and the jump-label
patch under condsideration is explicitly !CPU_ENDIAN_BE32 -- which
suggests the instruction stream is sensitive to the endian selection.

Anyway, I was just 'surprised' at seeing middle endian mentioned,
curiosity killed the cat and all that :-)


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
