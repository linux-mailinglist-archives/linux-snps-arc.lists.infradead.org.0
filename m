Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30BB6B08D
	for <lists+linux-snps-arc@lfdr.de>; Tue, 16 Jul 2019 22:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3VTsIVqjZ9zvdRM2/iuzzxRMEXkHGLEoLzwXG31s30=; b=bnFoGjRJ6WlDPJ
	8z1XeW5vsES5Lo+HkCwyexZClSsYspddD/6SyWNtmklMjHBUXGsmKwlN5Lvji5W7gapwuGD9Ugbt4
	JgshifUOU1wNZAiT5DAlNS+U1Js77n2bdC/NmZqqxHhpEq3waxbEcNVGRAgfPMshUhAB6ZYp0Q5c+
	6eUuuKSc2ggw30E20M/CCRjc0rwGfMwcAC9nNbhsz89I9cgZiRF1kNDgCbFJ7BVWl9Q38vyjBsbeW
	7qX2m1f9Cqy5D3IhZr8UYCcWmRu7zzARXBUWAm8ztaOozk8ek/XE80zw/VkNN2K+RcFgmHXwTs0AY
	PhvVWbqpuwS7uw9F0hLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUF8-0002CJ-GG; Tue, 16 Jul 2019 20:40:10 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUF5-0001mR-5Q
 for linux-snps-arc@lists.infradead.org; Tue, 16 Jul 2019 20:40:08 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A3C21C2510;
 Tue, 16 Jul 2019 20:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563309606; bh=uJPRBJxggYs33I+/ZcgNHmE1IKEOjOEO4hSN1Tcc3u8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=IjIS2QfwkNc2fdfVqGCLVxdi6SjqtdZFawliezM9PXkO8D2UJ2LnGpscxnJDTws7W
 sRAHXNnIL+bucoCv9trpQqk/E8WVr922vRCbYSPMSO+dJOeNe+EswTSzNwN4PzYAqw
 na8gvCf8Qvz3b8IhIv+tTBABRvcA10GPyx/6kM1Ck+PGL/n6pF7Jh9ckEsF/iMHEoJ
 h9Ou3tbo3/7qfJMAB9hVs8CfUxmc+DvAEV6wAEd5TR0k0aBmzIRNTZQ0SkcGQLbPH5
 paCE4m7zhTZFDkEtYwXGFafblbIGbRmjkL29FzkrbVgSevcUMF6bCcgxIz6ji/c32e
 YX4osmFh5ofOQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5ABC7A023B;
 Tue, 16 Jul 2019 20:40:03 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 16 Jul 2019 13:39:46 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 16 Jul 2019 13:39:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gm1hGCvTbdhXBCyKVDJwwIBmjctIgWlmjHXtIPZGXniJG0GJ3LD+guFyTXLLYVqHUJB7UV+KHfyfJo1d+AnqDEbqvKolQ8w7C754Baznu7Ayz/rz2NPlqhHvPjgkSz6xD45wYvE0W5SPLd8eqWHX3mTIP6lhIJFRrHifHjM3iJGAuFsqnR5a6OgryQhRwRP5adxoexHcZOFWFIdjvZLp7rQZC8T/3OGUiu25dLhkU1dT8OcI8ulfOobY7RmfHCosQMfzSBOPZiqeQuuRWkqkNul1Ie3UmWR8CThO7uVRGgQiVl8129TpDAE7kvPc4dwW+u7izUD0bTqNdG5ev+pC7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJPRBJxggYs33I+/ZcgNHmE1IKEOjOEO4hSN1Tcc3u8=;
 b=nhTraMxgixS407YodU77VyW/af+whYPPH25WpDvucKUeaWUlE4HjZEIpnHxu0DLguWWuPxHpElkat7g3xPcXPL5pw5VkzE2f5uSe3fb/jepxiibg+23TmNvEDPd5/bREH8Xwsi8kTOBIC2GjwxOgFXbpU9ZoYhSoBMyWphF1gdOEoB0SpViGKsFSgcylWlS5ZTFzeydO5+8Rg3xi/rpz9o+GJURULaPYdOqYeAIS5+n+achdkumzkYvgRh16E9xs4cD9v+wxNN/O9/sBFcwQnv2RTCzq7DHUIWTXA4QJSGP/u/3AaljFpUjCFJ1u7kKYw2TP/6wK0CpJ+MFBZ7GjiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJPRBJxggYs33I+/ZcgNHmE1IKEOjOEO4hSN1Tcc3u8=;
 b=IpKq61KZlXmw7sNfwPG3rfXs8XhKuPYyMp1++pE/+7i3V5h/XR/EO3vEcRdiyZzIdlJ065bX5Z7xU6eSEq3NDwDLvpC5Y9P4rWif4J8J32muYmO8rErYwBlLGo4wsaLgLm7f2+SN6tQWMIm1o0w+u8fdjP58lJDQfGXTY/euNiY=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0227.namprd12.prod.outlook.com (10.174.239.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 20:39:43 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::24a0:9726:b1f7:fb3c]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::24a0:9726:b1f7:fb3c%11]) with mapi id 15.20.2073.012; Tue, 16 Jul
 2019 20:39:43 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] ARC updates for 5.3-rc1
Thread-Topic: [GIT PULL] ARC updates for 5.3-rc1
Thread-Index: AQHVPBRCHpBudYy3jUKEd/4lOklWzqbNtQaA
Date: Tue, 16 Jul 2019 20:39:43 +0000
Message-ID: <c370f648-b9f6-a845-d3cd-170fc3ae8c2f@synopsys.com>
References: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
In-Reply-To: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BYAPR01CA0042.prod.exchangelabs.com (2603:10b6:a03:94::19)
 To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f68dc419-1807-47af-cc9b-08d70a2dbb4a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0227; 
x-ms-traffictypediagnostic: BN6PR1201MB0227:
x-microsoft-antispam-prvs: <BN6PR1201MB02274557095A7E4B963E5380B6CE0@BN6PR1201MB0227.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(366004)(396003)(346002)(39860400002)(189003)(199004)(6486002)(6436002)(7736002)(31696002)(229853002)(305945005)(3846002)(4326008)(65826007)(478600001)(6116002)(64756008)(25786009)(2906002)(76176011)(66946007)(6506007)(446003)(53936002)(6246003)(64126003)(65806001)(65956001)(81166006)(81156014)(8676002)(66066001)(8936002)(186003)(476003)(486006)(26005)(256004)(31686004)(102836004)(68736007)(4744005)(2616005)(66556008)(5660300002)(71200400001)(66476007)(6916009)(11346002)(52116002)(316002)(36756003)(14454004)(66446008)(58126008)(86362001)(54906003)(71190400001)(99286004)(386003)(53546011)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0227;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CX3p5MLgre0+Gv2IGZdTvvzIzHyy0sh/qSVHsuZa2knuT54iJIYuSXflzj1Zar+WXa948iyN9enhKQUsbNlf2jHgSjEkYkT14p4EB5lLeleMT5R4bXkUliVV8hvp21AjmxISAwOanwj08FfnVwcnIGXwNv8s9hUPM8a5/qgzicdufP7F6WZG/AVb5xVbOeq76AveZ9t1yBbSU0xTKZsJX/osaZJB83fp6fwnIo/Wg72ixTcodzx88Wcwk5Qna1lEkL8ILHdpSqPWT4C8Rzjpvxqm0ObudtxArnjxHVWECA9mbZh2t+FessCYIL9unAzAJDzSJ3K9JuCCsnIGeXI94cXcAktxrMtRXJ9IVouz2YQQIARzZvRtpESzRpiGdArR3+xcznDnSSQvf3RSjEWHYqC88UWFiNWxQw2gaKOOghM=
Content-ID: <488DE52987D7694EA6B1E44D4ADDC859@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f68dc419-1807-47af-cc9b-08d70a2dbb4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 20:39:43.0690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0227
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_134007_239174_F7B2F48B 
X-CRM114-Status: GOOD (  10.88  )
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 7/16/19 1:22 PM, Vineet Gupta wrote:
> Hi Linus,
> 
> Bunch of changes for ARC, some long due, for the new release. Please pull.
> 
> Thx,
> -Vineet

Sorry almost forgot, you would run into some merge conflict due to collisions
between do_page_fault() rework and force_sig_fault() argument change, but should
be easy to resolve. I'll give it all a spin once u merge it.

Thx,
-Vineet
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
