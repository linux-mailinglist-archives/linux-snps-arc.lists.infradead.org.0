Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED1232FEC
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 14:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQs+bq2vTcrKbDPSNnLvAagfyiYc2ycMA6UgNwlhxTg=; b=Qxgi+enLu2VHUL
	B86wLMZ504zL0Z0XXkKhOkUAhUn8dmYvvTvv3zh2fS+HmmLtdGTXOeDjheyadFNZvLDbmGa8KkmEP
	3FhfquT5DBRMdWhaw7sV3J2JoylPAcd80/l/trFmmpzMVJGddEGsxO4ZicXvBDF/cQDnNpjigtbt0
	9J7EyQqp73aaLYKp0ydSEuWlfooc60YcEDQfzp4XK3xtJRnCGYsE7wjo70+zZR4FxqhePiXlNeu35
	LPftGnBnMFET7F+6bbWjmX2t1rudza3Na9oU7dZmX3g2c5YsOhm9R2on7wIWV+M2aaRAwCUNoMPIb
	v8keBRJ/dWGdRdQIkUKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmJ7-000478-2x; Mon, 03 Jun 2019 12:43:21 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmJ1-00046I-QL
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 12:43:19 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-6-SDVVZ0DCOw-CfAQMUB-rxA-1;
 Mon, 03 Jun 2019 13:43:09 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 3 Jun 2019 13:43:08 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 3 Jun 2019 13:43:08 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Masahiro Yamada' <yamada.masahiro@socionext.com>
Subject: RE: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Thread-Topic: [PATCH] kbuild: use more portable 'command -v' for
 cc-cross-prefix
Thread-Index: AQHVGfoc7Nk6FX5Ty02s910sxgLWxaaJxwdw///34ACAAB3mMA==
Date: Mon, 3 Jun 2019 12:43:08 +0000
Message-ID: <1ca8a995328f449fa58f732ebe70e378@AcuMS.aculab.com>
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <3dcacca3f71c46cc98fa64b13a405b59@AcuMS.aculab.com>
 <CAK7LNATt=P5rHrnK_8PTmjMb+tdtPg2qBgopRUDBFw_fkP2SsQ@mail.gmail.com>
In-Reply-To: <CAK7LNATt=P5rHrnK_8PTmjMb+tdtPg2qBgopRUDBFw_fkP2SsQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: SDVVZ0DCOw-CfAQMUB-rxA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_054318_106043_97930030 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
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
> Sent: 03 June 2019 12:45
> On Mon, Jun 3, 2019 at 8:16 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Masahiro Yamada
> > > Sent: 03 June 2019 11:49
> > >
> > > To print the pathname that will be used by shell in the current
> > > environment, 'command -v' is a standardized way. [1]
> > >
> > > 'which' is also often used in scripting, but it is not portable.
> >
> > All uses of 'which' should be expunged.
> > It is a bourne shell script that is trying to emulate a csh builtin.
> > It is doomed to fail in corner cases.
> > ISTR it has serious problems with shell functions and aliases.
> 
> OK, I do not have time to check it treewide.
> I expect somebody will contribute to it.
> 
> 
> 
> BTW, I see yet another way to get the command path.
> 
> 'type -path' is bash-specific.

'type' itself should be supported by all shells, but the output
format (esp for errors) probably varies.

> Maybe, we should do this too:
> 
> diff --git a/scripts/mkuboot.sh b/scripts/mkuboot.sh
> index 4b1fe09e9042..77829ee4268e 100755
> --- a/scripts/mkuboot.sh
> +++ b/scripts/mkuboot.sh
> @@ -1,14 +1,14 @@
> -#!/bin/bash
> +#!/bin/sh

/bin/sh might be 'dash' - which is just plain broken in so many ways.
Try (IIRC) ${foo%${foo#bar}}
It might even be the original SYSV /bin/sh which doesn't support $((expr))
or ${foo#bar} - but that may break too much, but $SHELL might fix it.

dash probably has the rather obscure bug in stripping '\n' from $(...)
output that I found and fixed in NetBSD's ash may years ago.
Try: foo="$(jot -b "" 130)"
All 130 '\n' should be deleted.
Mostly it fails to delete all the '\n', but it can remove extra ones!

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
