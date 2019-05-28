Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD9E2C60F
	for <lists+linux-snps-arc@lfdr.de>; Tue, 28 May 2019 14:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jw47BxLckG4NUPiDojcWZyRKknCQSnu3ZK34SSSXwq8=; b=Mt9zvVwT3ycpgW
	S8ZJ0xeExZ0bJUFAVaJV1M6xmS3nhh7cfGoUz3Dks0R7qgtlzTGGoKA3kL1CdD686dV7lrKZBNghB
	6WaMAWqku2L1sbAQwl5YaIfiaTtA+8vPAjKvePfxpfy5PREHdhG0HWQGN6uAr4D5ssv4rnueioYiI
	Qpc4wrwo8lr5qN64daI/dbT0Y97JgulJCDU/lhpK9q/okiTG0lYQWcmnp3bso/rdZQsAiwmoGkCNR
	c+0QTgn9m/2VT6hw3Sm4gYVaK/m4G46PfsnGFKlx8vphebRRsjuA76FFPUpBUatVuO/xaSzIwTfkL
	rKhiQM3X+UPINqar2Qag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaq1-0001kk-5B; Tue, 28 May 2019 12:04:17 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVapx-0001kG-W7
 for linux-snps-arc@lists.infradead.org; Tue, 28 May 2019 12:04:15 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 345ACC1DBE;
 Tue, 28 May 2019 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559045062; bh=aYRD1Evl/I/vh0DtdvBxg5YH2EQxs8t24JKxleV4LUA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RqQJdqeklXUx3qDFKBu9hReL1GKVT7N6hK/U+WRJ02AgZlyyuPZSG98SKEoXbzgSi
 Qt43jRAvb/3Q9Q/uwjzVZgLW80yscu1+lBzurI1EHHZDoTvR77VfkDF01KyARGiUSn
 XJR5Nzx91ARvgc47XoRNET4plQ4kuu/hN4eHzCoPRs/ZYfKi6Iq+Gs5aVCWvLUGywy
 3thm/t6DxAUSPzOrUeuaExIwZFXT4Air2Z5BBOEYutEVyPuYFvkcyrEGh9tiXoOumV
 OeVnFSWcrb10VW0nTWUeYPGS81IV+BQz8slgHOmBAmmZzQeXI0/BRSpnr1slBP9krP
 Vu4xtLkI4TpyA==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 567E0A0093;
 Tue, 28 May 2019 12:04:13 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 28 May 2019 05:04:13 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 28 May 2019 05:04:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aYRD1Evl/I/vh0DtdvBxg5YH2EQxs8t24JKxleV4LUA=;
 b=MnwUN1HUuL9kGxv1vMI/uxGDYPdaTivZqPo+5kIbliSXnlErqa9suG/tEzfTGgHBukDg5myqQvixkUUFHhNXZshMGnQZUawjOgAXmW5E/1AmiYC3jxW8e0DHyT/ijDyqNh3wL5R04fM2IY0Smt4F5mKj9cde0mMY9EfiTicp2Ko=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2516.namprd12.prod.outlook.com (10.172.121.141) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 28 May 2019 12:04:11 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 12:04:11 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: RE: [PATCH] ARC: [plat-hsdk]: enable creg-gpio controller
Thread-Topic: [PATCH] ARC: [plat-hsdk]: enable creg-gpio controller
Thread-Index: AQHVFTmZdQ4iN/YQ3keB3cLZ1odsQqaAcAkg
Date: Tue, 28 May 2019 12:04:11 +0000
Message-ID: <CY4PR1201MB012092BD9D2F63B027899F60A11E0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190528094052.2393-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190528094052.2393-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b6e038d-c073-4105-8808-08d6e3649866
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2516; 
x-ms-traffictypediagnostic: CY4PR1201MB2516:
x-microsoft-antispam-prvs: <CY4PR1201MB2516CA3754519C925D61E0D0A11E0@CY4PR1201MB2516.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(39850400004)(376002)(136003)(13464003)(189003)(199004)(54906003)(52536014)(316002)(66446008)(229853002)(81166006)(9686003)(14454004)(446003)(7696005)(305945005)(66066001)(81156014)(8676002)(6246003)(8936002)(11346002)(76176011)(7736002)(486006)(53936002)(6506007)(53546011)(476003)(55016002)(6116002)(76116006)(25786009)(4744005)(2906002)(6636002)(71200400001)(71190400001)(6862004)(74316002)(4326008)(99286004)(66556008)(26005)(186003)(5660300002)(64756008)(66476007)(33656002)(66946007)(73956011)(68736007)(86362001)(256004)(102836004)(478600001)(6436002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2516;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e8E34IpmC3fsacSe7UogSleeFKKCmv2ESHsLxURJ85jCCfvRyvs9RyD4WYTSATtumaD59Ha2+leEYH7k3Dzqq2H/407iHts+erGXGFd4jKr5QBJMlLtuPTQVKRr4l6xVJm5ht/D2T9jPqWeYYUllB2wGM4Kd3Ng6olEKjeLHss+rJXAmXl0wG6oSInBkZ+xjxsiHR2f0xyALNxDYBzKzJeUGFtIJhNZOdDrhxMS7d/0plhdHSlGvG5xcvJcKwXHZYuxvHbUa6nFGsWIrSyhobHaUZyAn8yp3IAuaU8rrKUwVfBo8oGbVf0AWXKquFq/Wg0Adl6kt8K35hPpZ5ITALsrQyhxa4zS4OFmJN17eoXKQczdBp9AjaxbY/t/G293Yl+ZsYGQT/Cub0ud2aAhB3K2qcCe+In+n1lGRnEotDRU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b6e038d-c073-4105-8808-08d6e3649866
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 12:04:11.1534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2516
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_050414_034440_0D1F4416 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Eugeniy,

> -----Original Message-----
> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Sent: Tuesday, May 28, 2019 12:41 PM
> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com>
> Subject: [PATCH] ARC: [plat-hsdk]: enable creg-gpio controller
> 
> HSDK SOC has CREG GPIO controller which can be used to control

SoC

> SPI chip select lines.
> Enable it in preparation of enabling SPI peripherals.

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

Adding Rob to the Cc list.

-Alexey


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
