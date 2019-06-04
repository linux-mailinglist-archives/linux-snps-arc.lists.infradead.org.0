Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDB434089
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 09:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKMLdQp7DMd4DHGVlQ1/40WpzenVmnk5ECLQCPL6pAQ=; b=FKAcXKrH8G+4wP
	8la1F5e+0XlNJAoAZf67norWezDXUmBf6tlc0VU4xFnSO1aD+fLAxM8B4Jz2cGLluir+cUbwL9kHY
	4ROgrZcIHYCjFywanft71SPK24//PB9BTNZ5K9g/0yaNda2hCyXpkkgq77qbwD+Wc8jPy7VkxZTj8
	QaWgvUQKDSSTVNjmp3mkDVyAXPFodmweSkL+vHmfQmvnORGf5beWaYhr3srHOICFO2La15hYHN5l4
	d/Hsi8HncCamn47DYJuIX1+2uOIwU3HhxVvvEtL9AmQ9much7fvR/3LIT8ezJFopZdI5KmpOm9XXT
	TQRvhGgHh8emAzMHie5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY44P-0000QJ-7Z; Tue, 04 Jun 2019 07:41:21 +0000
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY44M-0000PL-LI
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 07:41:19 +0000
Received: by mail-lj1-f175.google.com with SMTP id i21so4138380ljj.3
 for <linux-snps-arc@lists.infradead.org>; Tue, 04 Jun 2019 00:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZAHr1x2OGrSpVVmyEF6SL+BemidY5crrkYYK4WkhFYw=;
 b=eS0PSTvn2ptZc1SaiLDFwNXcJLce2KylnwkYTc2/QSSbSssTzepoF5LN2MuCNrU6B/
 YFyRkXALphHP61uhZmklxs9zEnHW1MFnQkFqPHDx3CW5B5oOMuLy9xXGnGEgpnPNI1Vk
 7XfSq/gRf1iCo3mBVgdhqMGWNpMhWzC0oG0uxgNzza5QTfUwL5LzGeuvq2LutHmYDTvj
 Z73zlQZKCnv16B/fsH2gZVMZUqHxhCHkbW2vomao1SmaI373diZr5BbQb0D7icM9fUa1
 IqAUSo58E+tXc5ERzbepM7/wJAzFamxA/FphoWDMZRLvYOfRn71txuRKjvdr1/hd8y5c
 djbg==
X-Gm-Message-State: APjAAAVJltoFb8nf/9CrYyzKokmUtGtkl7y5ij+BQodP5s96kqTa7e+S
 3xA/5WJJZIdu9eKXL+IC3pHWpaU8cadMkXC333s=
X-Google-Smtp-Source: APXvYqzLztAMA/8xqZvEThx/dBoNLHWeEXrEpWdQwYRs3xI2FxEn7V2swIn8FrGUNYkkKJxgDcCVDKMKQoQ+1GalhoQ=
X-Received: by 2002:a2e:2b8d:: with SMTP id r13mr3443413ljr.145.1559634076658; 
 Tue, 04 Jun 2019 00:41:16 -0700 (PDT)
MIME-Version: 1.0
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
In-Reply-To: <20190603201324.GN28207@linux.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jun 2019 09:41:04 +0200
Message-ID: <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_004118_695247_4B754B59 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Paul,

On Mon, Jun 3, 2019 at 10:14 PM Paul E. McKenney <paulmck@linux.ibm.com> wrote:
> On Mon, Jun 03, 2019 at 06:08:35PM +0000, Vineet Gupta wrote:
> > On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> > >> I'm not sure how to interpret "natural alignment" for the case of double
> > >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> > >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > > Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> > >
> > > For any u64 type, that would give 8 byte alignment. the problem
> > > otherwise being that your data spans two lines/pages etc..
> >
> > Sure, but as Paul said, if the software doesn't expect them to be atomic by
> > default, they could span 2 hardware lines to keep the implementation simpler/sane.
>
> I could imagine 8-byte types being only four-byte aligned on 32-bit systems,
> but it would be quite a surprise on 64-bit systems.

Or two-byte aligned?

M68k started with a 16-bit data bus, and alignment rules were retained
when gaining a wider data bus.

BTW, do any platforms have issues with atomicity of 4-byte types on
16-bit data buses? I believe some embedded ARM or PowerPC do have
such buses.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
