Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AF51CB799
	for <lists+linux-snps-arc@lfdr.de>; Fri,  8 May 2020 20:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/M33pTY3Q/OhtJ0mFgBod9kyE9uU/olzXoxMq4NvFg=; b=Du2LtYkUkI12gg
	LWt4quz40Z1PVQxAwL26YW/S29dpb84Irb2T2yT5sc93LbvfHk2n1FqgWEuamehshLN9CpN8X7RnB
	skuwkOdmbX4FIQ4x7M6vyofvu3q2LvOPcbFDYgQPm854YS8QguHOHoiOV2xK/SMKNJhLAYF3xFjWb
	aFL3KDQdd3isgE13zzE6Ulzj9UDy2b5ENmqQhl4xtG6XSW5Jp7U+2DCva7y+PTCHxgceEFPXDyfWt
	Zs/plUMW0GTZ4N4HLrGk344s0owPMxA0VQK34gJr4Zw+yfWYKv/uISb8YBjNkeyZEg2aUCUhOHG5T
	9CDtyO5VfYstMEhXV2kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX83w-0001hP-G8; Fri, 08 May 2020 18:49:32 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX83t-0001fz-G9
 for linux-snps-arc@lists.infradead.org; Fri, 08 May 2020 18:49:30 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 65EC640170;
 Fri,  8 May 2020 18:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1588963767; bh=xqwzx0B/mVGSGPJQNWge3cab2t/OCKoXwjsvVgvKMos=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=HkZcqSHQ2zz4dxHc+CITwTWRhWG/GaJrJIvcqKr9hsw8d0lJPBXjpNeN1fmsG4KJ4
 inGWGtMlPj8r8BO1/HvgcRdBqSbVCc+i9lrpv61z/9sARWig8o5v/xl/yCfeRirdif
 cFKhiYsAe4XvNKiEAULkhXvZwvn5A3TQj2O60c397IqJJ6eepKc6VkypESvlvKnt4Y
 gnKj4TPJhfelfkLSotYKpwAXX30xoSSAwAfpULrdfvWC1d0T01FWxlf/R1IG3Lo7PM
 5wlYzH8CP7nvqG4miBP8AYySnFsifG0xd8ivU14Z+zBhZcC2D7a4ju/KpOTvuUNXZB
 FMxjEmmVjuy/g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EC97BA006E;
 Fri,  8 May 2020 18:49:22 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 8 May 2020 11:49:20 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 8 May 2020 11:49:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nuHCu2Am/7XuZH8QAfT6p5WTtB5ktdnVO+UQ+6cqtL4buSZg3Tnjd8G4o9AIr9ekp936iBiFBrUv9bRMKZQukMpvBc09NvrBenKOOTehzH9gKzUzdUNHIbm/xJDv23sUHKzJy6R4Qti8fMgWvTgSWuIuPAm8Gl/eqrkr50LOh+KwOlBhMQ/WF5yf6H9EWz/DPAWgOE5XXxv2rNOpINUcVUfHpSVulAdQBNzJQfBH7yhiGZR4wsHoN4rSispS9RTgjrg4O6dvBpJ0deTiyjIJpBbEtCMFwjwx0zlZsrHFkQ8xlT5dcp6g5Wc104rK/YQgZ/SpsVWVvzUiUCMXAiSWRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqwzx0B/mVGSGPJQNWge3cab2t/OCKoXwjsvVgvKMos=;
 b=cbmiGECbDjQrdO+ST3cVp2PC585u6+VU6INOa8n3yJWPAUFPnK3h0O4ZSw2Kl+8I9aOzuYwABwSaWTAH+XiaQFxC7hOLaxZp1yuEYdzpxFpsKZ8Ezw3Ds/vFX3p0py0xXB6HZnJilcVTMbS+XSRgmx0WjdmKHo9cdWdnSmtJOuodvmkLQTI7NoAMdEAyb/YVpYTbrAEPvLw60lq6FWQnWXBTkdL/cxkqYj2y9xjnoqS48cIThCG9vsDe4wd7gVrzj0q7PwvtaICysZ0F5iK2BKCuc88olCovDuz9Gdx0HD2r5uLLQOGWHRtZ0/YQhnVI7H/d9AyraKqObfi2+b7h8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqwzx0B/mVGSGPJQNWge3cab2t/OCKoXwjsvVgvKMos=;
 b=dXgkC6UMpaAkAATuU7wTnSIrcqD2aqXqq62szoPYpb5wrQ3ZENGfVqfarhalWO8hgoRloFMYdyiHw5+acUCkfcEDhU+VxqktWQb89NNDldWw65bF92fzlV6W/uuMd2mcGtakJ6LWxsqn5eg9pxd6AZbxXCfv6+FNszaObLUtCbw=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB2680.namprd12.prod.outlook.com (2603:10b6:a03:63::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Fri, 8 May
 2020 18:49:19 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.2979.033; Fri, 8 May 2020
 18:49:19 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Serge Semin
 <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v2 3/6] dmaengine: dw: Set DMA device max segment size
 parameter
Thread-Topic: [PATCH v2 3/6] dmaengine: dw: Set DMA device max segment size
 parameter
Thread-Index: AQHWJSrw/8Ye7R9luE+OOOxxh6OCIqieiGqA
Date: Fri, 8 May 2020 18:49:18 +0000
Message-ID: <5c83eabd-08c9-fdae-d13f-49c177b6c5bf@synopsys.com>
References: <20200306131048.ADBE18030797@mail.baikalelectronics.ru>
 <20200508105304.14065-1-Sergey.Semin@baikalelectronics.ru>
 <20200508105304.14065-4-Sergey.Semin@baikalelectronics.ru>
 <20200508112152.GI185537@smile.fi.intel.com>
In-Reply-To: <20200508112152.GI185537@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none
 header.from=synopsys.com;
x-originating-ip: [2601:641:c100:83a0:fee2:8ed0:e900:96d1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d92a22ad-818d-4af4-f5e8-08d7f38083f7
x-ms-traffictypediagnostic: BYAPR12MB2680:
x-microsoft-antispam-prvs: <BYAPR12MB2680E66C4F5126BAFD44542EB6A20@BYAPR12MB2680.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZRJZBk0RSoMWEK/Ovbs5Hr2urzZHIBIL1n9lBq2Ibtd54PjKQRytMfN0UhZ/tbUcLnNpnNcoey7AxQhw7QCAJgOfahWbQ3WPftSK4U5IgzoWfzqTZA+3XbiupZQuqFypZLsVhQGlVwgVh9lc3JicBj+6xa6vQoZqCaal57prPr1ufSZHTDNk3AY973yl59PTlzdqaJ7vvcC+AtH/SbuE4vNtancfvh4zvl9m8xOG3mes748nO60Z3FuSf9Hxsiju2LfYzbys2M6R8xDhHGnZ6NM24wrir9vYOJSsWZ/j9jC+2E4fuRnW0JoBVc9wr0WFph5Qe0k+UZjqQ+s3TZUewD64Ms7TTrkNQsjCEU2Fo6MxNiLMhfkY4g8gRbzivwHOZ3JYigNhJmlMVbYMj+5aAT/dfq8iOVXUziJ6Gbmo0ILQv8iOmxLIm2F+W0cGQ6YndBUFq2kC7neNcZCYRlraHhQ229Em0O9iXRDH0vKbP7QjQyU/YGwyWK7DyK38OAG9PwHTsdbFwO5t9rUvU4wSfdVzMtURkJKxYl9MYLdbcx9CO5aaFpI/vKtDBCw9Qiey
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(39860400002)(396003)(136003)(346002)(33430700001)(76116006)(53546011)(31696002)(2616005)(6512007)(54906003)(8936002)(66556008)(66446008)(64756008)(66476007)(316002)(86362001)(83310400001)(83320400001)(8676002)(83280400001)(186003)(83290400001)(83300400001)(110136005)(33440700001)(6506007)(31686004)(478600001)(7416002)(4326008)(66946007)(4744005)(36756003)(2906002)(6486002)(71200400001)(5660300002)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /jhRnt5d92+leREvrFefCc7VDhGlvsPYPBIsZmOhGCh9UK8n80jyS5j0iR81Y3aZrZXtUzBgeCpfbbuoej7GuOMpD23g2Qv2KtkKvNYjfKqek9oReEFpm3wJ6HsyT2sg6Q8i9TKSaCZHgrtlANr8PCDbkyZ/lLVrG/f9zUpAzIItYprXL2Go7k7OlwwqXHqe3m8p8tNFZ2klEQPx6fT01giMi7Bk7XV7nnPctZvQLXEAwDZba9hm2IQh66ibwsNa3QD2lkc3AyNvNm3PHdLQFGbEeF8k31z9eK5m310tmpcBXcUKrIQjZW8TH0bPPPv54xDjgHUI6cnLCIXgzly++RWszkeB025Y8j9VUUi2redh3Watptko0139Q2TneTnuAlRXGVD2kswfBF9556aP0IZQeQF0Tpoig7D/PebminCP5RR6RA7G08t1+0qBJZPhxxEfClayDDPZNWf9M1rX+thvVsCHlC9VRRmnVfYaM4be4mdeJXFhZwgYNaqGVjtG2Cz2hlElSUGiDvDTnmRX1vTdma2Ch72XxhdBlP1URCQOC+JF4dBNEgFJ1ZbOW+6O
x-ms-exchange-transport-forked: True
Content-ID: <AD6AF4D0863D1640A034D2357E6B3148@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d92a22ad-818d-4af4-f5e8-08d7f38083f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 18:49:18.9534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6glSDpyDhtzzkvSjHzSz+0+iPDoRtYF9KXt24DdH46V6yAnZ/u9vdwMXLEAeNwKuorqg1jFOMKdU8OX+Awn6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2680
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_114929_632586_716564B5 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Arnd Bergmann <arnd@arndb.de>,
 Paul Burton <paulburton@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Ralf
 Baechle <ralf@linux-mips.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>, Dan
 Williams <dan.j.williams@intel.com>, arcml <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/8/20 4:21 AM, Andy Shevchenko wrote:
> Yeah, I have locally something like this and I didn't dare to upstream because
> there is an issue. We have this information per DMA controller, while we
> actually need this on per DMA channel basis.
>
> Above will work only for synthesized DMA with all channels having same block
> size. That's why above conditional is not needed anyway.
>
> OTOH, I never saw the DesignWare DMA to be synthesized differently (I remember
> that Intel Medfield has interesting settings, but I don't remember if DMA
> channels are different inside the same controller).
>
> Vineet, do you have any information that Synopsys customers synthesized DMA
> controllers with different channel characteristics inside one DMA IP?

The IP drivers are done by different teams, but I can try and ask around.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
