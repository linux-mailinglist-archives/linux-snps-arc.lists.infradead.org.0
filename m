Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38A0A83EF
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 15:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK8LXLsCLI/F4ltOhlPzY0LcLt9lBt6AWqUWp6bk3NM=; b=TeoeVOEt5cy630
	9vvvQh30Gz20XAsGiN+UYQhpwAr3TzmdgzGWH1JD2jdjB4RMeOj2US7sVA2byLx/QsI8JkgmUjF8m
	16jytv2c5JIyzzUroqjEyAxxOThV9UBxSyf4AiSnbN9FlTFmkI0JCkLPDnoPNj88Ci1KWOEquYgg+
	C6bp6X21I4XmR6LMNL8SZATjWOkGqyEpsQlFj1KKMLYLqI6TKzCuFaoyh5bd968n76zF82qYWuFdw
	P2jt1wCPYVb8VsOb+Bmz6HIEUJMrLnvMXI7CqtE/CGNel8atNxT3kTcKyxmTSSMtqOOPkyqDtbnJQ
	0nQQrlNxuQHAJFT3VCqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ve2-0007G0-DD; Wed, 04 Sep 2019 13:48:22 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Vdy-0007FX-Pz
 for linux-snps-arc@lists.infradead.org; Wed, 04 Sep 2019 13:48:20 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A1723C0AB2;
 Wed,  4 Sep 2019 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567604897; bh=5CokHPFR9NeJ58Myr+2cJOms8lBD60JFmTbtAYRb8t0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=PQcfUmE9ON2qHtLrtR/Yci5LZH3Z2zqPPzBWIUBL6H85AtxmnziCleHWzh3vtY8Hx
 JJ2bgZu46uu87NxvXfYatmyrBblpougcntzn7ggWkXuXfR+cZ0s2hR60KN0zXICrhW
 37SSboXS/yl9MVBc6ssoUMcaD7ZW9M+RCwnwfpF0TrV9/mKRgDtwH6l6Qxvbnj+J3h
 myyAHgVz5lTAZaQCge/KiXfV4ayV7DgE0JFCZbHOk0cDIYof7A0XjTyB3ZETHerrMK
 4LFTZu7U+Z2mRXuRR3by1DK7DAUC9IUhFfc3RgApaTPQ6eRlxZ/aXjGrNABZoV2tq8
 IJbyFHBkx4nCg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6E380A0096;
 Wed,  4 Sep 2019 13:48:16 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 4 Sep 2019 06:48:15 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 4 Sep 2019 06:48:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jd1BZOg3paYm3BnHg6pVfYsmY0A1tQUHjck4kq/SozRk9z4cVmpWnQEkM9NfIbZ+B6m3URUXqj84OKqYBqOGkSoK/BGkHJbDXw9Er3YltclHSnlpaAmSMo1ep2FQJaz7X8opt9NXQTcHnoWIc8vOZ7KoJudgxUHdP0+U+3fg0Osf8qfria05nkEk++qUgAXrsKJs8H4a/Y4SJ92jJrkQr8UL/B5UwfkP29WJ/obiVth5EVThPQ+YeinlfFoM3YLCj0HbzmoCba680USmP/IKs1XBF75RkBLqnn+GpLNo+IyFKYnVGBv7wBjkfACUsudw6swv4dIoMTRlgZCwIElVFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CokHPFR9NeJ58Myr+2cJOms8lBD60JFmTbtAYRb8t0=;
 b=KrVVq/1Ro3fMWjEL5GzD+cO/jukMfJkPzPQstY/KP4xeLZewtMNunbw1X6KAg/43OZW3hkJRUJuoFITh+fUEIryx/NKJmUPZALIXs0omqRaQ1819yHHXMXlTeMsbQbM8cco+0NYCfptV+O0XDSfI8pD23aUsleFWE6zbKUXh8OltEdZQlr1dlj+zYpxd/8nJ7yeSuWsFsnnL3VDRmqK5PpFEICndc/wVKa74eKXO9u+3UA027vdzUTWCs0rgjyMoZMvpjeAFywFUaKhBbm2zA2Bd5c9sq8w+iyJ1B69EyhbRGnGLnVE1LtJIx4nibmNbkehqTZyN96bIwmDxzWk6PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CokHPFR9NeJ58Myr+2cJOms8lBD60JFmTbtAYRb8t0=;
 b=IThwmonhpJ0GkmuUQKKmehZseGxJdJQpodNuz+uwAeAqNi1UX8OHur5L8K3XLGfXdQ4Iw4GuQFwL4QX9pkH0DQ9GnqNs8heUxCZvWnOiCMIib+7b+0VDxL29K9wisixl4u1ggn+dvd0ElB42JIym3+iqgjlbEXEZ7gEvb8QnXqE=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2947.namprd12.prod.outlook.com (20.179.67.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.13; Wed, 4 Sep 2019 13:48:13 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 13:48:13 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "joe.hershberger@ni.com" <joe.hershberger@ni.com>
Subject: RE: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Topic: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Index: AQHVYqRoUJ1gFC4CeEO0y7R5L99Qz6cbBmmAgACCUtA=
Date: Wed, 4 Sep 2019 13:48:13 +0000
Message-ID: <BN8PR12MB3266D46C80EF36B9A53A8C88D3B80@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20190819184313.8383-1-ralph.siemsen@linaro.org>
 <CY4PR1201MB01205C73F3502FFB2F9192BFA1AB0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <CANr=Z=bF3dqXP919XJXzwrMYs_zW+yx_kpxeWYraxF1D7-S4-Q@mail.gmail.com>
 <CY4PR1201MB0120A2635B4F31DB3F8273BCA1B80@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB0120A2635B4F31DB3F8273BCA1B80@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21cf17e6-d838-499f-fe6b-08d7313e883b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB2947; 
x-ms-traffictypediagnostic: BN8PR12MB2947:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB2947A4D2D9439A6E735B5E60D3B80@BN8PR12MB2947.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(366004)(376002)(39860400002)(136003)(13464003)(199004)(189003)(33656002)(186003)(86362001)(229853002)(7696005)(76176011)(8936002)(316002)(107886003)(110136005)(53936002)(54906003)(6246003)(26005)(6506007)(74316002)(14444005)(305945005)(53546011)(102836004)(25786009)(256004)(7736002)(71200400001)(71190400001)(478600001)(966005)(2501003)(14454004)(4326008)(6436002)(52536014)(6116002)(5660300002)(99286004)(81156014)(81166006)(8676002)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(476003)(6306002)(9686003)(55016002)(486006)(3846002)(11346002)(66066001)(446003)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2947;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 98BYfrwBEYJKd2YmU17tx9m11qmUgdPKxG4Uni4TWNQKnh5sTpWQjMPM4+1Kx9x6NAm/HngBqiQ8X5SHTFb03CRlJhE9vb/U92U9Y+o+9uXWLb7+t6zFsPkJ2LT8xF18ScxOv7c9uYrLdhLqFBqFpjLw4yHY06aXL9uRB8asClMOq7oyepCB1zwcTz6f7Q3ySH3kmkJPYfZCJ6JwP80mRuXMc02gNPIw227sKeBWEg1BRodASlRtr4KaxptlQeGVfvpMZfFxEzOLQtn+GqQrywr9cuOjPU0s7F96NBsHrgE0WnI2SGtWL4pN1rv5eby3SG1K3tKe/UoCzr0/zLYlmXgxHVGzNV8bKz0G199WBw9RRnwSLDPHd8Q5mvViMETzgedODyjWbXB1WSidw2YgQwmUwHlbQNKdggYLloOT3lY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 21cf17e6-d838-499f-fe6b-08d7313e883b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 13:48:13.8111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RkB8czLPkrtfDfZYaF3nRA/DnRQxLNJftiA11PXmAYgubfGGwfFQMIftmYPhE4P+/NglHDrpkQXE+SPT1Pm8gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2947
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_064818_930026_8CF8B645 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Ralph Siemsen <ralph.siemsen@linaro.org>,
 Joseph Hershberger <joseph.hershberger@ni.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Alexey Brodkin <abrodkin@synopsys.com>
Date: Sep/04/2019, 06:59:01 (UTC+00:00)

> Hi Joe,
> 
> > -----Original Message-----
> > From: Joe Hershberger <joe.hershberger@ni.com>
> > Sent: Wednesday, September 4, 2019 1:10 AM
> > To: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: Ralph Siemsen <ralph.siemsen@linaro.org>; Joseph Hershberger <joseph.hershberger@ni.com>; u-
> > boot@lists.denx.de; linux-snps-arc@lists.infradead.org; Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > Subject: Re: [U-Boot] [RFC PATCH] net: designware: drop compatible altr, socfpga-stmmac
> > 
> > On Tue, Aug 20, 2019 at 3:07 AM Alexey Brodkin
> > <Alexey.Brodkin@synopsys.com> wrote:
> > >
> > > Hi Ralph,
> > >
> > > > -----Original Message-----
> > > > From: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > > Sent: Monday, August 19, 2019 9:43 PM
> > > > To: u-boot@lists.denx.de; Joe Hershberger <joe.hershberger@ni.com>; Alexey Brodkin
> > > > <abrodkin@synopsys.com>; Vlad Zakharov <vzakhar@synopsys.com>
> > > > Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > > Subject: [RFC PATCH] net: designware: drop compatible altr,socfpga-stmmac
> > > >
> > > > The same compatible = "altr,socfpga-stmmac" appears in both
> > > > drivers/net/designware.c and drivers/net/dwmac_socfgpa.c,
> > > > creating ambiguity in which driver will be bound.
> > > >
> > > > For Intel/Altera SoC devices, dwmac_socfpga.c is the correct driver.
> > > > So drop the compatible string from designware.c.
> > > >
> > > > Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > > ---
> > > > This compatible string also appears in: axs10x_mb.dtsi and hsdk.dts.
> > > > Maintainers of those boards have been copied, kindly review.
> > >
> > > Thanks for this clean-up.
> > >
> > > Speaking about AXS10x board where we do have DW GMAC
> > > I cannot recall the reason I chose to use "altr,socfpga-stmmac"
> > > for the board here [1] 3 years ago.
> > >
> > > But given we don't have any special quirks implemented whatever
> > > is the most generic DW GMAC compatible string is should be good for us.
> > >
> > > Joe, could you please suggest if we need to use just "st,stm32-dwmac"
> > > or add our own compatible as the ASIC is not from ST obviously but
> > > an FPGA with Synopsys ARC SoC?
> > 
> > I think we should only be using what Linux does, so I'm afraid I have
> > to defer to what exists in the DTs there.
> 
> In the Linux kernel we use "snps,dwmac", see [1].
> But maybe we need to switch to "snps,dwmac-3.70a" even as what we really have is 3.73a.
> 
> While in U-Boot we don't have either one, the most generic is "st,stm32-dwmac", see [2].
> So maybe we want to add at least "snps,dwmac".
> 
> @Jose Abreu could you please confirm if "snps,dwmac-3.70a" is OK for GMAC IP v3.73a?

Yes it should be okay.

> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arc/boot/dts/axs10x_mb.dtsi#n74
> [2] https://gitlab.denx.de/u-boot/u-boot/blob/master/drivers/net/designware.c#L855
> 
> -Alexey


---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
