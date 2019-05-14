Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F1A1CF95
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 May 2019 21:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsCVnAfiFIrvjqXj2q2tIMM7izWjQ8T5eXPiRQmem1E=; b=HaKuRiz/WUpyiw
	bazhaT+AVCTqTYUVfYbuNqlgYtn4ajWcuWuaDkMRv4corUztgPCoXROpeJM5VmzktZGZu2bFGsSGJ
	eYrJfPYQz/NK7SM6Cqs56SamvmufDrvmTwMRQRAUq6Ju73xXi5Dde3nKi+AIEZhj3VKAThHBRrgFU
	DcG4yuPawuDNe0VI8n/nZefo5dkpLtICgiS92vol79agz+W99orc/GCP7Fn3644G2IgAFu/9BROL3
	W9sZbEzFGuViQyOLq4f1xwIwrLRjRfNA58/WUUl7w8P3uH+Nuls0TGRDeGYsE5yPVrJ5Lo/RlZhnP
	nrGhRx/oFLI4RGQUqhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcjX-0000fO-3F; Tue, 14 May 2019 19:05:03 +0000
Received: from mail-eopbgr800123.outbound.protection.outlook.com
 ([40.107.80.123] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcjT-0000Y9-Hz
 for linux-snps-arc@lists.infradead.org; Tue, 14 May 2019 19:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vQ+fXxaeBLmFLy13Y1lgr7JgnmCPsEaEn5Oz2BtTomQ=;
 b=Vp2MpBidC6zd/qU8igcdE4XDcFy5OkVEAdjLOITalkVZn9PcIOXHBYZkBfVhYN/SrrOm3SBdCEBB+J41Lh50/RNnWDxVKivi8JEerawqUMs2JtgrgVDTbzxzns4z1FJqR3KgZfB4aUORCmbJ/SJ9p9wKYSBWwDGi8PTaTkmmWhg=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3770.namprd06.prod.outlook.com (10.167.236.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 19:04:56 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876%2]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 19:04:56 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "Alexey.Brodkin@synopsys.com" <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsqZq6FsggAASgoA=
Date: Tue, 14 May 2019 19:04:55 +0000
Message-ID: <1557860695.4229.88.camel@impinj.com>
References: <20190514173941.20046-1-tpiepho@impinj.com>
 <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1261b980-8e33-4632-59b1-08d6d89f0dbb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3770; 
x-ms-traffictypediagnostic: MWHPR0601MB3770:
x-microsoft-antispam-prvs: <MWHPR0601MB3770DD684B552EA5E090C8ACD3080@MWHPR0601MB3770.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(86362001)(103116003)(2351001)(7736002)(8936002)(476003)(8676002)(81166006)(81156014)(316002)(2616005)(486006)(66946007)(14454004)(305945005)(11346002)(446003)(36756003)(66476007)(6246003)(64756008)(186003)(66446008)(25786009)(66556008)(5660300002)(76116006)(2501003)(14444005)(256004)(478600001)(66066001)(6486002)(73956011)(2906002)(71200400001)(71190400001)(6916009)(102836004)(4326008)(91956017)(229853002)(76176011)(6506007)(6512007)(6436002)(5640700003)(68736007)(53936002)(54906003)(26005)(3846002)(6116002)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3770;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wKD5QA0oqEbBkUqL5mB0PCLjX3s9QslK3heSpslSKSkBZOo4JET1Is5m5JmKdruLWvp0INUkuDxCM9K5T2SgPGqdq47T2P9/BsbdP8G4+MloL2JomHAthuSrpX061NHfeFrc+SRGeFjjXOIEA+cSTm1OXq2jzUjThwFJTgaR3GLHdBKGSsIL+y7z+DK4Ji8dZ5jGkP/DMo2AGLwqAqkRxMnBZFI2DTaXwLKaQT/REKPCNY8ZQPdHsTv0QlB9YlJu2Y0E2UCsMhmwuoIaO7A6k3CML+6GMad17es7k0oBI0e4Iq0e2LvLSI3adhBZa8a9GnLhLNfJGkOAtnme9ny1PHQqGcMEV/2ZBki+OjEE5CkYtdBn3d6HMChjuTV4LvWUQTna/S98EpJWMAgl+NF1dtiXGcqTHY3690I138tkTfA=
Content-ID: <8613D2DE0D5DF141B06060040A86CF34@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1261b980-8e33-4632-59b1-08d6d89f0dbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 19:04:55.9464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_120459_645818_B4AE12B5 
X-CRM114-Status: GOOD (  27.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2019-05-14 at 18:22 +0000, Alexey Brodkin wrote:
> > Subject: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> > 
> > If internal delays are desired on the RGMII link, "rgmii-id" should be
> > used as the phy-mode rather than "rgmii" .
> > 
> > This dts has properties to set the delay values, but they are ignored.
> > I suspect this is a mistake.
> > 
> > While the driver should disable delay based on the current DT, it does
> > not, and instead leaves the PHY in the pin strapping default.  Which is
> > usually to have delays very close to the unused values the hsdk DT.
> > Which is why the phy would work even if the delays in the DT are
> > ignored.
> 
> Thanks for this patch!
> 
> Indeed there might very well be something incomplete in that .dts
> as I didn't know all those details.
> 
> I did check and Micrel KSZ9031 Gigabit PHY on HSDK supports on-chip delay.
> That's what its datasheet says:

Hmm, I was under the impression this board used a TI phy!  The phy DT
node contains these properties:

ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;

These are for a dp83867 PHY of course, not a Micrel KSZ9031.  The
micrel driver would just ignore these properties.

> ------------------->8------------------
> RGMII Timing Supports On-Chip Delay According to RGMII Version 2.0,
> with Programming Options for External Delay and Making Adjustments
> and Corrections to TX and RX Timing Paths.
> ------------------->8------------------
> 
> And with proposed change I don't see any regressions so far, which is good.

I suspect the micrel driver will simply ignore the rgmii vs rgmii-id. 
But I have not worked on that driver for a long time and don't know for
sure.

> Still a couple of questions:
>  1. How did you spot this problem?

Found bug in dp83867 phy, grepped all dts files for properties or
symbolic constants that relate to that phy to look for board that might
be affected.

Since dts files almost always use run-time detection of phy type based
on the phy's id registers, I can't search for the "compatible" in the
dts to find boards using the phy.  So perhaps this board is a false
positive, and the real bug is the dts file was written for the dp83867
phy but the board really uses a different phy.

>  2. With some Ethernet cards (especially 1Gb ones) on the other end we do see
>     from time to time auto-negotiation takes that much time that
>     udhcpc fails to get a lease because 3 discovery packets sent in
>     a row get lost since link is not established (i.e. > 5 seconds).
>     Do you think if it has something to do with that particular issue?
>     Unfortunately I cannot reproduce this behavior right now so cannot
>     verify it myself.

Unlikely.  I don't believe the data portion of the RGMII link to the
MAC, which is what these clock skew settings affect, has any effect on
auto-negotiation.  And indeed I can program entirely non-functional
values for delay and see A/N proceed as normal.

If the delay is off slightly, you will see TX or RX (depending on which
delay) packet error rate go up.  On my board, I see about a 50 ps range
over which the error rates goes from virtually 0 to 100%.  There is
about a 200 ps range over which the error rate is 0.  I imagine that
over a temperature range, that 200 ps range is smaller.

I did recently diagnose a problem where A/N was several seconds slower
than expected.  It had to do with the link partner being an Intel PHY
which had "ultra low power mode" enabled.  This is some feature to
reduce power when there is no link.  If the link to the intel phy was
not up, i.e. a direct connect from my device (powered off) to a PC, not
through a switch, then link up would first A/N to 10 mbps mode, not
work, then drop, then come up as 1000 mbps and work.  This took about
7-8 seconds instead of about 3 seconds.  With a switch interposed
between the devices, the Intel PHY does not see a down link (the switch
is on), so this doesn't happen.  Probably not your problem, as I could
only see this in u-boot by the time Linux has booted the phy will have
activated the link and gotten past this screwy 10 mbps thing.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
