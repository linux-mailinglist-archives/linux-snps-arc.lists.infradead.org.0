Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9F132AE4
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 10:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6H+qz3LDhebH/mnC/8DW6EZijDcXSENF7L5zEN05yF0=; b=aJtj7nKA/Q57Sj
	B520YSOiBe/kNqDICZNaobkI3bfUZ2+WFhWntWJSkBl1/Z6wz/TP6UWUDn2JjT5bBjyfuQ5GGHmv/
	JS60lZD9dYSOMwEA3Wz5cRaBX7TXrYFQ2CsuwOJWJO1W2Ll0eWkwIcgSa25XrTNsv2ehCZXKws/1v
	swOIUMbrPk/rSdmsFEobH8FVrjf8lefdmC27+HU261Y7fJPSSm8uXbQmQPVaZ8kNb9vfDdrr+xnuz
	lgWKgaKCZoROhHglo8gCopmJwYfpHoMxpKMfwVm6qg4EPSSSgCDcWPN/XpyvdGAKHyuNc9Bul2845
	WYJFikkMM6rzB6kSYjcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiOc-0007BC-Vz; Mon, 03 Jun 2019 08:32:46 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiOa-0007Af-9d
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 08:32:45 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C2BCCC00C2;
 Mon,  3 Jun 2019 08:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559550772; bh=1anZ6n96qPjUq+TNr+4p0BS0uFDFXv1e1eY6/NKjLfM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=EjnkUQndaVSg7vxZ+YNvtcTaDzl6itcfg4y6mEQIhozlLgs+r+3KBpA/HwKk5yGNN
 NikMdnRGNX7U22O78E/IrFwtDTBprMc4XoBLQfUNI7m8c5qsV4rGt4Ef3UY+/SE4LP
 +GnUr32mGKBGO0lWvM/ku0WNxevg9pl+woLtcYHfS4KWpp1LFdKznlvvjVCJk9y1Y0
 o+FTe/56/JeRpfZVPgT69VsBMv+WKn86IJmwfAagkzQeZxR68h58K8o4cLp3zktfr+
 PZxD/h6gaF3bHVcfrP2uT8Gzm1Gr5IlkJ4Q6kcxEg5PspUgbUHIaGOiyiyPMlbaiLU
 PgX3PjCSFpVhQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1B6C7A0093;
 Mon,  3 Jun 2019 08:32:41 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 3 Jun 2019 01:31:40 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 3 Jun 2019 01:31:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1anZ6n96qPjUq+TNr+4p0BS0uFDFXv1e1eY6/NKjLfM=;
 b=DLdyTAshnJdRjnEQvvXJ1KFvsmUEqm84ftVRn26lNmlEsy7FRcqsCcfm+cNPTgTNYn+23/DyBrfMsWrqF3tKYQta0SK1M5tAABlVe1fr14cYMWvgf4oyt3jEO/VmKfd29mGoLpRQ7cY/453dCzS85/dGPY9tnx+vFezHT6PXU3I=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2470.namprd12.prod.outlook.com (10.172.116.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 08:31:39 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 08:31:39 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: RE: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Topic: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Index: AQHVGdYMPk2bX2WmokSxcQWQW1zwFqaJlhYAgAACzxA=
Date: Mon, 3 Jun 2019 08:31:38 +0000
Message-ID: <CY4PR1201MB012004A6281FFE93B8191F30A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190603063119.36544-1-abrodkin@synopsys.com>
 <CAK7LNASiHzar3JmzGB1fgUYUC91F3FPsALj3iMhANTjGgnux5w@mail.gmail.com>
In-Reply-To: <CAK7LNASiHzar3JmzGB1fgUYUC91F3FPsALj3iMhANTjGgnux5w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8934d695-6f05-486c-b66a-08d6e7fde602
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2470; 
x-ms-traffictypediagnostic: CY4PR1201MB2470:
x-microsoft-antispam-prvs: <CY4PR1201MB2470031F47B2E06389B94E1FA1140@CY4PR1201MB2470.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(376002)(366004)(396003)(136003)(346002)(199004)(189003)(13464003)(86362001)(81166006)(2906002)(5660300002)(229853002)(25786009)(81156014)(6116002)(3846002)(256004)(8936002)(71190400001)(14454004)(71200400001)(7736002)(305945005)(478600001)(8676002)(68736007)(6916009)(446003)(76176011)(7696005)(316002)(102836004)(186003)(486006)(33656002)(74316002)(6246003)(99286004)(53546011)(6506007)(66066001)(11346002)(476003)(66946007)(73956011)(76116006)(6436002)(53936002)(107886003)(66446008)(64756008)(66556008)(66476007)(9686003)(26005)(54906003)(52536014)(4326008)(55016002)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2470;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2mm1EWSb30DAFVeFUrv7JTL/BCZ/dgYafuL8g/YfMGQ5ULoyg2m+fogC0aLhSrmqoRUYR0lOpBt3hbKqbEHybnql2kW6WjxArvF6PzCdHGcs910NWtP0dA5vXkE1rf3wPR/jcgnNBAKGVxkV30lyItMGUFTKNYMj7/ZwI1WqveoMiTPUHhTnf1QhDPino4rlEZMOdmq9fdB+0txSGyduGSrR23SWQuJoqZzoZWWcz81CxMGeFpEzGNuV1y8AxYw2Qz5qvOJn4IsCVYuOcsPRLQJo2xecQCR2Y0RpAwD6Oi1zYFVlcYQixc7nVKP1IpMaqt2Z9n8NQz6QuOR+HeQqyVsWWNBlLf0EBr8tJwM6z8tUIV8X8Q3u9w8BGw+4Ffru7p9wqLhEj3Dlwx3zUZGfWvY0cmUjvobxCmwltOhAitw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8934d695-6f05-486c-b66a-08d6e7fde602
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 08:31:38.9832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2470
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_013244_428104_69533A63 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arcml <linux-snps-arc@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

SGkgTWFzYWhpcm8tc2FuLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+DQo+IFNlbnQ6
IE1vbmRheSwgSnVuZSAzLCAyMDE5IDExOjE4IEFNDQo+IFRvOiBBbGV4ZXkgQnJvZGtpbiA8YWJy
b2RraW5Ac3lub3BzeXMuY29tPg0KPiBDYzogYXJjbWwgPGxpbnV4LXNucHMtYXJjQGxpc3RzLmlu
ZnJhZGVhZC5vcmc+OyBMaW51eCBLZXJuZWwgTWFpbGluZyBMaXN0IDxsaW51eC0NCj4ga2VybmVs
QHZnZXIua2VybmVsLm9yZz47IFZpbmVldCBHdXB0YSA8VmluZWV0Lkd1cHRhMUBzeW5vcHN5cy5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIEFSQzogYnVpbGQ6IFRyeSB0byBndWVzcyBDUk9T
U19DT01QSUxFIHdpdGggY2MtY3Jvc3MtcHJlZml4DQo+IA0KPiBIaSBBbGV4ZXksDQo+IA0KPiBP
biBNb24sIEp1biAzLCAyMDE5IGF0IDM6NDIgUE0gQWxleGV5IEJyb2RraW4NCj4gPEFsZXhleS5C
cm9ka2luQHN5bm9wc3lzLmNvbT4gd3JvdGU6DQoNCltzbmlwXQ0KDQo+ID4gQSBzaWRlIG5vdGU6
IGV2ZW4gdGhvdWdoICJjYy1jcm9zcy1wcmVmaXgiIGRvZXMgaXRzIGpvYiBpdCBwb2xsdXRlcw0K
PiA+IGNvbnNvbGUgd2l0aCBvdXRwdXQgb2YgIndoaWNoIiBmb3IgYWxsIHRoZSBwcmVmaXhlcyBp
dCBkaWRuJ3QgbWFuYWdlIHRvIGZpbmQNCj4gPiBhIG1hdGNoaW5nIGNyb3NzLWNvbXBpbGVyIGZv
ciBsaWtlIHRoYXQ6DQo+ID4gfCAjIEFSQ0g9YXJjIG1ha2UgZGVmY29uZmlnDQo+ID4gfCB3aGlj
aDogbm8gYXJjZWItbGludXgtZ2NjIGluICh+Ly5sb2NhbC9iaW46fi9iaW46L3Vzci9iaW46L3Vz
ci9zYmluKQ0KPiA+IHwgKioqIERlZmF1bHQgY29uZmlndXJhdGlvbiBpcyBiYXNlZCBvbiAnbnNp
bV9oc19kZWZjb25maWcnDQo+IA0KPiANCj4gT2ggcmVhbGx5Pw0KPiANCj4gbWFzYWhpcm9AcHVn
On4kIHdoaWNoIGFyYy1saW51eC1nY2MNCj4gL2hvbWUvbWFzYWhpcm8vdG9vbHMvYXJjL2Jpbi9h
cmMtbGludXgtZ2NjDQo+IG1hc2FoaXJvQHB1Zzp+JCB3aGljaCBkdW1teS1saW51eC1nY2MNCj4g
bWFzYWhpcm9AcHVnOn4kIGVjaG8gJD8NCj4gMQ0KPiANCj4gDQo+IFdoZW4gJ3doaWNoJyBjYW5u
b3QgZmluZCB0aGUgZ2l2ZW4gY29tbWFuZCwNCj4gaXQgZG9lcyBub3QgcHJpbnQgYW55dGhpbmcg
dG8gc3RkZXJyLg0KPiANCj4gRG9lcyBpdCB3b3JrIGRpZmZlcmVudGx5IG9uIHlvdXIgbWFjaGlu
ZT8NCg0KV2VsbCBvbiBVYnVudHUgMTguMDQgaW5kZWVkIHdoaWNoIGRvZXNuJ3Qgc2hvdyBhbnl0
aGluZw0KYnV0IG9uIG15IGJ1aWxkLXNlcnZlciB3aXRoIENlbnRPUyA3IEknbSBnZXR0aW5nIG1l
bnRpb25lZCB2ZXJib3NlIG91dHB1dDoNCnwgI8KgY2F0IC9ldGMvcmVkaGF0LXJlbGVhc2UNCnwg
Q2VudE9TIExpbnV4IHJlbGVhc2UgNy4zLjE2MTEgKENvcmUpDQoNCnwgI8KgL3Vzci9iaW4vd2hp
Y2ggLXYNCnwgR05VIHdoaWNoIHYyLjIwLCBDb3B5cmlnaHQgKEMpIDE5OTkgLSAyMDA4IENhcmxv
IFdvb2QuDQp8IEdOVSB3aGljaCBjb21lcyB3aXRoIEFCU09MVVRFTFkgTk8gV0FSUkFOVFk7DQp8
IFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3VyIGZyZWVkb20gdG8gdXNlLCBjaGFu
Z2UNCnwgYW5kIGRpc3RyaWJ1dGUgdGhpcyBwcm9ncmFtIGlzIHByb3RlY3RlZCBieSB0aGUgR1BM
Lg0KDQotQWxleGV5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1hcmNAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXNucHMtYXJj
