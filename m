Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128B64F52F
	for <lists+linux-snps-arc@lfdr.de>; Sat, 22 Jun 2019 12:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JWCyHPoMAtHhYTSStKPVFtDNKRGB3TkjB5jskvoegs=; b=VC7wvFOmNAA9g3
	E2DWnmaJhb2xa/CCN0snv2tFr8VUK+ZdqIjTi6KJH0PSWzQKclLpAWLqBMfZMpxhJ+hTkFT69ssfo
	FIlOGLSzhvSkHmCJy9eVyJFe1EzJVlMYlm/4ZP7z5VtMjkUUv1uh3Bq1J9ZZyV3Z4kgxZGqRVffF1
	6CtMoK7wUwOMAHa1zq36iCsw2q89ZLZwiDS6R+5EaCWVRBf5cDqKvs681XciGn1ZVFHgXs28yVO32
	mswhlNdhLegCZPVVILxj3mRWw+QwDI1lSAEWTfFzfnsmymjtNElOb7tDDAWRzBrhCZjJuEPs0dVCp
	Hfs5cKnZ4IZ8X40yN5VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hed6z-0002JG-Jn; Sat, 22 Jun 2019 10:19:09 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hed6u-0002IO-4r; Sat, 22 Jun 2019 10:19:07 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,404,1557212400"; d="scan'208";a="35446107"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2019 03:18:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 22 Jun 2019 03:18:55 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 22 Jun 2019 03:18:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GLMr2pStPLkl0RtmesXVD9kz3vOk36Y3smddQ88bobM=;
 b=3RgxQ9Cq3FOTYIPHxAYnVUq3eN2OdVRP5jXkho8WQaGWhSBRKfg3ehjcM2YO+ABzxjYHGX0uRbbXHSg4Eb54WnhRhxgGritKoA4WD2kgEqrJw2igM6kGXgEysdvdCSKvR2ZK7+tgp3sotUjMnhTrYhwQ9cLXcSmvbnRDgwnjKa4=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1651.namprd11.prod.outlook.com (10.172.23.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Sat, 22 Jun 2019 10:18:50 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1987.017; Sat, 22 Jun 2019
 10:18:50 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Eugeniy.Paltsev@synopsys.com>, <linux-mtd@lists.infradead.org>,
 <marex@denx.de>
Subject: Re: [PATCH] mtd: spi-nor: add support for sst26wf016, sst26wf032
 memory
Thread-Topic: [PATCH] mtd: spi-nor: add support for sst26wf016, sst26wf032
 memory
Thread-Index: AQHVHUfULV5f3c0l6EGHxaXBBI7PvaanjSsA
Date: Sat, 22 Jun 2019 10:18:50 +0000
Message-ID: <aab6510e-9608-584e-1556-613bb0be482e@microchip.com>
References: <20190607154308.20899-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190607154308.20899-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0602CA0010.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::20) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.127.138.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 075cfc71-2ec2-4429-a714-08d6f6fb0502
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1651; 
x-ms-traffictypediagnostic: BN6PR11MB1651:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB1651835948A8A0C592D4A5C7F0E60@BN6PR11MB1651.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0076F48C8A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(346002)(366004)(396003)(199004)(189003)(110136005)(31696002)(99286004)(31686004)(8936002)(54906003)(6436002)(14444005)(2501003)(229853002)(186003)(256004)(36756003)(68736007)(81166006)(86362001)(316002)(102836004)(4326008)(76176011)(6306002)(6512007)(52116002)(81156014)(8676002)(71190400001)(6486002)(71200400001)(386003)(6506007)(53546011)(25786009)(305945005)(486006)(7736002)(446003)(53936002)(6246003)(14454004)(11346002)(5660300002)(2906002)(478600001)(72206003)(73956011)(66446008)(64756008)(66556008)(66946007)(66476007)(966005)(3846002)(6116002)(476003)(2616005)(66066001)(26005)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1651;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +mTrpHpU7fU7wek0H96Zgdxj8Vp+7Nl7yQ9sKLatvhxHjFDrCm7RSmrt3FujznkqXtIbPeswdsVJvP6Y7+bZtulno5p3bsMnDwHQNCQdWxXB2FEpNvYLUmr9PO+roYe9zpiTPNtJROdUdIvAjci4qM4dy27gVwx18Nkopw2vKKYAZdO0uqjzMkxe4xPYsBqUqzRs3rP7SuWIzvbKoDPd204UWIDgw4T4V4THFHA7o2X/LMZv/6T+OaX8zQTRUfaEkwHMg4t6uRB1C5ALzOn/iF8tUq5AD46BKD9mqDO+c5au0dH4IiF+vbeGGYlmoBSjVXbqMAaS2J+Zy86otcUuJ18jgO13MYx/WZ2bPPE6Gwkj5n9kxao7lYtpKI5wYS7blUk229aTPQrkXmWCpR++9sn9KT7DcNYNvxhqyr6Quro=
Content-ID: <E3C10A3D5626A1418BED5D9D21748518@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 075cfc71-2ec2-4429-a714-08d6f6fb0502
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2019 10:18:50.4471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_031904_233552_8EE1948F 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org, richard@nod.at,
 Alexey.Brodkin@synopsys.com, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi, Eugeniy,

On 06/07/2019 06:43 PM, Eugeniy Paltsev wrote:
> External E-Mail
> 
> 
> This commit adds support for the SST sst26wf016 and sst26wf032
> flash memory IC.

Please specify if you tested both flashes, with 1-1-1, 1-1-2 and 1-1-4 reads.
Let us know which controller you used. I ask for these to be sure that we don't
add flashes that are broken from day one.

> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 73172d7f512b..224275461a2c 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1945,6 +1945,8 @@ static const struct flash_info spi_nor_ids[] = {
>  	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
>  	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
>  	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
> +	{ "sst26wf016",  INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },

I confirm that the above is correct.

> +	{ "sst26wf032",  INFO(0xbf2622, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },

There are sst26wf032 flashes that don't support SPINOR_OP_READ_1_1_2 (0x3b) and
SPINOR_OP_READ_1_1_4 (0x6b), check
https://pdf1.alldatasheet.com/datasheet-pdf/view/392063/SST/SST26WF032.html. You
can't add SPI_NOR_DUAL_READ and SPI_NOR_QUAD_READ if 0x3b and 0x6b commands are
not supported. Check spi_nor_init_params().

Cheers,
ta
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
