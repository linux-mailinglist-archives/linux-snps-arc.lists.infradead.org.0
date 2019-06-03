Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE42332E6E
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 13:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkt+K/5rkZ6teaCM/DduHjCVkTcWJYjfLpR4FKSdsSM=; b=BnKlI2IDRHnFSu
	lFCXqr51MVV5qosIPGphuFYEnaAs0fQ1i3zMvtbLChxE7Y8Tlnl277gtN8obbz1IODWUaC+skTyKX
	XNwZub2rOX3nCZY57JAhK+4sTo8i33GhtWdYwokwI/ON8BvvzicspAtIj5hzI/EIfMumX09mD4pLx
	OntGVe6bSVmFvzWEw8hjw6xqI38GxpCpCqLQTxbjLbsQRD69OpUHULNzVUIB27vKnNUVzvGqGactE
	pWMftc2Fyajf3re8vqHsjZUdufrbhc8jmr3EWDVvkowzyGoZEFyCck3s2ysAZQ68/bhntDoWw1o2/
	+OLOccsBtBst8/3LxOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkxU-0004X1-Lp; Mon, 03 Jun 2019 11:16:56 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkxS-0004WN-25
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 11:16:55 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-108-o7jhmQwnN0qxpv2KrDfHtw-1; Mon, 03 Jun 2019 12:16:50 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon,
 3 Jun 2019 12:16:49 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 3 Jun 2019 12:16:49 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Masahiro Yamada' <yamada.masahiro@socionext.com>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>
Subject: RE: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Thread-Topic: [PATCH] kbuild: use more portable 'command -v' for
 cc-cross-prefix
Thread-Index: AQHVGfoc7Nk6FX5Ty02s910sxgLWxaaJxwdw
Date: Mon, 3 Jun 2019 11:16:49 +0000
Message-ID: <3dcacca3f71c46cc98fa64b13a405b59@AcuMS.aculab.com>
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190603104902.23799-1-yamada.masahiro@socionext.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: o7jhmQwnN0qxpv2KrDfHtw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041654_364179_052A1BD5 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
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
Cc: Michal Marek <michal.lkml@markovi.net>, Vineet Gupta <vgupta@synopsys.com>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Masahiro Yamada
> Sent: 03 June 2019 11:49
> 
> To print the pathname that will be used by shell in the current
> environment, 'command -v' is a standardized way. [1]
> 
> 'which' is also often used in scripting, but it is not portable.

All uses of 'which' should be expunged.
It is a bourne shell script that is trying to emulate a csh builtin.
It is doomed to fail in corner cases.
ISTR it has serious problems with shell functions and aliases.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
