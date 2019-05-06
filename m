Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EE91538A
	for <lists+linux-snps-arc@lfdr.de>; Mon,  6 May 2019 20:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg5velSd11BBglgJK10eGmx3JuUTr+/Rs7VT/SX7rjY=; b=A0RacjT7hcDAzu
	Z32TAQ1rpe46G97WA5lxgt5O2RInnmipn7a6k+suiF2vRfv1VdVooWFhLcBbZIhdljdLtZXIwnvOA
	noPU8iMHglgOUZCxUtOtohmZBQAT8Edzzft2NTPJp3EswQeQ1wG2l3trTUoSLNgnaHD28qpq4VK5w
	cPTJ10JWqsxRvpq3rZVeWwB1gGiN7PJlmVSdqR4MPRZipvVGI9/qONHLgpLlsDpT7Zn+TTXKLN3aE
	vUGDjPzoVvpLlhbQIZCNB2KEvc5ikZY0lUqyeylZ40jaWbfjtOdVwNcVQqC6PeXsC2i7qnu5Afk5Y
	rv+mfRd8OkrjlcuQYyMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNiD9-0002Fx-07; Mon, 06 May 2019 18:19:35 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNiD5-0002FA-Oq
 for linux-snps-arc@lists.infradead.org; Mon, 06 May 2019 18:19:33 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 83258C01B4;
 Mon,  6 May 2019 18:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557166761; bh=QtJyrHd1kqFiZBvKEbAd5xX72dDlbRtHAwVPExvEW6A=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=I3Sp4fEPPA3ef3oVOMH4WQCUtNOkvZO6ESx3XdCc3xpf+CWutYaRryD/xXQXbYb2b
 mYjz6FXkZtDjZyu2ESfADn9yw782b7aLa3VIs/qszEScwQfzHmk7ZCAvYsWEvk4kUL
 I1iSCzHbFIi7hIc7m0MrWEyGqCKWc4wk+aboC5EN+k0P77lCaEqq/2u6NQmC4w9PyH
 7vQad/BBOwOB3AD7IYz2LUQLQbPZHxmunu6IADiWdMzeQzhZ3ZdizH1t6iPxNaQ0lF
 lb9pqzsYg++yaW2p2GRuN0gPLz1wNbFHMTAIOHs4teWp46q7YH063zpRsyuGAs/U/m
 IdN4WZJKlDVgQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 51933A0095;
 Mon,  6 May 2019 18:19:23 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 6 May 2019 11:19:23 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 6 May 2019 11:19:23 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtJyrHd1kqFiZBvKEbAd5xX72dDlbRtHAwVPExvEW6A=;
 b=P2SuC4TSIw7HPekAWtT1Lkozqod+7Zh7dYfUZmvFLpm47y/7OV0beYnslcnR6XM/td5E37Jh7l4ErJR4+2Kpwk2Tu1iA+rIFVof0i7LBpZgSQSQK4HLNhHSdeOS3IWs11oyOxChehLlwRZMaJr65c7G3Ly4c7rmIBRYsYy2zGSk=
Received: from MWHPR12MB1632.namprd12.prod.outlook.com (10.172.56.21) by
 MWHPR12MB1775.namprd12.prod.outlook.com (10.175.55.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 18:19:20 +0000
Received: from MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6]) by MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6%2]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 18:19:20 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Topic: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Index: AQHVAPmYu+SP3l/OT0e8rqST5fDlGKZX+TEAgAZ1TIA=
Date: Mon, 6 May 2019 18:19:20 +0000
Message-ID: <1557166759.17021.9.camel@synopsys.com>
References: <7f36bbadc0df4c93c396690dab59f34775de3874.1556788240.git.joabreu@synopsys.com>
 <56933076-879c-78a0-4bae-2613203b93b1@synopsys.com>
In-Reply-To: <56933076-879c-78a0-4bae-2613203b93b1@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db93fc10-3909-4230-81fd-08d6d24f5be6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR12MB1775; 
x-ms-traffictypediagnostic: MWHPR12MB1775:
x-microsoft-antispam-prvs: <MWHPR12MB17754AF42F8FA4F933A446C7DE300@MWHPR12MB1775.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(39850400004)(376002)(346002)(396003)(189003)(199004)(54906003)(8676002)(8936002)(110136005)(316002)(102836004)(66066001)(256004)(76176011)(186003)(81156014)(86362001)(81166006)(53546011)(2501003)(478600001)(229853002)(5660300002)(53936002)(6512007)(6506007)(2201001)(14454004)(6486002)(6116002)(107886003)(66476007)(66556008)(64756008)(66446008)(68736007)(76116006)(66946007)(446003)(2906002)(11346002)(73956011)(476003)(91956017)(6246003)(6436002)(2616005)(486006)(4326008)(305945005)(7736002)(99286004)(26005)(71190400001)(71200400001)(3846002)(36756003)(103116003)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR12MB1775;
 H:MWHPR12MB1632.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LtCLXwsLT6co9xynGg2JZ11/j1E7fGTC0Xi2nPeZ7e7BLLFQUnc4qGD3ION2nngr4kcOZcpC8/r0UnEhQItdm4BCamGeLxn7kOQDi0Ro1ByuFhpKGjuuHeTqHubd4LlFL18W8odPBP939pgt+Uz7DBMGxbcgD1zaRC6dIR2KhdMHyDG3OfzULlO1oIrPCK3QUlVVMvJ1FKUsJK24wsqbhed0Mf+qOnY7bW7PENr2ThfftGxgGOZdRGSmeU+DlOG/7nLySukFyxNX8MZFqiT2ULHlQcDfz/mTReHyo/COaCg3h7Hbvv/wJ+jO2TDuafCKfgkm1ElkaNJgJhLwAUSC0wa3mqRbS0/+rNqk0i+VRPjmcwiS2ilwawpOC4v+jyU4hPo78AcVGll/YVZZfXeeuRjrFYW85aLhQbvjYaQpYBI=
Content-ID: <5A823811A20DAA43B211A7AB42CD65C2@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db93fc10-3909-4230-81fd-08d6d24f5be6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 18:19:20.3634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1775
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_111931_816770_2F8CD99D 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

I'll check this in the next few days.

On Thu, 2019-05-02 at 08:41 -0700, Vineet Gupta wrote:
> +CC Alexey, Eugeniy who maintain hsdk support !
> 
> On 5/2/19 8:12 AM, Jose Abreu wrote:
> > GMAC controller on HSDK boards supports 256 Hash Table size so we need to
> > add the multicast filter bins property. This allows for the Hash filter
> > to work properly using stmmac driver.
> > 
> > Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> > Cc: Joao Pinto <jpinto@synopsys.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Vineet Gupta <vgupta@synopsys.com>
> > ---
> >  arch/arc/boot/dts/hsdk.dts | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
> > index 69bc1c9e8e50..b0f059377ab0 100644
> > --- a/arch/arc/boot/dts/hsdk.dts
> > +++ b/arch/arc/boot/dts/hsdk.dts
> > @@ -187,6 +187,7 @@
> >  			interrupt-names = "macirq";
> >  			phy-mode = "rgmii";
> >  			snps,pbl = <32>;
> > +			snps,multicast-filter-bins = <256>;
> >  			clocks = <&gmacclk>;
> >  			clock-names = "stmmaceth";
> >  			phy-handle = <&phy0>;
> > 
> 
> 
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
