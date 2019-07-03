Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A705E88C
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jul 2019 18:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eS5UzCQCPoiObTQBE4DSGOLwesE9d4orUVeS0E5sICY=; b=psShG7SmshYNpK
	wfNdLkOPN7KpQjmlEd4IkLPlZ+PZrfcHPNyGC4tZvSxGmelUksBi8jcTqW9ey8K372JyYLnfH17ov
	5z9BNB18rgu4Z340GDhzRtavVbg95z3O8u9ImWl/6Hae/sYwN4oi35hGqrx4iCc8k+XruXET4+c/E
	a7vyKEc2xz5Lk6un2S7wqvcj40WWDZAZxPklitUTQBcRSZuhO737a0Jfm70TxrpRMhA7w7QD7Lul2
	yTVQc5M/nhGVdXuO0ijdyNDVgFJq/ui+yrQFXakg1CsQQmXaESOb8b7e42AncAYZGVch7MiXoaJSd
	SlIy6TBsr8ifBg93ylrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hihue-0002r0-7x; Wed, 03 Jul 2019 16:15:16 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hihuc-0002qd-7c
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jul 2019 16:15:15 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D9F62C00FF;
 Wed,  3 Jul 2019 16:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562170513; bh=WDDiZDuew8RegZw1RwNP2UM3/pT0484FOMpowsuFhms=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=YGubzmLMIxfbuso0hgSWgzxFUTyeoIY5h9vw45hInb9h5z603SboOjTm1U+E7UUT3
 nLxO3vw8NEW7rwBYuZo0IdtGKiM92ZA1Pc7pA4eV4sV+Lpk9TG1qt+oEiISkoZt8IG
 aVSyGCn4kujkgH69dgjObBVyKWFFuqF1dLF/pMMteAC4HFPSmz+0gKBjjJaF9HXZx9
 S9NJsse7gLlJDHrk+PEpuE6pInZkwQx5DWHj7yxLztCY+0XpEp7ftWJuaej9CGUoKU
 3tCJieJB9a025xq5ImFX/mFWHVfwDRwTETYPsuozfakiQloQ75xplTckZdulZrsJ98
 oR81jD7iciCTw==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9235DA0067;
 Wed,  3 Jul 2019 16:15:12 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 3 Jul 2019 09:15:12 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 3 Jul 2019 09:15:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDDiZDuew8RegZw1RwNP2UM3/pT0484FOMpowsuFhms=;
 b=OLeRriG9A01mLmtWBXti5K7ZLxh+UiUEkvCzh4Pr+C1pjowP0WlvIFMBeQdNOzeCQJxcHLiKlJciryw15luFsle+2QnMMmTqtbYjyBG/Pzum8xSDtgzpLEwh9JyoZanhqQKZpMh6/+uIy7uJXTBzbLVuQGow8QG6k4MAsjbAIUY=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0051.namprd12.prod.outlook.com (10.174.114.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Wed, 3 Jul 2019 16:15:10 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f%10]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 16:15:10 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVMbp1QUnMGryojE2rPVU+oeatwQ==
Date: Wed, 3 Jul 2019 16:15:09 +0000
Message-ID: <991ace9d-ef6d-0f29-d4f4-03ba47a7f7ff@synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BYAPR06CA0015.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::28) To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e0424bf-9902-4397-ec7a-08d6ffd19eb2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0051; 
x-ms-traffictypediagnostic: BN6PR1201MB0051:
x-microsoft-antispam-prvs: <BN6PR1201MB00518DF8CC12A9AA4BB97EA6B6FB0@BN6PR1201MB0051.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(376002)(136003)(39860400002)(366004)(199004)(189003)(110136005)(66066001)(64756008)(66446008)(66476007)(58126008)(5660300002)(229853002)(6486002)(66556008)(54906003)(66946007)(52116002)(65826007)(31696002)(73956011)(6512007)(7736002)(316002)(81156014)(4326008)(86362001)(65956001)(65806001)(81166006)(26005)(8676002)(305945005)(64126003)(386003)(6506007)(8936002)(476003)(53546011)(76176011)(53936002)(186003)(36756003)(4744005)(71200400001)(71190400001)(486006)(6436002)(99286004)(25786009)(31686004)(446003)(102836004)(11346002)(2616005)(3846002)(6116002)(14454004)(68736007)(6246003)(478600001)(2501003)(14444005)(2906002)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0051;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Nez3vwR5bBm+H7HAeKUFBQ2I0BdvMD3j86W8Hr1kea6UrZk497DTN7hk+U+0BpUXus7JtNAxg+PzZNvMrg7E/tCXat8qsRZuxKyb1fW2Q32LTOcbY//v+UrFK1JJn12bPHPda5erwOHlGD3ny2Y88vpjULd9dazAMkIOXVf6yfUA1JU6RbhzsamGSOZg075qoghqvKfWmttzimDu8GQ/UK6pQGhHuGbkAa9l74osQYgpkfXv+hH3c2BYLOtUom6NPniQ6wwibJfJGgcW58NQVZoJkOGKPhk5cGLYl2tzgTuI4ccpfzY7Ch0dLh2kFZ1QMa/U02LMnjueLF6zDnJq3/AvjMWsMFS70JEDg20rr7gOCKFKgVQZhpQw02B0bVt3ki1TITbdvClRpWAd6wvjB9ABQcFOfJMMpV3qpoQgqmg=
Content-ID: <6F497960BCBDEE4BA2FB30EEE564DBC0@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e0424bf-9902-4397-ec7a-08d6ffd19eb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 16:15:09.8800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0051
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_091514_279735_3ADC7758 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/18/19 9:16 AM, Vineet Gupta wrote:
> On 6/14/19 9:41 AM, Eugeniy Paltsev wrote:
>> Implement jump label patching for ARC. Jump labels provide
>> an interface to generate dynamic branches using
>> self-modifying code.
>>
>> This allows us to implement conditional branches where
>> changing branch direction is expensive but branch selection
>> is basically 'free'
>>
>> This implementation uses 32-bit NOP and BRANCH instructions
>> which forced to be aligned by 4 to guarantee that they don't
>> cross L1 cache line and can be update atomically.
>>
>> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> LGTM overall - nits below.
> 

Can you address the review comments soon so this gets merged in 5.3 whose merge
window is looming !
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
