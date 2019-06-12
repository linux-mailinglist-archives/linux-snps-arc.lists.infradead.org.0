Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6698F423DB
	for <lists+linux-snps-arc@lfdr.de>; Wed, 12 Jun 2019 13:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1TKyWYcu3w6M1oypiJMzl+ZoZH+bgDk2Y0sW6O4Wu4=; b=G4f9e/eCbUsegN
	sdJ5rXFUyNEyt3qMPtXYPA2nHknWJaptIURYQhAYV/g5Ch4/PnX++zPEJdvGtQENw1mhL1Pc4Y0Rf
	KG4IydNo7OIBR4nVl9ysBjjqKpFBar2gv5mi8SDoTlAh3fqEPgBK0RDqXEXjqf9/l7ysZzP4FO/wZ
	gstZL3Bs6WMlZnYD7DVWu/lt4MD8/IrZk4h+bT9UlFmrrY0O63L79ysfrxq8gTDzsXNaozpkYU5D7
	5qj1FqzY8K3iTZpJKDaaM1snPsOYkeolBi94YB/RXiF35UEiqp8JeYXxP9xADvEKDixLfKOdfBi+Q
	pqAoAruwpYvnVn53ztlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1HD-0003Yf-35; Wed, 12 Jun 2019 11:18:47 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1HA-0003RA-3O
 for linux-snps-arc@lists.infradead.org; Wed, 12 Jun 2019 11:18:46 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x5CBIF5C007472
 for <linux-snps-arc@lists.infradead.org>; Wed, 12 Jun 2019 20:18:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x5CBIF5C007472
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1560338296;
 bh=9qf4J6QRljcfXo5cUe4iXkNhy9Rz2w4BYyV8ixl/hPM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MsLZJG3O0m4XnY+kDeA6aNO0la9hMNG+YOcdfh9A+CbiK+sVJXGiOFWVgU4vEppmm
 pH68SIue+8bShOzLSDQ2suMAkHW5W4oo4HVSumabLgvs5JkjfPG88ZlmAt4OWAt6mC
 O4SCxENac1lwcqJzaFbezMiyxWawHnM0NGT5psLCnHfFUPBupJjaySWWZQ5YQmdTQm
 5AqvO2SFUJoaiaRlMjFjowrlj1+g0BDN2M4Pp4dk9Ax4I4UpxPxf9R8TVbBCoTnPHa
 FtgPeJmmaQLrQukh8LjiLleE/6Ix1T0FA3w09RDY+efL+DE0QRAKhwH5eNkAofSuC1
 LX9FidaSAi55g==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id g24so9981913vso.8
 for <linux-snps-arc@lists.infradead.org>; Wed, 12 Jun 2019 04:18:15 -0700 (PDT)
X-Gm-Message-State: APjAAAUR+wOvFBsrMhm20zKE8F4eK2eOJpOl0Jg5E7u8zV1exYuQdcob
 7H7EJm4CfY4P/0cm4gxwNTFxenXAf98IQA4CdVQ=
X-Google-Smtp-Source: APXvYqyiAJLzuWlm9OGNKzll2um7PpgCRjNhqR9NhMbeh8rj+9jrh3+P+45l89HNf3AKA3kzYmgmctCHy5tkeOKPtts=
X-Received: by 2002:a67:f495:: with SMTP id o21mr28123827vsn.54.1560338294432; 
 Wed, 12 Jun 2019 04:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190603063119.36544-1-abrodkin@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
 <CY4PR1201MB012022B3EBC7F7C2788E7B06A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB012022B3EBC7F7C2788E7B06A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 12 Jun 2019 20:17:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ-NBUuB6duaQP138Jx7y0UpgqaD=wYtRC2G_c5_H=EJg@mail.gmail.com>
Message-ID: <CAK7LNAQ-NBUuB6duaQP138Jx7y0UpgqaD=wYtRC2G_c5_H=EJg@mail.gmail.com>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_041844_408252_8515E9A9 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi.

On Tue, Jun 4, 2019 at 2:49 AM Alexey Brodkin
<Alexey.Brodkin@synopsys.com> wrote:
>
> Hi Vineet,
>
> > -----Original Message-----
> > From: Vineet Gupta <vgupta@synopsys.com>
> > Sent: Monday, June 3, 2019 7:25 PM
> > To: Alexey Brodkin <abrodkin@synopsys.com>; linux-snps-arc@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org; Masahiro Yamada <yamada.masahiro@socionext.com>
> > Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with cc-cross-prefix
> >
> > On 6/2/19 11:31 PM, Alexey Brodkin wrote:
> > > For a long time we used to hard-code CROSS_COMPILE prefix
> > > for ARC until it started to cause problems, so we decided to
> > > solely rely on CROSS_COMPILE externally set by a user:
> > > commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").
> > >
> > > While it works perfectly fine for build-systems where the prefix
> > > gets defined anyways for us human beings it's quite an annoying
> > > requirement especially given most of time the same one prefix
> > > "arc-linux-" is all what we need.
> > >
> > > It looks like finally we're getting the best of both worlds:
> > >  1. W/o cross-toolchain we still may install headers, build .dtb etc
> > >  2. W/ cross-toolchain get the kerne built with only ARCH=arc
> > >
> > > Inspired by [1] & [2].
> > >
> > > [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17
> > >
> > > A side note: even though "cc-cross-prefix" does its job it pollutes
> > > console with output of "which" for all the prefixes it didn't manage to find
> > > a matching cross-compiler for like that:
> > > | # ARCH=arc make defconfig
> > > | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> > > | *** Default configuration is based on 'nsim_hs_defconfig'


I just noticed this patch is queued on top of v5.2-rc4.
(2bc42bfba9b247abd)

This 'side note' is no longer needed or reproducible
because -rc4 contains my fix-up (913ab9780fc0212).

I do not know if the ARC maitainer is happy to rebase.

Just for your information.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
