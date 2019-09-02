Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD1AA55DB
	for <lists+linux-snps-arc@lfdr.de>; Mon,  2 Sep 2019 14:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TolqQ1a/71spxFJezNRUh2qvLdZsOCEQ4XK3C2QRK5A=; b=kiHRgAYLfDJ+D9
	FvH9jq9+aW9QkuGQHxM0zlx+Pu9pMO8f/MCA97Ckp/i3YBALXTnXLSXiWB6lWtT7VxgeTMjWV67nK
	PC4T4EUWW6wbuR1eega6JrrN0MswZp/QKpi/pmbsykpbhHcXsty+KLxYCIuznV9eOLWnaRevHbBrm
	ecJK/Cqlezsfz0nAgnfSDNB8w/qoWqbwCwJYccgnyZBqH/P7WGn8lTCpfqMrT05zlQv1Q12fuFla1
	CtIgwpU1KnT0U86LfQlB70yeq7kFR88ZXF+Ez8q0yYJSZGdGmIls8n2g2mPOUuICkz1v76FaOiSZF
	HdU2TbnRP5VD2PmOrpFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lOB-0002SK-27; Mon, 02 Sep 2019 12:24:55 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lO6-0002Rt-9W
 for linux-snps-arc@lists.infradead.org; Mon, 02 Sep 2019 12:24:53 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F2FC0C0B70;
 Mon,  2 Sep 2019 12:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567427089; bh=I8RrSj2xTbHPbbEz6vBD/6MXsu2abUvLjuiYx5e4Ua4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=l3OhqSvHfKjSVmGBY8OdpFSR9+ITSr9uP/nUTdxENTBJpgoRb3x+Ksfj/d2NXGL2E
 vSjUYFsO04zUAVCADB/hrPQ9d1BuJb3n9j4m+Bv9EVfCnCjgg3p2MObPWjw5HYuoBv
 pAaPEIPEj6u6uE74+bkYorA1Ub6SofRbGRgN0vjwA9aMUoLiYZ0HeZA2/lvVE27WjS
 SxRNEjE+cIKJsVv3Hmctt/5FAkoXOxrR0ozIrfqXdImf/LohyCPm8VOjYDKG/iXb1q
 yWt1HC5BAcHLzhK4S2+3Q/t1ZnEy8fxdkcqy+6ZZExGrMGc40xxE2AiWIs4cRhSp4u
 8G4GZ8oh27YQg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9129AA0070;
 Mon,  2 Sep 2019 12:24:44 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 2 Sep 2019 05:24:44 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 2 Sep 2019 05:24:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTDItS/0O6OTiKGEfP6ulIjSVs+KFDyTL4js9Zeg3zcQ40lHqSwPHQjWkUEHvoVCxDVLvWxE8jXidOeclSij+Mjnz724bw+1C4AP612NX3BlJdL9tHg7gB6hwGhY/9yfbjp1HBd1Z4S9VmI9bTZAFlM7w1CHuUZzDCs2IiQwn9P9DOYsWqc4/y5yTECDp7TojVsyRhZFgX7OppGEgsyT1XQ4AvhmsqMpQa3sPdE4/J0Eqn3VUrKBNP1+amez9dbJUk5b5/CXzRnRaFFtPita94W83na2837LnE2K2lKT5s0ZPwtwrcaVYVzaPwhCFsGMNOQ66c5bJwiF98xwfqHh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8RrSj2xTbHPbbEz6vBD/6MXsu2abUvLjuiYx5e4Ua4=;
 b=JZwxyxfFgXIo5rHHEJTlir7OsNzoAyVA3mJyNxsGzv+Z8RKpMb88ww795pElsw6SMIHs0qGt4s1Rk0VprkLPhvXze6M3dI+m4LbFWo1ibsiIDMQlsVeU70LNumwrWBpeMidsrrJjJeOPc4fcKsOZp44xCLgyYApmaby2axF6JLHdYWCTwvQbO3nsFvvqFmF8njWLscH9khaYrC39bX1juuly0z2dN/2z7T5TG5jYDsi8FYYraVC44tfcwXbC0IQSq1Wy7ZUCRDqoBpqotpHMkG+sdWwaC3GIDrgBm4dJpYgOfJFYlvAt4XT5zrmeYKaxeksaBl3XMoucjTZJDqlv6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I8RrSj2xTbHPbbEz6vBD/6MXsu2abUvLjuiYx5e4Ua4=;
 b=O7uSsyA+ghLMA4o1JBqjdHSdGA3eE6NIHq1VxH2DKgVTRUqnAs2jsqh9g7rzJZRkSs9u4yCaUDcO4pS9uOi5w4yFgubFCbkuzUDL395f90BVysoOR9JzJi1jEI+ELSF5J1ngEf1QMVAux7V0NMmG0V+um/AhC/w31Gv0gLkqUDM=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2485.namprd12.prod.outlook.com (10.172.117.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 12:24:42 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a%11]) with mapi id 15.20.2220.020; Mon, 2 Sep 2019
 12:24:42 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Kever Yang <kever.yang@rock-chips.com>, 'Tom Rini' <trini@konsulko.com>
Subject: RE: [PATCH] mmc: dw_mmc: fix timeout calculate method
Thread-Topic: [PATCH] mmc: dw_mmc: fix timeout calculate method
Thread-Index: AQHVXjna+DfPeOAAxEeloY2F1kIiY6cR1rxAgAEIxoCAANFXsIAEXOKAgAAbhwA=
Date: Mon, 2 Sep 2019 12:24:42 +0000
Message-ID: <CY4PR1201MB01202FCF2BF2C1F75F5DE354A1BE0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190814083819.5784-1-kever.yang@rock-chips.com>
 <AM0PR04MB44819DF46C4A0C68844F13C688A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44819FF9900E879AA261324B88A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <3a4fc838-0cc9-64c8-3993-628cce6484c5@rock-chips.com>
 <CY4PR1201MB01207C7EEBA298FDD2B57711A1A20@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <c322fb38-bbc4-545e-c418-0f3eed2bf1e3@rock-chips.com>
 <CY4PR1201MB01204C5C461D25197D3B11D5A1BD0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <bbfdedf8-318a-271d-fc64-472a0017583a@rock-chips.com>
In-Reply-To: <bbfdedf8-318a-271d-fc64-472a0017583a@rock-chips.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1588151-0f37-496f-c52a-08d72fa08872
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2485; 
x-ms-traffictypediagnostic: CY4PR1201MB2485:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB24858E02135A842A90333414A1BE0@CY4PR1201MB2485.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(346002)(39860400002)(366004)(396003)(13464003)(189003)(199004)(81166006)(86362001)(55016002)(476003)(446003)(11346002)(102836004)(81156014)(76116006)(66946007)(486006)(8936002)(316002)(110136005)(8676002)(256004)(4326008)(25786009)(33656002)(99286004)(478600001)(966005)(305945005)(7736002)(2906002)(14454004)(66556008)(9686003)(7696005)(6116002)(3846002)(76176011)(54906003)(53546011)(6506007)(52536014)(186003)(5660300002)(53936002)(6436002)(6246003)(107886003)(71190400001)(64756008)(66446008)(6306002)(66066001)(26005)(71200400001)(229853002)(66476007)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2485;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OsaP13o7s6+aw7oXtAaThbAUj4E5lxSXvKDv5j8s9HAwVCjZe3WYSm+U2xddniOH6NPFNJK0Lx8+q7/vt+Om3SDDAhRPxuHJ7r4BFBqblAz3vlkxEld+GEIU0gHR9ChNYmzHBcNbrAYbHVb7NmtIhsO4JtPvk0Qzaj1J8z6UVAR4+tHmeFobmqbXN0BTdvWl9P9wUtnxK5HSZmlJLA1ftushaRjUElzJWKcKnXGGI/YV8lUjTA5upiDHquULGEcxO55uRBwYdUD83A3sMsNSS/GhJb+K3Q4CpQw5jh8Fl/eB3pWqJrYlWcbtv4HnScjOfGtezKFG9aUVJHZTy4SRlxzbicvgtlqzURsQ+vujzzjPzeg5PSBTOFL4kTNvFT/RQqquGU827lDxiH4AbjWJZk9zuDkxd8Iw6uSdfL4vnYI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e1588151-0f37-496f-c52a-08d72fa08872
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 12:24:42.5580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6v1sj5tWgN2FSiEcn6cyjGrv7lEoHEhbjhe11mMl00GGrS/qTnrVEQWvFLlZeEcefOHmB9ifZ8oR8Wf7xdDmJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2485
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_052451_657658_85C862F4 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "trini@konsulko.com" <trini@konsulko.com>, Peng Fan <peng.fan@nxp.com>,
 Simon Glass <sjg@chromium.org>,
 "uboot-snps-arc@synopsys.com" <uboot-snps-arc@synopsys.com>,
 "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1i
ZXIgMiwgMjAxOSAxMTowNSBBTQ0KPiBUbzogQWxleGV5IEJyb2RraW4gPGFicm9ka2luQHN5bm9w
c3lzLmNvbT4NCj4gQ2M6IHRyaW5pQGtvbnN1bGtvLmNvbTsgRXVnZW5peS5QYWx0c2V2QHN5bm9w
c3lzLmNvbTsgU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+OyBQZW5nIEZhbg0KPiA8cGVu
Zy5mYW5AbnhwLmNvbT47IHUtYm9vdEBsaXN0cy5kZW54LmRlDQo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0hdIG1tYzogZHdfbW1jOiBmaXggdGltZW91dCBjYWxjdWxhdGUgbWV0aG9kDQo+IA0KPiBIaSBB
bGV4ZXksDQo+IA0KPiBPbiAyMDE5LzgvMzAg5LiL5Y2IOToyOCwgQWxleGV5IEJyb2RraW4gd3Jv
dGU6DQo+ID4gSGkgS2V2ZXIsDQo+ID4NCj4gPiBbc25pcF0NCj4gPg0KPiA+PiBJIHRoaW5rIHRo
aXMgdHJlZSBkb2VzIG5vdCBpbmNsdWRpbmcgdGhpcyBwYXRjaCwgUGVuZyBkcm9wIGl0IGJlY2F1
c2Ugb2YNCj4gPj4gdGhpcyBpc3N1ZSwNCj4gPj4gc28geW91IG5lZWQgdG8gYXBwbHkgdGhpcyBw
YXRjaCBpbiB5b3VyIGJyYW5jaCB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0uDQo+ID4+IEkgaGF2
ZSBzZW5kIG91dCBWMiBwYXRjaCBmb3IgdGhpcyBmaXggd2l0aCBvbmx5IHVzaW5nIDMyYml0IHZh
cmlhYmxlDQo+ID4gQ291bGQgeW91IHBsZWFzZSByZWZlciBtZSB0byB0aGUgcHJvYmxlbWF0aWMg
cGF0Y2ggc28gSSBtYXkgdHJ5IGl0Pw0KPiANCj4gVGhpcyBpcyB0aGUgcGF0Y2ggd2l0aCBwcm9i
bGVtLCBhbmQgaGVyZSBpcyB0aGUgbGluayBvbiBwYXRjaHdvcms6DQo+IGh0dHBzOi8vcGF0Y2h3
b3JrLm96bGFicy5vcmcvcGF0Y2gvMTE0Njg0NS8NCg0KUGxlYXNlIGZpbmQgbXkgZml4ZXMgaGVy
ZToNCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTE1NjU0MS8NCmh0dHBzOi8v
cGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTE1NjYxNy8NCg0KVG9tIGRvIHdlIHdhbnQgaHR0
cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTQ2ODQ1LyBhbmQgZml4ZXMgZm9yIGl0
DQooc2VlIDIgaXRlbXMgYWJvdmUpIHRvIGJlY29tZSBhIHBhcnQgb2YgdXBjb21pbmcgdjIwMTku
MTAgcmVsZWFzZSBvcg0KaXQgd2lsbCBiZSBzbGF0ZWQgZm9yIHRoZSBuZXh0IG9uZT8NCg0KLUFs
ZXhleQ0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXNucHMtYXJjIG1haWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
c25wcy1hcmMK
