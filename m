Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC8FD93
	for <lists+linux-snps-arc@lfdr.de>; Tue, 30 Apr 2019 18:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlJ2viZG8SkZwnH1X/RVYo0/tlVayQ07xywOF/X5o5g=; b=vDYRaCpo0i+c3e
	PxKR2aDpLbpprQHBHgUAKbb+ITGs+GRmHV6fC8ptrlGDThydpOv/K0H9x31bZq2vdpwi1lhh6xHzF
	ekUh47dISbP0TFdsXiXDyvevDJ3w28oY0UApEagEKD8HGmu/+3zT2a+AnQY1jZQ0+Q90ASn2H+Y0M
	E40PtIme2RbCzHsV5HbQSF2/vMNEo7ErDsqkRXxlxAJs5SuOIVnlMlOVPZLoQtsy4rIaTPJw4jJqZ
	/QV/PkRx2nb4lUeiiRdIAB//r5YekmeWygPk6BcCMqhuPD0otc+vtKfJnj8LiyZd5HFxM1YhHAQcL
	w/oiOK5rDqXEhjY1noxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVNJ-0005oc-Rl; Tue, 30 Apr 2019 16:12:57 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVNG-0005oD-Hn
 for linux-snps-arc@lists.infradead.org; Tue, 30 Apr 2019 16:12:56 +0000
Received: by mail-qk1-f193.google.com with SMTP id c1so8508148qkk.4
 for <linux-snps-arc@lists.infradead.org>; Tue, 30 Apr 2019 09:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Dw1Sc4DgzUhOMvuweilLKv0I/kx7THnj4Gu6G9qc/A=;
 b=k2Ot16Z+8YjbKD5mVZq4L1Lel0e5SCyLJ9b8uw99Ncc4q0B9Nr2QtqWFoF7VTJOVvB
 /mgIzJephJLmSD/4p3m1xUC8KrNT/GUKz3KFm2keLtc59AXUCS5YB0IGrSR/JeTgF7y2
 NGkqKpqyPpS+Vy44Sne2IZUzQwtVbbjvcKtGY9T5SUKIDq2/bESMByNZkU6fxGC7RCw3
 ivWwDci6qFE7wp6uO+pAcR10w6uXJC4TKTkjrfS0ffQgpmCHY/Yz2kp536eM9Y3olkIU
 NiGum26WMksjvVlSyzosnbCKkAObDak/f1jn5/zJQKns33/QoUZVm/xOsPeULDp2R2/C
 01vg==
X-Gm-Message-State: APjAAAUuGV44ehStZs/4Jp4V0G2xgmnKRgVIpD/RIlA9+TFHH3v/eWLH
 DBp8A4bWCNXtEi7fEZH5ZQvRyEntFZWzRoWp7Rc=
X-Google-Smtp-Source: APXvYqxZ18tw9VclTG8jiPtQwPA/q6phtCiYjGxgL4Pu5OHC2RhANvcUJKMdOjp8gwPa9BT1lygkiVrzaDoTFNwqSCg=
X-Received: by 2002:a37:b802:: with SMTP id i2mr48165405qkf.343.1556640772741; 
 Tue, 30 Apr 2019 09:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Apr 2019 18:12:35 +0200
Message-ID: <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
Subject: Re: perf tools build broken after v5.1-rc1
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_091255_589650_969B43E4 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 7:17 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> On 4/22/19 8:31 AM, Arnaldo Carvalho de Melo wrote:
> >> A quick fix for ARC will be to create our own version but I presume all existing
> >> arches using generic syscall abi are affected. Thoughts ? In lack of ideas I'll
> >> send out a patch for ARC.
> >>
> >> P.S. Why do we need the unistd.h duplication in tools directory, given it could
> >> have used the in-tree unistd headers directly ?
> > I have to write down the explanation and have it in a file, but we can't
> > use anything in the kernel from outside tools/ to avoid adding a burden
> > to kernel developers that would then have to make sure that the changes
> > that they make outside tools/ don't break things living there.
>
> That is a sound guiding principle in general but I don't agree here. unistd is
> backbone of kernel user interface it has to work and can't possibly be broken even
> when kernel devs add a new syscall is added or condition-alize existing one. So
> adding a copy - and deferring the propagation of in-kernel unistd to usersapce
> won't necessarily help with anything and it just adds the burden of keeping them
> in sync. Granted we won't necessarily need all the bleeding edge (new syscall
> updates) into that header, its still more work.

I think more importantly, it seems completely broken to sync a file from
asm-generic but not the arch specific file that includes it.

The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
missed all the other architectures changed in c8ce48f06503 and the
related commits.

      Arnd

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
