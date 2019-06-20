Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C654DC4B
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 23:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npqhrwnMu19NDOI0JhWjHZqU+D8k9uwOwPnwPcliveI=; b=aPmbRA58NW+QaV
	epOuCzmQg4kuCs2yTLL/WSL86UQP4Yb3ofLN5sgYHRuYzRDI+AdchR4lAVqz4ebm2b2IQ+TFNw/f+
	IxkjPTjXnUF6Lo2Dy11UaWXjXT1DuB53q6sE4rS/wv5x4fs/0lUdxKO8S0bxsMqHAD63yk0yiApYn
	k7TqAV+eWXHmDR2y/PzC9w9yhn/T3RAsLKXxUu3eCHzdzwtkmnY91clkMZLETU0Yw+zSDJ9Ei7MdC
	jrps/fsCHBcc5d0HcxH13uXlynYDGVunmEo2nBCMaNiHbwQgBbCL/7ijssscpGHb5YdZuXYgbSxeW
	uX1S2DPkQq9uGMjkDM4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4MU-0001rc-2e; Thu, 20 Jun 2019 21:12:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4MS-0001qj-P9
 for linux-snps-arc@bombadil.infradead.org; Thu, 20 Jun 2019 21:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0HS7QabWzOE0lGuJDgN7eO3a8AHNo77B8NNsl00ZW0o=; b=hSK4P6Q+aI2V2fmtzKj+TQxXo
 lrhLG1E7AMA1xbQLLK07+LL+mXPu8KhTZQ76R545mLSN9WmUWPt1E63AkTrbmoIb4wXqK7CJ6wC/5
 054RxSHYBpNn1Grm+DlQH7ZrcGoMnHRT7XifZ6MN7HKdXRUEov1B+lY2/dGCnIQoRQBNHqQxeBk9T
 7M2I64up3RntotM2+FGRXXIzcJHDpORozcAaWfGuGOumWnhi1Undr3aKlhSU2gczm3hzbq5ysJ7hG
 1FiNUONvRUnzH7yNGCCJqEdkkjifRsFMcxbr0TauDBGulnw4+3BSwbiU4fqCfZgd0LUAvlzF5/KVr
 tB5VVvItA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1he4MO-0002m8-H1; Thu, 20 Jun 2019 21:12:44 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 30EE52021E583; Thu, 20 Jun 2019 23:12:42 +0200 (CEST)
Date: Thu, 20 Jun 2019 23:12:42 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190620211242.GB3436@hirez.programming.kicks-ass.net>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <50a5120f512e7d6784efa403a7597c159074c8c1.camel@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50a5120f512e7d6784efa403a7597c159074c8c1.camel@synopsys.com>
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
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "jbaron@redhat.com" <jbaron@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 06:34:29PM +0000, Eugeniy Paltsev wrote:
> On Wed, 2019-06-19 at 10:12 +0200, Peter Zijlstra wrote:
> > On Tue, Jun 18, 2019 at 04:16:20PM +0000, Vineet Gupta wrote:

> > I'm assuming you've looked at what x86 currently does and found
> > something like that doesn't work for ARC?
> 
> To be honest I've mostly look at arm/arm64 implementation :)

Yeah, but that's fixed instruction width RISC. They have it easy.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
