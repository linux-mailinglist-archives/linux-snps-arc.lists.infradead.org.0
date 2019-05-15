Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41A71F869
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 18:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeCJ5uaWy50esSp6GTo3bj//S/cuLDREUFi7ddDZU40=; b=aIEIwSYA4uHt/i
	cau8VTE45pOITqPdLkOrbh+p/TOB/yzoaHLlI7f48tVx0OuryPu1/fJ3FfasggbVgKE2inZRlpZdt
	VmGHEtATe2Mbz9OoFuNAeD3cowgj5KPEQ7VpV/hShhj9M/olfMqx2X5+Jn9zCOhhlTERD/0HKZ/I1
	Ms2v9Hkk+qDWExApEA2nTv5TI5kP1hCXAt6vAKRo0uu+GMT5Rhtakm50mWn3OOH4gPLkxDe7+6vPv
	pIlUBmcQzFRX5+cZMnAWLnye9vo6YLem4gAkDGWEvRyYLjdMpp/aF/QRDqLnB/MeLH0M3/MiU7tNV
	UtMxU6ZJhmDfj3fFQHtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwf2-0008CP-CR; Wed, 15 May 2019 16:21:44 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwey-0008Bz-Qe
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 16:21:42 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 74E92C0012;
 Wed, 15 May 2019 16:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557937305; bh=y6CyEdtrzq5xfxZEcMGwQS+Tf0Qg5Agn4sCK2ia2G/c=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=jBBQU8419lTIZxINsF4q9TFkzQd8kYW+vLuub+SipPa089epafzQfQyC9wWkspGGH
 R2i//v8o+8SFhfufMwi5mn3uUsBwtwYKQQ3E1m4b1GKouF1ik2XMo+CIACWe/MwpUJ
 VA+IJDTl4i6Yfg/Z20mhz7/XqKRySo2H5LGX5tcD1OgA+UI0BZIZBNET2fN/1flLxV
 BWT+dqXBJDoD/xy6zVM55a+f5DVyNak1CKST6ixrdxXlfMq5bHyIcdwDKkd/Cr3fsr
 etSh0wQDdVRQCTHj3UVliZZ5pElF3GSiacsRTiwgFHK8wrQa0TnwlY4Uxt//K2YOC8
 3+ZBO5CeOB5Dg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D41FDA0095;
 Wed, 15 May 2019 16:21:35 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 09:21:31 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 15 May 2019 09:21:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6CyEdtrzq5xfxZEcMGwQS+Tf0Qg5Agn4sCK2ia2G/c=;
 b=NzVFGistnpduhrAoS+Ol+NnVdC9higojDSi4PIkcufutRTheEQMbcCbWtoe2veo8UIhLCKkDBc2AT8RrTO2a/niUM+lqt/uX5ITe4pxPBsnyF1/htSKwJGjKKftqXw8xIqeytWjJ7Fhp5q7j/i+yX6bCnvfizYWhBC3WMlIAh0U=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0008.namprd12.prod.outlook.com (10.172.118.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Wed, 15 May 2019 16:21:29 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1%7]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 16:21:29 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Trent Piepho <tpiepho@impinj.com>
Subject: RE: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsqZq6FsggAASgoCAAV7scA==
Date: Wed, 15 May 2019 16:21:28 +0000
Message-ID: <CY4PR1201MB0120392117C0EC116D20788DA1090@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190514173941.20046-1-tpiepho@impinj.com>
 <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <1557860695.4229.88.camel@impinj.com>
In-Reply-To: <1557860695.4229.88.camel@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2799b83-e9c3-45fb-f5b2-08d6d95162b2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0008; 
x-ms-traffictypediagnostic: CY4PR1201MB0008:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4PR1201MB00089EC61E5CB3740E641665A1090@CY4PR1201MB0008.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(39850400004)(136003)(366004)(376002)(13464003)(199004)(189003)(66066001)(7736002)(68736007)(66476007)(7696005)(76116006)(5660300002)(102836004)(53546011)(256004)(6506007)(76176011)(99286004)(86362001)(5024004)(71200400001)(71190400001)(14444005)(73956011)(64756008)(66556008)(66946007)(52536014)(3846002)(6116002)(14454004)(66446008)(2906002)(476003)(316002)(305945005)(54906003)(6306002)(186003)(446003)(966005)(55016002)(486006)(33656002)(25786009)(9686003)(4326008)(74316002)(6246003)(81166006)(8936002)(53936002)(8676002)(81156014)(478600001)(229853002)(26005)(11346002)(6916009)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0008;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nM2XVQ5YVrfsSu//bITE2NAXEKOKpkfzP1S3nEaSX/7HqnzvInfGjRvH3VX9QufIA/QV4pSGmw/krn+wW2+NumkJliAZQvsJ68qxfzZTArVLGwAujw5fiMz6nYffa+S9R3LsTTQAOz3G4hgJqaPAUup9w80v7cOBq7pzQw0wMOdMYhQwqg0y8TxBfwf3OB2WekeGqc9NgeYfrA+GSsrqlgBwLb1ZaiJymXO6lItBw2RwuEb78MoOZYmwOBbIenvEBEJbwF0wrMyuss/VQddljhwz/iUTAMESGtRPuGfI0slDLtdekTcebZD0m4qz5/O2eKeP6sZtXP1TowJMH6ur5tICS+cSrGjdkjkqAbewNoQaZ0fQ99gvsTNmjlk5bj2VYG5UQec3b2XrAfOuEYdOIcecNMB8vQNWz5npAd43c04=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c2799b83-e9c3-45fb-f5b2-08d6d95162b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 16:21:28.8976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0008
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_092140_915518_7DA5587B 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi Trent,

> -----Original Message-----
> From: Trent Piepho <tpiepho@impinj.com>
> Sent: Tuesday, May 14, 2019 10:05 PM
> To: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Vineet.Gupta1@synopsys.com; Eugeniy.Paltsev@synopsys.com; linux-snps-arc@lists.infradead.org
> Subject: Re: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> 
> On Tue, 2019-05-14 at 18:22 +0000, Alexey Brodkin wrote:
> > > Subject: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> > >
> > > If internal delays are desired on the RGMII link, "rgmii-id" should be
> > > used as the phy-mode rather than "rgmii" .
> > >
> > > This dts has properties to set the delay values, but they are ignored.
> > > I suspect this is a mistake.
> > >
> > > While the driver should disable delay based on the current DT, it does
> > > not, and instead leaves the PHY in the pin strapping default.  Which is
> > > usually to have delays very close to the unused values the hsdk DT.
> > > Which is why the phy would work even if the delays in the DT are
> > > ignored.
> >
> > Thanks for this patch!
> >
> > Indeed there might very well be something incomplete in that .dts
> > as I didn't know all those details.
> >
> > I did check and Micrel KSZ9031 Gigabit PHY on HSDK supports on-chip delay.
> > That's what its datasheet says:
> 
> Hmm, I was under the impression this board used a TI phy!  The phy DT
> node contains these properties:
> 
> ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;

Got those removed, see explanation here:
http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005754.html

But we have another boards where DP83865 PHY is used,
these are AXS101 & AXS103 which share the same base-board .dtsi,
see https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arc/boot/dts/axs10x_mb.dtsi#n75

Even though it's not immediately clear there's a TI PHY as there's
no PHY node at all but see what we have in the bootlog:
| NatSemi DP83865 stmmac-0:01: attached PHY driver [NatSemi DP83865] ...

I guess I need to add PHY node and use suggested by you "rgmii-id", right?

> I did recently diagnose a problem where A/N was several seconds slower
> than expected.  It had to do with the link partner being an Intel PHY
> which had "ultra low power mode" enabled.  This is some feature to
> reduce power when there is no link.  If the link to the intel phy was
> not up, i.e. a direct connect from my device (powered off) to a PC, not
> through a switch, then link up would first A/N to 10 mbps mode, not
> work, then drop, then come up as 1000 mbps and work.  This took about
> 7-8 seconds instead of about 3 seconds.  With a switch interposed
> between the devices, the Intel PHY does not see a down link (the switch
> is on), so this doesn't happen.  Probably not your problem, as I could
> only see this in u-boot by the time Linux has booted the phy will have
> activated the link and gotten past this screwy 10 mbps thing.

Hm, that's interesting... I think at least on some of our machines we do
have Intel controllers and most probably Intel PHYs as well so that might
very well be the case. Do you know if that "ultra low power mode" could be
somehow easily disabled?

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
