Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C327751A23
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Jun 2019 19:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg5eRAWU+UcBj+Z76WC835f66Q219pVgD1C+VFO57Jw=; b=MW4kCdmx2Vxerl
	vaHyLzwjigVdIRojPzxyV8hN39lxlJGpLfvn2T2AsYPU/MJZb9fIoTGzoNxeDCX0yB4ETf+WDsrev
	kBxWdJLd+B9HKzqn36jQuiBNrOzoV8mknOSY4cMh6MlA4f2FPcBxxTYjuf/JUx7p5NRN0/QniT1hK
	i2ZrwgLJQKQqTGPtTjpozKqOwwzbg0BtWvHcrWGx325ekaSzmAC2VgnJAKeaVQSZf/V/585PoKMk6
	auvc3y6aEF0eaJ4G7Y4kGuSjAxS8RR3f9GNDtCwmjD4kIzquNDErgY10/r2UzxOw6zoLXt3gqgIgD
	6PGWBpXTun3aH9ImEBbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTEx-0006cY-45; Mon, 24 Jun 2019 17:58:51 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTEm-0006TX-KG; Mon, 24 Jun 2019 17:58:42 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 514E5C003A;
 Mon, 24 Jun 2019 17:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561399117; bh=IBCBUkoA5vcG/XCiA9ipnWbgZX2OIC1EnYYIsJRQQgM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=UQPdlxK5TQRK7go1DDhD/LHVaPYEnhdgV800qqv/lfI/o+G2DUSkTtbwKX0KLfLSB
 mqQnle7gXEP1q2LIkdY9ZOc4BvJTUR8bvxxOYpkTf2T9QQXjDl4csT2SxiZSP76Fob
 iM1dXugTF02H6yjUC3XIdoLSQ1YD/Hom8gtsk20gjXAHOyOPQREU5nYNkqEwDvmInh
 +iwGn+a3No6l4gJVY7A7ZvKMQvikbMyD8n8SzL/Ejor2yvXBRvSQ/5vWq1B/zr+EEh
 ZfZ+oniKqbTsEqk4gjpm8UseqlmADObrB+u4YKhvkWyPJD6/lXUdeR+XTZpmISFcN8
 FUkeTkUtig9sg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5C993A0093;
 Mon, 24 Jun 2019 17:58:29 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 24 Jun 2019 10:58:29 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 24 Jun 2019 10:58:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBCBUkoA5vcG/XCiA9ipnWbgZX2OIC1EnYYIsJRQQgM=;
 b=eZ1/DzwHnBm/IusH/FwO5m0AD8NAgpfO4sDNmguNwrGLyGmG2rm96LYTpQCmrB+Yg/C7Z1NLibN1LgKX4z6rbAkUDYxg2r1qgP0EV2tJJ+z7d4tHtiiXibNqWuZsvEfbUEd2N6CxWi9EXbVBZUP+1ODz3r6oYGfjjBL1G/79O0U=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2750.namprd12.prod.outlook.com (52.135.107.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 17:58:26 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495%5]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 17:58:26 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "marex@denx.de" <marex@denx.de>,
 "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH] mtd: spi-nor: add support for sst26wf016, sst26wf032
 memory
Thread-Topic: [PATCH] mtd: spi-nor: add support for sst26wf016, sst26wf032
 memory
Thread-Index: AQHVHUfTQkQ8QEh2e0ePTmIyAmvCNKanjTUAgAOlAgA=
Date: Mon, 24 Jun 2019 17:58:25 +0000
Message-ID: <305636da161f6c204e39936696301c226c1c95f9.camel@synopsys.com>
References: <20190607154308.20899-1-Eugeniy.Paltsev@synopsys.com>
 <aab6510e-9608-584e-1556-613bb0be482e@microchip.com>
In-Reply-To: <aab6510e-9608-584e-1556-613bb0be482e@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4467e569-7a96-48d9-a46d-08d6f8cd8e81
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2750; 
x-ms-traffictypediagnostic: SN6PR12MB2750:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN6PR12MB2750D644ED0A64D15BA85CBBDEE00@SN6PR12MB2750.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(136003)(376002)(346002)(39850400004)(189003)(199004)(71200400001)(71190400001)(25786009)(486006)(76116006)(91956017)(186003)(2906002)(66446008)(66476007)(66556008)(64756008)(73956011)(11346002)(66946007)(6436002)(6512007)(26005)(14454004)(53936002)(54906003)(7736002)(110136005)(6486002)(6306002)(229853002)(316002)(66066001)(5660300002)(305945005)(14444005)(256004)(4326008)(8936002)(966005)(86362001)(6116002)(3846002)(6246003)(81156014)(81166006)(2501003)(8676002)(102836004)(36756003)(7416002)(118296001)(2616005)(2201001)(68736007)(446003)(99286004)(76176011)(6506007)(53546011)(476003)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2750;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ucXdIsm2xlNHntSkf/7wq9XYvdtSnB4jmTZO/m55JOezUGVNMhAGH2ZKAHhOrJv1UqoBepZfCVydpIVY7z4b0QKdAIaQlkmT+8+WCCVO9YIpKRz9Je3odi1BCzJdVJmt2QJ+rVzhHlWifodhDdTWuaZl3vf8yVHghnmt39T4M6cyrwEkgwwneuaSv3lDfV+liRc3kzKvJaftFL0puSuDP8O8uwt5IGdCub/5WW6NMMonA9v7EkPdT6vc/rOiZ0KF7lMvD8+jKBDOYGADpYh42HU3oXdUt8iMEEve3AZQxpgqDObHG68vPOEUHgvIN2BbG9g9muagO0HC7Cfr0OByPyKat5EiE9QzdwRKLxbbhuCpxqEfGyvhAY+RMqYq+o/57aCNUTQCwVd/BhUqUXwh42xlueVrcp2EwnYGL5fyLIc=
Content-ID: <A1770C5AE373E74180E078B9DCBA2C07@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4467e569-7a96-48d9-a46d-08d6f8cd8e81
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 17:58:26.0729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2750
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_105840_722650_E257C48E 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "richard@nod.at" <richard@nod.at>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Tudor,

On Sat, 2019-06-22 at 10:18 +0000, Tudor.Ambarus@microchip.com wrote:
> Hi, Eugeniy,
> 
> On 06/07/2019 06:43 PM, Eugeniy Paltsev wrote:
> > External E-Mail
> > 
> > 
> > This commit adds support for the SST sst26wf016 and sst26wf032
> > flash memory IC.
> 
> Please specify if you tested both flashes, with 1-1-1, 1-1-2 and 1-1-4 reads.
> Let us know which controller you used. I ask for these to be sure that we don't
> add flashes that are broken from day one.
> 
> > Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 73172d7f512b..224275461a2c 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1945,6 +1945,8 @@ static const struct flash_info spi_nor_ids[] = {
> >  	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
> >  	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
> >  	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
> > +	{ "sst26wf016",  INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> 
> I confirm that the above is correct.
> 
> > +	{ "sst26wf032",  INFO(0xbf2622, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> 
> There are sst26wf032 flashes that don't support SPINOR_OP_READ_1_1_2 (0x3b) and
> SPINOR_OP_READ_1_1_4 (0x6b), check
> https://urldefense.proofpoint.com/v2/url?u=https-3A__pdf1.alldatasheet.com_datasheet-2Dpdf_view_392063_SST_SST26WF032.html&d=DwIGaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=ZlJN1MriPUTkBKCrPSx67GmaplEUGcAEk9yPtCLdUXI&m=YKOAFhTsmcxVNOmy6DO67WYZYdo6xYa7ojebIBU-K-c&s=k2yRqWlXBllfG2R2HvqTwAjGYCmvjGm9tmVYxzDg_wA&e= .
> You
> can't add SPI_NOR_DUAL_READ and SPI_NOR_QUAD_READ if 0x3b and 0x6b commands are
> not supported. Check spi_nor_init_params().

Yep, thanks for pointing.
We are using 'sst26wf016b' on HSDK devboard. I added 'sst26wf032' to make flash upgrade easier,
but I don't check carefully enough that it has completely different control logic and not only size.
I'd better drop 'sst26wf032' in v2 patch respin as untested. 

In this setup we use "snps,dw-apb-ssi" SPI controller and we don't use dual/quad IO. Should I
drop (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) for "sst26wf016" in v2 respin?

> 
> Cheers,
> ta
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
