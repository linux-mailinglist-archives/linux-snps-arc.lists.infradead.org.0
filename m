Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961E233D98
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 05:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApBa3lEElVqQwobiHRgQhF0KpTzI5cz7AHcDIzdteyM=; b=vENx0bwO/MJ4Jt
	XL93QKmBvC1qXAAhnlA3P6fxThH89hj/iknf37rAYvblHeXLrsD2A1SMtgKfFIEgzUD6kITqGY+aX
	Hfa7639JVHSAiWzy4hBf4Y6rITRNIfwq/LGPkNl8O+jT1PyL0+tWhzg9SPHGS2ZZ1EKw9DDUbdUmT
	0dZHyy0o4oy77yLcjX00U/uEYtWf/WxGPmVDYIySPUgFU9vBwUNyrTdBjqFzMthniAlaoRc3WTFyf
	630oKyuPJpD739+bVRsLqeBuctpSV1+GgRhnwlSwpHRdP4WWvrbqNZ2KQc717Ed914aktoJQ7AgPT
	+E/bI0PI4go5OY13crbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0OB-0007kQ-6h; Tue, 04 Jun 2019 03:45:31 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0O8-0007jz-De
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 03:45:30 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x543j1IP012042
 for <linux-snps-arc@lists.infradead.org>; Tue, 4 Jun 2019 12:45:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x543j1IP012042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559619902;
 bh=R4DTbEc9ajd/+gLs4R0E3A2qZCd8mpp6nT3mLt/MWL4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sSBx0AvDkKyPdfmLobt1FwXeI8jVeiK59RkpnvzCgW1NxC772shGT0Sxc6PAO3Ks8
 PDpJD75pBEKoT6FtjYqkPmeN7nHHdv/MoXFZ+KkARrl7JX7aMkTjv66C+gvwBFrf1k
 B8WFehagQofx/8TM/rEZq5ZQsCBBOmcPxP90UVmxzfiuyDbP2A1GnZ1/QcxY8pzP35
 peOxnzSOfUkm2Oyv22A6p/BEmKU4ophBttj/ymoil1dI3SwP/qqDWA9vS74RKRv/jT
 /r3Ba2dTESj1A1/ZKgvGfqHlnmrjZUEmgp2ARlAXb79sSmfu3ocxF13RuVLBIBPzcu
 YPiPeujYRKBIg==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id f20so5635186ual.0
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 20:45:01 -0700 (PDT)
X-Gm-Message-State: APjAAAVC8JD6Fz819evUzWdHtuTkfNlBUO7nU+MdotVx+WEB+w25zbLo
 aNuD/9B0IxDIaWVQBdb2HGGK8WFvvH7G+qIApII=
X-Google-Smtp-Source: APXvYqzVUiWM/RaTvJFgDXA6xyHBfBmK48S0H0UYyNEUSUfOWS5M4whPygR0UYBlA4pDOL7pjG5Ty1EEttHRqBCTSd8=
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr13276265uar.109.1559619900888; 
 Mon, 03 Jun 2019 20:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <3dcacca3f71c46cc98fa64b13a405b59@AcuMS.aculab.com>
 <CAK7LNATt=P5rHrnK_8PTmjMb+tdtPg2qBgopRUDBFw_fkP2SsQ@mail.gmail.com>
 <1ca8a995328f449fa58f732ebe70e378@AcuMS.aculab.com>
In-Reply-To: <1ca8a995328f449fa58f732ebe70e378@AcuMS.aculab.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 12:44:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNASwTS+rfZuFFcR7cz2HaOZWMjxhZUToV=74g09J72=osg@mail.gmail.com>
Message-ID: <CAK7LNASwTS+rfZuFFcR7cz2HaOZWMjxhZUToV=74g09J72=osg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_204528_680033_A0690C75 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 9:43 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Masahiro Yamada
> > Sent: 03 June 2019 12:45
> > On Mon, Jun 3, 2019 at 8:16 PM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Masahiro Yamada
> > > > Sent: 03 June 2019 11:49
> > > >
> > > > To print the pathname that will be used by shell in the current
> > > > environment, 'command -v' is a standardized way. [1]
> > > >
> > > > 'which' is also often used in scripting, but it is not portable.
> > >
> > > All uses of 'which' should be expunged.
> > > It is a bourne shell script that is trying to emulate a csh builtin.
> > > It is doomed to fail in corner cases.
> > > ISTR it has serious problems with shell functions and aliases.
> >
> > OK, I do not have time to check it treewide.
> > I expect somebody will contribute to it.
> >
> >
> >
> > BTW, I see yet another way to get the command path.
> >
> > 'type -path' is bash-specific.
>
> 'type' itself should be supported by all shells, but the output
> format (esp for errors) probably varies.
>
> > Maybe, we should do this too:
> >
> > diff --git a/scripts/mkuboot.sh b/scripts/mkuboot.sh
> > index 4b1fe09e9042..77829ee4268e 100755
> > --- a/scripts/mkuboot.sh
> > +++ b/scripts/mkuboot.sh
> > @@ -1,14 +1,14 @@
> > -#!/bin/bash
> > +#!/bin/sh
>
> /bin/sh might be 'dash' - which is just plain broken in so many ways.
> Try (IIRC) ${foo%${foo#bar}}
> It might even be the original SYSV /bin/sh which doesn't support $((expr))
> or ${foo#bar} - but that may break too much, but $SHELL might fix it.


We cannot use any tool
if you start to argue like
"Hey, I know ancient implementation that did not work as expected".

Nobody can cover all corner-cases.
That's why we have standard.

I think the reliable source is the
Open Group Specification.

The behavior of /bin/sh is defined here:
http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_01

${parameter%[word]} and ${parameter#[word]} are defined,
so we can use them in /bin/sh scripts.


> dash probably has the rather obscure bug in stripping '\n' from $(...)
> output that I found and fixed in NetBSD's ash may years ago.
> Try: foo="$(jot -b "" 130)"
> All 130 '\n' should be deleted.
> Mostly it fails to delete all the '\n', but it can remove extra ones!
>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
