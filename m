Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832A11CE29
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 May 2019 19:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O9n4Lwnsywv6o4Q15ph7v0rktonMD7oF64QRw10/eZA=; b=ezjlzye5XlYrQM
	JCs/vG/2VTDIX7hFyYvpRFosLstf48i2Ux1XMbas1ougFcqblV6yakVQZw8YJiEoiAPZI30TQ5eW1
	BG3g6qipgQ0E+aFJ2tQ/o9fkdkD46vgLRl/z+hTMVq+AOnkw4mD4HOjTSEeYGP4TSTgmyCRa93iAq
	s6KEzyw1qa+wHfKAY+HoiVvh+2aBiW6uNLn2NU8K1xQaZJMm+c5oKijxuIi+Iz6DJIz4qfAALqKty
	yLV1QVQta6ZQM+9f7v/hmRtJhwbjcNc4CBr5g2YMgAOMM+0k1MnQYZEX9HPXQay/ve4IZAL5BuW5b
	6lcsKzYt56QDjz7vxm6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbPl-00005I-Af; Tue, 14 May 2019 17:40:33 +0000
Received: from mail-eopbgr810095.outbound.protection.outlook.com
 ([40.107.81.95] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbPd-0008VU-3P
 for linux-snps-arc@lists.infradead.org; Tue, 14 May 2019 17:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hQDxnY1/HgEhhDuoyFjpYuAmgm0Xg0oF73+zQh0PFYQ=;
 b=oPx2ZGzkNiOIQtxFyPtW9f44npJHVPYjov1lTK349Y992uhViKdiuMmdpZ2SJE83zhU2cP0yyGufuY1vRgEiN4pBshrwbiYr0clc0Cf81zLZAYxst7Ag7EEXCFA7l5kKUupbUdyishUebmUWdcgufB2/5FdOMobX+F3xVggr/E4=
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3722.namprd06.prod.outlook.com (10.167.236.139) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 17:40:15 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::b496:85ab:4cb0:5876%2]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 17:40:15 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsg==
Date: Tue, 14 May 2019 17:40:15 +0000
Message-ID: <20190514173941.20046-1-tpiepho@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0041.namprd05.prod.outlook.com
 (2603:10b6:a03:74::18) To MWHPR0601MB3708.namprd06.prod.outlook.com
 (2603:10b6:301:7c::38)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tpiepho@impinj.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ca0efb5-0e0e-4024-03b5-08d6d8933942
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3722; 
x-ms-traffictypediagnostic: MWHPR0601MB3722:
x-microsoft-antispam-prvs: <MWHPR0601MB3722E392D8740EC4215663E4D3080@MWHPR0601MB3722.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(39850400004)(136003)(366004)(346002)(189003)(199004)(386003)(66476007)(66556008)(2351001)(64756008)(66446008)(5640700003)(14444005)(6916009)(6506007)(1076003)(73956011)(316002)(478600001)(5660300002)(66946007)(6436002)(6486002)(102836004)(256004)(54906003)(14454004)(36756003)(8676002)(186003)(476003)(50226002)(53936002)(4326008)(71190400001)(2906002)(81156014)(81166006)(6512007)(2501003)(8936002)(71200400001)(99286004)(7736002)(26005)(486006)(86362001)(305945005)(68736007)(52116002)(66066001)(6116002)(3846002)(25786009)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3722;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: impinj.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G5RqJ07QKKSRx8H14g+z6PiXS3keuplBmo3gwgk74eXaaFjHVpLWnNZ/mjoZS0AguqA4Ev5uz6+xEysmyNd7avPEHtDhiNmWHpgGd9UUNDlkxdYJom7GzbhMgUPrBSTbhooX0LGjBT2gkNmgOvyfbTS9DE3Y0wK2NATgArcqp0jdacWCFZVuggTgiPpM3FZbWBq8y4QzKes68pcfSXphp0KmkJPnMqrGyDJzFMEccyqZDt0ie1Q8Cb1CINz7YDb86XChRnp+R9VrMHDkKPC7JvZDCnYq546FxBVbTBgr1Cji3Boq3zv/vN50d8hYpZYh4dy/i262mCOfq2c4xumWyyllvGY2sp6n/4teRuqXACAWFDA8lwTTN4csXy1DzNgoL3wc5lOxuiozcWjZvTDG1CcKNBZfajCUN7sSOYzPulI=
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ca0efb5-0e0e-4024-03b5-08d6d8933942
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 17:40:15.5075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_104025_905211_8F85BB53 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.95 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vineet Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Trent Piepho <tpiepho@impinj.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

If internal delays are desired on the RGMII link, "rgmii-id" should be
used as the phy-mode rather than "rgmii" .

This dts has properties to set the delay values, but they are ignored.
I suspect this is a mistake.

While the driver should disable delay based on the current DT, it does
not, and instead leaves the PHY in the pin strapping default.  Which is
usually to have delays very close to the unused values the hsdk DT.
Which is why the phy would work even if the delays in the DT are
ignored.

Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Trent Piepho <tpiepho@impinj.com>
---
 arch/arc/boot/dts/hsdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 7425bb0f2d1b..d77b27894ab6 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -185,7 +185,7 @@
 			reg = <0x8000 0x2000>;
 			interrupts = <10>;
 			interrupt-names = "macirq";
-			phy-mode = "rgmii";
+			phy-mode = "rgmii-id";
 			snps,pbl = <32>;
 			clocks = <&gmacclk>;
 			clock-names = "stmmaceth";
-- 
2.14.5

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
