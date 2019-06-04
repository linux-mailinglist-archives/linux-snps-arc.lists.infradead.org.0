Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F30034E16
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 18:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftlK8p3Uj5W1ZFj+vmlZ5SJZQYkO5RAS7A2Eq5XjraE=; b=tAmbv3I7ujiDl4
	I/315yzPEbFznqRYO2Ig3EUWiQ65r67LyoW2oeJfSIqiJeiV+mrpSXJB0nDgG+mZC4kTeju93QsDu
	z9uimghiDzXxh52QAcnRJ+fPfHiymC34AjJ5EGxvAUdxVME4wnrA62+a3ViOklk+MNQxp55c66y4E
	F7kMkRRLDMT7X5P2x3eqhXIH17Omao99Txk0h+l3bEnOGiSj0e9ABneU1z1tMtCWUYtSb8PJ0+VYf
	e7a29fzVlWtpoNOXWwdzSqd5yydQZ8EfygFFpeLv11boMqBGSBy3y4l4l7VdnNz9qUmUcRrvNzx6b
	NNzroHv0RSZo3gnfX+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCk8-00057f-1k; Tue, 04 Jun 2019 16:57:00 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCk5-00056I-Bv
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 16:56:59 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x54GuVp7012003
 for <linux-snps-arc@lists.infradead.org>; Wed, 5 Jun 2019 01:56:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x54GuVp7012003
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559667392;
 bh=AWQM1259hlpLE+Q6HQ1rPP/ecAKabyKp++FNUsm3vM8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AeJgD3Hehs6eDX/f6fMXAcW1K2o9fLZmoDVPaiO+j4eVnCFnUsNx8YxcyyB1OQlC8
 S6feXBXsR4KQZGW8dTt53RoyT/7zpRU8dVqHDKn2K2Auh7+hkrF1ORVWGGrJjYK9Jo
 RpDqCL7/brBaSJ3qT6VFepJPTHuudNiIQHTGlo98E7TjUHqGIaD9bJclNFhEDJASnd
 1Hkn7h2eCidaHSoUszMR6NahV/5DvYxaOoTrmyl+NgnC6aL3K2ra3F7dN+iNDEcTK0
 dSWeI2eMQz8izXEThaAkssaSoeBlTrK6OSBBJ9KKBAcPN5ubx1Y8CCPUYgNUh9EsL7
 Ct4s5nOHG+Wsw==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id l20so13961895vsp.3
 for <linux-snps-arc@lists.infradead.org>; Tue, 04 Jun 2019 09:56:31 -0700 (PDT)
X-Gm-Message-State: APjAAAV0lGimRH6PLb16ytRxr5MWp3wR1zEKSO4TwhnZ7b8xaVEyacgO
 P1gmPsknju3RROBkeW11PisG67D1obbm4h7qXf4=
X-Google-Smtp-Source: APXvYqziG67UCmWZotaA3vRTF/UlR6i3eFISA8tVsgriIAz81VPvXjMWqG/0DTyBqd2pWmiKytVJybjGXfSP6OSC1f4=
X-Received: by 2002:a67:b109:: with SMTP id w9mr5796256vsl.155.1559667390772; 
 Tue, 04 Jun 2019 09:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
 <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
 <810dd6ae018b4a31b70d26fb6b29e48d@AcuMS.aculab.com>
 <CAK7LNAR_A1d5keiCRthNioW3nqkNadJkaCyMR3a5S8WS0jhgNQ@mail.gmail.com>
 <96b710063de5464ea347bfa1e03308b5@AcuMS.aculab.com>
In-Reply-To: <96b710063de5464ea347bfa1e03308b5@AcuMS.aculab.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Jun 2019 01:55:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNARfX_Vk+iW_B3XTOmoEx-43WENNtEk4vNCv-PWk9R2r3A@mail.gmail.com>
Message-ID: <CAK7LNARfX_Vk+iW_B3XTOmoEx-43WENNtEk4vNCv-PWk9R2r3A@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_095657_836989_DAF40B0B 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Jun 4, 2019 at 6:01 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Masahiro Yamada
> > Sent: 04 June 2019 04:31
> ...
> > > > > You could use:
> > > > >         $(shell sh -c "command -v $(c)gcc")
> > > > > or maybe:
> > > > >         $(shell command$${x:+} -v $(c)gcc)
> > > >
> > > >
> > > > How about this?
> > > >
> > > >           $(shell : ~; command -v $(c)gcc)
> > >
> > > Overcomplicated ....
> > >
> > > I've not looked at the list of 'special characters' in make,
> > > but I suspect any variable expansion is enough.
> > > Since ${x:+} always expands to the empty string (whether or
> > > not 'x' is defined) it can't have any unfortunate side effects.
> >
> >
> > Probably, my eyes are used to Makefile.
> > ":" is a no-op command, and it is used everywhere in kernel Makefiles
> > in the form of "@:'
> >
> > It depends on people which solution seems simpler.
> > So, this argument tends to end up with bikesheding.
>
> I am fully aware of ':', it is a shell builtin that always return success.
> Usually used when you want the side-effects of substitutions without
> executing anything (eg : ${foo:=bar} ), to change the result of a
> sequence of shell commands or as a dummy (eg while :; do :; done; )
> Very annoyingly bash parses !: as something other than 'not true'.
>
> $(shell command$${x:+} -v $(c)gcc) will be marginally faster
> because it is less parsing.
>

I will use this:

$(shell command -v $(c)gcc 2>/dev/null)

Make does not handle redirection by itself.

'2>/dev/null' is easy to understand,
and might be useful as extra safety.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
