Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549011821A0
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 20:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlAzJ/5o0Hs0TZViSkP3sbvXb50gG8nninITYVsusLk=; b=NGzhgP1UDGa1VM
	INpOBUV/3e/PXMr0PYcUd3STuA6S6RfLw3l2oPF+iZL5g+XPii0IkcLYINRN4EmKkSqUDvB2HNmvZ
	P+GBUQNYeOcbCLxCpONEgoQPeoJ2ZfxGknWG1UmBVGJoJJQ+oB7N51SpJ4ss8pTpviLPzf6pdVEA7
	up09mer5hayvbjZocyFEAknleecF2xRqU2+Qqtbv2LKq3/gOaU5moV7ZecrqbEK+Glyeys9ZoawGj
	gQewiS0tKy2rr1SAjzxuTz9pzPfZC+sSgqbTqE49rSQDRMlrroGKwXV2n1mLRFJPrt47wjomcGQIO
	U3ssGf7oaZC/TQ3INccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6nR-0003SF-Ty; Wed, 11 Mar 2020 19:13:37 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6nP-0003Rq-5o
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 19:13:36 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B870A43B76;
 Wed, 11 Mar 2020 19:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583954013; bh=GCnc8Pe16ifGGkBm9Qf1Pg9gDdgo5xyrsNj7YaH1v98=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Yp/LTLFve61m3uCDVcZeEFomxUPuPRi/24K41uKhCJ/PBQxvEoKgiW3eMt3ORWWkf
 SZonKrU10ZqoonSAuoVQfX9EbMp04lT1R/Vf6lkQaqLgkP6XWWs9ReKY/SnVlgeigq
 waQAehba+IM5iENmUSlfChrlM/kPLIcnCIBS32AQIn9d7qsC28FqaYEZWmgoBw/zAb
 LY/WBvruoh9kU1SK0UsQxjVUpTOXdp0pGBwGMkPYm/IngDNwW7rSM7fU0aPwFeMEz/
 R+BCAijM0KnpVdruNULbbhLx3sfRmkRrbtsJKrO8dyyVCmkVU4Ih0hUITrtvyln/jz
 z/FcbnMaqKOQw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 881CBA0083;
 Wed, 11 Mar 2020 19:13:33 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Mar 2020 12:13:29 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 11 Mar 2020 12:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dfg0ZgCqIj3/JP9RDlYmNf8as7FuDI0TAC/yuJt/EO34/2flIWzHYghYPUHXyBhb/R/hJQQl0Hg7khf3OjFnJSOEC9sSwU2TUcEhn7SMIBHQL2Khod6qpTcWvEdHJw1aF/6AD53QxISANxnVoOcnio/GFE/b9dc8Bk7xyESZ/FBW+X57Uy3TbG///y7RGmJvapZdv+ANv1T1/G31HL+Y8Hd5UVGKtjkAVibL9C4bvHPaz45vmBPsxJyQaaraBHYtt8jD0UvYVSavF5flPEUnpMPLq3zeOn3RbZ92XGzKwBHJLVNI0fGMNdmDOmaL6fMC/STKsm7CcbfcOZDhTrlQKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCnc8Pe16ifGGkBm9Qf1Pg9gDdgo5xyrsNj7YaH1v98=;
 b=DhXydrpnckpPgfxLALZcq0zipnXZp0Lr9d/RtHOYCneGRVjQ2yDqpT1Oez8hxGbTzzIgMAB8uM46MTu35awl8Vq9QxR94eb8XhTRVj5jALUCo3DcTpkl9HvJVG+UNcugQ6LjgtZd/ZEkKNVS3NLxRaaLxoj0liOw4FsVATgD+D8PMfvUhavrkO33eGl3sTCXWxN2RlnbmpAroFUVsw/X2TKhekvilqZfwNkJcT3wiKwCbq3Y4xn4lcqhAfX6eexvZUgHiMVXjqSQL/Gy9UDu5/I4PljYagrnGyJqVRT/KbvHzEf1q+cRN18tabnqJgkIY7FiYLB2/0avH7wB0BOKMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCnc8Pe16ifGGkBm9Qf1Pg9gDdgo5xyrsNj7YaH1v98=;
 b=Bre8N7Xb4G0vzoJtlFsOAZmWWAiFlnNw3X6EdkcKIPiPM8s1oJf6MO+RkgEsmnj9FooA6XGVNBzNYd9PUzr9CJ7ywvMH5ha9criDlMqSfOvhcSBncJqLJwRT7yJkGdeyyLkwX4mptR7x8vOb+OCrc7cdu2yj6XixyDSVFcuLvMU=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (2603:10b6:a03:db::25)
 by BYAPR12MB3112.namprd12.prod.outlook.com (2603:10b6:a03:ae::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Wed, 11 Mar
 2020 19:13:28 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7%7]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 19:13:28 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH v2 3/4] ARC: add support for DSP-enabled userspace
 applications
Thread-Topic: [PATCH v2 3/4] ARC: add support for DSP-enabled userspace
 applications
Thread-Index: AQHV8ykv0O4Z+b6gX0KY0D/KHFb2oKhDy/cA
Date: Wed, 11 Mar 2020 19:13:28 +0000
Message-ID: <6f7916f4-9ff9-e947-c62e-30000a4bcc84@synopsys.com>
References: <20200305200252.14278-1-Eugeniy.Paltsev@synopsys.com>
 <20200305200252.14278-4-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20200305200252.14278-4-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [149.117.75.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ba3b106-10ea-44e0-2866-08d7c5f047b2
x-ms-traffictypediagnostic: BYAPR12MB3112:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB31123F2A562B0202711D4A4BB6FC0@BYAPR12MB3112.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(376002)(346002)(39860400002)(396003)(199004)(76116006)(71200400001)(66556008)(478600001)(66946007)(66476007)(64756008)(66446008)(31696002)(4744005)(8676002)(2906002)(86362001)(5660300002)(53546011)(81166006)(8936002)(81156014)(36756003)(6506007)(6512007)(2616005)(26005)(107886003)(4326008)(186003)(54906003)(316002)(31686004)(6486002)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3112;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1I4sgSNL/i7LXmknuLSFEveCg89TOJQVgTgU0/7bjJLwt/kOGq3p32Lfiz0LGQUFu8/ojOne1AP5GqKVHqjq4U9hC5O8tAoSM+Jo5s/TThr9UJwCRcuueGwlc705eqXxC8AR1eg79f5WZlLfxYxjRYfIvZha3qz0eU2VbztSrD7Y8Q5Pv7my4MwcGdrEDcZ5z2l0RlITrtygf4xJy3Y7vk3NI2wth7lT8c9GgGEEHZPOMr+IFYXOU137fA4LefstmjlmWXZKMZ4akBWfu+UZr0TpZ9lw7Ao5g/q63nCkfC25vZZB4k+AsZuS9ndqFmuLhLkNSmvfDVAYUvy/MWlQS38Po9UFhjS/rIJhlL7PLnS0aSduVlh/EJvOiD4qPN7ThrLllVEFSVbPq54FKeAA7Yd3kBA0NBXJw6Hchrd/oqcQRAIVC7uWlv3eu165qMHQ
x-ms-exchange-antispam-messagedata: ZbOgs+uwtNVvhxlLBRw+O2RswABN8aV4NL7MprX/crzHyxOn7gsGqUF2Liul8Qv/ZI+tZyCdbReSI3blXDOBthhJP4x957tKK/2WfyQNLo0etYtfm29PxwfPgAY1PS+Y9IXHyJExVtEzR1g3SOwG8g==
Content-ID: <6401D9DBA752F04C8C88B8138468C5BA@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba3b106-10ea-44e0-2866-08d7c5f047b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 19:13:28.0606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q4lbC1C/K8hKjdwAjkF2OwnqdJnSlaTUZQG45OoY+sZB+h9VrGTUy7uQgufiM+j0HZHFJKWiJyNcoEoGmCGYuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3112
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_121335_285382_A311DA45 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 3/5/20 12:02 PM, Eugeniy Paltsev wrote:
> To be able to run DSP-enabled userspace applications we need to
> save and restore following DSP-related registers:
> At IRQ/exception entry/exit:
>  * DSP_CTRL (save it and reset to value suitable for kernel)
>  * ACC0_LO, ACC0_HI (we already save them as r58, r59 pair)
> At context switch:
>  * ACC0_GLO, ACC0_GHI
>  * DSP_BFLY0, DSP_FFT_CTRL
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

Acked-by: Vineet Gupta <vgupta@synopsys.com>
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
