Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA5D23F4B
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 May 2019 19:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWvlrVtehvvACwbBQvk+ncfXHB6KtqZGytTT3snKMIA=; b=LKMtrmBPgA7nCU
	tYTe1yKb54BpzB6WYp9Zi+BWiXNTqcgMmGa+pGNmttXByYz/s+sxrljx/zlLu1my/gbKxgcqJFtci
	+AmGzEM8gj93i19E7OXig5upC8hUziMd5+WkzqIkNFKwwlW202P2akgTysF6xX2KpXM8igPGXW8yG
	XFUCzLjD34tTyaNaLEGQegC0bKwVp8FI+9HytYn2Q/V/tj+OCXXX2JgC/0BtPCtRmW4Z0fCJImpTb
	gtiZAb52GPnmZoWRvnIAKlAGfG0D0zVlzk+ND8PFgkCoDutrfdchEX+9uL9IgmSvu/I+DlNav0snP
	jk9vz8toE+nsC+CaHF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmKQ-0001A8-RP; Mon, 20 May 2019 17:44:02 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmKO-00019k-4r
 for linux-snps-arc@lists.infradead.org; Mon, 20 May 2019 17:44:01 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DE199C00FD;
 Mon, 20 May 2019 17:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558374243; bh=fea6R/84Hn9bthGL4ye6DFQyNX2PQSA7+Dg2byhnzTI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=BV69ZQR1NjtcVNGuztTaDZGFe6QeDxnyQGNYEhXwXXk82BiYaq4fP/io6paYcFQrK
 4wshr4UcAgP3G6KDLhka6jK+ttKQWwRP27eOCAOrdYP8wOHErlvXylMs/lc4h2l1cr
 4ZXHN88f+2Lw5NMhaOcZX8YJLIJPdRsqtPQjVV6xQHgk3wA65qi4vEbhAi02jJSbq8
 4ZVYvdh9bvjrR0rjb7HkbEbzevuqTJPkNY43OwUBs8Oa8p/j9nrW5NRsZjna9wqzuQ
 LOwrDoaYeWUuqgWhaR5vBLp58VCWVzAhZ4E/aTn+nORV5E+2AF5945aazFbDcN2/U8
 POVYrU/4GC4Wg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id DA0EAA0067;
 Mon, 20 May 2019 17:43:55 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 20 May 2019 10:43:55 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 20 May 2019 10:43:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fea6R/84Hn9bthGL4ye6DFQyNX2PQSA7+Dg2byhnzTI=;
 b=JGv61HxcfqjV27xWJdePF8h4xXtXPggdpmQ/86PcjGeIjFjoYXxvK414Leevd52gqYYCly+IvJt8FmQ+Pc7QeuBOt7LRiI94AYdOimcg3FPow1Y+oIuHjHuFHUB7IRi1YUlnrblmHlu8/DgTFzxdx6E4LvorLJx/zrq0LH5U9Q0=
Received: from MWHPR12MB1632.namprd12.prod.outlook.com (10.172.56.21) by
 MWHPR12MB1421.namprd12.prod.outlook.com (10.169.206.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 17:43:53 +0000
Received: from MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6]) by MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6%2]) with mapi id 15.20.1900.019; Mon, 20 May 2019
 17:43:53 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jose Abreu <Jose.Abreu@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/2] ARC: [plat-hsdk]: Add missing FIFO size entry in GMAC
 node
Thread-Topic: [PATCH 2/2] ARC: [plat-hsdk]: Add missing FIFO size entry in
 GMAC node
Thread-Index: AQHVDxIIRoZwe4Rm4UaSw1XpE1MntqZ0SQeA
Date: Mon, 20 May 2019 17:43:53 +0000
Message-ID: <1558374231.3147.2.camel@synopsys.com>
References: <cover.1558359611.git.joabreu@synopsys.com>
 <cdd9b9c36ff1ac3a3b56dff4a90e9bfd89b48866.1558359611.git.joabreu@synopsys.com>
In-Reply-To: <cdd9b9c36ff1ac3a3b56dff4a90e9bfd89b48866.1558359611.git.joabreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 593033a8-3d31-4061-3d2d-08d6dd4ab9df
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR12MB1421; 
x-ms-traffictypediagnostic: MWHPR12MB1421:
x-microsoft-antispam-prvs: <MWHPR12MB1421950CD1DB5AEF93CB95DEDE060@MWHPR12MB1421.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(366004)(136003)(396003)(39850400004)(199004)(189003)(2501003)(76116006)(73956011)(64756008)(66946007)(36756003)(66446008)(5660300002)(66556008)(66476007)(91956017)(2906002)(305945005)(6506007)(76176011)(102836004)(110136005)(66066001)(54906003)(7736002)(3846002)(446003)(6486002)(8936002)(81156014)(186003)(81166006)(486006)(229853002)(8676002)(11346002)(6116002)(4744005)(476003)(2616005)(6436002)(256004)(6512007)(26005)(316002)(86362001)(478600001)(14454004)(103116003)(71200400001)(71190400001)(4326008)(6246003)(107886003)(68736007)(25786009)(99286004)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR12MB1421;
 H:MWHPR12MB1632.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HHfnJuPFUSfwgd0brUPC8fWzZgsTS9TYU0iEg98JFmfY1rEFGottaP/t8C8CDThaBld4c05T90nGIzDAyQvxTyC6GG3Elrha6iBEuDJrJ8G4XKXbQRPA7oxrM3h27xhx3wY40RdLO/N2CLmD9NitTcV3jKaGATgprLxMQH3kwNXrggeDaHH8xV9f3n/6tmBNLiWDpcAxJEk7G3GEt5bWMr2UO5zl3X99mFEiK66ASwFNg9bSO8hkiO7kWPgsg4U+R1MX8br9Tl292LdNRoagfPFJt1Wo8EOJivjR1paTfj6KX3GpXC++bHgSzP3FpoyH9DVGgMNUOSu/98DqeR7cFdOLWR1vBpmT9O2B1drmF3gg/TVL/9WNZxgzY2dz6+yyIfRP4vQIgDyqTS1qFiX7HJXh51h8MdTHLEXaA8Ysh/k=
Content-ID: <A7399C40F4EB674BB424CB89D4E99781@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 593033a8-3d31-4061-3d2d-08d6dd4ab9df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 17:43:53.3956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1421
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_104400_245567_08DD4051 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Jose,

Tested-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>


On Mon, 2019-05-20 at 15:43 +0200, Jose Abreu wrote:
> Add the binding for RX/TX fifo size of GMAC node.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> Cc: Joao Pinto <jpinto@synopsys.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Cc: Alexey Brodkin <abrodkin@synopsys.com>
> ---
>  arch/arc/boot/dts/hsdk.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
> index b0f059377ab0..3bcd1edc4dcc 100644
> --- a/arch/arc/boot/dts/hsdk.dts
> +++ b/arch/arc/boot/dts/hsdk.dts
> @@ -196,6 +196,9 @@
>  			mac-address = [00 00 00 00 00 00]; /* Filled in by U-Boot */
>  			dma-coherent;
>  
> +			tx-fifo-depth = <4096>;
> +			rx-fifo-depth = <4096>;
> +
>  			mdio {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
