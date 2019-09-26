Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B86BFA2D
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Sep 2019 21:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8r8NxaTpfRo86EEbL+7IkQOYltD2/erzCKehN4pYY4=; b=V6VCvsP1CrOuEP
	SM0uE6/9gIFXqih2585CPx+D1lbwNrpLGmkhzZG1dl8cQDlJ/2mhpzWpqdyj0T+ri2SbkQWK5GTt3
	koNSyyM9JXGVMEfCQPKLFW/p55kUz/1odpp0pyUge4kkETtLZM91DwP4/B7cUGgmJNDwt+2ZPTLdH
	rW673KQzxcThVC/at5cG/XluNM5t1t8NcCRFD9LEXgqRp1zWJ0OrgXyrrD19q76M3wq2Uq0CJwJyO
	2MLS93R9CEDwiCKAb9CzHDgcfsoZH/hE6Viq2RR0XYC5B2KBSdMAq5KldoKo7XreL/IpEXN+zItSV
	HB4Gdo7NF5PzdP6d7Q9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZYh-0006Cu-5g; Thu, 26 Sep 2019 19:36:11 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZYd-0006AZ-09; Thu, 26 Sep 2019 19:36:08 +0000
Received: by mail-io1-xd43.google.com with SMTP id c6so9527563ioo.13;
 Thu, 26 Sep 2019 12:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uv8sypDhr4ui+8J14AcrUpiwkTC+Ius1tZ05+vuLNHk=;
 b=lFVH4DJZInfXaRXpqmiMEK9WpeSM/1iq4W9bn5uziJHuNnpDS5uJfwrrSMkKUYaoWu
 tjIzRew236DgZA4ISwubGuuzdkMEJIbQ8yLo4Gw4blLNNqTUJXJQc2T8EmFOMMaE/MZN
 TWI21uIOpWZV0B6kiTUPUzXP+86XUqzfSXBes1IbztoB6sCaCe2+0vHVrK7I1YSyHTRf
 vUusvWxQUo6svZWbb5qWyg1vE5i/0/5lEgToMxkxJ7QF/bNuxlBlDbD6OXf3ku60x8mI
 qYDnylEQgvdyDcRtg2M6u1XUP8jT9lELn92+Mho67HMmT8OkOdOtqWogr7E2TIwC5RUe
 rt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uv8sypDhr4ui+8J14AcrUpiwkTC+Ius1tZ05+vuLNHk=;
 b=lvSmXBCjf+mZca6G9cxRp5lqVBjB6M1WWlFPvwNWQFrY7PzptPw3mAjdLqMFPs5/zf
 EAUNi+uhzm451q7+FMRuenKqWGfG3h5wYOaZCX75mud2I5hsVqDfMekkx+ORptmsIMC2
 y9fRFFRGVcBLduJhcRYa5fAqsd6A75jpWPF+U5Ect6M/4hZqHDPTvIGXn6WFH2vvBzsF
 DhdMJSmFx4XJ66QW0g93ytDna1L0oUTFSrE1uGAfPIl9fWhiEtvB0Mey09IPJiag3JPq
 N4Bx991WxKCjU9OwPcIZCNJJibXQsNSCnHNyz2XLNpDDCDuJpDlwbJhfa6OBfhvvrhu3
 TYgg==
X-Gm-Message-State: APjAAAUPL+4rqaH+LbU27tdnt87aBI5rznAHlzg/QiQy6Sq+CbZMM3OB
 0obaNai2d8EalTCybitpTyGV2nkT+SnedwbGr5s=
X-Google-Smtp-Source: APXvYqz6Gzzz4fph8SDTgwR3nXuuRIG8y0wd6XvcO9/S+doLjWzArUyv9IHucQgjs6f3GvWFnHs+ZCUo69B6L3/gML4=
X-Received: by 2002:a92:9912:: with SMTP id p18mr378753ili.78.1569526565531;
 Thu, 26 Sep 2019 12:36:05 -0700 (PDT)
MIME-Version: 1.0
References: <1548057848-15136-1-git-send-email-rppt@linux.ibm.com>
 <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
 <CAOMZO5A_U4aYC4XZXK1r9JaLg-eRdXy8m6z4GatQp62rK4HZ6A@mail.gmail.com>
 <CAHCN7xJdzEppn8-74SvzACsA25bUHGdV7v=CfS08xzSi59Z2uw@mail.gmail.com>
 <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
 <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
In-Reply-To: <20190926160433.GD32311@linux.ibm.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 26 Sep 2019 14:35:53 -0500
Message-ID: <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123607_132775_55A0449B 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Dennis Zhou <dennis@kernel.org>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, Chris Healy <cphealy@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Petr Mladek <pmladek@suse.com>,
 linux-xtensa@linux-xtensa.org, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 linux-m68k@lists.linux-m68k.org, Rob Herring <robh+dt@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, xen-devel@lists.xenproject.org,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, openrisc@lists.librecores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 11:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> Hi,
>
> On Thu, Sep 26, 2019 at 08:09:52AM -0500, Adam Ford wrote:
> > On Wed, Sep 25, 2019 at 10:17 AM Fabio Estevam <festevam@gmail.com> wrote:
> > >
> > > On Wed, Sep 25, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > > I tried cma=256M and noticed the cma dump at the beginning didn't
> > > > change.  Do we need to setup a reserved-memory node like
> > > > imx6ul-ccimx6ulsom.dtsi did?
> > >
> > > I don't think so.
> > >
> > > Were you able to identify what was the exact commit that caused such regression?
> >
> > I was able to narrow it down the 92d12f9544b7 ("memblock: refactor
> > internal allocation functions") that caused the regression with
> > Etnaviv.
>
>
> Can you please test with this change:
>

That appears to have fixed my issue.  I am not sure what the impact
is, but is this a safe option?


adam

> diff --git a/mm/memblock.c b/mm/memblock.c
> index 7d4f61a..1f5a0eb 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
>                 align = SMP_CACHE_BYTES;
>         }
>
> -       if (end > memblock.current_limit)
> -               end = memblock.current_limit;
> -
>  again:
>         found = memblock_find_in_range_node(size, align, start, end, nid,
>                                             flags);
>
> > I also noticed that if I create a reserved memory node as was done one
> > imx6ul-ccimx6ulsom.dtsi the 3D seems to work again, but without it, I
> > was getting errors regardless of the 'cma=256M' or not.
> > I don't have a problem using the reserved memory, but I guess I am not
> > sure what the amount should be.  I know for the video decoding 1080p,
> > I have historically used cma=128M, but with the 3D also needing some
> > memory allocation, is that enough or should I use 256M?
> >
> > adam
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
