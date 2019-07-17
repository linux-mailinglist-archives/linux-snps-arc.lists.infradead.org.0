Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC686C132
	for <lists+linux-snps-arc@lfdr.de>; Wed, 17 Jul 2019 20:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niz0cEICSto5JXbqQ/BQgvppgo4TkM0FGP88QnilQlk=; b=gMlf0SkTr7Yaej
	UKhiDlVV7EI5CmnQsZJyW57BwnboDXOtlkNb42BiAzmWEFqLPDrSDPDXk1QBHR9qhJ6Lu9jFCFr5S
	489f2slz7raj0Cj5R5m/GdWErNKx/fpapZeScokSJ3GAepEC9wG60Zc7sEPM59RHlB4PLIw+eFBDD
	w25tAqDZHVvoeTAvjQuu0VClTmez1VEYDPFw1enV3ryfJcoBO135GDOtAhLrOXBs84tK09xUXwuri
	nVAH/VRMKnwtHGcbbOqvb9t+z+HHgWYlqZSXL86VKUI4Uo4E27Ip8D7jeLNvxDOiI6jmOVVN1a2R7
	6TEaIwWscBJ2A+Sjoxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnp6S-0001mB-LB; Wed, 17 Jul 2019 18:56:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnp6P-0001lh-QL
 for linux-snps-arc@lists.infradead.org; Wed, 17 Jul 2019 18:56:35 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A6327C1279;
 Wed, 17 Jul 2019 18:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563389792; bh=uNcD0BXIcwwDuFoHy+gZf5RitwHTtIEY29Dxa/zj5oU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lsrRft3Zzf2D7oBOwFcV6RaAEf36KsMbcJn+24hzXvJxHbvhK4xdprDaBvJMJ/r/o
 4AT6pq2M9ScVVhc3LouBAhol8pdxeMtYgoGMGDJWwSRdPyUA7T+LycZYbmnzJW74al
 p3Qe7nyqrUVUXI3yFapmUt5bCRiAe2P46xsqMSmUgM3cQd4Zm2bI2utxW81Z2+9lsL
 bQj43YnW23NY26GARfwa4NDRwRtc1a0OPZdONTr/Z+idoXEqc8Ogiw8tx8tOMK9Nn5
 My3MGzbsdWGJjyKyl9IqotPKkEZ46ExORSjnI6v3wiPZ9uYKKH+CKp6Ay0DbOmMuvS
 KyG/YJC5QvRmA==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5F00FA00B7;
 Wed, 17 Jul 2019 18:56:31 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 17 Jul 2019 11:56:16 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 17 Jul 2019 11:55:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEVoxv+0i7seZiQPUK3dX7CRHQhW3DoPXgpoSAC5zCZ1ko9P2LTwNM//UrgzfPITFrUFK0irUyDXOngqUWyFZJm+vQlBWNuK/1ZeaIV4h3zB3GnAZGw6JlbOQL94t94ipSXFPqu+RPB5nFzhL6iVDbclMZ/XXDoPp/4yzVZzmpmR4dvRV3npEvg0HZf6wq9XgZkJMSn9fdgIXU/ZgWl4FmOec+XuG1E5p6ORbODlCRqUEOmZRj8CSO393ZaGWn8vt24fOWnbYa/7npuBnMTS2WzREIBGHsMYG4+sEdsZf9RIA4+s+k1ZBemKGM0EWn0b5UBbKsoZImIt2HE5VH9UWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNcD0BXIcwwDuFoHy+gZf5RitwHTtIEY29Dxa/zj5oU=;
 b=kOxPNrbQzOAppIESy5DwmUZscLnX+JX9UlPbZCi4uzgSNlqZSn/2Q2niJiBHYxzDuBE58Gi/WpxbK6j9tFNA7l8XBHOfw7PxSNng1xyriCB2BdmFDiA9roIKdZw3U2O2TB8MrPITW9PEjFjslRtecoE+esLAlkSSVezqUnhw6c6pq8m0AHMdgBQPsTAa1SnqyDMpMnuGrEQMoe4sUJAseKMGAffQ4RMmBKZh/97/uwPIVWY+aTDG6p7n93kB9Ll6FmFZb27O63aO/cbwUU+Hmbk95jgL1hbdM2917lULLgpSbNGcZtB3z1cSHs3+eAahK+n+T8YCzondpoaj+TFxlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNcD0BXIcwwDuFoHy+gZf5RitwHTtIEY29Dxa/zj5oU=;
 b=UMXF1t28/LKgaQmJXEmuLTsz+/DPwUXJmnJ8kozPm84ea4ufo0VIhCPXcWZXFs7E3qzS74Hq3Jr+oeoWyG4lW1uGnzwvNVxvPnQBN43WZq+LwRPWjxz+6gMhjgGXz/taQAhr8RCmySwTn2lCdI+hQS9gfRbhKHgTwt2gex0VCQE=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2847.namprd12.prod.outlook.com (52.135.104.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 18:55:00 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a%6]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 18:55:00 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVItABmoPNpjiRbEyPVk6MS/0psabPXKOA
Date: Wed, 17 Jul 2019 18:54:59 +0000
Message-ID: <401bc54416a106141b0ec785bfd9198ed56a84d8.camel@synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <57076361ad37f4fe7a5584643ae47adf30a99d35.camel@synopsys.com>
 <BN6PR1201MB0035E304FF25609CBCACBD09B6C90@BN6PR1201MB0035.namprd12.prod.outlook.com>
In-Reply-To: <BN6PR1201MB0035E304FF25609CBCACBD09B6C90@BN6PR1201MB0035.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8b721bd-5070-4b45-27a9-08d70ae844eb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2847; 
x-ms-traffictypediagnostic: SN6PR12MB2847:
x-microsoft-antispam-prvs: <SN6PR12MB2847612E62BF8D70086FF861DEC90@SN6PR12MB2847.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(346002)(39860400002)(136003)(366004)(199004)(189003)(6246003)(446003)(6436002)(6486002)(53936002)(561944003)(6512007)(3846002)(6116002)(2616005)(25786009)(476003)(11346002)(4326008)(316002)(2906002)(66066001)(118296001)(91956017)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(102836004)(8676002)(5660300002)(76176011)(53546011)(6506007)(186003)(2501003)(7736002)(305945005)(26005)(36756003)(256004)(14444005)(229853002)(478600001)(486006)(68736007)(110136005)(99286004)(8936002)(14454004)(71190400001)(71200400001)(54906003)(81156014)(81166006)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2847;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2OcZVksu6qDJw5CGcmmFhXnVqcJ/qzB6bc+QsfzTVU+5ohYdMIbN/jlCe0NVgGirxcxU1QcfehSIO7208KYseiKMA7NEy9VVYODvAGRAuf4jA2GhU9ngZFvglXH2Y0/my722PDC95Kfoj0s0u27Azpx+y74gh1tsPo9NDlcoFJpeXpu0ho/eS+F3f80fggM3VJesa6AcHrxlbYWt/iZHBDS3t/u2VEVdG9pkzaWMpevF14e5w5WqUKPxh+6Hd38XyAmdx8r/BMDhT6AIj0LC6OfIEOcR+LTxSBIjbGeq88UYDfaxqHk9/3u/AJSHQu37hS1DDW0YEyqf45p+lDUrwGSh+260bwem3UtgC/0Na1mYEfzv6VCxxJn9G9Mhylkm2KDkY13M/s6brqMhjOzXchlLU4f8TwLINuOY+gnQXG8=
Content-ID: <D6BC058B74D4F0438B6DC07104F51623@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b721bd-5070-4b45-27a9-08d70ae844eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 18:55:00.0587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2847
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_115633_921334_598ECDB5 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jbaron@redhat.com" <jbaron@redhat.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 17:45 +0000, Vineet Gupta wrote:
> On 7/17/19 8:09 AM, Eugeniy Paltsev wrote:
> > > > +/* Halt system on fatal error to make debug easier */
> > > > +#define arc_jl_fatal(format...)						\
> > > > +({									\
> > > > +	pr_err(JUMPLABEL_ERR format);					\
> > > > +	BUG();								\
> > > Does it make sense to bring down the whole system vs. failing and returning.
> > > I see there is no error propagation to core code, but still.
> > I totally agree with Peter, and I prefer to stop the system on this errors. Here is few arguments:
> > All this checks can't be toggle in system operating normally and only may be caused by bad code generation (or some code/data corruption):
> > 1) We got our instruction to patch unaligned by 4 bytes (despite the fact that we used '.balign 4' to align it)
> > 2) We got branch offset unaligned (which means that we calculate it wrong at build time or corrupt it in run time)
> > 3) We got branch offset which not fits into s25. As this is offset inside one function (inside one 'if' statement actually) we newer get such huge
> > offset in real life if code generation is ok.
> 
> I understand that. But AFAIKR in implementation arc_jl_fatal() gets called before
> we have done the actual code patching and/or flushing the caches

Correct.

>  to that effect.
> So harm has been done just yet. We just need to make sure that any book-keeping of
> true/false is not yet done or unrolled.

Can you describe your proposal in more detail?

Be noted that in case (2) or (3) we know that we are not able to generate correct instruction for replace existing one. And we don't know anything
about the real cause.
So what we can do here besides that we warn about it?

-We can halt the system to make debug easy (which I propose)
-We can generate invalid instruction.
-We can just skip this patching. In that case we'll end with some 'if' statements [in kernel code] working incorrectly. I really don't want to debug
this.

Given that we'll never face with this asserts in any consistent state I don't see any reason why we shouldn't simply call BUG() here.

> 
> > If we only warn to log and return we will face with compromised kernel flow later.
> > I.E. it could be 'if' statement in kernel text which is switched to wrong state: the condition is true but we take the false branch.
> > And It will be the issue which is much more difficult to debug.
> > 
> > Does it sound reasonably?
> 
> I'm still not convinced that by hitting the _fatal() we are in some inconsistent
> state already. But if u feel strongly lets keep it.
> 
> > If you really don't want to have BUG here, I can make it conditionally enabled
> 
> Not a good idea. It is unconditionally present or not. Not something in between.
> 
> > in depend on CONFIG_ARC_STATIC_KEYS_DEBUG as I want to have it enabled at least on ARC development platforms.
> 
> 
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
