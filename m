Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714496F703
	for <lists+linux-snps-arc@lfdr.de>; Mon, 22 Jul 2019 03:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaWNv809pjfsCdAa7l8WSg4mrJRWDFt/cAd15MM2hNI=; b=c7RaXFW39PiZNj
	R6a9nVCuoUjd+hNl89vhSCPxjzDuIQ0Di8Br3zlw3HIpq6jSI6hNogJUykxztqvxDASWBDR9uj86F
	Kz/Ba3sLRx+6Fotm5GFJkslvR8K19QDA4Ds0Y/upLJbz6WbBqLD8TH7jMLUGuPIx11mNAnfNU/5US
	mj5rBWxfEN2OJo03qd8iN6lg0P+ojzmsmuADAe4wNwrd0d5G06npmyrrIHr3EsQm0bQ89adxrYPOO
	fG/aZMnlj0nY5kC0WVGlrMU9GFVwvt+IEs0vNjFsxQxa5S5I/zH9hvXxndadacLu8tyQb0iQQW6I2
	j3Surez6CfnQ2XcgF+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpNNF-0002tE-Nb; Mon, 22 Jul 2019 01:44:21 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpNNB-0002jD-Ma
 for linux-snps-arc@lists.infradead.org; Mon, 22 Jul 2019 01:44:19 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6M1hsHw001309
 for <linux-snps-arc@lists.infradead.org>; Mon, 22 Jul 2019 10:43:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6M1hsHw001309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563759835;
 bh=ihFGrpdJRXWV6Ks07QiM5tzjFEOd14pN1GFuo1AwMeA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SqmjZTaVLD6rsnDiAQ1IP/oyHiAcIZn8VgU+DgcNdapced6WSvl2SVvE+pOGUvqCr
 LyRi9ATny/DU4pl9LGnWHsj4eNk6yrxUEDDlL5zSl46Nc8o2PBWDID4qG9JewHaXp0
 g+YvmzT/BEjLJTdo34lrhuIPvl3QX2BnmtbrTDhmDYxjoeQ7GKa9AGzDo0dV9TI0dn
 yMxQB9ZS35pOLZJEv1QQ6+2a87dHaDGIv9dh86aL3b3VTMic/zdGg89/Za7E+HZBqd
 XgiRXveu7d7i/pgLT6vVpcziRRMdjJpBzP7a+qyheXCbV/9H8HKspERrEkkHwOWCFJ
 oau4fV+ZLWEbg==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id o19so14685113uap.13
 for <linux-snps-arc@lists.infradead.org>; Sun, 21 Jul 2019 18:43:55 -0700 (PDT)
X-Gm-Message-State: APjAAAWnoghEtQ16wayl4rexsvK5GbZKAZlIejFzA92+vsRhQOGgQfTx
 dp3Ft3xyLfikFt+U1IIl8dAh1SG70sUB4jayz5g=
X-Google-Smtp-Source: APXvYqw97BlrN/r474Y8Bp8ad6pOTlGoj971hOvseuFvkJ6G0GogbMI+BFKp5sSEqUp98c+iLtkPKDP0uxvi9BtZ4oE=
X-Received: by 2002:ab0:234e:: with SMTP id h14mr12274522uao.25.1563759834041; 
 Sun, 21 Jul 2019 18:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190719192824.24639-1-Eugeniy.Paltsev@synopsys.com>
 <CAK7LNARJjb3fgdo_dxPSv-vs5x573OHKf-UAUJGMc89Jfmk+QA@mail.gmail.com>
 <b2f24f32fead8bc9f282d2beb77d58ed3b98850c.camel@synopsys.com>
In-Reply-To: <b2f24f32fead8bc9f282d2beb77d58ed3b98850c.camel@synopsys.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 22 Jul 2019 10:43:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT2p8LjMJMAM9WMZymUXPVyDXDtXL094WHFhHamhShzEg@mail.gmail.com>
Message-ID: <CAK7LNAT2p8LjMJMAM9WMZymUXPVyDXDtXL094WHFhHamhShzEg@mail.gmail.com>
Subject: Re: [TRIVIAL PATCH] of: per-file dtc preprocessor flags
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_184418_192874_DF98A245 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.lkml@markovi.net" <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 12:38 AM Eugeniy Paltsev
<Eugeniy.Paltsev@synopsys.com> wrote:
>
> Hi Masahiro,
>
> On Sat, 2019-07-20 at 11:40 +0900, Masahiro Yamada wrote:
> > On Sat, Jul 20, 2019 at 4:28 AM Eugeniy Paltsev
> > <Eugeniy.Paltsev@synopsys.com> wrote:
> > > As of today we are able to pass custom flags to dtc compiler but not
> > > to dtc preprocessor.
> > > This ability is required for including some board-specific header files.
> > > It allows us to pass defined constants to dts without their duplication
> > > in several places.
> >
> > How to use this option in a useful way?
> >
> > I see a bunch of defined constants under include/dt-bindings/.
> >
> > If you are talking about code duplication across architectures,
> > you can include arm dtsi from arm64 dts, or vice versa.
> > This was made possible by the symbolic links
> > in scripts/dtc/include-prefixes/.
> >
> > Could you please elaborate your issues if you cannot solve them
> > by the current strategy?
> >
>
> Here is the example:
>
> We have several FPGA-based boards (haps_hs, haps_hs_idu,...) which are involved
> in SW and HW automated verification. For some tests we randomize physical memory
> location so we patch 'CONFIG_LINUX_RAM_BASE' kconfig variable and 'memory' node in
> device tree. We want to keep number of patches as less as possible (to avoid
> conflicts on their applying) so we want to avoid duplication and pass
> 'CONFIG_LINUX_RAM_BASE' directly to dts by including it from
> 'include/generated/autoconf.h':
>
> ----------------------------->8------------------------------------
> memory {
>         device_type = "memory";
> -               /* CONFIG_LINUX_RAM_BASE needs to match low mem start */
> -               reg = <0x80000000 0x20000000>;  /* 512 */
> +               reg = <CONFIG_LINUX_RAM_BASE 0x20000000>;      /* 512 */



So, we need the kernel configuration to build DT?

I am scared with this idea.

I believe DT files should be able to be compiled
irrespective of the .config because they are
re-used for other projects.

devicetree-rebasing is a subset of the kernel tree
that collects DT.

If you upstream that patch, this will be broken, at least.

git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
