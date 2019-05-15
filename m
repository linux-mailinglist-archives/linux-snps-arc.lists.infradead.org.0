Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401F41F9D9
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 20:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpJSrNc8uLg8wo6hfs7R8Z5X9mpncigAb0O6Xbw8m+o=; b=AlkCsVfJ62e9B2
	M9tgb3UgRVlrmg021akc5PX8+Crz78dsJx7F1cyY9/uOlaRn7TOhYSKRq3EaNuRxFe7COr5YiUMrn
	RzOfMuz0c6X/pZqfQqsqRlT4Y4eJVrZFj/WxtmCM7t6T7biKhzj59ZQFK8kMbjoGpQdiKEaRhaGBX
	eYOwvBXyN5kS/S8J1dv6dyc5BVrKtFD7QkCJvenj76bvbLxD3hpB1G+thmZyj10ON/WMJsnxHJp1T
	7C6ldE9poSmKegHagKczKiLxphVZ8iTYBqzKLW61VcXHzC2CKaD2CYNDOfFXx5s3KzOVUE8cwAt0n
	C4Gv098S/Onaaca6GK2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyX4-0008N7-Vs; Wed, 15 May 2019 18:21:38 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyX2-0008Mj-5D
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 18:21:37 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1D196C0073;
 Wed, 15 May 2019 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557944485; bh=KprSgh9YQQB+EAIK3fvm2XuJvnVrgOC0lzilNtHLML8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=dLVuJwUaE+/ZBe4vZwDqyeoJmTVWTwESDxZ+lxxpHF8HN3vp/rfB61k7gkh8JzJzE
 5GLnZVTgS4GfaU3sl8boB+QO0H//y9deiTBEEymvw9YfoB4reAaANbPeMWvW+wBPbY
 YfMgX1ISxCx3xKWtezm5TjzQX26ZYG7mlIrtfhWVvpey5Ft33GaRYt1fmk874T/1SD
 cNlvKoND/o/5TmvRwxxT+hd5Bu//jPVxpr4ah/N55rz+6y5m85jC7ZH5TU31i7TakD
 QPEy7u4zD7N2YY9OP9G3k+3cCn3/9lh9hrFgvXfyIpTM9Pe74L+aod/ZGorGRqGjxY
 UddJRDMR5RO+w==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D6B11A0095;
 Wed, 15 May 2019 18:21:34 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 11:21:34 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 15 May 2019 11:21:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KprSgh9YQQB+EAIK3fvm2XuJvnVrgOC0lzilNtHLML8=;
 b=OgT4knbg+yMQRwIrGfNwZmoloTxSVKWEjxZVT/FMOye4xV205y7LRtg7AaKczDHaa5wiRa7u4DaTeAiohYHVnrbuaYYtF54DZtgtC4XnFe1CbwdTjwXgJkXnqS0du7360Lj0jJ/IbgVOIstP3+sMsZAwwYhMZbYdOau7i1HVhxM=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0055.namprd12.prod.outlook.com (10.172.77.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 15 May 2019 18:21:32 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1%7]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 18:21:32 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Trent Piepho <tpiepho@impinj.com>
Subject: RE: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsqZq6FsggAASgoCAAV7scIAAJcSAgAAAvlA=
Date: Wed, 15 May 2019 18:21:32 +0000
Message-ID: <CY4PR1201MB012035404ADFC7415B2DCA2BA1090@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190514173941.20046-1-tpiepho@impinj.com>
 <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <1557860695.4229.88.camel@impinj.com>
 <CY4PR1201MB0120392117C0EC116D20788DA1090@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <1557944165.4229.130.camel@impinj.com>
In-Reply-To: <1557944165.4229.130.camel@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 959c746b-3b56-4c50-0024-08d6d9622842
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0055; 
x-ms-traffictypediagnostic: CY4PR1201MB0055:
x-microsoft-antispam-prvs: <CY4PR1201MB0055177F7F1C244B3A66D72AA1090@CY4PR1201MB0055.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(396003)(136003)(376002)(199004)(189003)(102836004)(7736002)(305945005)(99286004)(26005)(316002)(8676002)(8936002)(186003)(33656002)(55016002)(64756008)(6436002)(9686003)(3846002)(486006)(74316002)(6116002)(81156014)(66066001)(446003)(11346002)(476003)(66556008)(66476007)(66946007)(76116006)(73956011)(53936002)(6916009)(66446008)(52536014)(229853002)(81166006)(2906002)(4326008)(6246003)(68736007)(25786009)(5660300002)(76176011)(7696005)(478600001)(6506007)(54906003)(71190400001)(71200400001)(14454004)(86362001)(5024004)(256004)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0055;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6a+IJIuwDsMbjrm0y6gs+So+eXuH5976C+AkdmuzZ8GDQwFio8eFjUuNG5MyXA8FS/8W3/5bdZgfBbtCnQnE4xq+wlLbvetdMl9RLeOKZqCI8fRglpNPxvJGWD4PoaPwBiHHMuS9BSHaqWkghmG/ZprIxVAzxygk4+YOw5ZvHfurGGn1kpNkJG+6VTmFt5aHreRuwprvWmgxIeRGo04wArt+U5UQ5jvnjshq3DAvLnTWD+d4awo/Aa/DpND63/vUA4Xs8fjA+aI6GTZL4MOPc9bHLW/DtsEOMByeA6SszT8EgBpwXCFsq/YUaoHOZaHrx4VlC5zCMlQUxws522vMZBr1GrQGPsLnlmwTRjOdU9EFRGEGSADPUak0NBwNSt+8Dpo3nR4pusAQ8vMzFApIapX9NQIipNndt+DJpQ5V/PE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 959c746b-3b56-4c50-0024-08d6d9622842
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 18:21:32.3489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0055
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112136_258782_171A8348 
X-CRM114-Status: GOOD (  19.07  )
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

[snip]

> > Even though it's not immediately clear there's a TI PHY as there's
> > no PHY node at all but see what we have in the bootlog:
> > > NatSemi DP83865 stmmac-0:01: attached PHY driver [NatSemi DP83865] ...
> >
> > I guess I need to add PHY node and use suggested by you "rgmii-id", right?
> 
> The dp83865 is a different driver than the dp83867.  My check of it
> didn't find any evidence of it doing anything w.r.t. rgmii clock skew.
> A quick check of dp83865 datasheet shows it's a very different device
> than the dp83867.

Ok so I'll just add a generic PHY node to AXS10x motherboard.

> > > work, then drop, then come up as 1000 mbps and work.  This took about
> > > 7-8 seconds instead of about 3 seconds.  With a switch interposed
> > > between the devices, the Intel PHY does not see a down link (the switch
> > > is on), so this doesn't happen.  Probably not your problem, as I could
> > > only see this in u-boot by the time Linux has booted the phy will have
> > > activated the link and gotten past this screwy 10 mbps thing.
> >
> > Hm, that's interesting... I think at least on some of our machines we do
> > have Intel controllers and most probably Intel PHYs as well so that might
> > very well be the case. Do you know if that "ultra low power mode" could be
> > somehow easily disabled?
> 
> If the machine with the intel phy is running windows, there is a driver
> option (device manager, properties, advanced..) for it.  Driver version
> 12.15.22.6 from 4/5/2016 does not have a control, while version
> 12.17.10.6 from 4/3/2018 does have the control.  Those are my only two
> data points.  I don't know how to control this feature from Linux.
> Never used an Intel phy on an embedded device.

Thanks for this info. Our servers are running Linux so we'll see.
Though I just understood that we connect our boards via a switch typically
so it shouldn't be a problem of "ultra low-power" anything.

Anyways thanks for your input.

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
