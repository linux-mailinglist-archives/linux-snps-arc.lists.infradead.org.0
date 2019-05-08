Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A10517637
	for <lists+linux-snps-arc@lfdr.de>; Wed,  8 May 2019 12:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DkPAx1MPn0evJL9r5G5t/g7Ot7o1STq37mQfEnc88k=; b=Ai/Q7eypDmCplg
	SJP+18rPKBXre30w9Cg/m8zVasqJ/v6kfkH0ipS0oBE77TI3xO9OaTdGqVSgG/By5D2roLh0jSUzG
	gDw+og20X8EQCiJZFHyqwy1831qDWW9S7YTf2fjhEWtWICVTeBvnspYe1F1zTGzEziMsr8RvfrDrh
	e668B9VkmQk0/B4Ku/zfGuU16I7e1OUajpoFN2HKw2d84n5CX9TGnUNTs+xm66OE72XHyZhUaHWe3
	enGIcbmpTmLwkvtAEm/GJC4IKOrAsn2Xt3Y5q6umTYDrhAhiY7i9zVq4f153QuM5bf1QTzAhHP/qv
	MsZFU2fScz/+y4Jn5OzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOK60-00064D-OI; Wed, 08 May 2019 10:46:44 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOK5y-00063o-Mm
 for linux-snps-arc@lists.infradead.org; Wed, 08 May 2019 10:46:44 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 198BFC00FC;
 Wed,  8 May 2019 10:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557312404; bh=Mgi6Ub30bU6C1uBLJImyqwJIDRatyud17SSVb9zoyMA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=PWAkq5YivkFrfmDPQtOMJTGwza/FK43q82WoimdpzzvZ8iimootkseYiJAfmgMrX9
 aNZQz8jinB0+ES8NOOOvaYgk2mB3Pr5iNQF3tp6Zlg/cmFUbfuPVDZ986G4via6GU3
 +I9iILYjpDxxG+tx5QdUMWE6pzzkOHUppVNpJjjbm/6iUMzm25RpcLjvNWK53pvp3P
 wizIHSphE5Nd/WFC2Ate+0bLOvZcAWtU+kL2JP7SrPFpo5tLQViT4IrOa6RhhFkpAT
 kSpOg7dUXBRStoSTOdv0tGejgglrAOku6FlEzxSkTqjMAb5Q+Z8mM84YkaUfsaWWw+
 Qp+dnl2NFR7zg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4958EA0085;
 Wed,  8 May 2019 10:46:40 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 May 2019 03:46:40 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 8 May 2019 03:46:39 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mgi6Ub30bU6C1uBLJImyqwJIDRatyud17SSVb9zoyMA=;
 b=T3Qtpe/+92m6W0cY4K9l1zdzVLB8AH7cHGTaqv9TA7zZ20POpyl0ppUk1yVdiMdpZ9G0+Gtuo9OonYKE9MCmAwxVWwXqNqyGsgX1WnVhzlGAht4AxNoRoA4ImPfot/oWGiXZf+w4x2SLOBndhZTZcIr13vL6D2vgikFfGFOVB20=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0006.namprd12.prod.outlook.com (10.172.117.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 10:46:37 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::ac77:1c39:d9eb:ee9a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::ac77:1c39:d9eb:ee9a%4]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:46:37 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Topic: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Index: AQHVAPmTtgBcK4O0F0yjr7qr2E730qZX+TEAgAZ1TgCAAm7ygIAANxpQ
Date: Wed, 8 May 2019 10:46:36 +0000
Message-ID: <CY4PR1201MB01206801C1C2B8272ABE9B17A1320@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <7f36bbadc0df4c93c396690dab59f34775de3874.1556788240.git.joabreu@synopsys.com>
 <56933076-879c-78a0-4bae-2613203b93b1@synopsys.com>
 <1557166759.17021.9.camel@synopsys.com>
 <78EB27739596EE489E55E81C33FEC33A0B478870@DE02WEMBXB.internal.synopsys.com>
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B478870@DE02WEMBXB.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a263a289-e37e-4531-ed9e-08d6d3a2720b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0006; 
x-ms-traffictypediagnostic: CY4PR1201MB0006:
x-microsoft-antispam-prvs: <CY4PR1201MB00067A50EF89C64D35107638A1320@CY4PR1201MB0006.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39850400004)(366004)(346002)(376002)(189003)(199004)(13464003)(66946007)(66476007)(6116002)(3846002)(6436002)(4744005)(64756008)(66556008)(25786009)(186003)(478600001)(7696005)(26005)(256004)(55016002)(76116006)(52536014)(2906002)(99286004)(14454004)(5660300002)(73956011)(9686003)(54906003)(316002)(110136005)(4326008)(76176011)(53936002)(71190400001)(229853002)(71200400001)(66446008)(86362001)(102836004)(6246003)(305945005)(53546011)(8676002)(6506007)(66066001)(2501003)(8936002)(81156014)(81166006)(11346002)(476003)(7736002)(6636002)(486006)(74316002)(446003)(33656002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0006;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iiKNVJ42Axl6VBQT0LSERz8lbVYikSUgxtpWPOKDWCmB+raX8wKnU3NYpmelPKU5xFlCCsljI3Rt+A05/l76mvIT4dBgN5LiBvc1DU58JzzHk0FdZfhK08C7sQPtyqyuqcLdB4ohjfqZrvCDxMwOdclXOvG6S6lU6E3ok/JJs3Q6qNk6PUFYM23OhM2S67DdCw1a6YYcQrIYu4avGkjKGvYMa39E0n1bR5LEsqIhrT4CbkiONRWneUapDOrjFctyiWf7xVduR6UAZR8F1q4CCOq9WDNsqlTrbvWP7CNc6z/ZwWlzhtEWU31semo8E5S0z0vbtJpt3JZk4mAZkl6OA47yHdgRF9GCP0rzrvnEC2fUpiQ1SfJf2WpqvIKi10It3QQ9T1JwooAl/ihB4yqBkScC4CyDmF0aoVL5RiuBl2k=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a263a289-e37e-4531-ed9e-08d6d3a2720b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:46:36.9679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0006
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_034642_808461_CB5F547A 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Jose,

> -----Original Message-----
> From: Jose Abreu <joabreu@synopsys.com>
> Sent: Wednesday, May 8, 2019 10:29 AM
> To: Eugeniy Paltsev <paltsev@synopsys.com>; Jose.Abreu@synopsys.com; linux-kernel@vger.kernel.org;
> Vineet Gupta <vgupta@synopsys.com>; devicetree@vger.kernel.org; linux-snps-arc@lists.infradead.org
> Cc: Joao.Pinto@synopsys.com; Vineet.Gupta1@synopsys.com; Eugeniy.Paltsev@synopsys.com; Alexey Brodkin
> <abrodkin@synopsys.com>
> Subject: RE: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins number to GMAC node
> 
> From: Eugeniy Paltsev <paltsev@synopsys.com>
> Date: Mon, May 06, 2019 at 19:19:20
> 
> > Hi,
> >
> > I'll check this in the next few days.
> >
> 
> I also noticed that FIFO size entry is missing. DWMAC1000 does not
> support automatic FIFO size detection so this entry needs to be added.

Could you please propose a patch?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
