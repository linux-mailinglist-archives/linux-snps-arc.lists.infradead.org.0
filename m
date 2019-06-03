Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23D432AA2
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 10:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xW/AZJW5Gi/g5Rdpv0n/WsGAabr4otLv3Nyn7iRhBps=; b=dLmxnFl3efJr7/
	lqBBjJ4W6Mqq9ydS4Ae1hDCshrQFhwhX43rJcMQsCTRUPpDkIwF+MYCRpkQA5GoxmwOwiQK22J1mh
	L9JfSPoGPNR9NhPkz0MEFuGabz2EJsilfOuR1RW7RF1ZnXz5yA84SAzEvCYq+hhvLj0L0lbO98+U6
	bknNGzst5sreweOKP6XTNRb2fiJrHm2WURwQKKR889MGwGlA18ffNAQiOp3PLob0jYxOnzwHSzqT0
	Ca4IKLdOjna/dLo8GNjUTJXJJ02z7govVNuFqFzcjG/pNcwaD0Xk3PFceUMGmX9TRJsQJLR/szyq3
	zcC8n4Fs6mpkcN88D/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiBz-0001G5-KR; Mon, 03 Jun 2019 08:19:43 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiBj-0000pi-EZ
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 08:19:32 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x538IkWr013137
 for <linux-snps-arc@lists.infradead.org>; Mon, 3 Jun 2019 17:18:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x538IkWr013137
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559549927;
 bh=HPTf6oudyVJie6W4n2JC8Ehi4mmYu1RfWzsjHZSF1Nw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pnNjf5KDT12l3ZioAUZ2TX56pm+GhyLm4r8TZ3ePCtvILwrK8w+ySNRu8F6sPQJhx
 5C9+YCVvfWUx3Z+P5eOIkQ9K+jStkglBiZk3YC1O68GOMxYIW21WXcR4Q0w9lvUW/6
 khsrFQpTMPb4rQsuRz+7gD2HENRD6bBPAhI1/ehQp7VvbrBsJK4uL8eqEVa07aNjRC
 6Ad9ia/h5eJNlnYOnVzHT4Nv+z4vXCOB78T4OqMVAhtdW14ebAlxIeFQf+8U1T4MgM
 C4sL184nxD97LwZgiFUKokfRRz4hQMkvrr1cxu/8gh4Temfy4lDZU2Az9YrsDJNENc
 2D0BXRdYG7qgg==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id b10so10700498vsp.5
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 01:18:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUavl3Jy82jQrLS7ZktuKlSKKfXFr0He5xsAVx4Wy5Zl9fzivrO
 dlebMYuIsHN+lFImrRE4jr8yOtqRwA4Vks482ZY=
X-Google-Smtp-Source: APXvYqyPKWuyt+23UjOXvdttDyJvl0sGlo6qbrT65pEc7Udo2uhEMRoX+aTnLLn90dlw2btiXBIVCCU1zkZbNIFqAU4=
X-Received: by 2002:a67:b109:: with SMTP id w9mr1144657vsl.155.1559549926179; 
 Mon, 03 Jun 2019 01:18:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190603063119.36544-1-abrodkin@synopsys.com>
In-Reply-To: <20190603063119.36544-1-abrodkin@synopsys.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 3 Jun 2019 17:18:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNASiHzar3JmzGB1fgUYUC91F3FPsALj3iMhANTjGgnux5w@mail.gmail.com>
Message-ID: <CAK7LNASiHzar3JmzGB1fgUYUC91F3FPsALj3iMhANTjGgnux5w@mail.gmail.com>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_011927_975346_90AE2387 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Alexey,

On Mon, Jun 3, 2019 at 3:42 PM Alexey Brodkin
<Alexey.Brodkin@synopsys.com> wrote:
>
> For a long time we used to hard-code CROSS_COMPILE prefix
> for ARC until it started to cause problems, so we decided to
> solely rely on CROSS_COMPILE externally set by a user:
> commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").
>
> While it works perfectly fine for build-systems where the prefix
> gets defined anyways for us human beings it's quite an annoying
> requirement especially given most of time the same one prefix
> "arc-linux-" is all what we need.
>
> It looks like finally we're getting the best of both worlds:
>  1. W/o cross-toolchain we still may install headers, build .dtb etc
>  2. W/ cross-toolchain get the kerne built with only ARCH=arc
>
> Inspired by [1] & [2].
>
> [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17
>
> A side note: even though "cc-cross-prefix" does its job it pollutes
> console with output of "which" for all the prefixes it didn't manage to find
> a matching cross-compiler for like that:
> | # ARCH=arc make defconfig
> | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> | *** Default configuration is based on 'nsim_hs_defconfig'


Oh really?

masahiro@pug:~$ which arc-linux-gcc
/home/masahiro/tools/arc/bin/arc-linux-gcc
masahiro@pug:~$ which dummy-linux-gcc
masahiro@pug:~$ echo $?
1


When 'which' cannot find the given command,
it does not print anything to stderr.

Does it work differently on your machine?




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
