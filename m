Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3E86EFEA
	for <lists+linux-snps-arc@lfdr.de>; Sat, 20 Jul 2019 17:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZwSjysj9xtocNyiK6cnk8sTs3jPbIL+FXn25COZHhQ=; b=uZaKIhqbG5dwPa
	bVd/QF52LyZnnOgqfyVHoEdRU6pv4cCoyPLJi5aLjBT27VOlBw5EfLoP5am2L+EXASX9jMg4T12eC
	MoiYOheIO2chbRYcYJ1ZVs6nTrUQtOhVgjXAe7puj6TpMjSdv/dLjiab5qqMFgRHL0xN9pgbuHgu2
	YuT8p0oEXdkrbOoY60DmMO9/3kfCBtAFkOwi1+9ZlK+8TiZJ0Jj5p9o7o0hYJqUcnR/4nfudYnRZ+
	9IBvu4J7O9sA8dsRpfSPOtUw3tCn5V2FRhYx7N1ysw2lVIpqgnQC+eZIPT2YgyDL5WoLoeoGkqipa
	ZyWOZaj8qHFNCB0NAgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1horRD-0002uN-7i; Sat, 20 Jul 2019 15:38:19 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1horR9-0002tW-LN
 for linux-snps-arc@lists.infradead.org; Sat, 20 Jul 2019 15:38:17 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C25BAC0BD9;
 Sat, 20 Jul 2019 15:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563637094; bh=3Z7eQsZn6sgJj/f+0tYA3GNk55J7g0XqCGQ4K7HRHck=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=kz5Ro9CbGWMMJw7XYRJVwiKiu4Tr5ROCAbDyte7eIcEoyEPvRTAGiQ6y/v0LeaRbT
 wCVeWXG25qh8q3FrGgnWb5YnM8h2tWBna9ZTmhPOxfTugimFMys7wxXRbps7SeUS+a
 bsNqFZkE+He4OfbXxVF5gYiPXHB912VigdZFyflfTQtsZz3W2THT4hA8ngj5EuEezH
 HmOBaXhMgLfS6cyrtCz0M90DEn5D6iYHw2DSaCatgtrP6Ar3K66fg8FHz7tVDBY9tR
 27swzjy0XizOB1XUKsf2/NWN/vlUijUyV7Fvd30sxOr65vPxBBe4uEfCCLUXJlv6Vo
 NXyHZZGxV4Eqw==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 06F4BA0067;
 Sat, 20 Jul 2019 15:38:00 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 20 Jul 2019 08:37:43 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Sat, 20 Jul 2019 08:37:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHIHz4nvUmqaFd63Akt5hxK3xZiYvZPBr6UxtW+qXRMxFpm2Jw+VKHgKD6tZLWzfJ81VssRJgfQ1IA2rnnFrbIo6l4vB94GCSOCenoTzoonSGxDJE5QMif1rJNV6FYLe06j0Wr7ERInBniHOuo8khiCWtCzgGX46my7aFWqZu1Z95WxMQtIplTOCltP34Jko1jwQiULfI5HlzX+RQCq2K/bRcvZ1azardbbUeMd5vaff0+1a1Ma+AEuNCo/bKs/Kuc2aLjn6pBHhGihEmcHbOJPUxBuTDOjU2Xvdes0mLslQOIJsy1xgN1tWppx4PMdtaCCIvihpqs71qnX+acFjpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Z7eQsZn6sgJj/f+0tYA3GNk55J7g0XqCGQ4K7HRHck=;
 b=oFnwl+fKRkbMsWXRohlOM+pdKAHN1PMQCHT7U2wY/qvt5eiUi5rW9PipzrTPgbxCRFx97LhtmatJiaEtpzpP5wcEjT7J9vKo/z8d5cTuF24GyWCARv3WwGCuxeqvF6YnRX67vCKsYBLqGCPme6pd8h/TP3ivzGMDoaUufMvR8BgFSwvptA/gmbqgX3sfXVhyl6w7vCf9vlNkMdnvyYC2+7TJR7IciVQ4y2m+wRXmJ82tRM9R2EPIHCvdbIfbF6IZdPdM4su9pXPbGyRH6V5+HrUab8HbB+Td11G1sKQw1U4M0DmH9HkN+d6ydOjb+GTvTlI2LuM9W6zocjAdOjgCIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Z7eQsZn6sgJj/f+0tYA3GNk55J7g0XqCGQ4K7HRHck=;
 b=K5me4nNeFzCW1ArtnYOcD1mfPIYBG/wjSBRlsxlju40xCPCKeS7cGQJEzVNGsyEufTMIOA1iLeSUzr42uc5PMCxctwa3MMI7qSOSMs5k44MpZX2aJcbmw5ya/CtIhVlOEHYcOFIN2OIiFQexmLXQaFdlmxMUeGTNQgouzkYDkg0=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2733.namprd12.prod.outlook.com (52.135.107.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Sat, 20 Jul 2019 15:37:40 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a%6]) with mapi id 15.20.2073.012; Sat, 20 Jul 2019
 15:37:40 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>
Subject: Re: [TRIVIAL PATCH] of: per-file dtc preprocessor flags
Thread-Topic: [TRIVIAL PATCH] of: per-file dtc preprocessor flags
Thread-Index: AQHVPmg4jawoiv33Z0C0yAK8hCVHfKbSzE+AgADYbQA=
Date: Sat, 20 Jul 2019 15:37:40 +0000
Message-ID: <b2f24f32fead8bc9f282d2beb77d58ed3b98850c.camel@synopsys.com>
References: <20190719192824.24639-1-Eugeniy.Paltsev@synopsys.com>
 <CAK7LNARJjb3fgdo_dxPSv-vs5x573OHKf-UAUJGMc89Jfmk+QA@mail.gmail.com>
In-Reply-To: <CAK7LNARJjb3fgdo_dxPSv-vs5x573OHKf-UAUJGMc89Jfmk+QA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [5.18.205.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aba2be0e-c3d2-4090-4199-08d70d283374
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2733; 
x-ms-traffictypediagnostic: SN6PR12MB2733:
x-microsoft-antispam-prvs: <SN6PR12MB27336B696D3B0295648530EADECA0@SN6PR12MB2733.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0104247462
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(396003)(366004)(376002)(136003)(189003)(199004)(66066001)(99286004)(110136005)(14444005)(256004)(316002)(14454004)(53546011)(6506007)(102836004)(2501003)(76176011)(4326008)(107886003)(66946007)(5660300002)(91956017)(6246003)(68736007)(229853002)(86362001)(66446008)(64756008)(66556008)(66476007)(76116006)(54906003)(6116002)(3846002)(25786009)(6512007)(118296001)(2616005)(446003)(11346002)(36756003)(53936002)(71446004)(476003)(8676002)(81156014)(2906002)(26005)(186003)(7736002)(6486002)(8936002)(71200400001)(71190400001)(478600001)(6436002)(81166006)(305945005)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2733;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xAEprDNnHSUhMxBcF8HsqGBOfQz5RP3flUqN+p8TNu/4r0oxCFsQSsW+dK1IYSdXZf5DTG6BVlctJc8c+N5s4eRtXdXUmsIw3aSWK7ZcM7cxMVpO7nDq5pQLLurAlS69kUsRQJ7RS3KTJSjEcqoBEh7j/xoXt75RmyP4ft+Yiyq8A/LS1KmjpdTaaA351od07qCdAtQ5C/Gc9VDRioXVW4C0sAr4Tr7qrANd6pF9zCqeI1CbNYJP34aGMr3JaUZj89CHPa8AjTt7TXbxHwLhx+P4RvdimHJDNjRG1vgBS4J4wvkHzOv/uMtZq/1y8dSml/xBodaGGTYQn1Ax5LhUP19NtnpZQzwXzatgNQaQA/F/euzj16hWh7+67Tltuwce5w33jLofdrHXjQUVmbR6HVFgeLYGpyhw7y7/Z1aRbsk=
Content-ID: <FF127F5F7C65E642B19BDE983CF152BA@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aba2be0e-c3d2-4090-4199-08d70d283374
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2019 15:37:40.8325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2733
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_083815_772072_B9A30547 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.lkml@markovi.net" <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Masahiro,

On Sat, 2019-07-20 at 11:40 +0900, Masahiro Yamada wrote:
> On Sat, Jul 20, 2019 at 4:28 AM Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com> wrote:
> > As of today we are able to pass custom flags to dtc compiler but not
> > to dtc preprocessor.
> > This ability is required for including some board-specific header files.
> > It allows us to pass defined constants to dts without their duplication
> > in several places.
> 
> How to use this option in a useful way?
> 
> I see a bunch of defined constants under include/dt-bindings/.
> 
> If you are talking about code duplication across architectures,
> you can include arm dtsi from arm64 dts, or vice versa.
> This was made possible by the symbolic links
> in scripts/dtc/include-prefixes/.
> 
> Could you please elaborate your issues if you cannot solve them
> by the current strategy?
> 

Here is the example:

We have several FPGA-based boards (haps_hs, haps_hs_idu,...) which are involved
in SW and HW automated verification. For some tests we randomize physical memory
location so we patch 'CONFIG_LINUX_RAM_BASE' kconfig variable and 'memory' node in
device tree. We want to keep number of patches as less as possible (to avoid
conflicts on their applying) so we want to avoid duplication and pass
'CONFIG_LINUX_RAM_BASE' directly to dts by including it from
'include/generated/autoconf.h':

----------------------------->8------------------------------------
memory {
	device_type = "memory";
-		/* CONFIG_LINUX_RAM_BASE needs to match low mem start */
-               reg = <0x80000000 0x20000000>;  /* 512 */
+               reg = <CONFIG_LINUX_RAM_BASE 0x20000000>;      /* 512 */
};
----------------------------->8------------------------------------

This patch allows us to extend the search path of include files to
include 'include/generated/autoconf.h'.

> 
> > Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > ---
> >  scripts/Makefile.lib | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index f1f38c8cdc74..f2595a608dce 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -166,6 +166,8 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre.tmp -nostdinc                    \
> >                  $(addprefix -I,$(DTC_INCLUDE))                          \
> >                  -undef -D__DTS__
> > 
> > +dtc_cpp_flags  += $(DTC_CPP_FLAGS_$(basetarget))
> > +
> >  # Useful for describing the dependency of composite objects
> >  # Usage:
> >  #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
> > --
> > 2.21.0
> > 
> 
> 
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
