Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9CB4EED2
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 20:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlvBmrXnLU0wA+sGvhzLvNTdSKKND+6eDPlv65EODfY=; b=Vd6TkogXJ+EzwS
	pi83Bu0a+3nlpGNSdHL4cmJhHBpGfjllV148X5HMuY2pMjIKhbMBZwbovLLK7QGSQT9oNfJGBQCry
	V84WgziFn8f27oMN2+G7HBNy5S2iqa6N+pHYWls5egoCMz82OtDZSb+SK7KPyVcLVokIDC4lvSMhA
	6C6413aNBPM4RC971emkgi/cLlgpWJOzpIglpUDLLXG5Spmgt6LRixsRRQ5+bn2S5WheY9O5ACQ+I
	4Lrl7qgM5GhUsMvrsDnQbnqRfY31MFeIwlipXUPfgwH+QX4ZfFacRmodZzrCo6DuI/mk5znhptZa4
	iUWzVlqBH5TTdZRSGzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heOQC-0000uf-O3; Fri, 21 Jun 2019 18:38:00 +0000
Received: from mail-eopbgr780049.outbound.protection.outlook.com
 ([40.107.78.49] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heOQA-0000td-1o
 for linux-snps-arc@lists.infradead.org; Fri, 21 Jun 2019 18:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PgWjE1rz16RhETQba2fgJ9jKhgKMAqa1youUV/hZvC8=;
 b=hdfVD4y3/G198i0+Y2v7yqzuScuarb3Q6nbjsMu0+kFtK2PeKuGz97o53L5eu+17JgoX0xtw0BAvyhqJ++dJTkoyYkPXXm1e12lvs0tVHdQ6QuE6mX3UvRzu4RurfglJQWETMjEvS8PaJWKrNbQnvlXp0r+O0rBXM9xzAOJ4+GU=
Received: from BYAPR05MB4776.namprd05.prod.outlook.com (52.135.233.146) by
 BYAPR05MB5637.namprd05.prod.outlook.com (20.177.186.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Fri, 21 Jun 2019 18:37:52 +0000
Received: from BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::f493:3bba:aabf:dd58]) by BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::f493:3bba:aabf:dd58%7]) with mapi id 15.20.2008.007; Fri, 21 Jun 2019
 18:37:52 +0000
From: Nadav Amit <namit@vmware.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVKCowqQ8fumhXhUmhiclA75S5v6amBQCAgABriIA=
Date: Fri, 21 Jun 2019 18:37:52 +0000
Message-ID: <D25EC873-572E-457C-AEB1-DC0C1FAF8E85@vmware.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
 <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
 <20190620212256.GC3436@hirez.programming.kicks-ass.net>
 <20190621120923.GT3463@hirez.programming.kicks-ass.net>
 <20190621121259.GU3463@hirez.programming.kicks-ass.net>
In-Reply-To: <20190621121259.GU3463@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=namit@vmware.com; 
x-originating-ip: [66.170.99.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7474e0fa-ef8a-48fa-ee33-08d6f67791c7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR05MB5637; 
x-ms-traffictypediagnostic: BYAPR05MB5637:
x-microsoft-antispam-prvs: <BYAPR05MB56371A34F5DE21F95C0404F6D0E70@BYAPR05MB5637.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(39860400002)(396003)(189003)(199004)(66556008)(186003)(476003)(25786009)(446003)(71190400001)(66446008)(11346002)(486006)(26005)(6506007)(53546011)(2616005)(64756008)(14454004)(4326008)(66476007)(54906003)(36756003)(86362001)(66066001)(478600001)(256004)(316002)(71200400001)(66946007)(8936002)(8676002)(81166006)(5660300002)(7416002)(76116006)(6436002)(53936002)(33656002)(99286004)(76176011)(305945005)(229853002)(7736002)(6116002)(102836004)(6512007)(3846002)(73956011)(2906002)(68736007)(81156014)(6486002)(6246003)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR05MB5637;
 H:BYAPR05MB4776.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jmqN/qlY+Oms0RA/6Gg7g6Njx8u4U3gHcgHG6s2n85yzEU6t8uFKkZyKYxFbKX1XMuUJgX5xm/w5tcbV5TE2V36dixlIp7d0C07wXF8Yl2RXZvFUEMiOIttq3ofrIq9YDOPyjN5ZJdUXkmzS74g4jjd2RtsHm1s299Mvyawav20rYV/34YWbCu8MLnQuxkf9wZyZYnsiM8LTR82d8JqehW+cBL+RkmnzmhrQlLt/5JN0klBZh92J5+xC2iPjCaJ7V1fyBqHrEckX2xwGQk0MURnOWcL/497yi0wKzCvoAItiUTsiKX+86tm079EKENGrOuGjhuTb0a28JFV7ljqW2l/jQserJRbAOCiQHz3w9UUJl83AmjGv7IR2SbTNagjn66f+JtRXiCpKKW5tAFp3Ephj/W4gWU9ITCerSxTzwcw=
Content-ID: <081FCB91BD58C248919E7BE5CBB9E2A6@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7474e0fa-ef8a-48fa-ee33-08d6f67791c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 18:37:52.5124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: namit@vmware.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB5637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_113758_098237_D3F31D0F 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

PiBPbiBKdW4gMjEsIDIwMTksIGF0IDU6MTIgQU0sIFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5m
cmFkZWFkLm9yZz4gd3JvdGU6DQo+IA0KPiBPbiBGcmksIEp1biAyMSwgMjAxOSBhdCAwMjowOToy
M1BNICswMjAwLCBQZXRlciBaaWpsc3RyYSB3cm90ZToNCj4gDQo+PiAtLS0gL2Rldi9udWxsDQo+
PiArKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9qdW1wX2xhYmVsX2FzbS5oDQo+PiBAQCAtMCww
ICsxLDQ0IEBADQo+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8NCj4+
ICsjaWZuZGVmIF9BU01fWDg2X0pVTVBfTEFCRUxfQVNNX0gNCj4+ICsjZGVmaW5lIF9BU01fWDg2
X0pVTVBfTEFCRUxfQVNNX0gNCj4+ICsNCj4+ICsjaW5jbHVkZSA8YXNtL2FzbS5oPg0KPj4gKyNp
bmNsdWRlIDxhc20vbm9wcy5oPg0KPj4gKw0KPj4gKyNpZmRlZiBfX0FTU0VNQkxZX18NCj4+ICsN
Cj4+ICsubWFjcm8gU1RBVElDX0JSQU5DSF9FTlRSWSBsX3RhcmdldDpyZXEgbF95ZXM6cmVxIGtl
eTpyZXEgYnJhbmNoOnJlcQ0KPj4gKwkucHVzaHNlY3Rpb24gX19qdW1wX3RhYmxlLCAiYXciDQo+
PiArCS5sb25nCQlcbF90YXJnZXQgLSAuLCBcbF95ZXMgLSAuDQo+PiArI2lmZGVmIF9fWDg2XzY0
X18NCj4+ICsJLnF1YWQJCShca2V5IC0gLikgKyBcYnJhbmNoDQo+PiArI2Vsc2UNCj4+ICsJLmxv
bmcJCShca2V5IC0gLikgKyBcYnJhbmNoDQo+PiArI2VuZGlmDQo+PiArCS5wb3BzZWN0aW9uDQo+
PiArLmVuZG0NCj4+ICsNCj4+ICsubWFjcm8gU1RBVElDX0JSQU5DSF9OT1AgbF95ZXM6cmVxIGtl
eTpyZXEgYnJhbmNoOnJlcQ0KPj4gKy5Mc3RhdGljX2JyYW5jaF9ub3BfXEA6DQo+PiArLmlmbHQg
MTI3IC0gLg0KPiANCj4gVGhhdCBzaG91bGQndmUgYmVlbjoNCj4gDQo+IC5pZiBcbF95ZXMgLSAu
IDwgMTI3DQo+IA0KPiB0b28sIEkgaGFkIGJlZW4gcGxheWluZyB3aXRoIHZhcmlvdXMgZm9ybXMg
dG8gc2VlIHdoZW4gaXQgY29tcGlsZXMuDQo+IEJ1dCBhcyBzb29uIGFzIGEgbGFiZWwgKGVpdGhl
ciBcbF95ZXMgb3IgJy4nIGdldHMgdXNlZCkgaXQgYmFyZnMuDQoNCkkgdGhpbmsgdGhlIGVycm9y
IG1ha2VzIHNlbnNlIGFzIGl0IGNyZWF0ZXMgYSDigJxjaXJjdWxhciBkZXBlbmRlbmN54oCdOg0K
YXNzZW1ibHkgb2YgdGhlIGNvZGUgbWlnaHQgYWZmZWN0IHRoZSBsYWJlbCBhZGRyZXNzLCBhbmQg
dGhpcyBhZGRyZXNzIGFmZmVjdA0KdGhlIGFzc2VtYmx5Lg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QK
bGludXgtc25wcy1hcmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXNucHMtYXJjCg==
