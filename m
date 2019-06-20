Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329BD4C80D
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 09:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FC9CUokh8QV1KO6SXC6TYU67vgYfts5+/3HwJLcvgc=; b=GSU8UqvkaT28Ix
	pTcZ94MFZOn4oTAWlooxIwI3hmefpce5W8S93d4qn+lGhgY4FofG1lxKRRfySb///gcsZVwHAVZ6O
	c11oWrDpXr07yjgp8XM8XjFZiU5t7YbJWiKZcL+sE2dmNx8vDm1wdXCh7ynVPL1UPcJBM8ftfLSBR
	9xzBNfSVLyKwh8xyhNQL3e49ABUFb5rb0XwIdU/NPesdocWA7Orr0VFsaHii6jzs2AI8wdyb0h2aP
	pb8dvx5TMz9YNwQ+4sSATxZ4++nUpdQnTs8PE8aqoRXouVsFgIDeycsD6NukpBpuZ966fEw/xf94h
	rR/O/eivcFYxZ8peNEzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrI0-0002rM-W6; Thu, 20 Jun 2019 07:15:20 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrHz-0002rF-Dd
 for linux-snps-arc@bombadil.infradead.org; Thu, 20 Jun 2019 07:15:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YLDOeKEFgKiCJoPhKcSOnanWSsPi7sudQNGrpls87Xk=; b=Hvh03hzeGqUCZ23Rsfw22JUI6
 D15b+sIQwzRdM/hYgY+rDpSs0Y6SrxJUs1LKWQc1JPVMhIbRJ7foMOn7NgSJFUeyWT0oOd7iLXL5i
 lmoAVhGfGkzu1UQFezcyyvhwJdSQZqMsy0XHAe8e0XH9ye0jNck0+IRfBvKsXGgTiSkq2Lf4C6q06
 T4evu9PuTMaF219uCJSDTfB8cfopDzHV/CRxLVEAOwjY5Lg56kGpWjzCQvVV/f8nKMmLFm+lnKJXA
 55LXQbPUwJMRgadEbITW4beOs0lC4tLVykc/xR7U+8T+ceazUUj5KLY6vWeU/d1HJJcaCZciT8s4e
 TBVAghfkQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrHw-0004Bw-4v; Thu, 20 Jun 2019 07:15:16 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E446F200B4CB3; Thu, 20 Jun 2019 09:15:14 +0200 (CEST)
Date: Thu, 20 Jun 2019 09:15:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190620071514.GR3419@hirez.programming.kicks-ass.net>
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

> FWIW I tried to avoid all of this by using the 2 byte NOP_S and B_S variants which
> ensures we can never straddle cache line so the alignment issue goes away. There's
> a nice code size reduction too - see [1] . But I get build link errors in
> networking code around DO_ONCE where the unlikely code is too much and offset
> can't be encoded in signed 10 bits which B_S is allowed.

Yeah, so on x86 we have a 2 byte and a 5 byte relative jump and have the
exact same issue. We're currently using 5 byte jumps unconditionally for
the same reason.

Getting it to use the 2 byte one where possible is a 'fun' project for
someone with spare time at some point.  It might need a GCC plugin to
pull off, I've not put too much tought into it.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
