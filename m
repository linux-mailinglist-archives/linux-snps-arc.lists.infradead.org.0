Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DF56C26E
	for <lists+linux-snps-arc@lfdr.de>; Wed, 17 Jul 2019 23:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dhqO/V2Pc2uGxBvmNf021pmI8u+ejzO2cZRpRjFKtwI=; b=pTl3FYY+QT2/k1
	cNSDIv/sv/cN/jeGW9/gqsGtozJGBI1nzdg+3udBBFsfMA8dLDMKefn3Wk2xGJu7s4fJK504mkxSY
	uzfEXHmbHYwVDzOotl2QOwImEKFh41L20Dfa8oZPhNeD/sU68d7oPd0Yvogzc7Xn/FImz3DPB8TIr
	ecKgwG78dP0vucfwSmShr+lK21jV4awFfh2K3ewdUB5X/bB2EKJSa5+pwBQO92BhzQROvIb+P6b5E
	R/9V6ukFEBtlWmqbweswruqjfwRLskrvXNOhgJH2yUUTdrN1ofwls71Otp3BOXs55eiNARgSsUF67
	ZslFJOLUt1ERYeAcCHVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrBR-0006ad-0m; Wed, 17 Jul 2019 21:09:53 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrBO-0006aH-C0
 for linux-snps-arc@lists.infradead.org; Wed, 17 Jul 2019 21:09:51 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9A162C1209;
 Wed, 17 Jul 2019 21:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563397788; bh=oMgzyMefxkfuJDPpUiJAWzzK9z+tCAGY1s96GhyONuQ=;
 h=From:To:CC:Subject:Date:From;
 b=UeU6qmrtXMJbsNcDy3x1BXyAGgGJC+WaYV010XcrrNMxNFvbKvjWHLUV4PoIIeoyF
 ldHyfNB54SX/xhWHeNujZ0YzK5xM64vf5h8vNmvQC2m0Yy/R2u/JuEaDSCPSt39hK4
 jc7OkS3hfyR+2gN1WI+47COJ0NzLWpnrQfZAtEc3134kROcOuMaGoyCRkp3mUQLYDU
 BvKE0fxrPGsS/NyOCdcb2qIrTFgURX0ht6FwsKoI1yyWXcKq2UowQCg1rTOa4pIQdU
 hzuLME+Au5aTWDUaQEVdI/2dMvXurLcjCuwlJvUihikRT9fDdw67nwN1kRTVi97AE1
 PUBEvlA3Y/obA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EB757A009F;
 Wed, 17 Jul 2019 21:09:46 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 17 Jul 2019 14:09:31 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 17 Jul 2019 14:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=geMpjnX5LnkvINe9NY5/91NCeSOU+oXgJyXk8s/nsGIsLkPMjKLWuO0nb7RKtH5ByWCqyrNi9jpxLhnoEgM0eFI17pXOLspG9j2X2CBigkoejjNcsAeYxhEh/Ol9eSY/W97zRk4gXw1P93jFYaUZliLP7m1ejTHDybrIcRGrXOzZM/qJd6Nds7dD+l1pZ5o+NSBYKRu2hbzko8y9LieQfJrRqACHfZPYeg5FgGgrJpZwzVjxGAkHBwUMz3fRFarlqqt1DWM6ygpCTN4K2aa38VrTF8I7nwCLiFB+tMPtcgD0u7IDPK3glPg4mxlu6VWmkJKGiKakSHTDV2W0s9EOvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vaxCEr9ghSmdC4vUAR4GZOTelrm+iqD1427EbYqt4rw=;
 b=TDyl3O9wA7EqJtZWr7Uet7XwuiXmoLoh2yNsJp8sTPAYuclundFNZH0qhcL/qDZXvBEsoI5XL/4HQTOmcnKtJIgQv5/pfyUp87bxN808T2zHapJ/4RYQCOp+TEA2adYkIFGaLkc8X6UuKGiQGYh1BzRBM6PRk8e6iTEzxUYHrwFFnrc476EgkT1kIDTUkECb8BkVACCmGxigT3UZPhyBp9/7t85dAuCqSPsKoddOOR9rBz0FVqAd6MAUrnf5Y6KpxAd6N5UoidiV4uvlzyGsAiD7CjpSsFWGFrPOfKseHBWLDoI2tYF2YZaS6TC5iMxZ0xhk7KZLJ6HGzpayxed8pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vaxCEr9ghSmdC4vUAR4GZOTelrm+iqD1427EbYqt4rw=;
 b=ClRbmvmOJYZj0h/bLfSwSQOEeYm3SV+tHHYSwpsL4WCuxy3ooTOhhTAkCSEjiqkM+CLMYAUykd+lJzarE9yVVf+4caEqbZzBt1Boj6g0JL5jomey9SUKXlkeLlOFBJ2WEGpbJhljgfHJUPcLkZZftUhGr/ybdkGfaXBeMiwJ+Zs=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0021.namprd12.prod.outlook.com (10.172.77.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 21:09:29 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 21:09:29 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>
Subject: [GIT PULL] drm/arc: Minor improvements
Thread-Topic: [GIT PULL] drm/arc: Minor improvements
Thread-Index: AdU84kwKkbpOuRO9SbWDn3t0PURjrw==
Date: Wed, 17 Jul 2019 21:09:29 +0000
Message-ID: <CY4PR1201MB0120FDB10A777345F9C27720A1C90@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0b291ee-65f4-4757-ddb9-08d70afb0ede
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0021; 
x-ms-traffictypediagnostic: CY4PR1201MB0021:
x-microsoft-antispam-prvs: <CY4PR1201MB002110CC9984C3E9A10E9B72A1C90@CY4PR1201MB0021.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(39860400002)(366004)(136003)(346002)(189003)(199004)(186003)(4744005)(102836004)(8676002)(6506007)(256004)(4326008)(33656002)(25786009)(316002)(7696005)(66066001)(81166006)(110136005)(81156014)(71190400001)(8936002)(54906003)(26005)(71200400001)(476003)(99286004)(6436002)(55016002)(66556008)(9686003)(53936002)(64756008)(66446008)(66476007)(74316002)(6116002)(305945005)(52536014)(7736002)(86362001)(66946007)(3846002)(68736007)(14454004)(2906002)(5660300002)(478600001)(486006)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0021;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3m2eQMyV7U972qBdKIKIYT4y/hex+I9xBGmxLKw0EScadEQviax10g9GP47kTvRJmCDW/kvMIwum6hKZI6YywIJDQFSprUSvUKxDfGguK6isCxD11QzLBSKkmxFCfmMLopNONra/nIXma7G6DJqQbqVXC8QznPDCLiRPHD0PDk2Fegt4d8NIhasOdXge7TJ790zO4jBvwQcgMvfCX2oAhZKBmqBZGCkhgxoxCs54zmReB3RGtqoNGkOKRZ8NE3vm/SXsSeHE1mI5KhmIU3mFF0SEkkxhUDNgojcqNfv3LsEc3NANGTnShGXSTyS58iLf/5QxYrWOjx9iiCyV0whOMxlAmtxQYM0zuVpExYZCR+Bq2+DCfiJHrIxbe+MXR/voFhEu5pIIrmQ5nS1eh00K3X0BL0vNit0p1ML9H3s5mc4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b291ee-65f4-4757-ddb9-08d70afb0ede
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 21:09:29.7710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0021
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_140950_461586_1273BDB9 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Dave, Daniel,

The following changes since commit 7aaddd96d5febcf5b24357a326b3038d49a20532:

  drm/modes: Don't apply cmdline's rotation if it wasn't specified (2019-07-16 10:34:38 +0200)

are available in the Git repository at:

  git@github.com:abrodkin/linux.git tags/arcpgu-updates-2019.07.18

for you to fetch changes up to cee17a71656e9e1b5ffc01767844026550d5f4a9:

  drm/arcpgu: rework encoder search (2019-07-17 23:36:56 +0300)

----------------------------------------------------------------
This is a pretty simple improvement that allows to find encoder
as the one and only (ARC PGU doesn't support more than one) endpoint
instead of using non-standard "encoder-slave" property.

----------------------------------------------------------------
Eugeniy Paltsev (1):
      drm/arcpgu: rework encoder search

 drivers/gpu/drm/arc/arcpgu_drv.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

Regards,
Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
