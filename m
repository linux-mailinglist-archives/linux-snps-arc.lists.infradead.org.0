Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1CB131D3B
	for <lists+linux-snps-arc@lfdr.de>; Tue,  7 Jan 2020 02:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgO4TufEKf4bkzAEVbpn1XpGuXW7ar9xLOhaUdLdO3E=; b=tqVk80Z8FVqUgq
	ZQLizwcLSyUqDsGt6dMCvc1Htx5aEWMROglqvZfJqCdH+2nRLM5HwdfL5a0rAohVOU4jMBRqDGTTd
	ZaZQkNLDvzGgPJgyEpIT5PUcnoe7VDtr7JzUwXuKaypQ3QYLntBT9qpp21bIBtd+qkRh5jFjyXL6H
	OwiUgUUnPj3+hTPLlqBRfgvX0vpxjuKKaLMGBnLRgf8+TpY5UngrHdek2Qw5ASPlhwQuZzbTIp6ir
	YlGyHpCyC+7pAIB+IZ8tibZbBQL3vc/zRvEOirOORChBJi99C8LCBFL/yQx2ImSOZbwyNN34CmO1V
	u2mAagQxiwu9r4xjyNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodhQ-0007X7-32; Tue, 07 Jan 2020 01:30:24 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodhM-0007WY-Qk
 for linux-snps-arc@lists.infradead.org; Tue, 07 Jan 2020 01:30:22 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3FFDDC04F7;
 Tue,  7 Jan 2020 01:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578360620; bh=HRQSsQ4ZABx5njFb/HyohwEh5TMY/G+AOqZDPr46LXE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=hJODXGP6SOizmVzPwpHFVfCq3DQ9l4fC4BEQX4WZQY5q7DIu2QX9XX5mHI6cP7lct
 I1Sie8wm1YLNuMBA1WImJAOg89reR5KUle0UNxpO4nH9dgqDumxYIl1HvLA+jxDsOi
 xXT/b0h4EFKq/X0Wm07QXIUuKW71R/P/cfTjab3SjphTLA5Dxe4ontC1RuJhDnfch3
 ylOpBaG0FRZ+hKjo7d2alwgDwnWsmW9woPHsX0TB1drILrCpKAKJXGUwxKygOTeMgO
 I50KJeFIkMjR1p91NlA37IHidkWJ44Bva1sv4ewj2YWQ88IVZhZl4vi+TnfUdjdCp8
 +udI+BEtcTxnA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 13872A006B;
 Tue,  7 Jan 2020 01:30:20 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 6 Jan 2020 17:30:19 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 6 Jan 2020 17:30:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8VfppnGgKDTX8fdyrck8U5MjNhGVPE6ZXYLUvTHR4FO6se9q/KwtcWZ/Ejg/WwZ920ktyt5+R2/Vr86e8AObnw8HLTVt83aeCDUIiQ3z8CZ3H84c3sBdUjz3z+/FC1tu+5ZzPod6tDliPfREHU49yAFNP8g8kfukpAsEENhpLpXStb5E6euTAF+tCVmA9QYyOCZw9buOs0TetNAGzDQlRK4W1n9RSx3i+8WTgS2/gcmAbjwLxMFw0aqoUsLyxu3wc8SltD9lG9uHiEbPnLYJg0FT8BG933XdALQ9rDhDlR1tFNdaWUGRXngOhES/DMUgJnsl5gbdtS7mCur8heQUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRQSsQ4ZABx5njFb/HyohwEh5TMY/G+AOqZDPr46LXE=;
 b=OgkLf5E+hDnPHjNvV8J7o2gKsC5Z2AvgeIKZrb9kzeUyPdaSTZskNsKXH/8h3B9K4gTij2gdijihndUnw4yWU6llKjnCpCra2saf7wpxZEcp+L8GGzflpoNQIzHHjMGA554IPCqJyebnWDyma720sSCoffl7c9+ZDuj7LRQSCHxM7TIIJ0TjFMO4tCXw681+7bAwGMClBpLVCUi4NHSC0i04taezY/XXBAble/iiLc9QhwJnhwGcT+33dut/FK0NyuUofAw4NcGt4O4pJ8hx3IFuXPbnLXA4GULzMgcM+QbOax8enTFMOMo+zb1lMb7dahsoxfCpquCJxwxJ9fx1OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRQSsQ4ZABx5njFb/HyohwEh5TMY/G+AOqZDPr46LXE=;
 b=pV8ZDXNw/KkT2SX1vy16Bcx5hD8e8jO8LzqcWOLTsiozvVahiS7c4OTenVDVTViJHSjTwrtnFWgO7GxoU06eTbtQlw/EIPaJlXWPLzLXmfzUKrxVoJ5v0nJhQYLo61pWgFEIC4uxJU4sqXwAbLJ5Jv7QHmZxymf5dbaJhjRI47g=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (20.178.54.89) by
 BYAPR12MB3175.namprd12.prod.outlook.com (20.179.94.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11; Tue, 7 Jan 2020 01:30:18 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::39a1:22ee:7030:8333%6]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 01:30:18 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH 3/5] ARC: handle DSP presence in HW
Thread-Topic: [PATCH 3/5] ARC: handle DSP presence in HW
Thread-Index: AQHVvOAPR1zSenMpqUm+DVM4mBlrGafecrQAgAAHlQA=
Date: Tue, 7 Jan 2020 01:30:18 +0000
Message-ID: <c261aa64-d15c-ce5b-4202-beeaca80f7b9@synopsys.com>
References: <20191227180347.3579-1-Eugeniy.Paltsev@synopsys.com>
 <20191227180347.3579-4-Eugeniy.Paltsev@synopsys.com>
 <6b80df9d-d0f2-d1e1-8e4b-b65531b938d9@synopsys.com>
In-Reply-To: <6b80df9d-d0f2-d1e1-8e4b-b65531b938d9@synopsys.com>
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
x-ms-office365-filtering-correlation-id: 1cb74c68-d576-4250-bd61-08d793112793
x-ms-traffictypediagnostic: BYAPR12MB3175:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB31750538BB6441C5E5E38183B63F0@BYAPR12MB3175.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(316002)(4744005)(54906003)(110136005)(2616005)(2906002)(76116006)(66946007)(4326008)(66476007)(66556008)(64756008)(66446008)(6512007)(26005)(86362001)(71200400001)(8936002)(31696002)(53546011)(36756003)(6506007)(6486002)(31686004)(8676002)(478600001)(5660300002)(186003)(81156014)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB3175;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CY+Cn0mHQTOyCjraM3fwu/71WB1yalgamICQiiHrQFAoeqq6QtnTl/dAW3ZHt0JEYRP/1CEykkN1RdZO3yjjF7xUqZMxwCHeqJADzImuN/L6MtmPqma+OTB9U0Wu8F6iwO0QizHvvKjDiaDhKVScDuooq7fCbvwJHY5XfRF8UJNOvI1CBM/QnUq3SeaGxLm6B22G0xNV/zmx1IQMsWUdXMuV445/awsP5GfDl5lPbCGD3Vy22OXoo56OTIDEfQxVA94ruJ/XZzdPwNupRQHc2gReD5UxrwH2dTziR5ZRBujz3JqUCws9emKQkxyQfG0Xz/homZI4OGCiWp132d7qFF25gOOB0nFNUq0Sa318GmUrEJlQjTsbPyep3sN4otmOa2M+P6QnykHjK+vWp7/g31pmLxYGZ5RWbNt2HabhG2zGYMhIkDftot/aDq9iVWCh
Content-ID: <2D16D6E9874D514182E877A597D14352@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cb74c68-d576-4250-bd61-08d793112793
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 01:30:18.2426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xoPijTLbcT/8bj5DHLfHIjU5N3boZR22jB6p5NrZDMMF+H9IXB6tarDU+6LfDpnssp/rFszQvyWHqBSgc6fH6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3175
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_173020_941407_850F697A 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 1/6/20 5:03 PM, Vineet Gupta wrote:
>
>> +.macro DSP_SAVE_REGFILE_IRQ
>> +#if defined(CONFIG_ARC_DSP_KERNEL)
>> +	/* Drop any changes to DSP_CTRL made by userspace so userspace won't be
>> +	 * able to break kernel */
>> +	mov	r58, DSP_CTRL_DISABLED_ALL
>> +	sr	r58, [ARC_AUX_DSP_CTRL]
>

This also clears the sticky flag DSP_CTRL.SAT, can you check with DSP lib folks if
they rely on this bit in any way whatsoever !

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
