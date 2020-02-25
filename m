Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9F016BCE6
	for <lists+linux-snps-arc@lfdr.de>; Tue, 25 Feb 2020 10:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZD0Zf+3Oa8Ma0UFH4wtgr0MKzwLzAfwZr6pPV0bmaPQ=; b=Rl6QQVMR2hbpBM
	yuNu0bnMQ6IoyLJrTT4/UYG47+x967dFfU1ulXxCF/ztll0I13d++9D5SZiFQQYw20rWtHTkQ+2nZ
	fgSDMt8ol9JJc2jVa1191/SymR950uqngZ8JOXOrV42yhW5r+i/2voZU36lkSh4/V9UyBtSyOgVMz
	BlGmerZ+kPVg5be/TPll6xAlVQtLbidJUoVN5lmkRLXlYdPr0/3HZ8FwTZVWrrkzyMQyLvsrsB6yS
	c7QwFTqSP2HV1tN9Zkd5N3QJAF2NYpcdcO2dISLpahyNtsZYnG0z7p3VB/oRRejl5PiNoXpD4pUIu
	FA36Ac1QW5rzpXUYSM2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W86-00075s-07; Tue, 25 Feb 2020 09:03:50 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W82-000755-Gx
 for linux-snps-arc@lists.infradead.org; Tue, 25 Feb 2020 09:03:48 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MirSu-1ja6Be202e-00ewTQ for <linux-snps-arc@lists.infradead.org>; Tue, 25
 Feb 2020 10:03:42 +0100
Received: by mail-qt1-f171.google.com with SMTP id i14so8540613qtv.13
 for <linux-snps-arc@lists.infradead.org>; Tue, 25 Feb 2020 01:03:42 -0800 (PST)
X-Gm-Message-State: APjAAAUDtxhptxgdqyXyiLQf+hzsNtQ9I2LMH+f+rR7FSKdgVFCSDMwu
 JmPudiGu6VvvvO6Gfo8N6dTplYJwMds74Zcgn24=
X-Google-Smtp-Source: APXvYqz2Nlvq0/ymXJ8nzMWbmz10VulqVGCLhof0TnaomIgYfe7qOw0s9Bo+kyead03UAkcYvU5UkEM74/NMnsLw2yk=
X-Received: by 2002:ac8:5182:: with SMTP id c2mr4857743qtn.142.1582621421263; 
 Tue, 25 Feb 2020 01:03:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578824547.git.alistair.francis@wdc.com>
 <4e95f95966d8d7c6a8339160dc62d81c1f6a1bfb.1578824547.git.alistair.francis@wdc.com>
 <00574bfb-981a-3a1c-cbdf-b2fee4eddc32@gmail.com>
 <CAKmqyKMyf2psPp+-EHoidvbPbSXv0=dP26GjVQnT5BUriLc1gA@mail.gmail.com>
 <alpine.DEB.2.21.2002120123230.3988@digraph.polyomino.org.uk>
 <CAKmqyKOgFRfMOws_-48GqMnuS3ygmN9A4DzLg6UtEjRXVoM82A@mail.gmail.com>
 <8a9784b3-fc52-adc3-4595-33142b059388@synopsys.com>
 <20200220001136.2f14236e@jawa>
 <CAK8P3a1b73K+RjfHONWLy_dFUucXxwd+0jTnHmkf6YqwRjit4w@mail.gmail.com>
 <20200220103716.2f526933@jawa>
 <CAK8P3a2n6fRm4C5Ywyk5ys92jSOAc5SwvBVZyFOY9=4rB2pyjw@mail.gmail.com>
 <20200224100051.2511d797@jawa>
In-Reply-To: <20200224100051.2511d797@jawa>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 25 Feb 2020 10:03:29 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1VTHQ05tvk0qyw25_ZOgJbHg=hbaqXKNDGSXEmFtn=og@mail.gmail.com>
Message-ID: <CAK8P3a1VTHQ05tvk0qyw25_ZOgJbHg=hbaqXKNDGSXEmFtn=og@mail.gmail.com>
Subject: Re: switching ARC to 64-bit time_t (Re: [RFC v6 07/23] RISC-V: Use
 64-bit time_t and off_t for RV32 and RV64)
To: Lukasz Majewski <lukma@denx.de>
X-Provags-ID: V03:K1:lsnuBy75F3f+t5MUJ8j2lDTeFZ5KrNc3usVxZdVGY4AJXVlUfNt
 2BYfFQgynmE+DvvpgK9m/xR+zHr8dRn3gxUIuJBGZxgSUcSCJ99rwPxC6vry5kSPQE7MnlT
 ENxtNMXWUvXpJyZTqVJrlKQ0e1kjjlIH0HWFRhVu2v5vQCWMqmvxopbsP6pQYHqN3XHnvpv
 4yI1OtI2x6m7iU6MXov9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aZOmXdBfNr8=:iFs5BcfNXaD8NXYMJi5OjE
 +x+xKk8ivJyqERN4O+4tHi8Z25Iv3VeGcSEdZLBlsUceudE6s6FC9RND6FkZhEE+vCgtO71gh
 Nc0Q0rVXF43bUEc7PzGRYP803M1Vb1nijkUqCFJMol+Bx+tyN73CqsInDC6rza2ndJaORtbiM
 MVz/naI1doehk3BSESGKQVqvQT0r/OnvYO8x7hL2z1V0OmeWjlFmb1La/Co63XOk3br6mmdKD
 QBxMRiyf1dGYQZmjkZmSg31LG8sibaBUORRg2jLKfq3IiNFmAaydKvyMQbABOC5b+kfOjABDa
 GSRCBfHBV5bEfGqWCckst91YlHmBlHmNf2Qm9d9KKFYhN19MLuWK7E1yXoXV6PugIuc/KrNtj
 F24vRJU4jT7xl+becUdL/hBk0biuhPFtFGoHsW8eFAX+zTbDF5OziLGdB0jdakubBqv/TMVhE
 zBUcC31c7RwaOlu4i+zEObjOne8Ae8nNrrn23UEmk+fgzKpuQJUx8NfwpEcgfp+ajcI8wd4oz
 nj5+YvUjoi34G6gnbe8hqbgUrAl32JHJA+tmnSicUfj/KAV1ZR6F+yfythZNG6QBmjvE31PGP
 uHsw9XCP9T8j3kg3l36S2vOrSL7GdK8Q7ihz3xTiUf2zc2XIuQpv0cCU9griKvBFPTDDLwtC+
 S0JVFuNjbzor9z9xqIlVsESmqrS319w5OQnZ4DKRUTIev9Kz9rJVFHoZhxb4sJKFYzCaFQZiF
 kiTL4O03PS8iMJp3nWLAvKp+VPWpqNAzEzTRbLtNVVoP7hVh27EorQbsZBd8bFE3LEfsaAHFK
 maq/bDEAreJpgGVN8gkvBLdMoTunwBYj8WY+HEiUc3/hklApm8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010346_858265_416B5C3D 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Florian Weimer <fweimer@redhat.com>, Helmut Grohne <helmutg@debian.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zongbox@gmail.com>,
 debian-arm@lists.debian.org, Alistair Francis <alistair.francis@wdc.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 "Maciej W. Rozycki" <macro@wdc.com>, Alistair Francis <alistair23@gmail.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Joseph Myers <joseph@codesourcery.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:01 AM Lukasz Majewski <lukma@denx.de> wrote:
> > On Thu, Feb 20, 2020 at 10:37 AM Lukasz Majewski <lukma@denx.de>
> > wrote:
> > which seems a bug in the test suite. The other two get a segfault
> > that I have not debugged, but I guess this is likely a problem in your
> > patches. Have you seen the same thing?
>
> I only do run the full (including full test suite) glibc-many-build
> (and my Y2038 tests) on the patches which I post to glibc-alpha.
>
> The Y2038 changes I do test manually if they work as expected - but I
> do not run yet the (full) test suites on it, as first _all_ glibc
> functions needs to be converted before _TIME_BITS=64 is added.
>
> The issue is probably with the redirection code. I will look on them
> soon.

Ok, thanks for taking a look, I won't debug this further then,
unless you need help reproducing the issues.

      Arnd

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
