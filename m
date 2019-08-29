Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F288AA1EAF
	for <lists+linux-snps-arc@lfdr.de>; Thu, 29 Aug 2019 17:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEGvh8Fyott5yrtsxt4Cuxr6NTEhGf7ntBqYMMs5NlA=; b=uT8c9djcpFNOLw
	CLy7wq4I7KfjesCoBLTnas8LcCoU3ApZnqCFFNnXiIhE4h8eeKB1YJqBYAfJXKSF+hyEjY4xIl239
	pZLuomVy/c4kYXjAl9xUw334HNFjGcCNdOsokYanBnwMDOLj+Ma19zidoALni8H4ff8Sz//VV+cvI
	0Uv+BUfC5DVO+zysK+ESBAiNgdRp0jQjFVvyhRQwGGZjedPJxSmj+0S98UzUIYrfoNToSXaflATjX
	QK3HGb9wYjw/IHwm4ZJNsj6x8mx/7BZuUTQ22ceSBv9njiPwUycvz2kvO9aHEemxQhkwnyCNi9K3X
	Do0km5bMCFguGwMPP9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MAC-0005R7-Dp; Thu, 29 Aug 2019 15:16:40 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Lzf-0006ez-8c
 for linux-snps-arc@lists.infradead.org; Thu, 29 Aug 2019 15:05:49 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 64B6EF2F8C8
 for <linux-snps-arc@lists.infradead.org>;
 Thu, 29 Aug 2019 10:05:43 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 3LzbiM1Wu3Qi03Lzbi19Zr; Thu, 29 Aug 2019 10:05:43 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDTUo2D0Mo8wgkKSB/31pi8yOfJeGqDuIhAYtLa6IVc=; b=LbYAGKZp8x+ZJeThpZpiYoM0l+
 YlX9fRIOcHQttl9K8rb4XwXi6/8AxWfl3ZaaqcExcIJWLDkOG9jwP73c4yh/kZliwS5VodsLX1G1x
 iOBuLw6GeUJQJ/W+Wbm8eSltERIYhBQxZ0eT4BgZHxM5+jmGorw7VQ+rl34/yZyjZmqGC/ZV1E6ho
 9RxzD7+WJcHrTCL1QLGAQYMoDGhoIU3Mb2bGiVyH2PLxG/kGBY6eKidisA7XlRGuKwFr/76SBcz+M
 ftCH/Twd2nHGsB02RKZjf2sb6jt7O/HXrtuwM78kThIOunpWkJKHvESgxhM/WlKRri66WGof8+gM8
 be7vecwg==;
Received: from [189.152.216.116] (port=40698 helo=[192.168.43.131])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1i3Lza-003rCx-LI; Thu, 29 Aug 2019 10:05:43 -0500
Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-through
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
References: <20190821012907.GA29165@embeddedor>
 <2c3ef09b-bd07-6caf-05a9-908700a60afd@embeddedor.com>
 <BY5PR12MB403422F37413E42066FCA9BEDEA20@BY5PR12MB4034.namprd12.prod.outlook.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <1496d4b7-f07b-01e1-c33d-b2d4c501d9dc@embeddedor.com>
Date: Thu, 29 Aug 2019 10:05:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <BY5PR12MB403422F37413E42066FCA9BEDEA20@BY5PR12MB4034.namprd12.prod.outlook.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.152.216.116
X-Source-L: No
X-Exim-ID: 1i3Lza-003rCx-LI
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [189.152.216.116]:40698
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 2
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_080547_940263_E974DAE5 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.204 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Eugeniy,


On 8/29/19 6:25 AM, Eugeniy Paltsev wrote:
> Hi Gustavo,
> =

> I guess this patch is already sent as a pull request to 'v5.3-rc7' by Vin=
eet:
> https://www.mail-archive.com/linux-snps-arc@lists.infradead.org/msg05854.=
html
> =


No. This is a different one. Notice that the subject lines differ by one
letter.

Thanks
--
Gustavo


> ---
>  Eugeniy Paltsev
> =

> =

> ________________________________________
> From: linux-snps-arc <linux-snps-arc-bounces@lists.infradead.org> on beha=
lf of Gustavo A. R. Silva <gustavo@embeddedor.com>
> Sent: Thursday, August 29, 2019 04:47
> To: Vineet Gupta
> Cc: linux-snps-arc@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-through
> =

> Hi,
> =

> Friendly ping:
> =

> Who can take this, please?
> =

> Thanks
> --
> Gustavo
> =

> On 8/20/19 8:29 PM, Gustavo A. R. Silva wrote:
>> Mark switch cases where we are expecting to fall through.
>>
>> This patch fixes the following warnings (Building: haps_hs_defconfig arc=
):
>>
>> arch/arc/kernel/unwind.c: In function =91read_pointer=92:
>> ./include/linux/compiler.h:328:5: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
>>   do {        \
>>      ^
>> ./include/linux/compiler.h:338:2: note: in expansion of macro =91__compi=
letime_assert=92
>>   __compiletime_assert(condition, msg, prefix, suffix)
>>   ^~~~~~~~~~~~~~~~~~~~
>> ./include/linux/compiler.h:350:2: note: in expansion of macro =91_compil=
etime_assert=92
>>   _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
>>   ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro =91compil=
etime_assert=92
>>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                      ^~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:50:2: note: in expansion of macro =91BUILD_B=
UG_ON_MSG=92
>>   BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>>   ^~~~~~~~~~~~~~~~
>> arch/arc/kernel/unwind.c:573:3: note: in expansion of macro =91BUILD_BUG=
_ON=92
>>    BUILD_BUG_ON(sizeof(u32) !=3D sizeof(value));
>>    ^~~~~~~~~~~~
>> arch/arc/kernel/unwind.c:575:2: note: here
>>   case DW_EH_PE_native:
>>   ^~~~
>>
>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
>> ---
>>  arch/arc/kernel/unwind.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arc/kernel/unwind.c b/arch/arc/kernel/unwind.c
>> index 445e4d702f43..dc05a63516f5 100644
>> --- a/arch/arc/kernel/unwind.c
>> +++ b/arch/arc/kernel/unwind.c
>> @@ -572,6 +572,7 @@ static unsigned long read_pointer(const u8 **pLoc, c=
onst void *end,
>>  #else
>>               BUILD_BUG_ON(sizeof(u32) !=3D sizeof(value));
>>  #endif
>> +             /* Fall through */
>>       case DW_EH_PE_native:
>>               if (end < (const void *)(ptr.pul + 1))
>>                       return 0;
>>
> =

> _______________________________________________
> linux-snps-arc mailing list
> linux-snps-arc@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infradead.org=
_mailman_listinfo_linux-2Dsnps-2Darc&d=3DDwIGaQ&c=3DDPL6_X_6JkXFx7AXWqB0tg&=
r=3DZlJN1MriPUTkBKCrPSx67GmaplEUGcAEk9yPtCLdUXI&m=3DGJ6OJTL5qRgb-RdlLBhiFzZ=
H5ZmLXf2lxjuQgwbw7n8&s=3D1TapZixYsKQRFCCPkofjhki-eZ34KmyqojUdAxceNNA&e=3D
> =


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
