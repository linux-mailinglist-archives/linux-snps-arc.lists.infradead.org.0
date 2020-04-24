Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CAA1B6EE5
	for <lists+linux-snps-arc@lfdr.de>; Fri, 24 Apr 2020 09:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qb+DTI7vI/4wz2v987x2OZdyJvU+OKmqfxL3u7A2N6Y=; b=T7V8weIcyomBaQ
	sFKEIbwNkSZ3Znd99BtiWJKqTPvCpmL+a8ISRoRc9QG9lKlQHhtlsjhTJXPxtWHINcuiNJLnuvUEt
	yMZL0qwK6yjVpmPrMemXtOkAKeDX5RKVm70wNh2hA9K4dT8vL0ClPFywzd3YNUHCzLQb3WColM3NB
	x0j/lGrIRlTe4V2jdJo/RhvmQvchqsIguCWTj/RQpU9j9w0Gq0im1l0QG1/20nn6e9FNG3+U4rAxv
	qwmkdHNIfUBRgm1I1qLRboMpsFXxELBrpJG5S4/GgLUochxvEZtd8WeX+paIsRrzHovlzVRCGW6zK
	77iBXKjgg52mR79dESEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsge-0004aM-KH; Fri, 24 Apr 2020 07:23:48 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsgc-0004ZG-93
 for linux-snps-arc@lists.infradead.org; Fri, 24 Apr 2020 07:23:47 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 21845402A6;
 Fri, 24 Apr 2020 07:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1587713023; bh=6uAoG3dg/XhX/OsTCEKQ1jrnRjBL4ox3v3J0YbDw4xI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=mG5CCeVkIElVm6OHIOA2vmP5pTMwWNOQnQhGq2VsrPGdIFQHWnbER9ww5fMjPn0k2
 mJzSVXX8OmfmHS7gzzIAa694M3DiodxSl25LYXDMedvkbMLnXRj9RaMIYb0zofEVXu
 nik+Q9H/Gx8wBYpXOjsvY290hPl0NDZnay7LIw4RPw8+JrJh33UDBWVQARylbgpCe1
 hIhK5mDInXGTelaDzVvPvojqWzSrKhXfPYjS2JscVSYuXL+izIoD8Xux2tlOPX++yV
 EarRV1x6cSb9vZeASu5BftJ1priMKnHj/0+mZpMWYfCxDbOPGhz8zh6Px8PhKkECbM
 ySJ15r3KwMZ9g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 43E5FA008D;
 Fri, 24 Apr 2020 07:23:37 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 Apr 2020 00:23:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 24 Apr 2020 00:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZL6vSnVcL2YvhcQ0913T55cjRZU40NA72wbWi12spTYc6ReST2dNLIfSulNN8J3BVwYX2RoB7NvDHWpoaGyJbn4r/M9gxHc1mWTdNxupYAGSk76JXWZR7g583lXeGj+aJTz8dKRtow1UaFKKuKj5vW/UETDD6Pwz+kEmJ3FQgD9UALsV/qqpk8jKQmcNsPtD0MfXdxzVNY2dG0tkroAWprbCw/1+N3tyTQYTv7oJUyY0I0yzv0QLwW7eGve/pcneLTr3v0UELAPuFCLRfhgsH2upo6+nLM7aDgcRWGH2H+AL4JNedqu9xEIhQgKvrX8knAVWVaK5MPldMEgWVhqwlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uAoG3dg/XhX/OsTCEKQ1jrnRjBL4ox3v3J0YbDw4xI=;
 b=dzQlx2e3qbuvtv2rVON/NuDZEOKF6sE6/ReLcMdAuwMupqm2NS6owPt47E5HIfj+aTsZDpPDNvtYvimUbOweeGxzR1Y95OBAOG84F0YzknhGCe2IKvXou6vc2r1ebmiS8b8xKTTXNJ+dIaSo5vg6QPiKlioopKwy66+gA/41JCQ325bpfNxgQHR9J7QcuuKikm2VRUUKVWM+0MEhfnYXjz7HGwmNcjqz+rXmDJc0RBWQwggyUa+edVQhIa4QGgp8HPb7qU3SFaVsuB+C2FdEtq2gP2K8Ka6MR8F+LEV8EuZU6owu+GvcouQDkD32aZNqaQoe1Jhz3CD5AsHJlspmxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uAoG3dg/XhX/OsTCEKQ1jrnRjBL4ox3v3J0YbDw4xI=;
 b=wy1F8nd7ge3tvCu0DjhBgC1MCIgW4Wu6S5Gkc2xTNyQ34KAfeLd2WcqD7RuZS10qxqMu1s8PKB0o3IuhZsO8iOAZcoFm09ZiQP17tECeo7Hfdz2ofoRMe7JrbTqrBBPlwMwtKTwX5dgqYU+nF9U25ZpXDn/OwriecNOgagZrEjo=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (2603:10b6:a03:db::25)
 by BYASPR01MB0076.namprd12.prod.outlook.com (2603:10b6:a03:129::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 07:23:34 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7%7]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 07:23:34 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v6 04/13] ARC: Atomics and Locking primitives
Thread-Topic: [PATCH v6 04/13] ARC: Atomics and Locking primitives
Thread-Index: AQHWGRBhCM1XBYTU3k2cJ5xZccilBg==
Date: Fri, 24 Apr 2020 07:23:34 +0000
Message-ID: <6d14c80c-fdfb-28a1-c56b-b3b8d0035fc2@synopsys.com>
References: <20200423014126.10417-1-vgupta@synopsys.com>
 <20200423014126.10417-5-vgupta@synopsys.com>
 <03f4a9b3-b1ca-90fa-0b6a-609a3135267d@linaro.org>
In-Reply-To: <03f4a9b3-b1ca-90fa-0b6a-609a3135267d@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [2601:641:c100:83a0:1c65:a265:857b:ea1f]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3d99d22-f90e-4641-bc06-08d7e82065d4
x-ms-traffictypediagnostic: BYASPR01MB0076:
x-microsoft-antispam-prvs: <BYASPR01MB0076007CF4727230CD99A263B6D00@BYASPR01MB0076.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3592.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(376002)(39860400002)(366004)(346002)(2906002)(71200400001)(66446008)(6506007)(81156014)(8936002)(64756008)(36756003)(53546011)(4326008)(6512007)(8676002)(31686004)(478600001)(54906003)(6916009)(316002)(86362001)(66946007)(76116006)(31696002)(66476007)(66556008)(2616005)(186003)(5660300002)(6486002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IJtdUKXOMuiWDFgANQTHA+bYxrz0yBLLemXIaNAAYM/Ob6DOIbKtI3oX8xTxHlYbRWc/WUV2q9UgOlb5ZlxatNCiR6xtLaU6ZY382XwUcB8nU/IijIS+MTL5auORlUXAPtnL3eQZWFnR5anAQ2wwWRzRPGEwGMn4/liIin36T3ys1WYDkf35LIMf7EY/dt0Bo8HrUFzYSRjxaawdA1j6ImNFptuw4hTdFi+2jpNSqjcl/4fqUU9C0bmYFMf5nGBgU20GyEMje1KuXlfUoLFbvKqbDIyy9bMEDg1dBjEJ6TSJLbCkmPCPA9E2oT2fmmJgdDRciuIsqwMITs2e2CeUDOtGKi29Codp/lugppHRdeo0P7WTzbnm+be2+m0jd59m+cCdbTVHLa1a/NXdyUlfmWyfjtonhDVhq6XzGQkR6jK5YHdQZAw2lgNoOVn0FESF
x-ms-exchange-antispam-messagedata: CYjq/YQ1FD/PKXLoTn5TI132yYlvdhhQVcOK1S+vHRrxBD4R/S9aMCTE9rgupn1ZpUmDRHb/PtOCkrQGyTekAez+WLHlhoMmYe+onPAwa8XqxFVp+FS2tNna4S8BB7oowOsCWVKZtS7F2r1DoRGCnd+FPeAAYwH+KLou/gIoFtkWZQhrKmtiZhnZHxvzOkO4rU0IKK/ktqU+lW+plSq/1w==
x-ms-exchange-transport-forked: True
Content-ID: <F99E96E940329F4F93E388652F522357@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d99d22-f90e-4641-bc06-08d7e82065d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 07:23:34.0083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSjLklIKE+E+UfBazg97xx2w0zTzg5TyO4aiLkQ3MoqmRje712AVp4El93dzfg18immCn003GuYVCDCRm3Fbbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB0076
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_002346_383166_78C1EB6C 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 4/23/20 10:20 AM, Adhemerval Zanella via Libc-alpha wrote:
> 
> 
> On 22/04/2020 22:41, Vineet Gupta via Libc-alpha wrote:
>> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> 
> glibc uses copyright assignment to the FSF for contributions, and not
> the DCO.

Ok removed from all patches.

>> ---
>>  sysdeps/arc/atomic-machine.h      | 69 +++++++++++++++++++++++++++++++
>>  sysdeps/arc/nptl/bits/semaphore.h | 32 ++++++++++++++
>>  2 files changed, 101 insertions(+)
>>  create mode 100644 sysdeps/arc/atomic-machine.h
>>  create mode 100644 sysdeps/arc/nptl/bits/semaphore.h
>>
> 
>> diff --git a/sysdeps/arc/nptl/bits/semaphore.h b/sysdeps/arc/nptl/bits/semaphore.h
>> new file mode 100644
>> index 000000000000..772dc4cb9b01
>> --- /dev/null
>> +++ b/sysdeps/arc/nptl/bits/semaphore.h
> 
> This might a good candidate to a refactor to add a Linux default one,
> thus avoiding any new architecture to copy/paste it.

Sure.

(1). s390, sparc: __SIZEOF_SEM_T {16,32} if WORDSIZE == {32,64}
(2). arc, arm, csky, hppa, microblaze, nios2, sh:__SIZEOF_SEM_T 16 (32-bit arch)
(3). ia64: __SIZEOF_SEM_T 16 (64-bit only)
(4). aarch64, mips, riscv are bimodal too but use arch specific knobs to build for
32/64 bit.

Can we change 2, 3, 4, to use generic mechanism of (1) ? The constraints come
automatically given WORDSIZE will be function of arch + ABI (ILP32, LP64 etc)

Or else we can have (2) be the Linux default version and all others come from arch
sysdep.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
