Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DE833C84
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 02:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9TN2n/hKr2cDDlxIQJPRnFI+nVU5EC06EFgnV8ZCGE=; b=KJYmzTH1nfiBrT
	Bq9jYK1z/oEksgYjuZ5AAgnTWWhIWCTusSYfWROMfVLq6Qg5yr1p+tJCwudHm1wjdxJ2rc3f9YPxO
	nsOH5HU6eyH0IzsbCo6GSRCRcstDPNwWdQDZzd7bmNpWBsfjmTsDnMz2q/X042FWzrE3e79FoPjSq
	TiHsyd6mqBpepHI3V1cNz4WZH7fMrJt5tBI+VVYkiTt28e4e77458HYsnXWWROJw4zJu0fpkVDjdz
	Sgt0OLgmQThDtGQ+IBSjnCL3p38pj+M41U1IZXPiulc52lfM9k9FwW9BhuL+uO4YK+WxDiv5oMwjM
	I1pudud7ztggLndxdKwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXxVL-000867-DF; Tue, 04 Jun 2019 00:40:43 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXxVI-00085o-6l
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 00:40:41 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x540eAlI016311
 for <linux-snps-arc@lists.infradead.org>; Tue, 4 Jun 2019 09:40:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x540eAlI016311
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559608812;
 bh=wkUOXkAQWjCghhrEfa+xujqIJm2LCnnnL46/x2l8/hA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fz4Dsxl7TuFzA2z+z77+V/X0z+MY05MLa/fGC3SZzf4cF95wIoZGlC191v0n88hQo
 2N4aXSXXFPPRl+QUzQCFCtF/S6LMPAlE4M5wy+ltAXx6oL3xYg9aFN6ZiQyW0KrE5l
 R7EDD6c+0csqhkHoVN88FPPxMuZwPhnf3HO0HR8PChgC3ERMrYiVlBm1ld0O4njaD3
 2le5SSzsUmq5JkA0C1mlBb7/GVSZtlBEggoCuQ4fo6JwW1DKOPYQGlBA6YpC9czzHC
 +bkIBJGqugaejbdNbIVKZR+ubfiRK6kWdKUeDcQ2QkJ8rYFWOp7awoTWNzUClAeqYM
 aJL6LQ+YqPtaQ==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id q64so2788762vsd.1
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 17:40:11 -0700 (PDT)
X-Gm-Message-State: APjAAAUprEe4JMJ90pnZ0kmCzBANIQIC0eb+b4K+EZRbL4NSeocWyTuo
 8FrlhDVmhVDim0zic+DcSK0hv9VlAnn/yG8ePjI=
X-Google-Smtp-Source: APXvYqxeEyV+OfJJFSJ8jk4Q9esZ5B4cQMMUpgD9fpKCsAkW5SX/fyXI4m16lQU3Igtzntt2Mz0t/qtPX9l3BnslmRw=
X-Received: by 2002:a67:1842:: with SMTP id 63mr3659752vsy.179.1559608810313; 
 Mon, 03 Jun 2019 17:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190603063119.36544-1-abrodkin@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 09:39:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNARNGdQ16+vDBg1M=FsLqSpL1ONd44V8JV+_6Amofn75rQ@mail.gmail.com>
Message-ID: <CAK7LNARNGdQ16+vDBg1M=FsLqSpL1ONd44V8JV+_6Amofn75rQ@mail.gmail.com>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_174040_466125_AA124ACB 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 1:27 AM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> On 6/2/19 11:31 PM, Alexey Brodkin wrote:
> > For a long time we used to hard-code CROSS_COMPILE prefix
> > for ARC until it started to cause problems, so we decided to
> > solely rely on CROSS_COMPILE externally set by a user:
> > commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").
> >
> > While it works perfectly fine for build-systems where the prefix
> > gets defined anyways for us human beings it's quite an annoying
> > requirement especially given most of time the same one prefix
> > "arc-linux-" is all what we need.
> >
> > It looks like finally we're getting the best of both worlds:
> >  1. W/o cross-toolchain we still may install headers, build .dtb etc
> >  2. W/ cross-toolchain get the kerne built with only ARCH=arc
> >
> > Inspired by [1] & [2].
> >
> > [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17
> >
> > A side note: even though "cc-cross-prefix" does its job it pollutes
> > console with output of "which" for all the prefixes it didn't manage to find
> > a matching cross-compiler for like that:
> > | # ARCH=arc make defconfig
> > | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> > | *** Default configuration is based on 'nsim_hs_defconfig'
> >
> > Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Cc: Vineet Gupta <vgupta@synopsys.com>
>
> Not a big deal but I'd propose we add "Suggested-by: vgupta" since that is where
> it came from.
>
> @Masahiro san I suppose you are OK with this, so perhaps an Ack etc would be nice
> to have.

FWIW,
Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
