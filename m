Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B96D7612
	for <lists+linux-snps-arc@lfdr.de>; Tue, 15 Oct 2019 14:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvEDOvaXhjaZjpol7ojHFw0lu4sfByjzssRG1cnsgkc=; b=XYZGbzzmfNVJo6
	rRMr2XcnaWn2duBFKqJ3LqhGLT5Po7azFAdEUsdHJm9+oNSRKcLE2eJwHvhT+0366PSHj/tFLTS4j
	HZsRzOSkHM9OY1Szc6pB5VDtXqOgfLjo4NvfDwv+gmI3NzIJlC0YllMSjPglxTeuwIsii0r+102K7
	TJOohlLSeBVEkav0OrZGdtpvGPMbFj4Q04q7rcb5HNsYYk6hkXgLVgPFSppLEmDBQhKoANERu7VZ/
	KylG4DCLrDd2RW7WL4hQCw7tmYJ83HiIeFQ6fTNg2HQ80JMOP6joZ6zanfFwJ1NdRuEVTrCIu2Lag
	gYwyk4NgJzFiiY2QVd5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLgF-0004Gg-Kt; Tue, 15 Oct 2019 12:11:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLg3-00045o-Sw; Tue, 15 Oct 2019 12:11:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6BE98B2CF;
 Tue, 15 Oct 2019 12:11:46 +0000 (UTC)
Date: Tue, 15 Oct 2019 14:11:45 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH V6 1/2] mm/page_alloc: Make alloc_gigantic_page()
 available for general use
Message-ID: <20191015121145.GG317@dhcp22.suse.cz>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
 <9da1f196-51bd-06ac-c5dc-b55776fce2be@redhat.com>
 <20191015114723.GD317@dhcp22.suse.cz>
 <513bc2f7-8110-58f7-36c1-a04b59f11f7e@redhat.com>
 <20191015120956.GF317@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015120956.GF317@dhcp22.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_051148_222834_4334E48D 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andrea Arcangeli <aarcange@redhat.com>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Rientjes <rientjes@google.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Oscar Salvador <osalvador@suse.de>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue 15-10-19 14:09:56, Michal Hocko wrote:
> On Tue 15-10-19 13:50:02, David Hildenbrand wrote:
> > On 15.10.19 13:47, Michal Hocko wrote:
> > > On Tue 15-10-19 13:42:03, David Hildenbrand wrote:
> > > [...]
> > > > > -static bool pfn_range_valid_gigantic(struct zone *z,
> > > > > -			unsigned long start_pfn, unsigned long nr_pages)
> > > > > -{
> > > > > -	unsigned long i, end_pfn = start_pfn + nr_pages;
> > > > > -	struct page *page;
> > > > > -
> > > > > -	for (i = start_pfn; i < end_pfn; i++) {
> > > > > -		if (!pfn_valid(i))
> > > > > -			return false;
> > > > > -
> > > > > -		page = pfn_to_page(i);
> > > > 
> > > > Am I missing something or should here really be a pfn_to_online_page() here
> > > > instead of a pfn_valid() ?
> > > 
> > > http://lkml.kernel.org/r/20180423000943.GO17484@dhcp22.suse.cz
> > > 
> > 
> > So we managed to add PageReserved(page) but not pfn_to_online_page(). But it
> > is the right thing to do? (or am I missing something?)
> 
> Yeah, pfn_to_online_page is better. But please note that this is an
> optimistic check. The real check has to be done when isolating the
> pageblock because things might change in the meantime.

Except I have missed that we do get zone from the page and other
undefined state. Scratch my above comment.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
