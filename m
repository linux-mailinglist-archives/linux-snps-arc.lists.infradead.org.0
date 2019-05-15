Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4058F1F941
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 19:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9o/rk0NJY0aOI/bw6pK27JhVMoTiYAw79kiVV54TVg=; b=hkMrgrsy0ne1aF
	HIoTVTPKwyoFpC1gRCoIsSfmvZtbCkjxANKK/6Y44wRfKCHmJD5ivBmO8LateECeJxmrneYf4b6IB
	h6YdVqrGweTEmWjQrxlwPXprySwkXi2B8YhRW+r81jmisfxRseWmedRXJJpcxEhH19rb00cD8GGEs
	329rttitNOxhoTX9C8ALtmpdsL598gfUzTwlYA8kbD3QTHrMRMtUkoLWn/9swS8VvKyXO+F4XEt5n
	J/CKbvhhIK4Ko7ffUKe2SlSyqOXKYJlPyjzlJcfQlprm1s8xAwnTuufu2MCdoeHfGeQXKW0jri+Lv
	cpkuTxujOBMoSxo8F8IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxaF-0006PK-Ti; Wed, 15 May 2019 17:20:51 +0000
Received: from mail-eopbgr740122.outbound.protection.outlook.com
 ([40.107.74.122] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxaC-0006Oy-Pm
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 17:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrbxQCssYb0AoOrQwYexbbQS/u6Oj266/mwqmDClGJw=;
 b=Yw7uQRqtzXbNwF/8phr0STRTPw2XiW8hB3CvzxR7wpobXEGUdgzZERJXcyUaOypkiYAjwALzhsPzEEhmn9j0GcUw/XUuf7ID+Se2AfXf0DF4RWJ0FZfzE8Ws65ICCTcymGR5FSSGjJB1XKijulZIHpvXGrMTZMzuy/MZlP6dAg4=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3770.namprd06.prod.outlook.com (10.167.236.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 17:20:44 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876%2]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 17:20:44 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "Alexey.Brodkin@synopsys.com" <Alexey.Brodkin@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: [plat-hsdk] Get rid of inappropriate PHY settings
Thread-Topic: [PATCH] ARC: [plat-hsdk] Get rid of inappropriate PHY settings
Thread-Index: AQHVCzOlreV9zN2ODkC/aXsLy4DzSqZsbqWA
Date: Wed, 15 May 2019 17:20:43 +0000
Message-ID: <1557940843.4229.120.camel@impinj.com>
References: <20190515153340.40074-1-abrodkin@synopsys.com>
In-Reply-To: <20190515153340.40074-1-abrodkin@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 045d265a-f4b6-4a2b-5662-08d6d959a9ab
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3770; 
x-ms-traffictypediagnostic: MWHPR0601MB3770:
x-microsoft-antispam-prvs: <MWHPR0601MB3770339FCDA0E79609CCDB4ED3090@MWHPR0601MB3770.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(39840400004)(376002)(346002)(189003)(199004)(3846002)(6116002)(6512007)(25786009)(103116003)(4326008)(6486002)(6436002)(256004)(14444005)(5024004)(2501003)(26005)(186003)(8936002)(316002)(81156014)(81166006)(8676002)(66066001)(486006)(476003)(2616005)(11346002)(446003)(91956017)(66446008)(64756008)(66556008)(66476007)(68736007)(73956011)(66946007)(99286004)(76176011)(478600001)(76116006)(6246003)(305945005)(14454004)(7736002)(229853002)(71190400001)(71200400001)(36756003)(86362001)(5660300002)(6506007)(2906002)(54906003)(110136005)(102836004)(53936002)(26583001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3770;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +AF1fAGOuXXAwK+aWhJwFyjGPne87ahnuSyBfux+lLZh8NdH7xeiHEr+NKBvK4j+8l3p8G/kEh+/0I9PHa17MXHmMfcSqc5qlRlaKlWeLlJR1FQefl+KGl6cqXOOkqoIsjA7z5fE8QJVeNMD9aauEVJjfj4eGQ6ad6IcKyrZ5bWabplapRYdy2Q2Lw3PjyGB9wFTJ21oCr2YeMjadhFkKFIPHBUB05TpmN2T0x9jp2GLKRzk1jPfks1kcNBBQzIdDDmiFA/fFE4ND3rQiN21NtxMlsB161r4XD08USpWkbSVapSfelxgFLpIcOGMlU0uKs6BrMMJ7HzX9LPaju43Ak/eIGb51RCHKSYVJ3hR4aVwOBXmm7Co8KG6JXzK6wIvrWvkeouOQJcJBnh6PjhVM36Y3U+dmjy1GY8pmUNIers=
Content-ID: <CCEC152D4F9FFB45B24A2BCD5A3C5E73@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 045d265a-f4b6-4a2b-5662-08d6d959a9ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 17:20:43.9767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_102048_904690_5AB59996 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.122 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 2019-05-15 at 18:33 +0300, Alexey Brodkin wrote:
> Initial bring-up of the platform was done on FPGA prototype
> where TI's DP83867 PHY was used. And so some specific PHY
> options were added.
> 
> Just to confirm this is what we get on FPGA prototype in the bootlog:
> > TI DP83867 stmmac-0:00: attached PHY driver [TI DP83867] ...
> 
> On real board though we have Micrel KZS9031 PHY and we even have
> CONFIG_MICREL_PHY=y set in hsdk_defconfig. That's what we see in the bootlog:
> > Micrel KSZ9031 Gigabit PHY stmmac-0:00: ...
> 
> So essentially all TI-related bits have to go away.
> 
> Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Trent Piepho <tpiepho@impinj.com>
> Cc: Rob Herring <robh+dt@kernel.org>

Acked-by: <tpiepho@impinj.com>

> ---
>  arch/arc/boot/dts/hsdk.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> @@ -201,9 +200,6 @@

I think it would be pedantically correct to change the phy-mode to
"rgmii-id", though I see nothing in the micrel phy driver that uses
this, and so doubt it will do anything at all at this point.

The Micrel phy appears to default to putting a clock skew on the RGMII
lines and the driver will use the default if no properties are present.
So I believe what your board is effectively using now is "rgmii-id"
with default skews, unless the phy and your board design has some
resistor pin strapping that has changed this.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
