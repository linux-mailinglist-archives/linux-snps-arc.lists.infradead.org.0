Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC9D3F58
	for <lists+linux-snps-arc@lfdr.de>; Fri, 11 Oct 2019 14:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHLPKpDO5PAdjtzwp2JXMWo5aAaoffsMpj5Mjxp6Gfg=; b=ZSNJ/5Z0pW0x7v
	cS/QFWRfCd3xvsmi3KLHkQUGQOh55pmwjKjE5AcZAtQV8pU8NuVHRxnGsOIheSbcSkkr0RoRrpknd
	syXgU3jKOTVF9/gEZ+8Rv6O1Z12Hhj8/HlHycwsildDQl7MT6vVK2jjWlj9/D4i0svKV4I736n/+f
	/CmgYMNkm2VZdDnh0lbfCsoz6Di175s6xqdCjAFrZGMT++JsVxr7qoUQT7weS/O1WhUaXSze197fH
	SzgocXVnQ2hbGFSANQeo19jpQFlhyF+AFyD6/9lCCj9kNMLBNRG5IJuHG8s2QZPfnUWwCjXnBiNcb
	R1WcrPPJ5eYyAtCV3xNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIttm-000607-Uv; Fri, 11 Oct 2019 12:19:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIttk-0005zB-Hc
 for linux-snps-arc@lists.infradead.org; Fri, 11 Oct 2019 12:19:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id q64so9575726ljb.12
 for <linux-snps-arc@lists.infradead.org>; Fri, 11 Oct 2019 05:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n9TW/HRe8d6mz4MQKhjPNO1PuLOYHluTJjNubX7sfzE=;
 b=dcXZ61tRqDpeGyGapLhTvELR9pMmEjlU53H4BbUz/JaJ3WO3hx84ErbKazu7xtKoKW
 gvfMB/6EjJI8i+G890KgefdzxLr6S1o9w430ETPzkjAgdOP3l6l7ixOEThpqumgeBE79
 yFf5+SbM3GAjhnHfb/2lFglO+G1/u+qEVoh+6kFuwnvZMHgvU9mHqq45wrT4hVF2CZ/V
 nOEak8d7761PnYr0dhcs16wc/cnH3Dsw+uB2anDBfGq2iKT2kjiQ3OI2EAOBkr7y0GrI
 Zjo4zkuTZyH8+5GZzq4yNm64xgg5q+9qrdsHcivByH0oX+mhqy2KnAzFo6Brv2OiVRvb
 8aWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n9TW/HRe8d6mz4MQKhjPNO1PuLOYHluTJjNubX7sfzE=;
 b=Age68AVvX+0CESeiUFfYDlysHli7kqlpjnmFagBnv/qD8AawBxKKnvdTNGMyLUpEB1
 tEQ3mzbD/OFA8+CUZzM0dSWkFor8F8BFUZEH7tm/j101RpuEvMYqnnV+5p7aGg/IZ3hO
 D6SOOpukyuPNkcGe8kDmTKtoh4cBDbRlTslbskdoTQrqwTDpiB0TVvEHwQTWoN52phsA
 s8m/5QRMhqc61U+ws9udurB7Mth8WqPbqAs/zFL1ug5wtIKfBMb0di/fcep2awZN3WRp
 ne7GXKqmNtKj8pRzeuCUIVr6Y+r5Q/PPdSzWde9LN2hdafFdf9gpeZHKRfCnyD70G/Is
 ZXfQ==
X-Gm-Message-State: APjAAAWiSvqkK6RzR5ajCc9lFEWTtEK+pXHUs5q1YmrHBE9do8BeDNWh
 3XN+ufgwD8899gC3d2aUc+VN7g==
X-Google-Smtp-Source: APXvYqwZoc4fM1naaPJ7w+PtjiadfJ4JzznLHAw4a73DhoKiP8rjYFSUvqrrjtzyxw6vnYfFdWEnyA==
X-Received: by 2002:a2e:9913:: with SMTP id v19mr8829129lji.234.1570796392539; 
 Fri, 11 Oct 2019 05:19:52 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id v22sm1868024ljh.56.2019.10.11.05.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 05:19:51 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 93D6C102DC1; Fri, 11 Oct 2019 15:19:51 +0300 (+03)
Date: Fri, 11 Oct 2019 15:19:51 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Vineet Gupta <vineetg76@gmail.com>
Subject: Re: [PATCH 0/3] eldie generated code for folded p4d/pud
Message-ID: <20191011121951.nxna6hruuskvdxod@box>
References: <20191009222658.961-1-vgupta@synopsys.com>
 <20191010085609.xgwkrbzea253wmfg@black.fi.intel.com>
 <8ba067a6-8b6a-2414-0f04-b251cd6bb47c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ba067a6-8b6a-2414-0f04-b251cd6bb47c@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_051956_631104_028E713A 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org,
 Nick Piggin <npiggin@gmail.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:05:56PM -0700, Vineet Gupta wrote:
> 
> Hi Kirill,
> 
> On 10/10/19 1:56 AM, Kirill A. Shutemov wrote:
> > On Wed, Oct 09, 2019 at 10:26:55PM +0000, Vineet Gupta wrote:
> >>
> >> This series elides extraneous generate code for folded p4d/pud.
> >> This came up when trying to remove __ARCH_USE_5LEVEL_HACK from ARC port.
> >> The code saving are not a while lot, but still worthwhile IMHO.
> > 
> > Agreed.
> 
> Thx.
> 
> So given we are folding pmd too, it seemed we could do the following as well.
> 
> +#ifndef __PAGETABLE_PMD_FOLDED
>  void pmd_clear_bad(pmd_t *);
> +#else
> +#define pmd_clear_bad(pmd)        do { } while (0)
> +#endif
> 
> +#ifndef __PAGETABLE_PMD_FOLDED
>  void pmd_clear_bad(pmd_t *pmd)
>  {
>         pmd_ERROR(*pmd);
>         pmd_clear(pmd);
>  }
> +#endif
> 
> I stared at generated code and it seems a bit wrong.
> free_pgd_range() -> pgd_none_or_clear_bad() is no longer checking for unmapped pgd
> entries as pgd_none/pgd_bad are all stubs returning 0.
> 
> This whole pmd folding is a bit confusing considering I only revisit it every few
> years :-) Abstraction wise, __PAGETABLE_PMD_FOLDED only has pgd, pte but even in
> this regime bunch of pmd macros are still valid
> 
>     pmd_set(pmdp, ptep) {
>         *pmdp.pud.p4d.pgd = (unsigned long)ptep
>     }
> 
> Is there a better way to make a mental model of this code folding.

I don't have any. PMD folding predates me and have never looked at it
closely. Quick look brings more confusion than clarity. :P

> In an ideal world pmd folded would have meant pmd_* routines just vanish - poof.
> So in that sense I like your implementation under #[45]LEVEL_HACK where the level
> simply vanishes by code like #define p4d_t pgd_t. Perhaps there is lot of historic
> baggage, proliferated into arch code so hard to untangle.

In ideal world all these pgd/p4d/pud/pmd/pte should die and we have
something more flexible to begin with.

I played with this before:

https://lore.kernel.org/lkml/20180424154355.mfjgkf47kdp2by4e@black.fi.intel.com/

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
