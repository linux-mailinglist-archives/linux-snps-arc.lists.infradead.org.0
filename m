Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7186A7B0C
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 07:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqCOXd+CmKbLWv0IRa+PaSpBIf4ZE/afhkRV/mZhKes=; b=QrwYm9JKv1+TL3
	CRyCGnUn+1HKsvi+GOBJC1SD/zO6sKqfa21O5SYAz3FgapY6T7+cF6G4nUg2dyhJPoJyJmydFwncs
	Dq6RZ3POu+aQgMbBXDdLqHyQ1AkSdPbXzczmp4NpP30T5qqCX8ZcpDKCqGhEkqVGtLra4s9R8OeT0
	ubXCIaldcBuvwYQu1A5fz7UO+AEMAeQZeU4Uy4bP2cnwkO6AMcyVLPowz/cmkAXmH4ogSlmU6/v+l
	jJ6fgkKRr9nuNpJrMFdWSMY+8ZwG2QpfXz+thm8bhdlJdMv1Z+tUryyLin23rtYsste1HWe1s6wel
	3g6nrfCPi0jLBgpLQnhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OJz-0001wk-MG; Wed, 04 Sep 2019 05:59:11 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OJv-0001w1-TY
 for linux-snps-arc@lists.infradead.org; Wed, 04 Sep 2019 05:59:09 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1AAE3C03C9;
 Wed,  4 Sep 2019 05:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567576747; bh=TB56aSToq1PCHNiGfcT8ntjvwZW8lwyfbnmf6eSi4KA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Xty/AzaOlutu+PzRibhmGFZf3SzLG3MRaH+dIq4+OQh0hphEfWfj71ADH6JxKV5qK
 hjIKSeF3ER+YLhwMVqjgplbCSeHzFX+Id4u6F/E7NiV8verb/YNRp1NtH3Qt2scr4r
 Qn00iZsi4dQ117oodAqgq54LzMW7QiLJTaxn2wry36J//soQfCg4rLRCWES2s5NGec
 chWmWhQI7m9RUGlTCkCIntBvSDzoYKFa/4sKHjx/sQn56dg/G0yuRuemxOQJHAvLwd
 ARcOl36B5LENOJIidvH5iUBMoE9QYSmgF0vFNHUc6QxkPRQa5JZ0Ai2sk+zfDegh0j
 OoBNmJZdRgu5g==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 02755A0091;
 Wed,  4 Sep 2019 05:59:04 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 3 Sep 2019 22:59:04 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 3 Sep 2019 22:59:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGxeK8merp03GBfIJgRrdtXephnJXQ541bvd1BYGJlMfAjhMbwJBssjYaaG/bUIX6px5MyxGIxtY0NVgF7V3tb2XrF+RJMQZNyKuaUVws53jy56Kmeddmmn0cubGkMM4/eFdXEozoGaInPN2YS90cHVdnTqGw/TOtWD3Ykj3ukRGcxD8mQ+JGSQgmFFWl2o7Y61m2nd3OQEOs/cQXnKDxEXvMIEEwwDzNgaH3C+SmnHMAp56Gozb1SOq86DkZA5TrdLhP35R1fmAZHqCC+/8khMvKEEJ/O8bvWKzphdhfrDouDlTvyqsK64tgl6Dy8GQTRJmkKVdU0wiCI9bs6zEkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TB56aSToq1PCHNiGfcT8ntjvwZW8lwyfbnmf6eSi4KA=;
 b=b9MCLmxgt/kvUUXlKvBtXlcOjYfVsrFZmizNPpWeveKtmAbZr5GTIjjdDYVtUaxOaMuvfjlnZ45f1aiBW4/Xji9v9uIMfOpvo5l8auYzYAtWObajmNmZHObVklGPSNproVnLbi1GbxndXi49iVEap0Yf/hjyBqQUtP2SXV1uWr/yGzeLoojl9mRp/3YuhE6c6yfe4Mcbpr4ir1pDvsH2XXJZHQoKw4KRaKaNDku4rs8szyht8q2VjADBUfeT6FkDahysoZCgMOy9gFy5zZIqf+yv3znjOmvi7AoZz5JFCvL0gOc6tPehkQWgvaGNfBWll/o4bTnpo6TyegeVPAi7ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TB56aSToq1PCHNiGfcT8ntjvwZW8lwyfbnmf6eSi4KA=;
 b=UsLuCmYDXp72POjLjUEXN6RFSn2s4H3sRYMf9LxUjMKecPzYWuEpDvJ5jqRPyGjYzJpS4FC42aAsZdbWFHEJ5gnlYblUYE4XP+Fl3xw9r7XG1ibhRNer5GeM/miFlLYM8qFa5QeR2wMBwLg9o1PTYMyRwirZVy7Wb+NiQuS6HdA=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0134.namprd12.prod.outlook.com (10.172.77.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Wed, 4 Sep 2019 05:59:01 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a%11]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 05:59:01 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: "joe.hershberger@ni.com" <joe.hershberger@ni.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Topic: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Index: AQHVYqRfH7n05LDzb0y9ss4M+myBq6cbA+dw
Date: Wed, 4 Sep 2019 05:59:01 +0000
Message-ID: <CY4PR1201MB0120A2635B4F31DB3F8273BCA1B80@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190819184313.8383-1-ralph.siemsen@linaro.org>
 <CY4PR1201MB01205C73F3502FFB2F9192BFA1AB0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <CANr=Z=bF3dqXP919XJXzwrMYs_zW+yx_kpxeWYraxF1D7-S4-Q@mail.gmail.com>
In-Reply-To: <CANr=Z=bF3dqXP919XJXzwrMYs_zW+yx_kpxeWYraxF1D7-S4-Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: joabreu@synopsys.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6909af8-acc6-4d27-ac2e-08d730fcfc29
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0134; 
x-ms-traffictypediagnostic: CY4PR1201MB0134:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB013405864F2A7F3A2A3E873CA1B80@CY4PR1201MB0134.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(366004)(376002)(136003)(396003)(39860400002)(346002)(13464003)(189003)(199004)(66066001)(2501003)(5660300002)(52536014)(6246003)(107886003)(33656002)(54906003)(110136005)(305945005)(316002)(476003)(11346002)(446003)(74316002)(6506007)(99286004)(102836004)(7696005)(76176011)(26005)(53546011)(3846002)(2906002)(186003)(9686003)(81166006)(81156014)(55016002)(8676002)(6116002)(6306002)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(8936002)(53936002)(486006)(7736002)(6436002)(229853002)(6636002)(14454004)(256004)(14444005)(86362001)(71200400001)(71190400001)(25786009)(966005)(478600001)(4326008)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0134;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N9L1QAlQJKrDWVLrb/YoVAAtVQWbzF9bCaFh3NJK6RjtaOXkniKnPSopNdHebhHZt5Hlb+PL0cuWHKw499PiCKm7UvjS/UfwMviigIXD8URNoZtgvlN2nKt084+nHb94Xs4zkjQYCMXZlkIfM3py46cpTjPxOsqtSvlOxNjMl8SOBqJ3dng0Iv6Fkvo0AZZj37EncCrm/7ZfwgWHF78qYRj+rVnPY3wN4tN1p55ka37Namd9KIf7tM6GgtOmF33DQw6zjHFalOeJkP5HL5ziDb8f4tE5SB0VDhvOt2emb0+slc2PIV/ZyEM/OIC743YM/E7F1eWCjwnwUg1F206vVNkznoPCtVASvinZ5Uor/Xfjy2IP/AJH46e06yrZxda4t+Rnboe029BTPyvZ0wyQnULzv65I0GdloTLBQY729Zw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a6909af8-acc6-4d27-ac2e-08d730fcfc29
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 05:59:01.5036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DsXekfI/LkTO1c+/b3daBYlTk+k39hAhWwKoyNHcB78Mtk+FupAoH1RTkOm/JGLbOAmPcccqRIE8ku95hKiAiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0134
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_225908_048127_CBF456AD 
X-CRM114-Status: GOOD (  21.15  )
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

Hi Joe,

> -----Original Message-----
> From: Joe Hershberger <joe.hershberger@ni.com>
> Sent: Wednesday, September 4, 2019 1:10 AM
> To: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Ralph Siemsen <ralph.siemsen@linaro.org>; Joseph Hershberger <joseph.hershberger@ni.com>; u-
> boot@lists.denx.de; linux-snps-arc@lists.infradead.org; Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Subject: Re: [U-Boot] [RFC PATCH] net: designware: drop compatible altr, socfpga-stmmac
> 
> On Tue, Aug 20, 2019 at 3:07 AM Alexey Brodkin
> <Alexey.Brodkin@synopsys.com> wrote:
> >
> > Hi Ralph,
> >
> > > -----Original Message-----
> > > From: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > Sent: Monday, August 19, 2019 9:43 PM
> > > To: u-boot@lists.denx.de; Joe Hershberger <joe.hershberger@ni.com>; Alexey Brodkin
> > > <abrodkin@synopsys.com>; Vlad Zakharov <vzakhar@synopsys.com>
> > > Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > Subject: [RFC PATCH] net: designware: drop compatible altr,socfpga-stmmac
> > >
> > > The same compatible = "altr,socfpga-stmmac" appears in both
> > > drivers/net/designware.c and drivers/net/dwmac_socfgpa.c,
> > > creating ambiguity in which driver will be bound.
> > >
> > > For Intel/Altera SoC devices, dwmac_socfpga.c is the correct driver.
> > > So drop the compatible string from designware.c.
> > >
> > > Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> > > ---
> > > This compatible string also appears in: axs10x_mb.dtsi and hsdk.dts.
> > > Maintainers of those boards have been copied, kindly review.
> >
> > Thanks for this clean-up.
> >
> > Speaking about AXS10x board where we do have DW GMAC
> > I cannot recall the reason I chose to use "altr,socfpga-stmmac"
> > for the board here [1] 3 years ago.
> >
> > But given we don't have any special quirks implemented whatever
> > is the most generic DW GMAC compatible string is should be good for us.
> >
> > Joe, could you please suggest if we need to use just "st,stm32-dwmac"
> > or add our own compatible as the ASIC is not from ST obviously but
> > an FPGA with Synopsys ARC SoC?
> 
> I think we should only be using what Linux does, so I'm afraid I have
> to defer to what exists in the DTs there.

In the Linux kernel we use "snps,dwmac", see [1].
But maybe we need to switch to "snps,dwmac-3.70a" even as what we really have is 3.73a.

While in U-Boot we don't have either one, the most generic is "st,stm32-dwmac", see [2].
So maybe we want to add at least "snps,dwmac".

@Jose Abreu could you please confirm if "snps,dwmac-3.70a" is OK for GMAC IP v3.73a?

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arc/boot/dts/axs10x_mb.dtsi#n74
[2] https://gitlab.denx.de/u-boot/u-boot/blob/master/drivers/net/designware.c#L855

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
