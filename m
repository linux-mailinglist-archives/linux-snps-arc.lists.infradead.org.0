Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADD5370E6
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 11:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6XUD9tCqXmJqKyddKebf2DIWSoCZfZKwzffjeAQREI=; b=UilsxQFDks7y/y
	+WPMdlfAy1Iks1Vss10gHezSzGjcHrFTSvDmygohlGQnFgoZK4MsWTUBk35yYYySz/5eYZ0iZ9No+
	sLiuJywpa2B0g1l4X/L2FajuFUQCTILw/J/hXdO45GJXKjExaZ8tv4Zq2bk82RzaMig4102j089UH
	NDZImrpdZ+Gn8ZuYEmgXY5w8I2nVPm+UCcVPA8jN5Ty9n16wnPO67Fx5S9ojTdPMhviUrXKCKEjAl
	y3ZLsBFbzVoIRzVPhDOj/ks1t45Xx7T2nPJzgatbDFhKFJSrSzS/h4CzPt3NPfYhsiy8e1d7A1198
	sUj4ThQNVgi/s6la+z+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp5V-0000ls-83; Thu, 06 Jun 2019 09:53:37 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYp5Q-0000kB-Oe
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 09:53:35 +0000
Received: by mail-lj1-f196.google.com with SMTP id m23so1360998lje.12
 for <linux-snps-arc@lists.infradead.org>; Thu, 06 Jun 2019 02:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=28Sb/i9VMm7hznCq6aDZ/0pyysBt+iN3wVeGdQHf1CQ=;
 b=ClygaObKYBn5XohE7b89hJrKeDCvLO7twet0i8BItIp7h8n2WkF3xNzFe83mSzWjEX
 rEIdzGjPwyfdrN9paTK3NIsWEG9INJ8hdVzw3JpiFOnTbbtnEwTAwJXUXW5+LJRiy9ic
 riCEWqZXKuv8ZAip0P+7EAB4FwNI84Dap6pErOlAA8a9egyXd8N32v3ad1jfOVfCJWCW
 WHAlltSkRpw7w/eHdmrzL3naB3iDonSyVHaljMTA8Y7AALD/0+7GLGcpm7MOAgkNXWXG
 HBo5o29PCqN4OFW4VnGFEn1U8jOanD8q3NIfpCJtig0OVlvianljbEPnFWVGjGHYICi4
 NrXA==
X-Gm-Message-State: APjAAAVGeJZzoRGaMoLskiRdqKmdQA7PaxGFA4L1OPcol1uvB+Xrnres
 QgL8N2sO7hx1Ty35BWvQmaFyAKNCv1IUTBpck2c=
X-Google-Smtp-Source: APXvYqxnbWb2E/RCX5HRf59wP5AyiykvU9YaKFtC+GiQ5C0pv7SjQrvMd71agZfZ8TmfpiNkG3y+Cnfz1DEYSKctk6I=
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr116614lji.133.1559814810186;
 Thu, 06 Jun 2019 02:53:30 -0700 (PDT)
MIME-Version: 1.0
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
 <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
 <20190606094340.GD28207@linux.ibm.com>
In-Reply-To: <20190606094340.GD28207@linux.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Jun 2019 11:53:18 +0200
Message-ID: <CAMuHMdXvpFZjNjN4GyHXSRJ4=8AXVZArc_T+09HPErzZvUxXYg@mail.gmail.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_025332_797744_287E49E7 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Jun 6, 2019 at 11:43 AM Paul E. McKenney <paulmck@linux.ibm.com> wrote:
> On Tue, Jun 04, 2019 at 09:41:04AM +0200, Geert Uytterhoeven wrote:
> > On Mon, Jun 3, 2019 at 10:14 PM Paul E. McKenney <paulmck@linux.ibm.com> wrote:
> > > On Mon, Jun 03, 2019 at 06:08:35PM +0000, Vineet Gupta wrote:
> > > > On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> > > > >> I'm not sure how to interpret "natural alignment" for the case of double
> > > > >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> > > > >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > > > > Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> > > > >
> > > > > For any u64 type, that would give 8 byte alignment. the problem
> > > > > otherwise being that your data spans two lines/pages etc..
> > > >
> > > > Sure, but as Paul said, if the software doesn't expect them to be atomic by
> > > > default, they could span 2 hardware lines to keep the implementation simpler/sane.
> > >
> > > I could imagine 8-byte types being only four-byte aligned on 32-bit systems,
> > > but it would be quite a surprise on 64-bit systems.
> >
> > Or two-byte aligned?
> >
> > M68k started with a 16-bit data bus, and alignment rules were retained
> > when gaining a wider data bus.
> >
> > BTW, do any platforms have issues with atomicity of 4-byte types on
> > 16-bit data buses? I believe some embedded ARM or PowerPC do have
> > such buses.
>
> But m68k is !SMP-only, correct?  If so, the only issues would be

M68k support in Linux is uniprocessor-only.

> interactions with interrupt handlers and the like, and doesn't current
> m68k hardware use exact interrupts?  Or is it still possible to interrupt
> an m68k in the middle of an instruction like it was in the bad old days?

TBH, I don't know.

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
