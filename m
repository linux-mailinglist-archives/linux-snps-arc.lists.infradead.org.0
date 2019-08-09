Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317087C19
	for <lists+linux-snps-arc@lfdr.de>; Fri,  9 Aug 2019 15:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm8miYeF6MUXiRNdvF8n2g4kfcnMwNFcJlLzmohnTP0=; b=sqDJ1G45ZvM0HU
	HmQbCFgn+vxPcWS4wNiEA0c+fvBpfUo0MSn8BJpz0vNDIQKv1rb9bNW57l5Pm62/KWWYHzJDzyfFW
	1MuSQSOLZgAsqEIvXNWtAWlXcNnFENHvC1Ok1Z3ii8ZtC0on0II0rJXBr0WNyZEs0NM8/2KPy6ksi
	gxbcVA9tIDlD5sa/mPO90RqS+9f47s72zBBGJCweFe1UVV4pbBFVhQllrf/HMoSF19C/rEiWNVOR8
	KOaLLCP064TmTXFWfGG4WNV7c3gumpAc81mTvlUzgRhYrF2c2TGV/hQtJSNk/FG86TseNgHJILQGO
	oGNW1Arae6lPyHvycyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5JR-0002Py-4j; Fri, 09 Aug 2019 13:52:09 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hw5JK-0002PQ-U7; Fri, 09 Aug 2019 13:52:02 +0000
Date: Fri, 9 Aug 2019 06:52:02 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC V2 0/1] mm/debug: Add tests for architecture exported page
 table helpers
Message-ID: <20190809135202.GN5482@bombadil.infradead.org>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
 <20190809101632.GM5482@bombadil.infradead.org>
 <a5aab7ff-f7fd-9cc1-6e37-e4185eee65ac@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5aab7ff-f7fd-9cc1-6e37-e4185eee65ac@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 04:05:07PM +0530, Anshuman Khandual wrote:
> On 08/09/2019 03:46 PM, Matthew Wilcox wrote:
> > On Fri, Aug 09, 2019 at 01:03:17PM +0530, Anshuman Khandual wrote:
> >> Should alloc_gigantic_page() be made available as an interface for general
> >> use in the kernel. The test module here uses very similar implementation from
> >> HugeTLB to allocate a PUD aligned memory block. Similar for mm_alloc() which
> >> needs to be exported through a header.
> > 
> > Why are you allocating memory at all instead of just using some
> > known-to-exist PFNs like I suggested?
> 
> We needed PFN to be PUD aligned for pfn_pud() and PMD aligned for mk_pmd().
> Now walking the kernel page table for a known symbol like kernel_init()

I didn't say to walk the kernel page table.  I said to call virt_to_pfn()
for a known symbol like kernel_init().

> as you had suggested earlier we might encounter page table page entries at PMD
> and PUD which might not be PMD or PUD aligned respectively. It seemed to me
> that alignment requirement is applicable only for mk_pmd() and pfn_pud()
> which create large mappings at those levels but that requirement does not
> exist for page table pages pointing to next level. Is not that correct ? Or
> I am missing something here ?

Just clear the bottom bits off the PFN until you get a PMD or PUD aligned
PFN.  It's really not hard.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
