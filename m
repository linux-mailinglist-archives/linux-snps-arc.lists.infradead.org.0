Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B5A22038
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 May 2019 00:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5g9au2qEfjIHjQqIMN8/gqZIQJcLZ4qTUMB36JzbI8=; b=SzvnIFaZz8VuPk
	REnv1SNNUsReD1wTjI6knUZI2UMijCHmIKCMopIoMXNFsZy3M/u1ufkBqZBPirlMnMqxNPKV5YktM
	v5PbB4OV6CBOEhiX4zdG9l7q0/DxZCG2GogVvAGTbtNn48kU9jy1OKQTK/nhmpxBYn1lLLy1FRSbZ
	WDC5tmIHZn+nzvxlDjD+qbNCtcbF2fZzFYpxbG/PzimwT2G1NTozMXERSqPC8q8GzKXB3pnDG5Hyp
	60R/u5lsHq36rvFUeOv2pgKsjieeEztUQ/gY05As1KkzsjoMsgwnKCfc8KF/WJxuYLZxweVo23i/V
	piPnG0VXmJb/DXt8Elsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlGX-0003ZF-4m; Fri, 17 May 2019 22:23:49 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlGU-0003YO-1M
 for linux-snps-arc@lists.infradead.org; Fri, 17 May 2019 22:23:47 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 182C8C00DF;
 Fri, 17 May 2019 22:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558131812; bh=BYWfYHCGDXoKNdrxmjJOY01P58Cl6L/FqwgRGlJb6XE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RHES6ZLbx2z/h+HLrEKFQONq3ojzWFq8OlBA8XLoZq5+IM9DfIWomWx2vKUxgay6R
 AYp8LyNM7S1C3ip4nnxy6fMNOe8b8KTo9piDJT0U2lW3+hcgPOashYfxK2VKZgahRg
 ftctRxLoSxq1Yb5ywuR4ecScwXNh/zoZEBrhKz1QQpVl7EYEpSIJ5WIBvjCN10zghz
 5g3fkMGdk5c4xMAlwjWN9zywuk9HGj+0uLb0bPma/91dUhU/NHP3eD2siPtTe0ad6l
 9fyfPy7gQp8VcQnHlc6nC57TgWyk9mjPsDf4DSLLtZh+xCQzKjctpghPem/5keBldD
 VtKnP2VNJ+Y6w==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3FD38A007F;
 Fri, 17 May 2019 22:23:42 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 17 May 2019 15:23:42 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 17 May 2019 15:23:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BYWfYHCGDXoKNdrxmjJOY01P58Cl6L/FqwgRGlJb6XE=;
 b=kDqw/JeXcEHBYWX9U6sIaEbWw5xKfdKAOUPFM3OR+QL/ORsq/UjzEOxzOYKH1hImw2MfkDPWY121zq4Qdj0IX1fIgSwmXcSygjJiOfpERCzmW0yElIyYu0eAqMimlwrgeosLRCWxkQ40Kq6Nu2xamFwPg/DNOtrFUV7rYyT/C+k=
Received: from MWHPR12MB1632.namprd12.prod.outlook.com (10.172.56.21) by
 MWHPR12MB1789.namprd12.prod.outlook.com (10.175.55.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Fri, 17 May 2019 22:23:40 +0000
Received: from MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6]) by MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6%2]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 22:23:40 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma access
 permission code
Thread-Topic: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma
 access permission code
Thread-Index: AQHVCrV7sukeR9XiU0qv5Rc2AMUmg6Zv6JSA
Date: Fri, 17 May 2019 22:23:40 +0000
Message-ID: <1558131743.2682.33.camel@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
 <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
 <1558027448.2682.11.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [5.18.205.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed7d8e9d-994c-4332-7031-08d6db165057
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR12MB1789; 
x-ms-traffictypediagnostic: MWHPR12MB1789:
x-microsoft-antispam-prvs: <MWHPR12MB17892F96AC45E35CF0A3EB0FDE0B0@MWHPR12MB1789.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(366004)(39850400004)(136003)(199004)(189003)(256004)(478600001)(6512007)(6246003)(71446004)(2906002)(446003)(229853002)(81156014)(25786009)(5660300002)(103116003)(4326008)(76176011)(6862004)(14454004)(6486002)(305945005)(7736002)(8676002)(99286004)(8936002)(102836004)(6436002)(6506007)(53546011)(11346002)(476003)(2616005)(66066001)(81166006)(86362001)(316002)(54906003)(66556008)(6636002)(68736007)(53936002)(64756008)(71200400001)(36756003)(3846002)(6116002)(66476007)(91956017)(37006003)(186003)(26005)(66446008)(73956011)(71190400001)(76116006)(66946007)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR12MB1789;
 H:MWHPR12MB1632.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rIqhhHc0BAydrvHlRqoGpSf5rkC5OaSmEzKjaQw9vK19Q/zVWkwDZwVkqNcC2IaB+nPVIw+2XPpZCcdPMI/YsOtA5x0qqUVZsIQh6ewjuPc4n1TLQQo0x+kHx6/TbSUZ/M/r06MVRXtsATnpN3JUDowNLGmoGerf3v8O4NL5V6VMEG0YR+fYRHpqkSw/ffxG+QNQSHvOV6LZNTYAG34UarTYWTyyupIg6IqwW11r7OuO2f7BlzHXfpcSeK7ZQeDfFRP6h3CV29Y9R2t+J2YRJXma76KN+/bcOdjsn/xA65s1y0lE8fMvWS3liUe1qZe3/lYYhgnuyaJWQxPpFXQub8qz83r5Uo3MD8b4CCNnR9czNNm9itbZvMYJ+DQ94shNajqHTvu4cp2Z+Zxx1LUelb543T3QI+yz2aWZZDiX2YU=
Content-ID: <ED5BCD6560531E4FAC7578F40C955653@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ed7d8e9d-994c-4332-7031-08d6db165057
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 22:23:40.1443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1789
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_152346_125028_27F40B43 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "paltsev@snyopsys.com" <paltsev@snyopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hmmm,

so load the bool variable from memory is converted to such asm code:

----------------->8------------------- 
ldb	r2,[some_bool_address]
extb_s	r2,r2
----------------->8-------------------

Could you please describe that the magic is going on there?

This extb_s instruction looks completely useless here, according on the LDB description from PRM:
----------------->8-------------------
LD LDH LDW LDB LDD:
The size of the requested data is specified by the data size field <.zz> and by default, data is zero
extended from the most-significant bit of the data to the most-significant bit of the destination
register.
----------------->8-------------------

Am I missing something?

On Thu, 2019-05-16 at 17:37 +0000, Vineet Gupta wrote:
> On 5/16/19 10:24 AM, Eugeniy Paltsev wrote:
> > > +    unsigned int write = 0, exec = 0, mask;
> > 
> > Probably it's better to use 'bool' type for 'write' and 'exec' as we really use them as a boolean variables.
> 
> Right those are semantics, but the generated code for "bool" is not ideal - given
> it is inherently a "char" it is promoted first to an int with an additional EXTB
> which I really dislike.
> Guess it is more of a style thing.
> 
> -Vineet
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
