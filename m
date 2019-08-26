Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F89C751
	for <lists+linux-snps-arc@lfdr.de>; Mon, 26 Aug 2019 04:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWO9xmJWr0LaNQg75ZJJHB9KaKq5h24bUrWNUXh+kLg=; b=txBQdrs5/da78f
	WFIwFAusENGsp4dwmIVoE+AMJ8mQmfEoX1ZWdLwtBIKvoXc6iBCJkKI+wV5+hfj6ADqxFMeExc87/
	XxFuPbBA54CSW2qaWM7+nagS/gkP49rgY41m0qqHi9hDvMc5wjNpF7QsFiYeu5v88oteT2Mc4me1o
	eHgDjRUwAaTRO+0dIMGhFvxn5MYJSAwodpo4/fyKjfJNbaEjsDNmGzUxIAo4poCyl/OlPZHWgrGSS
	+b/RJs7XL6n25Y3k9oWr1QXFPlkGz/MSMZbdKUvtAGFZpqHHuuKB2Dru+EGrnK2J+jt+Q4zQ22Y4K
	TKgMETOeCFG1/vcKfSLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i24tD-00065R-12; Mon, 26 Aug 2019 02:37:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i24sk-0005uq-Pc; Mon, 26 Aug 2019 02:37:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19249344;
 Sun, 25 Aug 2019 19:37:20 -0700 (PDT)
Received: from [10.162.43.136] (p8cg001049571a15.blr.arm.com [10.162.43.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E19513F718; Sun, 25 Aug 2019 19:37:09 -0700 (PDT)
Subject: Re: [RFC V2 0/1] mm/debug: Add tests for architecture exported page
 table helpers
To: Matthew Wilcox <willy@infradead.org>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
 <20190809101632.GM5482@bombadil.infradead.org>
 <a5aab7ff-f7fd-9cc1-6e37-e4185eee65ac@arm.com>
 <20190809135202.GN5482@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <7a88f6bb-e8c7-3ac7-2f92-1de752a01f33@arm.com>
Date: Mon, 26 Aug 2019 08:07:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190809135202.GN5482@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_193722_921944_A39E4461 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 08/09/2019 07:22 PM, Matthew Wilcox wrote:
> On Fri, Aug 09, 2019 at 04:05:07PM +0530, Anshuman Khandual wrote:
>> On 08/09/2019 03:46 PM, Matthew Wilcox wrote:
>>> On Fri, Aug 09, 2019 at 01:03:17PM +0530, Anshuman Khandual wrote:
>>>> Should alloc_gigantic_page() be made available as an interface for general
>>>> use in the kernel. The test module here uses very similar implementation from
>>>> HugeTLB to allocate a PUD aligned memory block. Similar for mm_alloc() which
>>>> needs to be exported through a header.
>>>
>>> Why are you allocating memory at all instead of just using some
>>> known-to-exist PFNs like I suggested?
>>
>> We needed PFN to be PUD aligned for pfn_pud() and PMD aligned for mk_pmd().
>> Now walking the kernel page table for a known symbol like kernel_init()
> 
> I didn't say to walk the kernel page table.  I said to call virt_to_pfn()
> for a known symbol like kernel_init().
> 
>> as you had suggested earlier we might encounter page table page entries at PMD
>> and PUD which might not be PMD or PUD aligned respectively. It seemed to me
>> that alignment requirement is applicable only for mk_pmd() and pfn_pud()
>> which create large mappings at those levels but that requirement does not
>> exist for page table pages pointing to next level. Is not that correct ? Or
>> I am missing something here ?
> 
> Just clear the bottom bits off the PFN until you get a PMD or PUD aligned
> PFN.  It's really not hard.

As Mark pointed out earlier that might end up being just a synthetic PFN
which might not even exist on a given system.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
