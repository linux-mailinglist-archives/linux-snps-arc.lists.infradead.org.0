Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BAFADBF0
	for <lists+linux-snps-arc@lfdr.de>; Mon,  9 Sep 2019 17:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksTCTuD2lX+X0kP5v8UEQQIRgjXwZJbmP/MXh2zQ3hk=; b=CDYhtYxj3drNhS
	oVTBdPnU5O2FqCzF9JY+BPQjROlPU8CHsxjOOPVqY0lgwCzTSDfQU9j2qff+xr9RzJzThXWTqEXeU
	CadKKKZbU7UyrN/v1kdHjBi9O2r9mKWnT1HP95INb61sXEGRyKmjIL6aWRjL65ZOBUrV09Xr4kYBV
	XSVjYY5UVZZPlnBcmyQBRJynRrHDA2e2nle9ssMsiiTJUgCKZ4fIM8LQoqEPZ5baN0QaNUAd0CDtH
	NoaMxflqqRXud3/3pcv37K4F0oaLffzFMnH0I4s99zvt0UdPOg3p9b2CerXiDjE3BthRN9ap9gz61
	GfRvkVO+J9mgB9U3cIkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LMW-0006wR-CI; Mon, 09 Sep 2019 15:13:52 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LMS-0006vM-NX
 for linux-snps-arc@lists.infradead.org; Mon, 09 Sep 2019 15:13:50 +0000
Received: by mail-ed1-x541.google.com with SMTP id z9so13286990edq.8
 for <linux-snps-arc@lists.infradead.org>; Mon, 09 Sep 2019 08:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ptGQKrJwsC6QNZJxPTcIFHrTBzodlhROW8EV9Cr6mks=;
 b=lqK7soM8Ql8EG2Ftn3h3hR+olO0M3L5hi5yR7FV9iLEmOGD4dckGUM3j+cW0/Dime1
 tcaru2ydfakL0qOGX9NW71rS5xXhlEsWXHR5tZTvN8nAdg3jRR7H91vVYT27iUT4zLQL
 /8sd6tx6RSZch+NQKzd2gDDMnTl6lfsTiDI17WOQGfxtCfWUReS2eIOCKDQqmHkeOOb6
 CQ29hW9JyqW2659VgWaWS03hTBmcSoCzS6kj58DkCjvhtjcgvBnAojuQ6LW0JN5ngCCR
 oxmuahVreVZAzOjjnErCDvkrgGlDpVGWckjhAKTQyS0XAzH5VKEiZW6qr15a3nTgG9T0
 I28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ptGQKrJwsC6QNZJxPTcIFHrTBzodlhROW8EV9Cr6mks=;
 b=r5yrhUZqelKgpsYy6iT+8wOZ/JUX8NmXJZphVSEYPx/83u4Y7yVwLBIVezRK0fFWjm
 BTeCAN5OcxyWcaDyyohp/EKcleUH4npfZBJdMEky/LfqM58FlZlBzBW4pVO6CCxZ3qws
 0G7C9eSDMktKCqnlVfmov7A7EgWnFv8GAT0cZ0G7YjpaadtlJJRYjW8DHN9kOARc4DFH
 cjU9nt+1m49bk/Kv/jAUDcoqxvIzhscdWb7rjia0Gbo8qTUtae3mK9lxsq8qK5AMl20x
 3hjMiE/eOA8bjInEVEoeYj4yYj9nbT17xrsyaRGIFU4zuvFlD+PYlzzpfOVEipRIqgAK
 0mlQ==
X-Gm-Message-State: APjAAAUq3bWMFOhh6mUPs+xwvdhVKNVuwwUU1uqsUmvHdkT5GLp7XHwL
 brdHAbCMc4VYUiVAsCI7Ad1NzA==
X-Google-Smtp-Source: APXvYqwJokBcl6isKFmA//BZZyEEgwoj2uNW2kTs0Tg/Y35qXurjsqN7Jks2aTze1VFcwFZl9Fv8+Q==
X-Received: by 2002:a17:906:c304:: with SMTP id
 s4mr20002026ejz.71.1568042026870; 
 Mon, 09 Sep 2019 08:13:46 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id bf19sm3010529edb.23.2019.09.09.08.13.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 08:13:46 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id CD9501003B5; Mon,  9 Sep 2019 18:13:44 +0300 (+03)
Date: Mon, 9 Sep 2019 18:13:44 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
Message-ID: <20190909151344.ghfypjbgxyosjdk3@box>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
 <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
 <20190906210346.5ecbff01@thinkpad>
 <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_081348_769135_A13FBE8A 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-sh@vger.kernel.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Vlastimil Babka <vbabka@suse.cz>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 11:56:50AM +0530, Anshuman Khandual wrote:
> 
> 
> On 09/07/2019 12:33 AM, Gerald Schaefer wrote:
> > On Fri, 6 Sep 2019 11:58:59 +0530
> > Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > 
> >> On 09/05/2019 10:36 PM, Gerald Schaefer wrote:
> >>> On Thu, 5 Sep 2019 14:48:14 +0530
> >>> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> >>>   
> >>>>> [...]    
> >>>>>> +
> >>>>>> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> >>>>>> +static void pud_clear_tests(pud_t *pudp)
> >>>>>> +{
> >>>>>> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
> >>>>>> +	pud_clear(pudp);
> >>>>>> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
> >>>>>> +}    
> >>>>>
> >>>>> For pgd/p4d/pud_clear(), we only clear if the page table level is present
> >>>>> and not folded. The memset() here overwrites the table type bits, so
> >>>>> pud_clear() will not clear anything on s390 and the pud_none() check will
> >>>>> fail.
> >>>>> Would it be possible to OR a (larger) random value into the table, so that
> >>>>> the lower 12 bits would be preserved?    
> >>>>
> >>>> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
> >>>> it should OR a large random value preserving lower 12 bits. Hmm, this should
> >>>> still do the trick for other platforms, they just need non zero value. So on
> >>>> s390, the lower 12 bits on the page table entry already has valid value while
> >>>> entering this function which would make sure that pud_clear() really does
> >>>> clear the entry ?  
> >>>
> >>> Yes, in theory the table entry on s390 would have the type set in the last
> >>> 4 bits, so preserving those would be enough. If it does not conflict with
> >>> others, I would still suggest preserving all 12 bits since those would contain
> >>> arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
> >>> would also work with the memset, but for consistency I think the same logic
> >>> should be used in all pxd_clear_tests.  
> >>
> >> Makes sense but..
> >>
> >> There is a small challenge with this. Modifying individual bits on a given
> >> page table entry from generic code like this test case is bit tricky. That
> >> is because there are not enough helpers to create entries with an absolute
> >> value. This would have been easier if all the platforms provided functions
> >> like __pxx() which is not the case now. Otherwise something like this should
> >> have worked.
> >>
> >>
> >> pud_t pud = READ_ONCE(*pudp);
> >> pud = __pud(pud_val(pud) | RANDOM_VALUE (keeping lower 12 bits 0))
> >> WRITE_ONCE(*pudp, pud);
> >>
> >> But __pud() will fail to build in many platforms.
> > 
> > Hmm, I simply used this on my system to make pud_clear_tests() work, not
> > sure if it works on all archs:
> > 
> > pud_val(*pudp) |= RANDOM_NZVALUE;
> 
> Which compiles on arm64 but then fails on x86 because of the way pmd_val()
> has been defined there.

Use instead

	*pudp = __pud(pud_val(*pudp) | RANDOM_NZVALUE);

It *should* be more portable.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
