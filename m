Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4CE3350C
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 18:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CHq80ltN9imholIXu/7hyotm/DX5wuKmJb8LPDDC3g=; b=QGYdc5rzD8hQa3
	FqZkJ/l7dtRr0Rhj64Kw7AiDyRT1Ok80rLGREj4yVMv9gh/+Ly+Pliw5KNi7+ILiIY0w1keHo/gA8
	vgn3kE+/NUx4/22zKmQMT30AWn+6aDGlk6USk3+isxCMso4SFrrUAdqlwyu+b8PUfgSVc6nNu9kKM
	KDh0hehHgW8DklxymtOq+C3HjqNVDsWoYrV7H/GYkYrls8N2OjdYJfMQ4w/z2AO5Dht68SHhpKr+0
	orw/lCJNJb49dPKh+Kzcf2TDqMNJwdGrU/0wnOk08pZKkMjRMzrjfK2FNIs9oDLVXiGRYsgtb8vEM
	AUqFE9xzklO69x5RLOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpvA-0007l8-57; Mon, 03 Jun 2019 16:34:52 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpv6-0007kH-9F
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 16:34:50 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 58D98C1DAF;
 Mon,  3 Jun 2019 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559579697; bh=lpYmQWpuP86Sa3RKQlMbCrTP+u469qhgYUq4vMpw2go=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=BLFtVpzkPR1sUpk4NTTimuTy1Q54E1c7KQeDL5TMnCwDYnMGYWhhHKjgIeK2G40sX
 BVvSoo7RSsOy6OhurzAnZoSdpPga5PcHH8U06dR7BWypXQ+cXJHgCvIvrZvRgFHgqj
 VdVnlES5IPZPpxrfAxqPbB/DKyGIBGab2UF5obUG/hmjwISnC9DMgh41YTpVZOnmV1
 xepIq1c0NO0D7DuPORYjYKnPzvhP8nd4vfVHmGf7+GojXnQhCIZRyzeMcQAnypkBxM
 jIM9G5yFrcvcAh2Z+eYFqATkI813xFSR83SXWKa6bIPI1b//F0L8Jddlb7PFsh4+AG
 9ukV6feI5tzxg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EEEEBA009C;
 Mon,  3 Jun 2019 16:34:45 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 3 Jun 2019 09:34:45 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 3 Jun 2019 09:34:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IgWLeHD2PHXTlmvofVBXbpBCleOgooYSn7l59KQrOj8=;
 b=BW2BS+NPkIfCuFFy62EEi8IebRXdiFDgqJmP11FujwdDByzE9xQy+06oKbhLM76ma6XuDSFRZAUrmzrmAj4whQRLesYunbDwBqHVwtiNSHs9+d64oA1kHCCUhx5Y7UJ7zKHWl9CWbaQcNjIeKaA1WshxxTlbIjTzuT9HWp7SQDQ=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0150.namprd12.prod.outlook.com (10.174.53.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Mon, 3 Jun 2019 16:34:44 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:34:44 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: RE: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Topic: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Index: AQHVGdYMPk2bX2WmokSxcQWQW1zwFqaKIHLA
Date: Mon, 3 Jun 2019 16:34:43 +0000
Message-ID: <CY4PR1201MB012022B3EBC7F7C2788E7B06A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190603063119.36544-1-abrodkin@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [91.237.150.126]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48404d40-b3e8-4e86-40f0-08d6e8416267
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0150; 
x-ms-traffictypediagnostic: CY4PR1201MB0150:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4PR1201MB015015604C0431EBF0177426A1140@CY4PR1201MB0150.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(136003)(366004)(346002)(396003)(376002)(13464003)(199004)(189003)(7736002)(66556008)(966005)(66946007)(76116006)(73956011)(64756008)(66446008)(66476007)(5660300002)(478600001)(55016002)(9686003)(86362001)(54906003)(8676002)(8936002)(6306002)(229853002)(102836004)(14454004)(81156014)(25786009)(81166006)(6436002)(11346002)(6116002)(68736007)(486006)(476003)(6636002)(4326008)(3846002)(7696005)(305945005)(6506007)(2906002)(53546011)(316002)(256004)(71190400001)(6862004)(99286004)(71200400001)(52536014)(66066001)(74316002)(186003)(53936002)(26005)(76176011)(33656002)(446003)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0150;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cO+kN8np/ILV1jVz+QY+2Z21Vaf0W8LLCqXXhzdVKyM69QhQsGhIV8tQYjiwoYGwm1gjZa0fvawp0pomUnY0X+LfMos5B/qgNFxAcz8VP3cEDDf+eh/NuVevZsBhtuaoo4tZf1Rc+w7guXVYzOoGJ2ora+YixraTsa0P9ogqo5QAmRetlvoL2IQiu0hwIo1RwpZw5f7oS/qLMPYOv0jiHsipIjIPxhOVzNKg0zDzMcRA1qzubuWmFrpknfL5ziVWMleog99mAoxJ+zhAKk5wpP3MpNxo3/nBBWKZsit4bIE47A0gB+2TXUWQZ49etKCaRm0aIAktBZayooG1gsn/BOv5PAvqQ0dtll4WTuWdJD2A0puXERnTSBJdSxMCelCoFze/4Z9dorCkjJtuGJTDqIekjW3JnuZTSGKm+/tkgxk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 48404d40-b3e8-4e86-40f0-08d6e8416267
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:34:43.9605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0150
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_093449_201355_5136C910 
X-CRM114-Status: GOOD (  15.29  )
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

> -----Original Message-----
> From: Vineet Gupta <vgupta@synopsys.com>
> Sent: Monday, June 3, 2019 7:25 PM
> To: Alexey Brodkin <abrodkin@synopsys.com>; linux-snps-arc@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org; Masahiro Yamada <yamada.masahiro@socionext.com>
> Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with cc-cross-prefix
> 
> On 6/2/19 11:31 PM, Alexey Brodkin wrote:
> > For a long time we used to hard-code CROSS_COMPILE prefix
> > for ARC until it started to cause problems, so we decided to
> > solely rely on CROSS_COMPILE externally set by a user:
> > commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").
> >
> > While it works perfectly fine for build-systems where the prefix
> > gets defined anyways for us human beings it's quite an annoying
> > requirement especially given most of time the same one prefix
> > "arc-linux-" is all what we need.
> >
> > It looks like finally we're getting the best of both worlds:
> >  1. W/o cross-toolchain we still may install headers, build .dtb etc
> >  2. W/ cross-toolchain get the kerne built with only ARCH=arc
> >
> > Inspired by [1] & [2].
> >
> > [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17
> >
> > A side note: even though "cc-cross-prefix" does its job it pollutes
> > console with output of "which" for all the prefixes it didn't manage to find
> > a matching cross-compiler for like that:
> > | # ARCH=arc make defconfig
> > | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> > | *** Default configuration is based on 'nsim_hs_defconfig'
> >
> > Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Cc: Vineet Gupta <vgupta@synopsys.com>
> 
> Not a big deal but I'd propose we add "Suggested-by: vgupta" since that is where
> it came from.

Ooops, indeed that should have been added, but instead I just
mentioned your earlier email in the mailing list.

Care to add yourself on patch application?

-Alexey


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
