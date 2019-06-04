Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14303428A
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 11:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U12g2+rjYGkXmFLc3EE1sHlzZVJUWyeGHRIDo8JzKg8=; b=rfo4cdxHmvJsWn
	yVr2q6vOLP9MI1nfeTo/8QG4HAHxKWSmnI6ZExAbC5vE7kAHU/CXEdGFwHWuDBsaX/ofCrr5izauC
	PdT5F2TJy0z1/Q9dJi9Nhupr9fBmBEwBBDHdJQq+vvy/TiVeYbNZNJjKQ7oFgVN/MhhSCRu9idiIK
	Cx9APPWghDbZ2JXXeIKZjpMMw81KvsVsuidaih9z3rcSkgDmptuOY+wAu8Dhj9+rjeugL2UufDB2V
	JfsgFnykwpGOiHPCeW3oectwX9DuYL5eBrz4YDlohbZOK9ziEroeV865nk7Y0uvlPNiBUJicaQOym
	bJ1pMegIf2c+i2EDPuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5KH-0001c9-8h; Tue, 04 Jun 2019 09:01:49 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5K7-0001Jp-1Q
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 09:01:43 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-5-JkTxSXOoNISA2RzXYu7j5g-1;
 Tue, 04 Jun 2019 10:01:32 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 4 Jun 2019 10:01:32 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 4 Jun 2019 10:01:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Masahiro Yamada' <yamada.masahiro@socionext.com>
Subject: RE: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Thread-Topic: [PATCH] kbuild: use more portable 'command -v' for
 cc-cross-prefix
Thread-Index: AQHVGfoc7Nk6FX5Ty02s910sxgLWxaaJxI+g///4bICAACdTsIAA4rqAgABrGkA=
Date: Tue, 4 Jun 2019 09:01:31 +0000
Message-ID: <96b710063de5464ea347bfa1e03308b5@AcuMS.aculab.com>
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
 <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
 <810dd6ae018b4a31b70d26fb6b29e48d@AcuMS.aculab.com>
 <CAK7LNAR_A1d5keiCRthNioW3nqkNadJkaCyMR3a5S8WS0jhgNQ@mail.gmail.com>
In-Reply-To: <CAK7LNAR_A1d5keiCRthNioW3nqkNadJkaCyMR3a5S8WS0jhgNQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: JkTxSXOoNISA2RzXYu7j5g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_020139_968549_47C57E7D 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>, Vineet
 Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Masahiro Yamada
> Sent: 04 June 2019 04:31
...
> > > > You could use:
> > > >         $(shell sh -c "command -v $(c)gcc")
> > > > or maybe:
> > > >         $(shell command$${x:+} -v $(c)gcc)
> > >
> > >
> > > How about this?
> > >
> > >           $(shell : ~; command -v $(c)gcc)
> >
> > Overcomplicated ....
> >
> > I've not looked at the list of 'special characters' in make,
> > but I suspect any variable expansion is enough.
> > Since ${x:+} always expands to the empty string (whether or
> > not 'x' is defined) it can't have any unfortunate side effects.
> 
> 
> Probably, my eyes are used to Makefile.
> ":" is a no-op command, and it is used everywhere in kernel Makefiles
> in the form of "@:'
> 
> It depends on people which solution seems simpler.
> So, this argument tends to end up with bikesheding.

I am fully aware of ':', it is a shell builtin that always return success.
Usually used when you want the side-effects of substitutions without
executing anything (eg : ${foo:=bar} ), to change the result of a
sequence of shell commands or as a dummy (eg while :; do :; done; )
Very annoyingly bash parses !: as something other than 'not true'.

$(shell command$${x:+} -v $(c)gcc) will be marginally faster
because it is less parsing.

	David
 

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
