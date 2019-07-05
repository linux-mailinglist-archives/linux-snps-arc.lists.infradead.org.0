Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B118C609EA
	for <lists+linux-snps-arc@lfdr.de>; Fri,  5 Jul 2019 18:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIwq7afqPIpJGhLVawz0LXdjWOc1vu7IBz2t29zEa68=; b=FRt2fjcKs9Z3HW
	DY/GZhosnzgkgteaZTsmiFJ2DkBK30ZIY6Gdc2weswmhTG+Y6/rgu69/GOLZlb50NywUOY2XD9VZi
	XVhFyyf5YmEsJ5+NROQQwmct6FDavmo+FhqIk4MfPkwcYYhWe2naag3RvI67SkgsXWcAxCQLPD3nA
	TowAlGbVWHUJuoucEQ0/9KU6Pcyh0xq3donfJxCuG2oPaZXzCHes4Lv1zPReHuI59PktaimsK0xMn
	dxpC6GVDE8B350b1GOqfsDiRKfTKR3Bry6Oegv+caNo8rMymEYquWOo7q53RaKSZP/37EB811aBL3
	KNcX3zRkmKNfMMlCiSCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQgt-00053o-HM; Fri, 05 Jul 2019 16:04:03 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQgr-0004ws-H7
 for linux-snps-arc@lists.infradead.org; Fri, 05 Jul 2019 16:04:02 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB7AEC1226;
 Fri,  5 Jul 2019 16:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562342639; bh=2Fvf8cBAp60F0f5iVvH18pN0k76ZfD6wNx0DKswToEc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=CZltAcKaYA6IqDQiezkTEUGvUj5HGqoBsyaQJZZ5AdPbLzQGv7lNiFYk7bBnjn7Dd
 l6AYQS0tXNJxZRayzvN+KXOMalOSD98qHee00pfc+yCiwD1tZ4sbeE8hH/QDEvuW9F
 p/2zD8qo7qkbao+qclgphXuDa7XIuxQdKLHRkq475HRza1EX1O9XiOTAzzUU76PSkz
 IC+6ZGgrc27+w3WV15UQAsGaIdidE4QFyn3rWo09T8vNeCsxOxuBrmu9sS1HMEhAJk
 LXKOtRfUO0Lw8O3D0FI2I6TBQbL1hL9jjrSVcqyR7Vb0QJLXJ/jX4F4tcs2BusX2gM
 Dbj4cc4/IvA8g==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7C9C6A023B;
 Fri,  5 Jul 2019 16:03:53 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 5 Jul 2019 09:03:53 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 5 Jul 2019 09:03:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Fvf8cBAp60F0f5iVvH18pN0k76ZfD6wNx0DKswToEc=;
 b=s6vuf5dsTiYOlclrIY0tBM4/1fZGbGjIK42SA9vCR74mwXL6rBM7vs9EtCwhNcw/jBDAJFBvlBhuPOQo6h0mIJf/sII/q8V/wdyExrBTK09p30+T/b+1cygwhMFwilPBajAxAb7LakH5T122zAV3Blc2+FmZD90V7pbDy/2pzRg=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2829.namprd12.prod.outlook.com (20.177.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 16:03:52 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a%6]) with mapi id 15.20.2032.022; Fri, 5 Jul 2019
 16:03:52 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
Thread-Topic: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
Thread-Index: AQHVHUAiWFZlgltnUkiza42/ua9nLqaQUSqAgCwKzoA=
Date: Fri, 5 Jul 2019 16:03:51 +0000
Message-ID: <8e8d7e3fb497a3760bc0979457ae1bae77ecc561.camel@synopsys.com>
References: <20190607144800.19234-1-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB0120F4FE7C0E000AAAC5762DA1100@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB0120F4FE7C0E000AAAC5762DA1100@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30cc707a-7982-41aa-9b6d-08d701625fc0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2829; 
x-ms-traffictypediagnostic: SN6PR12MB2829:
x-microsoft-antispam-prvs: <SN6PR12MB2829B8A6331CC231F8DA6D37DEF50@SN6PR12MB2829.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(396003)(136003)(39860400002)(376002)(13464003)(189003)(199004)(71190400001)(71200400001)(486006)(25786009)(4326008)(229853002)(66946007)(76116006)(64756008)(66556008)(66476007)(76176011)(186003)(73956011)(91956017)(66446008)(102836004)(53546011)(11346002)(316002)(6916009)(446003)(26005)(81166006)(2616005)(6506007)(478600001)(256004)(476003)(5660300002)(81156014)(99286004)(6246003)(2351001)(14454004)(3846002)(6116002)(53936002)(305945005)(68736007)(54906003)(118296001)(7736002)(36756003)(2501003)(8676002)(2906002)(5640700003)(8936002)(6512007)(6436002)(6486002)(66066001)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2829;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3oVOAsNiAVysc5UW9b81v4Zi7pmA+dju4cp9fekHlBjltu+ZQTs8icNbxic4odd54TiU9tLuZEi3LGGynG4zMGLry3jw/hvTnrrDYrkxvSeeWY1ndvbTuWmYfEkAnWymEw22eQ5iB+tNupKrRULWrBo0VAZbPyotEmxcogojY5CindngUxRq6ltfNk2TrJ1niyzsT9mri+F7tyCQKXpSr3rHYoMudAmQAQbAkaF5h3vTXcM0p8AC/0+WMbaaqQDpYR+l/+P+59JE5hprX40KQW+j3J6+/GOef/0ABtrRlh5kN34ZJ1wyppfQamrGGI1EToRvN6hIwF5CkPuKSb9hmRR2uc8JQZKvQlM/5K1taCE7BBCLBsKjT3P1nKPCIxstfKTsCOkcUMdlipTtSStkaL0ua/5qp/SqHL3xGrAOWzY=
Content-ID: <1B42A07E3A101B40B708DC98221ABE7D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 30cc707a-7982-41aa-9b6d-08d701625fc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 16:03:51.9796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2829
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_090401_599263_CBDFC6BF 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet  Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

I guess you'll add this to 5.3, right?

On Fri, 2019-06-07 at 15:29 +0000, Alexey Brodkin wrote:
> Hi Eugeniy,
> 
> > -----Original Message-----
> > From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > Sent: Friday, June 7, 2019 5:48 PM
> > To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> > Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
> > <Eugeniy.Paltsev@synopsys.com>
> > Subject: [PATCH] ARC: [plat-hsdk]: enable DW SPI controller
> > 
> > HSDK SoC has DW SPI controller. Enable it in preparation of
> > enabling on-board SPI peripherals.
> > 
> > Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> 
> Adding Rob and...
> 
> Acked-by: Alexey Brodkin <abrodkin@synopsys.com>
> 
> >  arch/arc/boot/dts/hsdk.dts      | 14 ++++++++++++++
> >  arch/arc/configs/hsdk_defconfig |  3 +++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
> > index e57b24dd02e7..42e1c961ba48 100644
> > --- a/arch/arc/boot/dts/hsdk.dts
> > +++ b/arch/arc/boot/dts/hsdk.dts
> > @@ -11,6 +11,7 @@
> >   */
> >  /dts-v1/;
> > 
> > +#include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/reset/snps,hsdk-reset.h>
> > 
> >  / {
> > @@ -233,6 +234,19 @@
> >  			dma-coherent;
> >  		};
> > 
> > +		spi0: spi@20000 {
> > +			compatible = "snps,dw-apb-ssi";
> > +			reg = <0x20000 0x100>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +			interrupts = <16>;
> > +			num-cs = <2>;
> > +			reg-io-width = <4>;
> > +			clocks = <&input_clk>;
> > +			cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
> > +				   <&creg_gpio 1 GPIO_ACTIVE_LOW>;
> > +		};
> > +
> >  		creg_gpio: gpio@14b0 {
> >  			compatible = "snps,creg-gpio-hsdk";
> >  			reg = <0x14b0 0x4>;
> > diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
> > index 0c4411f50948..ccfa744fe755 100644
> > --- a/arch/arc/configs/hsdk_defconfig
> > +++ b/arch/arc/configs/hsdk_defconfig
> > @@ -46,6 +46,9 @@ CONFIG_SERIAL_8250_CONSOLE=y
> >  CONFIG_SERIAL_8250_DW=y
> >  CONFIG_SERIAL_OF_PLATFORM=y
> >  # CONFIG_HW_RANDOM is not set
> > +CONFIG_SPI=y
> > +CONFIG_SPI_DESIGNWARE=y
> > +CONFIG_SPI_DW_MMIO=y
> >  CONFIG_GPIOLIB=y
> >  CONFIG_GPIO_SYSFS=y
> >  CONFIG_GPIO_DWAPB=y
> > --
> > 2.21.0
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
