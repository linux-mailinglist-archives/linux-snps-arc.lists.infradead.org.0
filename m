Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE5E38F0A
	for <lists+linux-snps-arc@lfdr.de>; Fri,  7 Jun 2019 17:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edIw6OrMxArq1Nso24bzHnPYVwUmT/zOHNGFFe00Oy8=; b=swzV4jZmlu1xrV
	+b6vzJReDhvkftVB1MX2bdGWKEYLzHVmeBhtzIgcc7+9YzTHbe7yK43AfO4gsUHlcZm1sieFEOy05
	JO7GwXpSB8tLBInC8ekEmTGiER/uhRymfep7tb48R+x8+MSLXhXzYixJqGFvRcufyOJRdYw8199Zv
	c+Rnx1yS/UMLGw3sVLNI8fsB0Ag+kRvqh2jjUGXInLvpsGcfDXgK8UI1RZwg3rVQlCJMd4lfjdr1J
	NMbXYasY6Ty2T4x7ANdbbCRdneXomhf/K+/8h8iqBDsbfT1iukgDB3lvbzpRqXLFUiKMFQ0zAvOKX
	4ytNvpu4USvojlKpZ3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGoT-0007vF-E5; Fri, 07 Jun 2019 15:29:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGoQ-0007rj-JU
 for linux-snps-arc@lists.infradead.org; Fri, 07 Jun 2019 15:29:51 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5F1FEC013C;
 Fri,  7 Jun 2019 15:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559921388; bh=XwMLRJ4keFVFT1ZreuMmQneePkxHSm156gSn7BxwOpg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=MW5aivaceSjVBPiy5DJDxykXZb/yzub571BVXWDx/Dc0SnZWFu0Gv8HqckYZeZLue
 b0dksPSClo6Ml4YflsvWXns2XL3EzIQYbaUHpnAOH10I/0qOAySmASGvDaNsQrnipF
 ZGLUG8M/TtRMg58juxVe1FvVeuChB6XS4hvDRS4YfW8Sp/OXbROxKgrySIsNsWk1d0
 AIKWmjMtiHHP6C9K9DEjwOqOPMAvbySBGdb7KJvMnwkSHSOcMr+yeJMKUP+gfNpkUT
 sODbnhFkovcGWzzCvmAxPCki51PahRG3ht/q6+oqfEqqSAY/FQo+AK4KcM0ZgpcS/i
 W6qQLswUFV4qQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D4C0BA0067;
 Fri,  7 Jun 2019 15:29:48 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 7 Jun 2019 08:29:48 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 7 Jun 2019 08:29:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NEUz9BP+IEGV5CHVa+KOsr5is+kONtv4W32DwzTUM6k=;
 b=iSgSEC0ECP6msTWCpg5LVsFD0u5S66yLuZBYz2rxwXN8AstcPhedYmjsz7oYMh62y9vreHxqPxyh5uHeGvjyEqPsjXjlJxDHHtd69W6OF+RuoAk4n0z5KJ5+p5BQXtd6AB+sBneJmB2QPiMbPgtQ7iLa0AJdkH/oCc7+VZeI4Ek=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0261.namprd12.prod.outlook.com (10.172.78.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Fri, 7 Jun 2019 15:29:45 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 15:29:45 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: RE: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
Thread-Topic: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
Thread-Index: AQHVHUAjVMB3pYty50SaPIFY/ovMi6aQUK7w
Date: Fri, 7 Jun 2019 15:29:45 +0000
Message-ID: <CY4PR1201MB0120F4FE7C0E000AAAC5762DA1100@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190607144800.19234-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190607144800.19234-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 131ec354-54f0-4a70-14c2-08d6eb5cf87a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0261; 
x-ms-traffictypediagnostic: CY4PR1201MB0261:
x-microsoft-antispam-prvs: <CY4PR1201MB0261519800823CB202560916A1100@CY4PR1201MB0261.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(39860400002)(346002)(396003)(366004)(189003)(13464003)(199004)(5640700003)(6916009)(11346002)(2351001)(256004)(86362001)(14454004)(486006)(446003)(476003)(66066001)(25786009)(6246003)(99286004)(33656002)(305945005)(6436002)(4326008)(7736002)(8936002)(8676002)(74316002)(81166006)(81156014)(53936002)(71190400001)(5660300002)(2501003)(107886003)(478600001)(52536014)(6116002)(3846002)(55016002)(229853002)(9686003)(102836004)(76176011)(26005)(66476007)(53546011)(71200400001)(7696005)(73956011)(66446008)(66946007)(76116006)(66556008)(64756008)(68736007)(2906002)(316002)(186003)(54906003)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0261;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 834bCJwiiT80UFRiColSDSj2HuYAy6W6t+7HI+1TD6eQt95rEumtyExJph0abTZpY4Hg4yarQoaJWkwKtR6HWXmGofjPDEuArhR1qlDjzF7l3hr3GTnS14YSW3uPIQ812v3RQ1ELu5yNrzNiTIxCE+Pru4xFYbrOUjj5EZ7nvnxMv6TQdeuPflRC1CM0GApCDdCyJvqRuxjfzcvsVdjEB8TN2RUNAxt13hxJW1qZkKFVPWFIcQmakol/I9LG/yfGSJEaS4xr9qUT5baA8L1lfn2Og2hDBjJeXiBPV8qKRYgeQGaQV1QdyIpVso782EpsTTvW6aBecSy2WfHt2yoLiKh9DI/WMcup9A6zKlrUyjLRzCf7kExyHBHauRptsUQgTZpnNM46sWMKsrHeYetH1Xma8/2fDeudwLKaXJrcDtE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 131ec354-54f0-4a70-14c2-08d6eb5cf87a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 15:29:45.6031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0261
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082950_700688_EBC0EECD 
X-CRM114-Status: GOOD (  13.34  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>, Rob Herring <robh+dt@kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Eugeniy,

> -----Original Message-----
> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Sent: Friday, June 7, 2019 5:48 PM
> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com>
> Subject: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
> 
> HSDK SoC has DW SPI controller. Enable it in preparation of
> enabling on-board SPI peripherals.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

Adding Rob and...

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

>  arch/arc/boot/dts/hsdk.dts      | 14 ++++++++++++++
>  arch/arc/configs/hsdk_defconfig |  3 +++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
> index e57b24dd02e7..42e1c961ba48 100644
> --- a/arch/arc/boot/dts/hsdk.dts
> +++ b/arch/arc/boot/dts/hsdk.dts
> @@ -11,6 +11,7 @@
>   */
>  /dts-v1/;
> 
> +#include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/reset/snps,hsdk-reset.h>
> 
>  / {
> @@ -233,6 +234,19 @@
>  			dma-coherent;
>  		};
> 
> +		spi0: spi@20000 {
> +			compatible = "snps,dw-apb-ssi";
> +			reg = <0x20000 0x100>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <16>;
> +			num-cs = <2>;
> +			reg-io-width = <4>;
> +			clocks = <&input_clk>;
> +			cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
> +				   <&creg_gpio 1 GPIO_ACTIVE_LOW>;
> +		};
> +
>  		creg_gpio: gpio@14b0 {
>  			compatible = "snps,creg-gpio-hsdk";
>  			reg = <0x14b0 0x4>;
> diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
> index 0c4411f50948..ccfa744fe755 100644
> --- a/arch/arc/configs/hsdk_defconfig
> +++ b/arch/arc/configs/hsdk_defconfig
> @@ -46,6 +46,9 @@ CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_SERIAL_8250_DW=y
>  CONFIG_SERIAL_OF_PLATFORM=y
>  # CONFIG_HW_RANDOM is not set
> +CONFIG_SPI=y
> +CONFIG_SPI_DESIGNWARE=y
> +CONFIG_SPI_DW_MMIO=y
>  CONFIG_GPIOLIB=y
>  CONFIG_GPIO_SYSFS=y
>  CONFIG_GPIO_DWAPB=y
> --
> 2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
