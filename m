Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA11633707
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 19:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eCQk0I+dh3/wrXnKhzA9wPPyZRcZm9q1MNWhr/YsMs=; b=eqd4lZ/dWhpnhq
	UCFnrawmIdnCYoh8bHaFnVv2nwf7FdW0OiWheTYMek71EHIALVxhVs7vsSZ07eJg2dqOQ+/r0V61C
	GSxQ9gLbLr1jwKAbCTFjzUnUPJRL1SK3EBh3RjUdJ7iol7tvYWk5F/xzjt+lC2lhR5JR27mWffzV+
	poGlKq6CJWSX6eY1RFRlehVcMadh/2YR2noLcNhky7X6hYkHcs7hfwmjUo/gzbioebjTacwvWL1Ee
	HgzhunRxnHAMK4C4k/9U0H6bG5O89v1J8g8uwB1nUkuP3JbIgOGGtZjp3twOc9YXTVVGLvli5tQPs
	xAH/tC2gw432+WEAiZmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr0y-0000Bv-Fj; Mon, 03 Jun 2019 17:44:56 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr0v-0000BY-Gk
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 17:44:55 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 74A22C1DAD;
 Mon,  3 Jun 2019 17:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559583902; bh=WxKliVh/3DA9XMDV5maccSIBybI0fj9t5sAcxJvWttg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=cPSLfj5vp67Rj/eWRkVzKSIyFnjy9wTKTA75umYML/g9QHDXWoPz4Gf5oZInfesvU
 c3QOkfN0u2axuoMHVwrYAPdnaCpDsPOxqvOpcypwGPrTPm6rVAOfO43kLM2i/eXaJl
 Y2euwM2SBY44YQWHFL1HuUpqclmDju6hpGmI+TetjvCx4KLpI2XpBwCMjwrYBMQzBu
 65XJl2GO81lfKhgCGejIltudHndXJ+hrd1DMtz0GXDD2mnhRX0OIIIbwO8Pp0S+TWr
 Y+igxUl4/0OpAZMSmsNNgwYkCOx+17mQuj56HyqarSGUSpIWEV3KXIeGTV5Uoc3G01
 gwJ6ZnCWlDzyw==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6F84CA009E;
 Mon,  3 Jun 2019 17:44:50 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 3 Jun 2019 10:44:49 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 3 Jun 2019 10:44:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ndaQfczcQgGlWwwFko1pa+ISkVIN+ZPvk6addUHRJc=;
 b=srLbNLV4ivESzko2LFGnobVdcAjCf/5VmQkxq25se9Ps0cU0MlX1Y6vgQZrvCCiBCWWYK8XkxteG3tzoCJC7JTJ7qgjzbEIM/fa11tI2Hv9M8UNlTEZvUFWTg5bP8lp0QITq7QoZbKG2QZbCUf6zcWIRcshFJzORroE/ghryb/w=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0085.namprd12.prod.outlook.com (10.172.78.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 17:44:47 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 17:44:47 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Joseph Myers <joseph@codesourcery.com>
Subject: RE: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
Thread-Topic: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
Thread-Index: AdUXl2gFdH9S+EfRQSeLWnM3B8KM+gCi2NQAAAHd0qA=
Date: Mon, 3 Jun 2019 17:44:47 +0000
Message-ID: <CY4PR1201MB0120B0A953107C8047BCCDF1A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <alpine.DEB.2.21.1906031528200.14124@digraph.polyomino.org.uk>
In-Reply-To: <alpine.DEB.2.21.1906031528200.14124@digraph.polyomino.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [91.237.150.126]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82c58f43-0435-4717-91b6-08d6e84b2c0d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0085; 
x-ms-traffictypediagnostic: CY4PR1201MB0085:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <CY4PR1201MB00851ACDA46FA2E26D2991CFA1140@CY4PR1201MB0085.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(136003)(366004)(39860400002)(13464003)(199004)(189003)(99286004)(81156014)(6116002)(316002)(14444005)(81166006)(478600001)(256004)(86362001)(14454004)(68736007)(8936002)(966005)(3846002)(6916009)(26005)(53936002)(54906003)(9686003)(8676002)(71190400001)(71200400001)(76176011)(102836004)(55016002)(6306002)(6506007)(7696005)(53546011)(186003)(486006)(33656002)(229853002)(25786009)(476003)(2906002)(305945005)(7736002)(5660300002)(11346002)(6436002)(66066001)(52536014)(74316002)(4743002)(446003)(76116006)(73956011)(66946007)(4326008)(6246003)(66476007)(66556008)(64756008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0085;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EzbmcNM6Z/SwgdXnMUEv8jZLMPFtWaAkPFLNjZ8fXDEr/0Hq2v9ybc4f0YXe5+Bmsqe5jFnUtJPmRyQwZntAViWuD/hCFFqv8nBNW4nRfFGFk13PW6dg1vdBIsQrCcOsMUytvfp1XltLvHN+ysQ6QqgB5n6VHeiltjbGhRAsi+8DjtYX87neWXLvguV0Mu/MhBjVwHAEW1h8XXs6kVWWnCsuXWK65nJrFwip7PaOVdEql4iAXTzeiI2iUMjQLAW2meazYtOPe3/oEFHgbIdZdKGn3zbfxMVz0JvMGLB4Z3s58Nwd6T4KWaT9d7DxA2kLrEcM1oROQGBCCHx7Je8xR2LkyRBWzneNR2FIKB7Pk7HKrVYc79PYldLObw+7bbtXyasY0l4BK1Kmmu7pMfwM4vcgyUbOUdZdVpgxkcZlrQw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c58f43-0435-4717-91b6-08d6e84b2c0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 17:44:47.6710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0085
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104453_636566_50E01080 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andreas Schwab <schwab@suse.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 Alexey Neyman <stilor@att.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Joseph,

> -----Original Message-----
> From: Joseph Myers <joseph@codesourcery.com>
> Sent: Monday, June 3, 2019 6:41 PM
> To: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Andreas Schwab <schwab@suse.de>; libc-alpha@sourceware.org; linux-snps-arc@lists.infradead.org
> Subject: Re: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR
> 
> On Fri, 31 May 2019, Alexey Brodkin wrote:
> 
> > Hi Andreas,
> >
> > I'm trying to implement multilib support for ARC port of Glibc
> > and for that we seem to need to have unique slibdir/rtlddir pair per
> > each machine flavor. In our case these are at least:
> >  - ARC700 (legacy ARCompact architecture)
> >  - ARC HS38 (new gen ARCv2 architecture)
> >  - ARC HS38 with hardware floating-point
> >  - ARC HS48 (binary-compatible with HS38 but with different pipeline so
> >              compiler schedules instructions differently)
> 
> If two processors are binary-compatible, in general you wouldn't have
> different library directories.  (The HWCAP mechanism can be used to have a
> single dynamic linker search different directories for optimized libraries
> depending on the processor; put the relevant HWCAP bits in
> HWCAP_IMPORTANT.  And of course you can just install different library
> builds depending on the processor you'll be running the resulting OS on.)
> 
> Different library directories are intended for the case where binaries for
> different ABIs can be executed on the same system (e.g. 32-bit and 64-bit;
> https://sourceware.org/ml/libc-alpha/2018-01/msg00008.html gives more
> details of the various places that need updating to support such a
> configuration in glibc).  For other cases of different ABIs, there should
> be different dynamic linker names, to support multiarch configurations
> that might run different-architecture binaries under emulation, but
> different library directories are not required.

Well I'm trying to solve a little bit different problem - to build
a universal multilib cross-toolchain which will be usable for building
binaries optimized for different ARC cores. Different I mean:
 - Binary-incompatible architecture generations: ARCv1/ARCv2 (both still 32-bit)
 - Hard/soft floating-point
 - etc.

GCC itself handles multilib perfectly fine as long as C library components
are installed in proper locations. And bare-metal toolchain with Newlib as
well as uClibc Linux toolchain are known to work as expected: C libraries
get installed to a subfolder referenced by "arc-linux-gcc -print-multi-lib".

As for Glibc at least in Crosstool-NG (the one and only toolchain builder
that supports multilib toolchains) Glibc's smarts are used for libs installation
in sysroot.

I think it used to be done similarly to Newlib & uClibc but then was
converted to a current state by this commit:
https://github.com/crosstool-ng/crosstool-ng/commit/43c303c946c61469181d633cd5620cb92e44c329

That said since I'm not yet interested in multiple libs on target
maybe I'm just looking at a wrong place and instead CT-NG should be
improved. Alexey Neyman (in CC) might have more to add here.

> > Given we have in GCC a dedicated "-mcpu" value for each of items above
> > my first thought was to "automatically" setup slibdir/rtlddir
> > based on "-mcpu" value passed in CC during configuration.
> 
> Checking -mcpu in CC is a bad idea, given that the compiler might have
> been configured with a default CPU rather than passing it on the command
> line.

Well this case (no "-mcpu" in CC) is handled - then we just installed
libs in default non-multilib location, i.e. simple "/lib".
 
> Rather, you should test how the compiler behaves: either run $CC $CFLAGS
> $CPPFLAGS -E -dM -xc /dev/null and extract and examine predefined macros,
> or use AC_EGREP_CPP or AC_COMPILE_IFELSE for the same purpose.  (If you
> don't have predefined macros that make all the required ABI distinctions,
> obviously you need to add them.)  There are various examples of this in
> existing configure / preconfigure fragments.

Right I did see a lot of those.

> Since there should be a finite list of known ABIs (which would be listed
> on https://sourceware.org/glibc/wiki/ABIList for a port included in
> glibc), you can then have a finite number of LIBC_SLIBDIR_RTLDDIR calls in
> a case statement.

Agree, but again this is more for run-time libs on target where having
many flavors of libs is quite an overkill.

-Alexey
 

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
