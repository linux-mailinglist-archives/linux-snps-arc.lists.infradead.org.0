Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662A6379C9
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 18:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmLfIaFwWb/TMRpLq/e+cVCJqcsGOz0IVXOrQdh1mJY=; b=cCVURScdCTBONl
	yqTrl1w0QQIu3z4LKqmCndJk/PulsdiGO9L2dMFf4S5mJJsvS/EYPG3IY2hXRvbX9nSlNxxPD2vvX
	92Meu+wcb507SooSfCG6ffhwIz0OqAr74/CPmGN+HJSKi2gaPLD+ddzatbF/tMDv+Lx2SG1lusfk6
	CtyuRgV07gCVH042j/pqbtr37VfN9D2kUmi2KLTsOutmpeRMA677668eLjxWGEZ9lIjJbTEDNCUwJ
	vZiXrC3h/F+4RxmpuYQUDTK+ql1B5iDEZD3wphMOjb9mx+a/91xL8Xnv7/eXbL6sM0r43iy9ioa0l
	uoipETHJt3/oKG9SymfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvM0-0001Te-33; Thu, 06 Jun 2019 16:35:04 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvLw-00018v-OC
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 16:35:02 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-111-wSjFIz9gN-O0BTNia_e76w-1; Thu, 06 Jun 2019 17:34:53 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu,
 6 Jun 2019 17:34:52 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 6 Jun 2019 17:34:52 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'paulmck@linux.ibm.com'" <paulmck@linux.ibm.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Subject: RE: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVHExZF0f//oAV60q3cSBNG5qc66aO0bMg
Date: Thu, 6 Jun 2019 16:34:52 +0000
Message-ID: <8d1666df180d4d01aaebb5d41370b338@AcuMS.aculab.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
 <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
 <20190606094340.GD28207@linux.ibm.com>
In-Reply-To: <20190606094340.GD28207@linux.ibm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: wSjFIz9gN-O0BTNia_e76w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093501_055092_2EFDDBE2 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
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
 Peter Zijlstra <peterz@infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Paul E. McKenney
> Sent: 06 June 2019 10:44
...
> But m68k is !SMP-only, correct?  If so, the only issues would be
> interactions with interrupt handlers and the like, and doesn't current
> m68k hardware use exact interrupts?  Or is it still possible to interrupt
> an m68k in the middle of an instruction like it was in the bad old days?

Hardware interrupts were always on instruction boundaries, the
mid-instruction interrupts would only happen for page faults (etc).

There were SMP m68k systems (but I can't remember one).
It was important to continue from a mid-instruction trap on the
same cpu - unless you could guarantee that all the cpus had
exactly the same version of the microcode.

In any case you could probably use the 'cmp2' instruction
for an atomic 64bit write.
OTOH setting that up was such a PITA it was always easier
to disable interrupts.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
