Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFCE2C60A
	for <lists+linux-snps-arc@lfdr.de>; Tue, 28 May 2019 14:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqXoGEBv2oMLoOJKhr5HytzPshPvldga/pZX6De8UUs=; b=ukjPWoQsfAiSgN
	NosjH21aoq1srT7lHxzlVyotEv5CMSrJTt3NlQniXC8MlorhAU2PixOBj5JIX/f2ufdvSLkauW4qp
	zaNbwILC4joBbn0s/l2aNlBCE2DhhCaRud9G8ANd3sDf90CNbtjFrhgnMJD62G9wJX0y5Jd3zdaqy
	zLtSNzxODiGRpjrT44psfjSzM5eQAiVYPFax4kTQqItetX8jjuI8MerwPjJvVPFD0V64I3syGGG0s
	pSfEvM82WRDcQIGWEoYc5Iapqr0B9k7Xf4dg+5pG1EKXYFa1UlLyhlHKBgxqXG94cXCeSJ0k4ti87
	AmXkJ8jceXTAaO5U45GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVanw-0001Rp-Ve; Tue, 28 May 2019 12:02:08 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVanr-0001R9-NG
 for linux-snps-arc@lists.infradead.org; Tue, 28 May 2019 12:02:08 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CEB8BC1DC3;
 Tue, 28 May 2019 12:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559044929; bh=ViEm+BtSi+b2HHxpauZclzZeW43R4CIKbbjJjdvrw+I=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Sb7jF8uZ27nkDivsaa+L9K5A7YLC+xEyQrGmv454re+ZEp1LU5/ptAj/+tp6u5O1F
 TzQIzolaEb3kQ6WqEp48vKGKfFu/6SAFEtD4fhp2BjjXHq4CMt04ELdnbTSOaSI9Uy
 eXGJu4RU6ruTNKI8tlYI5Hn3MRjsvi5mKcujKsl5Ut7oFV6YM/n57XvaUE4AqnHtyQ
 eT6teLrbaZTbdQSvMXim/uDr1ylowOIwZ7CDFomyXqRi5qR2gI4NOFz6cTarhWXCMr
 S252YNlatkYQ/Rfmd94DP9f9gayg4SWqKpwuS4mkTGDcSdvdkQYBTRxI3gyl3zK3Ks
 GADpeKJ626ifA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2B6C0A009B;
 Tue, 28 May 2019 12:02:00 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 28 May 2019 05:01:59 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 28 May 2019 05:01:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=haYka1bHF7Y3/jmNOYU7RfyRm34GR2UdX7bLsiJTuPU=;
 b=eo40vaxvh0WjPHXlFPQwODDqVnUbvImzk0n0JqQch0yczHGRqqFDOGH1DVMr6cSsvj57yp+nBoOKD6CqXowIYtyWX1nwGHfo5m7t8VwGVj/rPDPv1QZAV646io2eg8zneOpLvOpqw5Xrj6PLdSteb1CEWY29jWh/oB3OqPZMiro=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2516.namprd12.prod.outlook.com (10.172.121.141) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 28 May 2019 12:01:56 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 12:01:56 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: RE: [PATCH] ARC: [plat-hsdk]: unify memory apertures configuration
Thread-Topic: [PATCH] ARC: [plat-hsdk]: unify memory apertures configuration
Thread-Index: AQHVFTM0tZqeys1WV0CZLuXxWX8fl6aAbMaw
Date: Tue, 28 May 2019 12:01:56 +0000
Message-ID: <CY4PR1201MB0120DCC7887A58A520EE7C1BA11E0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190528085444.3813-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190528085444.3813-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20cefdbf-4209-4e61-74c4-08d6e3644842
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2516; 
x-ms-traffictypediagnostic: CY4PR1201MB2516:
x-microsoft-antispam-prvs: <CY4PR1201MB25163A4EDFD7EF6A5463762CA11E0@CY4PR1201MB2516.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(39850400004)(376002)(136003)(13464003)(189003)(199004)(54906003)(52536014)(316002)(66446008)(229853002)(81166006)(9686003)(14454004)(446003)(7696005)(305945005)(107886003)(66066001)(81156014)(8676002)(6246003)(8936002)(11346002)(76176011)(7736002)(486006)(53936002)(6506007)(53546011)(476003)(55016002)(6116002)(76116006)(25786009)(2906002)(6636002)(71200400001)(71190400001)(6862004)(74316002)(4326008)(99286004)(66556008)(26005)(186003)(5660300002)(64756008)(66476007)(33656002)(19627235002)(66946007)(14444005)(73956011)(68736007)(86362001)(256004)(102836004)(478600001)(6436002)(3846002)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2516;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iv+CpIR44BFdZAEW/nsalwbYf7UhABwB6lkhP5Z+qvyIEGO8hohOEBvRFW1sXjPHxA4B9/GKObmKheP4/81DCwmfwgtmnjuev5oRgfNoEOH2Ob4yR5ZlHYtXqhj1mQckC6a7QskuyYIL/mVIFhEX9khwmyLCKgnueQgYsTlANf7Rj6cvtLpF4ZZSnWpMmAK9m8FvY5gu7jnAJn4xjby7Exu7qWACA5E7/UXyNP0s518cbm3KHuYDouqK+PaScaUsVu4OBQXyb5w4FJYF7CLi7uK3TqGjIdRK+Arvl38RtPyuakhIfpU2OayDGRDbPJ9ziHOEJdtbMgedIyfJh4yLbmY5FPZHS8pvISA/Z9UgTTj1HOR+d4qDKFm1bxuAWAkwIb/TRnvmef7SO6+6sWgrEXvOJeB7dUu2YSCSYigw0UI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 20cefdbf-4209-4e61-74c4-08d6e3644842
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 12:01:56.6362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2516
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_050206_538166_6A3E7B80 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Eugeniy,

> -----Original Message-----
> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Sent: Tuesday, May 28, 2019 11:55 AM
> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com>
> Subject: [PATCH] ARC: [plat-hsdk]: unify memory apertures configuration
> 
> HSDK SOC has memory bridge which allows to configure memory map

SoC (which stands for "System on Chip").

> for different AXI masters in runtime.
> As of today we adjust memory apertures configuration in U-boot
> so we have different configuration in case of loading kernel
> via U-boot and JTAG.
>
> It isn't really critical in case of existing platform configuration
> as configuration differs for <currently> unused address space
> regions or unused AXI masters. However we may face with this
> issue when we'll bringup new peripherals or touch their address
> space.

Maybe add some background what do we change and why?
 
> Fix that by copy memory apertures configuration from U-boot to
> HSDK platform code.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

A couple of nitpicks, still...

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

> ---
> This should be done a long time ago and this could save me from a lot

...should have been done... ...could have saved...

> of debugging while bringing up GPU on HSDKv2...
> 
>  arch/arc/plat-hsdk/platform.c | 144 ++++++++++++++++++++++++++++++++--
>  1 file changed, 136 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
> index 2588b842407c..e336e34925b7 100644
> --- a/arch/arc/plat-hsdk/platform.c
> +++ b/arch/arc/plat-hsdk/platform.c
> @@ -35,8 +35,6 @@ static void __init hsdk_init_per_cpu(unsigned int cpu)
> 
>  #define ARC_PERIPHERAL_BASE	0xf0000000
>  #define CREG_BASE		(ARC_PERIPHERAL_BASE + 0x1000)
> -#define CREG_PAE		(CREG_BASE + 0x180)
> -#define CREG_PAE_UPDATE		(CREG_BASE + 0x194)
> 
>  #define SDIO_BASE		(ARC_PERIPHERAL_BASE + 0xA000)
>  #define SDIO_UHS_REG_EXT	(SDIO_BASE + 0x108)
> @@ -102,20 +100,150 @@ static void __init hsdk_enable_gpio_intc_wire(void)
>  	iowrite32(GPIO_INT_CONNECTED_MASK, (void __iomem *) GPIO_INTEN);
>  }
> 
> -static void __init hsdk_init_early(void)
> +enum hsdk_axi_masters {
> +	M_HS_CORE = 0,
> +	M_HS_RTT,
> +	M_AXI_TUN,
> +	M_HDMI_VIDEO,
> +	M_HDMI_AUDIO,
> +	M_USB_HOST,
> +	M_ETHERNET,
> +	M_SDIO,
> +	M_GPU,
> +	M_DMAC_0,
> +	M_DMAC_1,
> +	M_DVFS
> +};
> +
> +#define UPDATE_VAL	1

I'd add some explanation of what that is here like:
 - Default (or modified) table from the manual xxx.
 - AXI_M_m_SLVx & AXI_M_m_OFFSETx are MMIO regs which are used for ...

> +/*
> + * m	master		AXI_M_m_SLV0	AXI_M_m_SLV1	AXI_M_m_OFFSET0	AXI_M_m_OFFSET1
> + * 0	HS (CBU)	0x11111111	0x63111111	0xFEDCBA98	0x0E543210
> + * 1	HS (RTT)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 2	AXI Tunnel	0x88888888	0x88888888	0xFEDCBA98	0x76543210
> + * 3	HDMI-VIDEO	0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 4	HDMI-ADUIO	0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 5	USB-HOST	0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
> + * 6	ETHERNET	0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
> + * 7	SDIO		0x77777777	0x77999999	0xFEDCBA98	0x76DCBA98
> + * 8	GPU		0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 9	DMAC (port #1)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 10	DMAC (port #2)	0x77777777	0x77777777	0xFEDCBA98	0x76543210
> + * 11	DVFS		0x00000000	0x60000000	0x00000000	0x00000000
> + *
> + * Please read ARC HS Development IC Specification, section 17.2 for more
> + * information about apertures configuration.
> + * NOTE: we intentionally modify default settings in U-boot. Default settings
> + * are specified in "Table 111 CREG Address Decoder register reset values".
> + */
> +
> +#define CREG_AXI_M_SLV0(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m)))
> +#define CREG_AXI_M_SLV1(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x004))
> +#define CREG_AXI_M_OFT0(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x008))
> +#define CREG_AXI_M_OFT1(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x00C))
> +#define CREG_AXI_M_UPDT(m)  ((void __iomem *)(CREG_BASE + 0x020 * (m) + 0x014))

Maybe skip 1 zero? I.e. use 0x04/0x08/0x0c/0x14?

> +
> +#define CREG_AXI_M_HS_CORE_BOOT	((void __iomem *)(CREG_BASE + 0x010))
> +
> +#define CREG_PAE		((void __iomem *)(CREG_BASE + 0x180))
> +#define CREG_PAE_UPDT		((void __iomem *)(CREG_BASE + 0x194))
> +
> +static void __init hsdk_init_memory_bridge(void)
>  {
> +	u32 reg;
> +
> +	/*
> +	 * M_HS_CORE has one unic register - BOOT.

unique

> +	 * We need to clean boot mirror (BOOT[1:0]) bits in them.
> +	 */

Why do we need to do that?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
