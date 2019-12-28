Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCC412BF4B
	for <lists+linux-snps-arc@lfdr.de>; Sat, 28 Dec 2019 22:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aIQQnw7VyerIeRvIfKiT1W8ts0jeb94YTh3SV+qLao=; b=PnaG8C14gsgEnr
	Nwz5czdLCbU7c2f/RmNdzuEQIzlZXPYdBoiL4bu3/cj/tVKVT5AsLyz3G0iZbZt5j5pwq1lzwHAqx
	3ANRFw897OQ/YeFbVnU0FfcAdTSBBHHu1BExah4pkYUGXZPH5vu4xr9sZoVtnMOVnOzP6PMh7kXJV
	vn+NfpGjM9bIihJHoKdDGfqCvubPjvfhW6iAKHd/KBnX9v//KPFVH3TYOhl3DrHqA+aV5vRUs4lII
	z+dpnT3+nH5Pb4+jcQDnlIBjvYCwbVuhYlKl4zvoLCmxP4kj/zunA/tli+itbBbp9R4dwzQTFfZF9
	rECLdaJecTY8UjVasCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJIt-0001hI-5A; Sat, 28 Dec 2019 21:07:19 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJIp-0001g2-Tv
 for linux-snps-arc@lists.infradead.org; Sat, 28 Dec 2019 21:07:17 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 10F99C008A;
 Sat, 28 Dec 2019 21:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577567234; bh=3iMv889kndr+/3F2T7kQRZSErBW64bq+cekMWkDIOLE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=eJg66eWVz2m37MwSCvBDKAJZ/RvPZTRaBeMnOO7LYbSeey3TFh0OGN6cJU17PyIOr
 G65Mj2QBKTyApECQRgSH9Sjg9UEJ3IPJvLWsoySLEhl9dUft854Af6HRZ+PE0w9o9t
 y8ONGlnLjUqQX31HUlFT8AC9DEHF9Q/nNIVKN6NgAxyv3pswYhRi9IigEDmRkOG7RI
 NSJGzKqScGWd3M7hrvswV53gATI5qj3fXa8a3zwu0dgUYsS2Au3DMemgUG8H7QQFNN
 nPAlXjx+Wbeqedl1r/UK6sHl8sGJEHp2Amy2k1ESn5dXRwv6n3DOYRQLSL+wRZCkRY
 RdgJlCzPHHJXA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 36DB1A0079;
 Sat, 28 Dec 2019 21:07:08 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 28 Dec 2019 13:07:02 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Sat, 28 Dec 2019 13:07:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IsekYjelbcs854BFJR9GS7oujNZaTf6UbdzotMJaCAloPZkTRYDAayp7uU7k+8DeqiSxnN7AuOn4JFt95ESQ88B0JLg21ntG31xRPIue8K2dJNHwYSJvpuT/uFHx3e5UmjFBz05K6P4E9sF9atUqxDcN7SWsMnxZfymSbZT4Lqgp6DcLfQfIZkwOHm8GJUQz6lYF+/HB4732E2w1K37BhVnBnGZGZbnnvM+5O3x8NZM65TAO6vSDw6bJSqd3OgIIOMppds3z/9OYj1O2f2iQcrUsujwASgd1kK8kSEdkewfFmQtEboLKKUnpV38sGcCKCH947ba3gvQoCvK9dz4k1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iMv889kndr+/3F2T7kQRZSErBW64bq+cekMWkDIOLE=;
 b=S2heahAK/UNnpQr3jw2JWBpxRgL6ZLssiXAAXj6R2ZrX5scj7U24ipcDunnU2T3nnOsxFPObRj9zXI7L4BbrBPz/LL0Eo4jEaQUbXLPod3S6bj8w/wNpImp1Ju+bWdp7EqgHUEwa1XHlKVFgON/bV8Q41s6nwkxGx/MqLANdWiNby+UvHdxqDSnBnC+5HYQJ70Jlb7rWvDQsF0mlJuZkNvO+Xr0skN0rfVVnalPp/7bMSVOIjXlCvCSVK3aM21slv0FFk3Z2200Pk87sBl8k5RmULIHriIMin15jUKMpoqA0xvHDdpAFuT1+h3RxYNX/MVKNxhjD1vXlwS9Y2ImQ+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iMv889kndr+/3F2T7kQRZSErBW64bq+cekMWkDIOLE=;
 b=KgtLC5FsUmml4zk4VMxP4w+H9/WoXrKgi1/4kB8BfeL0vJcSXK87INmoP8onNr6gVfghHfuRYLFI/meeIsViaP+jyfPHNqP5KYsxGxsOiHdXFQYTNWCSC6san7QxqWXyP2x7juyk1vIVsHDwELoWwdDvK3qiKlMlRPPoVvFdUMY=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (20.178.54.89) by
 BYAPR12MB3301.namprd12.prod.outlook.com (20.179.91.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Sat, 28 Dec 2019 21:07:00 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333%6]) with mapi id 15.20.2581.007; Sat, 28 Dec 2019
 21:06:59 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH 1/5] ARC: pt_regs: remove hardcoded registers offset
Thread-Topic: [PATCH 1/5] ARC: pt_regs: remove hardcoded registers offset
Thread-Index: AQHVvOAN1qgZJPSLVkKGs6eqTaXacafQC7sA
Date: Sat, 28 Dec 2019 21:06:59 +0000
Message-ID: <a7a7e4a1-7be0-0cfc-15be-ae462b407b85@synopsys.com>
References: <20191227180347.3579-1-Eugeniy.Paltsev@synopsys.com>
 <20191227180347.3579-2-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20191227180347.3579-2-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [2601:641:c100:83a0:e088:294b:f4bb:3dd9]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c946352f-c397-4226-15d4-08d78bd9e13b
x-ms-traffictypediagnostic: BYAPR12MB3301:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB330100C4BC251046A0368F00B6250@BYAPR12MB3301.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-forefront-prvs: 02652BD10A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(136003)(376002)(396003)(366004)(189003)(199004)(66946007)(64756008)(76116006)(478600001)(558084003)(66446008)(31686004)(4326008)(36756003)(66476007)(107886003)(6512007)(316002)(86362001)(186003)(31696002)(110136005)(2616005)(66556008)(2906002)(81166006)(81156014)(71200400001)(5660300002)(6486002)(6506007)(53546011)(8936002)(8676002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3301;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jlKBpaSQ7gShbj9/9mYbNIGxWwfWbWLth6U4onOJ4E8RqSIDBT4pnGXBnpH1kIxNL09eRpxkT/BzxCxV+8mL0DrkfLs3tWZY5VzIeEeXp2CyPOmDg+BcAwo0xa3Gzx8w1mIUaxNjq3y7dxTqrfuSuTKGYW/kflszc9Rr4d8EB/8NlheslhPHqutgtpTFwPugt+UO/5vNVktu/bsQ9VsebC2YePE1XrOV/tNDwktO7Sg+TyNXQ2ypaxeutiSg4YBO7S8zUG/npzRIBzc6OwR5rvZnGjTFLIPpE2rWAQ4wwobBTukJ4z+GP9yOScFfHrzdxqGdIynnOLAMlicNmviER9qRlNSaSd7Y6nBb22EZJ705xgHz8Lg9SfoxXDYKWb2KnrDFIIeAD3owbKz5ZNPkgQaqiDyykPkS5+TRg0vXWlEHZCWgN1Fq17a5DsOgNabK
Content-ID: <043ED1F3F840B643A151166F2EC38CA0@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c946352f-c397-4226-15d4-08d78bd9e13b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2019 21:06:59.7755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9+wAkxYFGEnHVW19Z5kbhaLJ30wWq+7NuLWrMxN3YOxviE9wsXeCC4U6jYiKuuCHzEae4yRS5wuKbWrE4yW7Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3301
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_130716_181658_79FD5A19 
X-CRM114-Status: UNSURE (   8.15  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 12/27/19 10:03 AM, Eugeniy Paltsev wrote:
> Replace hardcoded registers offset numbers by calculated via
> offsetof.
>
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

LGTM. This seems like an independent cleanup so added to for-curr

Thx,
-Vineet


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
