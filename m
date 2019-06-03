Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4432B4E
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 11:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//5BP9pr6PJTy3fzPYs3Oy/s1HjhAe/tOiNZPiQGmWw=; b=QJ8Yq0J8hKYzgm
	1zQQ2pCeXgvX1sKSwLghKNNLUY1skoMss+1kIYmscwSg0rRMfja1sNX7aZDnFCGy1Kt6D3aHIowhQ
	pexzJlz/P6is5H2XoQnomy17F6VkbSMqssCvLMPY6+m5doOgKzjDcBPpyJRiHnscP8MzYgUssjk+Q
	rSh0I0mpZfTu96wVerCuADQm5HMurjWcU03eDa4akaiD5fAfXVhbhsgcHZOfqwmKEhcmLd833PDop
	znl+AvCdD6BqTl5TwcC8pkLSbQWHK0NATuWWUS6ChdbgfdzBdzdIksy52VpHYgmPBCDuJ4OLiRlYa
	73DZ+74UyoMS6/z3XGnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXir8-0003xO-SM; Mon, 03 Jun 2019 09:02:14 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXir5-0003wn-Rb
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 09:02:13 +0000
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x5391j6c024074
 for <linux-snps-arc@lists.infradead.org>; Mon, 3 Jun 2019 18:01:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x5391j6c024074
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559552506;
 bh=eEI7m3wkZyuLRC5t4Dr95mXISCNX++0zsNC/lTShoE4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1pHEck2f7Y+LBk01WGT5fV+b3uCw5Avq+YOte/65/u1tg+kQ5LAe4240pktOPQUU/
 /2UOObCVWgbGJnYC8wL0L5tjwKhlamV2WR0WWq0/czrACWj83rCljylcP+F1m//Gcc
 QMApTGozC+ZX5oNbg7JpXl1+3iguK0I4X/3OhhOcjdKu1xyJwpmkORFKEBgzduSXzB
 wFBS2VGeP7tRvEdqA6eBs/ncCCe8ShZMc7zodDbi+HWicyBe21rKEQ87RwZfd7AQB9
 YzGNYPDL2QUIu3XioQ5VCVZ0XCfb7jyJbE1K2s5K7uIqI8eu3Wrk1H7rGHFRNiQEFl
 QLp9mPooUXQow==
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id n21so5001437vsp.12
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 02:01:45 -0700 (PDT)
X-Gm-Message-State: APjAAAUexNPVxlDjfcDEZkbfR3/OGNirpEB3jDuP9FkgUGWKh6FD31a/
 rNC4dXiVYNIgmh/WWPldK5qs/nfOZ+6/uc7xxe8=
X-Google-Smtp-Source: APXvYqwwfK8QVTnBMsGDfnmDcFgNqwES3z8jc8ADFv5osapsAFa/v12FAeIQphukw2jg6Z04KTZvNIUGWHhtQZHiK2c=
X-Received: by 2002:a67:de99:: with SMTP id r25mr12068520vsk.215.1559552504781; 
 Mon, 03 Jun 2019 02:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190603063119.36544-1-abrodkin@synopsys.com>
 <CAK7LNASiHzar3JmzGB1fgUYUC91F3FPsALj3iMhANTjGgnux5w@mail.gmail.com>
 <CY4PR1201MB012004A6281FFE93B8191F30A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB012004A6281FFE93B8191F30A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 3 Jun 2019 18:01:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATaLmeeeftK9AGfohEpYKhbgcXSp+GEgW46BeeAHnpqiQ@mail.gmail.com>
Message-ID: <CAK7LNATaLmeeeftK9AGfohEpYKhbgcXSp+GEgW46BeeAHnpqiQ@mail.gmail.com>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_020212_107643_EE94595E 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Alexey,

On Mon, Jun 3, 2019 at 5:34 PM Alexey Brodkin
<Alexey.Brodkin@synopsys.com> wrote:
>
> Hi Masahiro-san,
>
> > -----Original Message-----
> > From: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Sent: Monday, June 3, 2019 11:18 AM
> > To: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: arcml <linux-snps-arc@lists.infradead.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Vineet Gupta <Vineet.Gupta1@synopsys.com>
> > Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with cc-cross-prefix
> >
> > Hi Alexey,
> >
> > On Mon, Jun 3, 2019 at 3:42 PM Alexey Brodkin
> > <Alexey.Brodkin@synopsys.com> wrote:
>
> [snip]
>
> > > A side note: even though "cc-cross-prefix" does its job it pollutes
> > > console with output of "which" for all the prefixes it didn't manage to find
> > > a matching cross-compiler for like that:
> > > | # ARCH=arc make defconfig
> > > | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> > > | *** Default configuration is based on 'nsim_hs_defconfig'
> >
> >
> > Oh really?
> >
> > masahiro@pug:~$ which arc-linux-gcc
> > /home/masahiro/tools/arc/bin/arc-linux-gcc
> > masahiro@pug:~$ which dummy-linux-gcc
> > masahiro@pug:~$ echo $?
> > 1
> >
> >
> > When 'which' cannot find the given command,
> > it does not print anything to stderr.
> >
> > Does it work differently on your machine?
>
> Well on Ubuntu 18.04 indeed which doesn't show anything
> but on my build-server with CentOS 7 I'm getting mentioned verbose output:
> | # cat /etc/redhat-release
> | CentOS Linux release 7.3.1611 (Core)
>
> | # /usr/bin/which -v
> | GNU which v2.20, Copyright (C) 1999 - 2008 Carlo Wood.
> | GNU which comes with ABSOLUTELY NO WARRANTY;
> | This program is free software; your freedom to use, change
> | and distribute this program is protected by the GPL.


OK, confirmed.

Probably using 'which' is a bad idea
since this is not portable.

I will send a fix-up patch soon.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
