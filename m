Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B5B1FC174
	for <lists+linux-snps-arc@lfdr.de>; Wed, 17 Jun 2020 00:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6pg7m5QMZxqacJDG576gMHYuqofWHNtVVWupv55etc=; b=gzXnPdQM18BM1U
	ecIYh8K9LPU6mXAWNqPUYFq2TVK0LAt9Rumgm2tE0bgV2ZMrcpVds5OKNEQYg4to0rzvx7F14pPT2
	2yIQBQJreZp0JrcYheQuz+OQh/tcwhX5ITxPzoE8Yzh/g5b4eF0SYNoY+pIpQVqkCI9c1vgRyDQbD
	vmBT8syKODbXHn/5/iPlnDFxdgILafHNsicoozkrO2Mr9Rn1Q+XdAGDLjRMJikjBdd7xFRWfVx3yC
	4zGc7SQ7ZgwWt0fuf8z3dnPXeS4+xA89Kh8WB/N3K0x+RmbX7vzRi1HXyHbwuRMRMjXd0Z41lq+0o
	PKOZmQcw+btOHyJcK7Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJox-0006xx-1e; Tue, 16 Jun 2020 22:12:43 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJov-0006xO-0a
 for linux-snps-arc@lists.infradead.org; Tue, 16 Jun 2020 22:12:42 +0000
Received: from mailhost.synopsys.com (us03-mailhost1.synopsys.com [10.4.17.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1F8DB400FE;
 Tue, 16 Jun 2020 22:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592345558; bh=cIgxyxJfZmw2K/kPsENvaFYyaf5ltuTCVNhxf50TUdU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=TR9p7xmLOx7FjihvSVmUz+hrS/Y1+GYNjD2CoJv9Jc70ZF6KZG1cQRqYB/tfGdZtC
 NSSYaZW7snQ/152/FS1yKoAZcxL01Hm1NU4qLnOGUZSeqmVzSAae58Ply9BMFbn0li
 BGOM6JlWQ6vjMDic3vATHuQeKhWtSTSRPVn83BOMQs8c49i3+HU0UbrYB6+/Jeph5e
 HA566IqEs1BIuHE7zAA8/sgLOi1uiHpuKRSJoyjuh6phLBqOlchByfKlg6+hEAMwS1
 RheEnOTwpnOPZmN8vhjSDcaVTjwa/ynv3EEOHhyNXQqrkyahKEiNFy4ePcWNhmHMk+
 YRhjyggTjLv2w==
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com
 [10.202.1.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CF4A7A0077;
 Tue, 16 Jun 2020 22:12:31 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2054.outbound.protection.outlook.com [104.47.37.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "GlobalSign Organization Validation CA - SHA256 - G3" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id B809F400BB;
 Tue, 16 Jun 2020 22:12:28 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass smtp.mailfrom=vgupta@synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="rV69cR0V";
 dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aaQlKxrzoVVesT8PIz0wfujUel7gun/IxCjFNUQ4/u1Vc2ZKUSslrkT2wTfIRbf+amLSAQdU+8buoN7+W2iGNQ0tYHWVXgIJPv6ffEFdeGrZf7uao6PAG5soWsW+jVh5ur4vdlrbnrIvjJha7Eubnm7D9h48jUy9eZ947RL2B5pGe14+4Sgs0KTki8flm2csW1xaH4yr5+Fdt5HHzGi26Xab+Z5YwfD9cIm9GtYT5gpjEkwM6PPphM69vDT8YHtRU+pgcXfrd4ozvJoOAbCxRMv1rBbKvFlqAy9TYxtuwEP5nQObDxTWOhu4RLyE2SqROj/CgT94J/Uq2zmEECsjnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cIgxyxJfZmw2K/kPsENvaFYyaf5ltuTCVNhxf50TUdU=;
 b=n2DAs+uLYJZRUKK5SpkCsFWZedOiGdldpDO9GW3+1Dcg3jKqyICy10G0L5dbuHFCtXRJBgXgOeyknl309HmyK+g5dPAi1Vh059DrLQw/2hOFwdb+EyCPfxUtsRZ6MolXCuVVeyM1e3WF2izBIZLZpC8o2xYKrsIWWQzIOEnLeC3NF3Q9jyix+GLGYX65uX03+vrskQHFpEEqrTjmLAgRdBpjRWJaiw7hujTr6553oDAdbWcCwkKGyTCjZ/o1Poq+50exTbzVCZIlR/iAc2F3T7XcLB6xxjbF6YOfVfS1fDmYj9Ea2rArPA+elDwuxBgdyCtFsUwKPXHZlr9QcJdatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cIgxyxJfZmw2K/kPsENvaFYyaf5ltuTCVNhxf50TUdU=;
 b=rV69cR0Vx8HhHjwsjUAIF84lAmKAqBdQH0vRmZKol68Fq9pg3nW2ZL+KcelJaw0NtZFCqaLONvrAGt0xns1copiE/7lzJ7lMn4qSjy0wyIIw1LIoSS54/wiwEkDFUnvj4cpRQtNsGHRJr6DSNDCYLnKkBknAoy87hP0UpAViOIA=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB3397.namprd12.prod.outlook.com (2603:10b6:a03:db::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.23; Tue, 16 Jun
 2020 22:12:27 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.3088.029; Tue, 16 Jun 2020
 22:12:27 +0000
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH v2 1/4] ARC: allow to override default mcpu compiler flag
Thread-Topic: [PATCH v2 1/4] ARC: allow to override default mcpu compiler flag
Thread-Index: AQHWOpc7/dFMmbTnfUuNOuuCbmnhSajJ2F2AgBII4wA=
Date: Tue, 16 Jun 2020 22:12:27 +0000
Message-ID: <f3f54ba2-c050-83a2-ea93-dc147fd4bcfe@synopsys.com>
References: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
 <20200604173927.23127-2-Eugeniy.Paltsev@synopsys.com>
 <MWHPR1201MB0046338E4B38598FFB5DBCB9A1860@MWHPR1201MB0046.namprd12.prod.outlook.com>
In-Reply-To: <MWHPR1201MB0046338E4B38598FFB5DBCB9A1860@MWHPR1201MB0046.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: synopsys.com; dkim=none (message not signed)
 header.d=none;synopsys.com; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [73.222.250.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 502f862d-251b-4cec-f041-08d812425ab8
x-ms-traffictypediagnostic: BYAPR12MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB339708081998F929916236F6B69D0@BYAPR12MB3397.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6T4YIyfZ96UlCJ95h+3sugQPf9k38Ob+Z/cMZE6MJQy8UA4FT6HW3ftOiBr1ds63vJkPyWe8UYj0hi8TDoxcTEuEEKcxMR3J0OjzW2tmW6eJsn4vLbYCZe11CGeb67POqC/SCnhXsfdSiy/cvA8PlSLdWXqV1hKkhqzfpKyMFNpnBjHJ0h4Y0y4vTbz2DSL/rWQszH7WBDScq2wBxWKnkidfOP1WcLjEC3eOgfyDThMm8kVN5jw3M1hmHDCTYCR/yu7yJiFgGxZhtdmuCe2j+/Z414Y5DpBhuzeycGZLCPA1TApYuBPhvTyCGgxaguJlOttx4gnHc/rkOm1R8ntgkISJZR4Pl1RM3UozB26kMF5/++d8UqxTl1TvatWnz149
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(346002)(396003)(376002)(39860400002)(64756008)(66446008)(71200400001)(83380400001)(478600001)(86362001)(66556008)(316002)(76116006)(66476007)(6486002)(26005)(2906002)(2616005)(6636002)(8676002)(5660300002)(53546011)(6512007)(6506007)(31686004)(36756003)(31696002)(54906003)(8936002)(186003)(66946007)(110136005)(4326008)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dix0BNwtL9LHGC2A2pRIDd+EdaFXaiaQh2HfQMDHcgobkvukxVVh3TiYny+GqJIDhAtSUropazud6htYpGLtcmPA7EgPpguWi6f8MxdfQSTR/9h6SGIZ141F1+mNWKg+M9yrJC6MZbWuuFxgBr2XKXtKQ1PM+2xN8yR3erv6iSj5RS0gp945im69SERp0u0hyR/uH1gOjGdWggU7Zwr/FAb58mDwQQfX1oS+3r0SJQ1aXlTRrfLviChBIa6GxQzlt5Ll39ptXije1zN5FAbddNxhiJPxNqHWdK7G4vZ61wWWCrA6WxxpuoOTOSXvjpJUm49huQUh7ECXyf75rfaH/BCFSs+CgbxvFvC/omW/PO+Ht2lxtm/6O1c2PlbOjmcb/zp5T2K98x1cDVODQNMaYVlb5Vsb6i/41s7ibYXt0V2rwlp4nYk4QGmF8Tn+JmVfiHg4MshnTOCMvd9mqv9EoGPYmSdooIuaHsxJsjTqT+o=
Content-ID: <8453CB6498572E4F8B26DE363F00D09B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 502f862d-251b-4cec-f041-08d812425ab8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 22:12:27.0557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YC9/sHVt5/ODcdkzPs0TG7T3YgoQuU9XhnmU73OGy5h0G8d5Yu3PxhLNRKO8hhoezli2IPEXlJpaAP1coD4SZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_151241_092372_D68E88C8 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/5/20 3:47 AM, Alexey Brodkin wrote:
> Hi Eugeniy,
> 
> A couple of minor notes below.
> 
>> -----Original Message-----
>> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
>> Sent: Thursday, June 4, 2020 8:39 PM
>> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
>> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
>> <paltsev@synopsys.com>
>> Subject: [PATCH v2 1/4] ARC: allow to override default mcpu compiler flag
>>
>> Kernel builds set their own default -mcpu for a given ISA build.
> 
> We used to use a default "-mcpu" per ARC ISA version (one for ARCompact
> and one for ARCv2).
> 
>> But that gets in the way of "custom" -mcpu flags from propagating
>> into kernel build.
> 
> But with more versions of CPUs & SoCs becoming available we want to
> be able to fine-tune generated code more precise.
> 
>> This will also be used in next patches for HSDK-4xD board support which
>> uses a different -mcpu to effect dual issue scheduling.
> 
> "...for utilization of the new CPU's dual-issue capabilities"?
> 
>> +++ b/arch/arc/Makefile
>> @@ -10,8 +10,25 @@ CROSS_COMPILE := $(call cc-cross-prefix, arc-linux- arceb-linux-)
>>  endif
>>
>>  cflags-y	+= -fno-common -pipe -fno-builtin -mmedium-calls -D__linux__
>> -cflags-$(CONFIG_ISA_ARCOMPACT)	+= -mA7
>> -cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38
>> +
>> +tune-mcpu-def-$(CONFIG_ISA_ARCOMPACT)	:= -mA7
> 
> I'd suggest to either swap "-mA7" which is being obsoleted with "-mcpu=arc700"
> right here or as a separate change, otherwise we may soon get ATC700 builds
> broken with newer compilers.

FWIW I've added a modified variant of this patch to for-curr as we need it for
ongoing ARC64 port as well.

-Vineet
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
