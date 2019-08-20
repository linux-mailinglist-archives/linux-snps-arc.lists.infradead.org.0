Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBE295918
	for <lists+linux-snps-arc@lfdr.de>; Tue, 20 Aug 2019 10:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8pWVK9jEvEYevqvjsog2jvWuiDvboEPaoNqJrNW3G8=; b=Gcabtkhcv0bhPh
	zZOLIYZYLOMwGRbwGa6F3C/z65dKmsrQi5o9ZXqp2HHYDcX09VoIXxUMpolODHumIF3EP7CKEL9Bm
	GRLbMKj2JNGj9anCX6hktjoGRgvyuKt0eFCkCuIymfBr7DaoKujCGj+T80m8RD/NoM8LpvQak7e1s
	32Wsg5rf4ad05NcBsIzqjuJvyfTPdPIk7XrJvErRXB/gMdZsAarRxZiXlenU/syezWFiexTJKoxXu
	ggz3Zy/j5FnnjoR7hklfqBSUmT+zHtYmWPsT5+lcqj9YQikemi5aZiD2XLX5tF2pD0fLGyw97mzo8
	kz/fn5EnFfjfqW8ltbuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzAr-0005qP-JQ; Tue, 20 Aug 2019 08:07:25 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzAo-0005pf-8f
 for linux-snps-arc@lists.infradead.org; Tue, 20 Aug 2019 08:07:23 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3CCE3C03E1;
 Tue, 20 Aug 2019 08:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566288440; bh=ER97/70/yUqL+AJGZDU36BYIr+jc2MKTM+sho5JmBUU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=TOIQX0UA4T6tVZ9mvhsX/ETfIawr3raUDG0vORLkegfjHKKqHetqnH5+kaWG7ZtrC
 aR7WIL+D3ioYm0AUiJUKYqXPd4gWYd+511tNyVX3+XEVocAV9g05eMQVhOsalVThPR
 P4qS202TxoZ2ouqQePeR0M8PMDvmQYgWzgVtB0BVE2kfS+wMru49SUmIYADOkmaZzQ
 7DJHS+l1VJDWfUT8pRkwieMXDIjUsIYY4V3+NwbGti/jS3rR9PqvfxrbOMKsY8wAPe
 xN4P4Vuer8m6oDBmVO/O+ZeY0KistFxQVgY+dYOKESbQh+yaZOoE/pCnISj006g+IE
 hjlO8KzpYOKtw==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3F324A00FF;
 Tue, 20 Aug 2019 08:07:18 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 20 Aug 2019 01:07:17 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 20 Aug 2019 01:07:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNbDpWS7cuXeyFvGP6LAl3xA8gIgURy3v73wYtvHCvW7S/evcDjn4Jf1C1nhJSxqLTyLEfDSzXg2IzAjtnm6yb3m12fwdGv0mpN4eOlceLBCWObppsGKI5CwcMQqTGeOsJaU4pOn8E0qC10KhFunSX5xbAwOFEkhfaHtXSoO7hhSIiVgUZHW6vOLiMhrgq12u3+DJ22ZJz9id9vfeYs0eZIE0vp+QUr4SxnHFuig4wbh29eEL387BLRwHR7qG7FFMeHC9iQq+dChmYY0/1g7tXNclSlYpZE0cNGseijdN/cXSpKqTyPS3NYoc/G5z9YhZDZXfzPq0wggte2A6jYVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ER97/70/yUqL+AJGZDU36BYIr+jc2MKTM+sho5JmBUU=;
 b=TQzESdTfGnUMgUR6hBjnPBQzmWaCg63JEK9Fv0JU0sBJMZdSwnSCRYkiD3UPS8Cj6V4ogDXg/zFFSNUrlSA79qfbxL+EXQ/zae51zslFWieyiafccfIn3MGrq+ZSXR6iiH/DBbFCi/2GdUsW6zVn+CvC1jRLDO4qPamCDR/Ofgw+XekYaC+IfpkBoJayBbwunupUWJ/5T+v7GgtSEM8tbwBRS7kAYFi+9JXoTPTjn1svvut+KQwBjeE+erokJVUi43u6Zfbnlo7CKEaNtDFxmB6vBTEuxy3SZjtcDf6MU0llKEalkNUCJtkSdHUQjT1xIj8yBbn3CaVjqm+ag9RLEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ER97/70/yUqL+AJGZDU36BYIr+jc2MKTM+sho5JmBUU=;
 b=M2WfqIZxDuCVX2WNdkpOZh5EDJn7l7431llOmMhNAFqMcwdlLHVeXIc/EXsLYkQQnmqaUu1l64lxetJ+QGaVDwFuPbm9jSWdJaEV0BLIpgbReZT6UfLhIdx0dN5boFqqdU5RMJAeRPME31S6bPn0Tc/1EyVOlow5dYVjEJ7JdkE=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0024.namprd12.prod.outlook.com (10.172.77.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 08:07:16 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::69b4:d301:4e1c:c7db]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::69b4:d301:4e1c:c7db%9]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 08:07:16 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Ralph Siemsen <ralph.siemsen@linaro.org>, Joe Hershberger
 <joe.hershberger@ni.com>
Subject: RE: [RFC PATCH] net: designware: drop compatible altr,socfpga-stmmac
Thread-Topic: [RFC PATCH] net: designware: drop compatible altr, socfpga-stmmac
Thread-Index: AQHVVr4OGUV1f8JQgE6XXJ7dAjUoqqcDrW9w
Date: Tue, 20 Aug 2019 08:07:15 +0000
Message-ID: <CY4PR1201MB01205C73F3502FFB2F9192BFA1AB0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190819184313.8383-1-ralph.siemsen@linaro.org>
In-Reply-To: <20190819184313.8383-1-ralph.siemsen@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ff2265b-627a-472c-c15f-08d725456a25
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0024; 
x-ms-traffictypediagnostic: CY4PR1201MB0024:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB002450E6932E2512365A7F2AA1AB0@CY4PR1201MB0024.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(13464003)(86362001)(7736002)(2906002)(305945005)(8936002)(81166006)(81156014)(110136005)(6116002)(3846002)(8676002)(74316002)(316002)(11346002)(446003)(256004)(476003)(54906003)(486006)(33656002)(478600001)(966005)(53936002)(14454004)(6246003)(66946007)(76116006)(66476007)(66556008)(64756008)(66446008)(76176011)(66066001)(7696005)(99286004)(52536014)(55016002)(71200400001)(71190400001)(6436002)(9686003)(6506007)(53546011)(102836004)(25786009)(6306002)(186003)(4326008)(229853002)(5660300002)(26005)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0024;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HW516VbY4oN7xQ6uAvbDzJOQxiZebFSxV3ufq6LdJLKIP5aND91Kvkx+HRq09EgjSg8+RRuQL5ik8QFX/UmOtsuqZQJG7LhpWkCWeqUUpPcW/fk9y6bvZNspku0qZIav9HD3VFVR7KQjRi3pmmbMD6kHUVSvfvXMNrPj4L14DCf205YPtOmrwYr4xgPNACPEIjx2VzGiWp/ZFOJpbj0y8X9rZ2Luqz8AkitklDkCAeK/fr7F0RomCHrfhHzh5q+ZbEsaHDANUEDRQoIYZ3ldAgo05IGdbn/3wEJq0X2DoQ0+d/j2bJEU9e9mNSgWSPSd0Wk5W/xMAodpJu9wi+q7+Zr19opsvaNoNQjBwdt93ksVbqO91tuFmNmFC7K4UCkUR4qEEqA6nqUzK7iK4bZT6yU9HTCWz/rvMCjBHqV+9TI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff2265b-627a-472c-c15f-08d725456a25
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 08:07:15.8305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C0EsqRLnMiViWO4rN4WLHh9V14HSzmkDwmHCGYPWMc6jznWd/N1ONcgSp2LebH9yJV+m/N6feU7bqJpgdzppQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0024
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_010722_386651_57EFC35A 
X-CRM114-Status: GOOD (  11.27  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Ralph,

> -----Original Message-----
> From: Ralph Siemsen <ralph.siemsen@linaro.org>
> Sent: Monday, August 19, 2019 9:43 PM
> To: u-boot@lists.denx.de; Joe Hershberger <joe.hershberger@ni.com>; Alexey Brodkin
> <abrodkin@synopsys.com>; Vlad Zakharov <vzakhar@synopsys.com>
> Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
> Subject: [RFC PATCH] net: designware: drop compatible altr,socfpga-stmmac
> 
> The same compatible = "altr,socfpga-stmmac" appears in both
> drivers/net/designware.c and drivers/net/dwmac_socfgpa.c,
> creating ambiguity in which driver will be bound.
> 
> For Intel/Altera SoC devices, dwmac_socfpga.c is the correct driver.
> So drop the compatible string from designware.c.
> 
> Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> ---
> This compatible string also appears in: axs10x_mb.dtsi and hsdk.dts.
> Maintainers of those boards have been copied, kindly review.

Thanks for this clean-up.

Speaking about AXS10x board where we do have DW GMAC
I cannot recall the reason I chose to use "altr,socfpga-stmmac"
for the board here [1] 3 years ago.

But given we don't have any special quirks implemented whatever
is the most generic DW GMAC compatible string is should be good for us.

Joe, could you please suggest if we need to use just "st,stm32-dwmac"
or add our own compatible as the ASIC is not from ST obviously but
an FPGA with Synopsys ARC SoC?

[1] https://gitlab.denx.de/u-boot/u-boot/commit/fb2dea60e8f355ae00d427db09112a90839c96ec

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
