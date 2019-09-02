Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5E3A55C2
	for <lists+linux-snps-arc@lfdr.de>; Mon,  2 Sep 2019 14:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNbEUpy8pKtA5VoIIn5x0YnjNi6SjtLwiR1gm/FX/jI=; b=nIID1YmaqFl8PH
	ZteGriA6i6k0/NzsYRhjEZJkE+88EKVF3qT3duguDT3A5hDbo5x6tSDJTrpczgSOD87bxCTGNKQUq
	wWPYCD/oguZ2nFrbFzyoqf5y9WccsJvqBP3CK+NJjdacdPRwUq8bWIqU5f+kCJ060y4XkP/nmZBUF
	7G3e7p52Cx/WK6GaSOZD8NTZckQMelyFLX3bk7KgebupvH85rdr6at06gLwWv0MceZyweiidXitlw
	smDOdVXdfObTYqWbXgr1nbvnWCR3G7FIEQQjGIp2abHO88ORsaoE0RxeJ2yXRTk54ds7Y5A58zZ9u
	ZdN1HjTiHR2/OIz+vdGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lJ2-0000p5-N5; Mon, 02 Sep 2019 12:19:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lIz-0000oZ-7r
 for linux-snps-arc@lists.infradead.org; Mon, 02 Sep 2019 12:19:34 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C87DFC043F;
 Mon,  2 Sep 2019 12:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567426770; bh=J6EQWePWlfZzCk8aMXs/d8HHd5rOuLUOSn6NpSnCf64=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=AbRzMCUA8VUvdB1NHoIOTBev3AEwBidU4l6KWmHn2wIEaX7LVYzZCEROt+4zaMTOI
 boeF39Sh/60pOjCdYFhdIHICHi7Q3/X09X+5MXnQNbCVFU/WKIrgtzjiSoRYacswHP
 VsI5y71ZPNTRk1xpWkYnnXTdJk6fCfr9UfzUfHHStHvNfVo9/h0ofyrJvppnZhDE78
 /EtMHqNQGrZYLgxPanW2MX5xOvf40HghIkiNeIxtBXVDQjK2XM0j9rAv0tA3mmTxCh
 2NjPKzlSgXqg+yQP7j27RxoENO4GV1/j63JzWaz3hfAR2wj1OGbUW5hXLs/YXd9YRP
 C5xyOYguZna0Q==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CFD5BA005A;
 Mon,  2 Sep 2019 12:19:27 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 2 Sep 2019 05:19:27 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 2 Sep 2019 05:19:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrNI9I6di6gv4soTMaqr6oY1ljdI8DLWzdwtwnR+ue07T0wvRXUNVirJagF1JP4Bb1n9Xo3PMiuiPSD4eme+NL8NSl2sk/z1aCn3kteZC2Wb7RfE/lbOX/BibyRCdQn9IkyOa8FJP6ucqW0LZtVC7Liwg/U0735WflZn3dkkYvVn3ijHs8TGtJj43J4rYBaiDsJ+FNpyKMxcvMeo1b0PXNUdHKRPzEAeximBhsFmdg3yjvwE55uni/FPiF9NPhguKEiEW6cn9QLn9MhKRUFH6srWt9FcWDfjwJSsqBDC6RQjQWEBFGIsT8HFRuPyKCmuXbhfRrCRcnVGS8raX0VVXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J6EQWePWlfZzCk8aMXs/d8HHd5rOuLUOSn6NpSnCf64=;
 b=GrzEKUW0hEpnKvv9qSrLLxI+tnnSrTJbZftPmvuSNfQ3cZ1qm9vjEf5RffQgR4ru+nIIgB5dqGCSwvzMce/9Mv85gejV9M3Lfp5HFgg6sfdBul8XwNkcmGRfaIE5WldwiWmjNXzUorZi7or48yPf2nmn5p7pXx33D3oY2Sd3BStFx0COSD3OwNKkwIv9Ws//jecq0lfpuoLwA7ZjxYHMKzIwup2Ikoj03T5ILWfvaUIkJ8b2yYNydeiqZ3BMhRihVJZ6pORWRPDgJBNu9eGq39hByok9cHBS+PTzWXarA5lTyZuvJ4NGyE8488+wrTRqBnaHSEIgR81bYRURh09Emg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J6EQWePWlfZzCk8aMXs/d8HHd5rOuLUOSn6NpSnCf64=;
 b=mjZHvh5V8YEHuHrTFPbxJdfA1yQ97ZO1fPn8C0dVkhN+tt2pofj0UR7G0nnh2g9E7Meyh9ciUE3Ogu37fE8x7EvnQWT3KpK8nGwUIOGUkRwoL7F8eSr9LPhD/AcOag/GixGkr965nUhDR+t7shmR4j93T+EtlEAnDpLEii1OFqo=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2485.namprd12.prod.outlook.com (10.172.117.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Mon, 2 Sep 2019 12:19:26 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a%11]) with mapi id 15.20.2220.020; Mon, 2 Sep 2019
 12:19:26 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: "u-boot@lists.denx.de" <u-boot@lists.denx.de>
Subject: RE: [PATCH] arc: libgcc: Import __udivdi3 & __udivmoddi4 to allow
 64-bit division
Thread-Topic: [PATCH] arc: libgcc: Import __udivdi3 & __udivmoddi4 to allow
 64-bit division
Thread-Index: AQHVYXLaUYioJiImpE6dDs36qeNyGKcYRGig
Date: Mon, 2 Sep 2019 12:19:26 +0000
Message-ID: <CY4PR1201MB0120181BC11EC8754DCDE5F2A1BE0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190902094244.486-1-abrodkin@synopsys.com>
In-Reply-To: <20190902094244.486-1-abrodkin@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 195d3103-af72-4ec2-0bd2-08d72f9fcbed
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2485; 
x-ms-traffictypediagnostic: CY4PR1201MB2485:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB24852BCEA7F254E0AA256348A1BE0@CY4PR1201MB2485.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(346002)(39860400002)(366004)(396003)(13464003)(189003)(199004)(81166006)(86362001)(55016002)(2351001)(476003)(446003)(11346002)(102836004)(81156014)(76116006)(66946007)(486006)(8936002)(316002)(8676002)(256004)(4326008)(25786009)(33656002)(99286004)(478600001)(966005)(305945005)(7736002)(2906002)(14454004)(66556008)(9686003)(7696005)(6116002)(3846002)(76176011)(54906003)(53546011)(6506007)(52536014)(6916009)(186003)(5660300002)(53936002)(2501003)(6436002)(6246003)(71190400001)(5640700003)(64756008)(66446008)(6306002)(66066001)(26005)(71200400001)(229853002)(66476007)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2485;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dzl+RsLMdzdJQZgku3b6oRY6nPPUp8kSLF4JCQrfPx0t65lu8Hro/MqFljy7kMCZvBMieAwWa4RsqtRBB89taZksSU4qufVkLAK4LZZb0rUAxTEeeXl7SDDivT3R+yUxzKkSJYRkkJ/cV+vxl2r2td3bCK66XwH3OMkB2A+SA6PWIaXlwZlRA/S8rHnUogwYCbope1AepmW2PdA8hFiFzB/1BI3MVLC7UOp5N/3nUcmAtP1zex/1CVG72r8HXKu4UsXEjHgQh33QyHNOlzKOdZ/OJE9zqj5lElodE30jDlyIqA91jGwfA6nF85A9BL3Y0m4gHa/UY/tKyYUmL3oX68KTDt/J0SM8ZRkSDzEw18h8YjZ2P5dTaCD2z4+OAkli6PV6MeSD2OCIUsNIUxEG+FYDCUQeawS2DkKM8NLP8sk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 195d3103-af72-4ec2-0bd2-08d72f9fcbed
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 12:19:26.2070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fIBN3j+LBTJpdISsU1qq1i1DO4kxQXn9kngvJ5QG9Gj0z6QYA/sb2ironwy9bf/uQTvXLmUMwsSeCc0W0VS+sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2485
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_051933_355480_8E393010 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "uboot-snps-arc@synopsys.com" <uboot-snps-arc@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> From: Alexey Brodkin <abrodkin@synopsys.com>
> Sent: Monday, September 2, 2019 12:43 PM
> To: u-boot@lists.denx.de
> Cc: uboot-snps-arc@synopsys.com; linux-snps-arc@lists.infradead.org; Alexey Brodkin
> <abrodkin@synopsys.com>; Kever Yang <kever.yang@rock-chips.com>
> Subject: [PATCH] arc: libgcc: Import __udivdi3 & __udivmoddi4 to allow 64-bit division
> 
> As reported by Kever here [1] we were unable to compile 64-bit division
> code due to missing definition of __udivdi3().
> 
> Import its implementation and __udivmoddi4() as its direct dependency
> from today's libgcc [2].
> 
> [1] https://patchwork.ozlabs.org/patch/1146845/
> [2] https://github.com/gcc-mirror/gcc/commit/5d8723600bc0eed41226b5a6785bc02a053b45d5
> 
> Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Kever Yang <kever.yang@rock-chips.com>

For the record for EM SDP (emsdp_defconfig) building still
fails this way:
----------------------------->8-------------------------
arc-linux-ld.bfd: arch/arc/lib/lib.a(libgcc2.o): in function `__udivmoddi4':
.../arch/arc/lib/libgcc2.c:195: undefined reference to `__clzdi2'
arc-linux-ld.bfd: .../arch/arc/lib/libgcc2.c:195: undefined reference to `__clzdi2'
arc-linux-ld.bfd: .../arch/arc/lib/libgcc2.c:196: undefined reference to `__clzdi2'
arc-linux-ld.bfd: .../arch/arc/lib/libgcc2.c:196: undefined reference to `__clzdi2'
----------------------------->8-------------------------

That happens because we use a very simple -mcpu=arcem which doesn't use
HW normalizer unit. I'm preparing a patch that will improve EM SDP's compiler
options.

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
