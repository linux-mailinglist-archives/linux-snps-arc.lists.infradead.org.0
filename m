Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3961F9C6
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 20:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCWnrzs+6VQ96gK0IYQxZdqIKUYvFCXALHR0P8jprrg=; b=rqrBjr/uawYwpG
	URMhepL35c+e7EOj6a6NOss0BQfSIg27c1ioZSYavoONnVuHoEyJtoi0UNiMvmckVHNBX4fa/E3nT
	ScgajXh/f4Qp2EIIu9gsXuyPJElpDTvjtbjjpIyLyhrhCB9StGGjRReFUpstF6/9ZY4iLpz1dOlRp
	K+hLIBTNxEf0aoLLmhg+eFr1XLU20yMaD8RCg1Fo8vPNKTbxP23b0b7tC4o+ubIJkMj0rOEOJK6hw
	GqcNKruzi5jSizgbXKbRF16+L7Vw4uuDwSmrQBGusPG98x3DWeusTjMWy7p9lXmPRpTqHlqIKrG2W
	9tB1n4N7BvsE3gcj/9qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyRr-0006zn-Ij; Wed, 15 May 2019 18:16:15 +0000
Received: from mail-cys01nam02on072b.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::72b]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyRo-0006yz-15
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 18:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRQ4OEl3uvJgNS/99XhgTm3d2+Hu/nziCEpl4rhNBWg=;
 b=AwCzIUXH8YYHZitTXitirdb3w8CQ/6Eqj2MCi8o3prAHPCT7keGrfxWfq7JUkc31u36spaHV9P1Rs5+vLaN8iaaQCyh1l80j1dgMLX5U4DxoDuW4OFzkPuqBeyHZTwVOC+WV4LJrc41+MdU4NxuYNqr7ogbRbjxllDIN/+es8Yw=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3610.namprd06.prod.outlook.com (10.167.236.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 18:16:06 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876%2]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 18:16:06 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "Alexey.Brodkin@synopsys.com" <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsqZq6FsggAASgoCAAV7scIAAJcSA
Date: Wed, 15 May 2019 18:16:06 +0000
Message-ID: <1557944165.4229.130.camel@impinj.com>
References: <20190514173941.20046-1-tpiepho@impinj.com>
 <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <1557860695.4229.88.camel@impinj.com>
 <CY4PR1201MB0120392117C0EC116D20788DA1090@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB0120392117C0EC116D20788DA1090@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bdfcea4f-5069-40ea-6405-08d6d9616609
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3610; 
x-ms-traffictypediagnostic: MWHPR0601MB3610:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR0601MB3610E60F9EAAFB39939EF938D3090@MWHPR0601MB3610.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39850400004)(136003)(346002)(396003)(376002)(13464003)(189003)(199004)(966005)(53936002)(6436002)(2906002)(103116003)(54906003)(14454004)(2501003)(316002)(5640700003)(99286004)(6306002)(229853002)(6486002)(5660300002)(478600001)(86362001)(2351001)(6512007)(6246003)(8936002)(446003)(305945005)(81156014)(8676002)(11346002)(81166006)(66066001)(476003)(2616005)(36756003)(66446008)(64756008)(66556008)(76116006)(91956017)(7736002)(66476007)(68736007)(66946007)(73956011)(6916009)(186003)(486006)(76176011)(26005)(71190400001)(71200400001)(6116002)(3846002)(102836004)(4326008)(5024004)(256004)(14444005)(6506007)(53546011)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3610;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QfI0aHWHKl9Pk4GnBGDN36kwBaKtjemhyhdI2zg8Oo8eTaA/rc+p4jiHAjRcUlAxsg0kaBUg1uye3qsvBrIHq8h5GZwVR3/AWkUhm/afD+vT18IaXvbkgwIMqYf5m3f+d5vGwl8KYB51trwfPl3kFW+9VrA8Oqs4y2PZBnUFhp0krN8/TOPuNybp6qzDhuz7tsImDK/rTUWxzzQjHTnjhpWz2all8g9oqbuY4wXR/xnTNvrinjoHt5lpySeeL0b0fII/cfA4X/71HCEY/TqT3Q8ONQoSW33bxVhKX6lDb3ux6QHrHE5HZ0xjT+ezWyaYZaInJVBcjxOGeSse8nDGDvDgOdQOUtYB1yYzhNw5rkCvJUTg/Z7iyIeOkHh7i3Tmg70YdptV6U73+/2hxJEjQe/FWYklGgJDh3q6rYMX/7o=
Content-ID: <E2F68D4C0A8F5D438E4FEF5CF686F2BA@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdfcea4f-5069-40ea-6405-08d6d9616609
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 18:16:06.5029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3610
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_111612_077667_BD19036A 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:72b listed in]
 [list.dnswl.org]
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
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 2019-05-15 at 16:21 +0000, Alexey Brodkin wrote:
> > -----Original Message-----
> > From: Trent Piepho <tpiepho@impinj.com>
> > Sent: Tuesday, May 14, 2019 10:05 PM
> > To: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: Vineet.Gupta1@synopsys.com; Eugeniy.Paltsev@synopsys.com; linux-snps-arc@lists.infradead.org
> > Subject: Re: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> > 
> > On Tue, 2019-05-14 at 18:22 +0000, Alexey Brodkin wrote:
> > > > Subject: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> > > > 
> > > > If internal delays are desired on the RGMII link, "rgmii-id" should be
> > > > used as the phy-mode rather than "rgmii" .
> > > > 
> > > > This dts has properties to set the delay values, but they are ignored.
> > > > I suspect this is a mistake.
> > > > 
> But we have another boards where DP83865 PHY is used,
> these are AXS101 & AXS103 which share the same base-board .dtsi,
> see https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arc/boot/dts/axs10x_mb.dtsi#n75
> 
> Even though it's not immediately clear there's a TI PHY as there's
> no PHY node at all but see what we have in the bootlog:
> > NatSemi DP83865 stmmac-0:01: attached PHY driver [NatSemi DP83865] ...
> 
> I guess I need to add PHY node and use suggested by you "rgmii-id", right?

The dp83865 is a different driver than the dp83867.  My check of it
didn't find any evidence of it doing anything w.r.t. rgmii clock skew. 
A quick check of dp83865 datasheet shows it's a very different device
than the dp83867.

> > work, then drop, then come up as 1000 mbps and work.  This took about
> > 7-8 seconds instead of about 3 seconds.  With a switch interposed
> > between the devices, the Intel PHY does not see a down link (the switch
> > is on), so this doesn't happen.  Probably not your problem, as I could
> > only see this in u-boot by the time Linux has booted the phy will have
> > activated the link and gotten past this screwy 10 mbps thing.
> 
> Hm, that's interesting... I think at least on some of our machines we do
> have Intel controllers and most probably Intel PHYs as well so that might
> very well be the case. Do you know if that "ultra low power mode" could be
> somehow easily disabled?

If the machine with the intel phy is running windows, there is a driver
option (device manager, properties, advanced..) for it.  Driver version
12.15.22.6 from 4/5/2016 does not have a control, while version
12.17.10.6 from 4/3/2018 does have the control.  Those are my only two
data points.  I don't know how to control this feature from Linux. 
Never used an Intel phy on an embedded device.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
