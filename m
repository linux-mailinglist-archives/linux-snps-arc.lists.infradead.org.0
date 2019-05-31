Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0181430BD7
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 May 2019 11:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOyRKEgpPCnEva1xVakh18YJ/pN3mo7u+xVsPoZIVXg=; b=fhxNMH85SSF1J2
	mQ1BhWu27IHqcT1XrTiVVkPHJKGcgQzaueoI3ejmg5buhniSB1K4wGEGO7B1BJs0eCnsvaObgxnWb
	u60KNCPVJRcHeYQcegyecRusyd8T6Ehln4IP5i39+lV/YhcQpYtyp1ANZnTMtRyAN4V+sYFm575EY
	f008S353CriX7IWHHsnLdwoi6JsV0++0rAWhOjr07X8xIAFPU3wUU+jga+E1l45fZcQNAOQ8eSdYf
	hkangspbIICo+t5tSonpOd5P4FSzrpfrOm/vbhRgSIrUbPIEZaDmNyCc52nqjxcSplLxvwc/tPuSY
	/0PtQlxAF5NOEz97W3Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWe2U-0005dC-KW; Fri, 31 May 2019 09:41:30 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWe2R-0005OQ-As
 for linux-snps-arc@lists.infradead.org; Fri, 31 May 2019 09:41:29 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-124-usbqQbBcPxeULja3PdvRQw-1; Fri, 31 May 2019 10:41:18 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri,
 31 May 2019 10:41:17 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 31 May 2019 10:41:17 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Vineet Gupta' <Vineet.Gupta1@synopsys.com>, Peter Zijlstra
 <peterz@infradead.org>, Will Deacon <Will.Deacon@arm.com>, "Paul E. McKenney"
 <paulmck@linux.vnet.ibm.com>
Subject: RE: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVFxS3Hu02PtbnOkCuZb4nroftBaaE+VYw
Date: Fri, 31 May 2019 09:41:17 +0000
Message-ID: <895ec12746c246579aed5dd98ace6e38@AcuMS.aculab.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
In-Reply-To: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: usbqQbBcPxeULja3PdvRQw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_024127_653918_7CB41C6A 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 arcml <linux-snps-arc@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Vineet Gupta
> Sent: 30 May 2019 19:23
...
> While it seems reasonable form hardware pov to not implement such atomicity by
> default it seems there's an additional burden on application writers. They could
> be happily using a lockless algorithm with just a shared flag between 2 threads
> w/o need for any explicit synchronization. But upgrade to a new compiler which
> aggressively "packs" struct rendering long long 32-bit aligned (vs. 64-bit before)
> causing the code to suddenly stop working. Is the onus on them to declare such
> memory as c11 atomic or some such.

A 'new' compiler can't suddenly change the alignment rules for structure elements.
The alignment rules will be part of the ABI.

More likely is that the structure itself is unexpectedly allocated on
an 8n+4 boundary due to code changes elsewhere.

It is also worth noting that for complete portability only writes to
'full words' can be assumed atomic.
Some old Alpha's did RMW cycles for byte writes.
(Although I suspect Linux doesn't support those any more.)

Even x86 can catch you out.
The bit operations will do wider RMW cycles than you expect.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
