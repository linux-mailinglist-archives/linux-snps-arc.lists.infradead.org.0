Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E418A4C839
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 09:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFePrI/73JBA6RY9cD/CRnIu8ERZYfMhMxL2x8FAFzk=; b=TpV5cqrDmmqzb4
	2LlBlpRqtgyzkX3+lzuCa5AOgnhLYKJu2hBPiIlHUJRkthHfaKbjWw5Xlvr2eE4QSdwwv9CG2H0K6
	EinQtA8ukbfO1Yn6LdKbk7xEU0X3Q+1+q8Yuv7MjzxTjgMX7cDFSkZGMM84VBJrUTta+TpZg8cQIx
	50pjzVQM2tCQMize71qwMKa8ZifJtwutY0/bv8jxq6han71ZWCQMlgrFqBJM+lwGe7YE3yfHcRpij
	GW6Tw1Gzk7D8zcgSV/V9bDYNE/kg1XmRkfH/Nms6wlAWqv1NWOdGZnxAPQU8hWwVlgYpZHQfg9Ff9
	9g8rWNnkX3xkXy90THuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrOI-0005t2-E1; Thu, 20 Jun 2019 07:21:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrOH-0005sc-C7
 for linux-snps-arc@bombadil.infradead.org; Thu, 20 Jun 2019 07:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=flv0ZjAK0TpjANrHI4sAx0FN5zH4ci8KQMG+jBdIYOU=; b=PxDF4z1f0ZvO6hgDdo4Rd03Al
 tyx+x2reUwA9mioDpNaCR2sX77t0seV4VwXFyUjVHa8eQPaHA75HsaWrXlPCl0MgIoUUvrnIauZob
 pG9lKFb/acLF37vWz4zmYwzuh2Uyf5RMeKJB+foQ6mG/Wm+ym7cSRNMKnvYQp7PxkraKwm6gGbt+N
 H3Lre1tfXfl1GJQeMBKdaQ+fUesg4+2eUUmUKUhGQeKE0oC2mgt76DlmCuyTWxvApWK0ASFdee7X4
 Jo9Ka3CjmW9wzMd2oLh+8LJYTBj1jbeQ3fZkaxbmngMXGv74Nfkei0pxlNoX1S7abhP5Dx9ubhnYC
 5m0sCWTIQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrOE-0004G4-0J; Thu, 20 Jun 2019 07:21:46 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BEEED200B4CB3; Thu, 20 Jun 2019 09:21:44 +0200 (CEST)
Date: Thu, 20 Jun 2019 09:21:44 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Message-ID: <20190620072144.GS3419@hirez.programming.kicks-ass.net>
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
> So we ensure a patched instruction never crosses a
> cache line - using .balign 4. This causes a slight mis-optimization that all
> patched instruction locations are forced to be 4 bytes aligned while ISA allows
> code to be 2 byte aligned. The cost is an extra NOP_S (2 bytes) - no big deal in
> grand scheme of things in IMO.

Right, so the scheme x86 uses (which I outlined in an earlier email)
allows you to get rid of those extra NOPs.

Given jump labels are typically used on fast paths, and NOPs still take
up cycles to, at the very least, fetch and decode, some people might care.

But if you're OK with having them, then sure, your scheme certainly
should work.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
