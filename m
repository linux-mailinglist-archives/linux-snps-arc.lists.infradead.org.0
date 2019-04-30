Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130A9FD48
	for <lists+linux-snps-arc@lfdr.de>; Tue, 30 Apr 2019 17:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Q4KTZSWw5OA3CFTo0JxT47SVCD2+S1EJz6f1A4AxFEE=; b=NPkPo3yUIyV1id
	kKjGhfgCFIGkZnXBa6MUbYg+z/nzOhRGzfnbWbfvokfDigfhdDgefdk8QvModJFIZny1PZp7Az2JB
	zIUEU2qfTlN4yIPNglNdew9iRXlY9QH714iqWtwq0gTR5gyyocER/Un0FvWl/dHOpV26H4UZHkFY9
	f1J7fmrJNpS3t0KRMZezyAIRoFmnOv7qus/DC1YOW5tFXDYQgmG4ATYdokB7VW8dHF/kJwB5bhudt
	9YkiAJnFQKh2C99NHBzhIb9i9+Ez2LhuVYcG+JEnQBeGTz0IqYqUA8GkYjinxq5RPkI2tMB2UKkmO
	ih8X0xgUmxOf5uWKSQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLV5t-0007Ye-M7; Tue, 30 Apr 2019 15:54:57 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLV5q-0007Xp-Gk
 for linux-snps-arc@lists.infradead.org; Tue, 30 Apr 2019 15:54:55 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DB323C0039;
 Tue, 30 Apr 2019 15:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556639694; bh=41EXEwITfkkbVpQOww8Wh+pmfeyi9sINjyuMxudAhdM=;
 h=From:To:CC:Subject:Date:References:From;
 b=NyNIDopxUJ64Y4K4Kj0xA+908dHtBQZiqKANb8r0oov0Gx9OuKQQ8aNUclCLCaFof
 5Xh7IPVPqEcvXu228CgoVE8BHfa89un35k1BJw0AnVq6UaYi+vth6cDGXQRwjZTeEl
 YsgECfMlEX08eYRZOQMR9OtP9+eZNOGOaorfdvBu2y1QKThD03ae/hVXjFdpIvPsHA
 O6LkuvcmhPbi9edZLF5LBx26d64RchnU2FrEj7ltQZzvAJzZ1B7cPiReNkCl5T/rdM
 PrxEX4/Md3s4JiGXI611x5FFHpMXsxo1xJnU4nAuxrLvXbadc9kYZcfqykNkvriie0
 NVzyPZ1xPGF9w==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 26259A006B;
 Tue, 30 Apr 2019 15:54:48 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Tue, 30 Apr 2019 08:53:19 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Detecting libc in perf (was Re: perf tools build broken after
 v5.1-rc1)
Thread-Topic: Detecting libc in perf (was Re: perf tools build broken after
 v5.1-rc1)
Thread-Index: AQHU/2zU3RcD8vNEuk6uLp1+qNlGpA==
Date: Tue, 30 Apr 2019 15:53:18 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A250601B@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org> <20190425214800.GC21829@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
 <20190430011818.GE7857@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_085454_567649_9349EEB4 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>, Rich Felker <dalias@libc.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 4/29/19 6:18 PM, Arnaldo Carvalho de Melo wrote:
>>> Auto-detecting system features:
>>> ...                         dwarf: [ OFF ]
>>> ...            dwarf_getlocations: [ OFF ]
>>> ...                         glibc: [ on  ]
>> Not related to current issue, this run uses a uClibc toolchain and yet it is
>> detecting glibc - doesn't seem right to me.
> Ok, I'll improve that, I think it just tries to detect a libc, yeah,
> see:
>
> [acme@quaco linux]$ cat tools/build/feature/test-glibc.c
> // SPDX-License-Identifier: GPL-2.0
> #include <stdlib.h>
>
> #if !defined(__UCLIBC__)
> #include <gnu/libc-version.h>
> #else
> #define XSTR(s) STR(s)
> #define STR(s) #s
> #endif
>
> int main(void)
> {
> #if !defined(__UCLIBC__)
> 	const char *version = gnu_get_libc_version();
> #else
> 	const char *version = XSTR(__GLIBC__) "." XSTR(__GLIBC_MINOR__);
> #endif
>
> 	return (long)version;
> }
> [acme@quaco linux]$
>
> [perfbuilder@59ca4b424ded /]$ grep __GLIBC__ /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/*.h
> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:#define	__GLIBC__	2
> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:	((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))
> [perfbuilder@59ca4b424ded /]$
>
> Isn't that part of uClibc?

Right you are. Per the big fat comment right above that code, this gross hack in
uclibc is unavoidable as applications tend to rely on that define.
So a better fix would be to check for various !GLIBC libs explicitly.

#ifdef __UCLIBC__

#elseif defined __MUSL__

...

Not pretty from app usage pov, but that seems to be the only sane way of doing it.

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
