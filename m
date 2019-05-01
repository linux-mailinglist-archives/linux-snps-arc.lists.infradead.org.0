Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201D110E79
	for <lists+linux-snps-arc@lfdr.de>; Wed,  1 May 2019 23:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1A/eG0dRkKMkTfe3pRySkO6u2d8R+ww7R0BDu/ft6e4=; b=ghR6OVwYTaeCBf
	YVkeatuZgJ60Rz59MrqSAXrOAsSGTWOf/6FUjPHXR8cnQmb8A7M+879bN5iU347/qd/FvUluhfxV4
	RWTcUA1Vv/i4H5i+xb2XI3FBGKK1QH7k7FwR6+NFnzD6CBViSPkfBrirIu4IzGvgew0an3ljp5oew
	nPpAqOWYkBG+V5bLGGgExYE+ESuUyn1tLNB/VPA5Mu+3kZIrQyP9QZEdPY9f5vmqoGEtwEklgJY1n
	cqgKNwqRvtDXXuVB6+xaza86POxAY871JqXlpGC90S2i8JuUv9yVavIzUrkxp0qCOtPw3ILHRbyKG
	Hoi+tuW0dM+1CJwtStAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwc4-0003Bz-RM; Wed, 01 May 2019 21:18:00 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwc1-0003Ar-O3
 for linux-snps-arc@lists.infradead.org; Wed, 01 May 2019 21:17:58 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A313BC00F2;
 Wed,  1 May 2019 21:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556745472; bh=o9gWZgWxlyqzbNvDvVaS/uwTvpYA+tKh0TU9G0Uljco=;
 h=From:To:CC:Subject:Date:References:From;
 b=XoS1rkNaboLNuhTTcvseigKNBfEExaO38krmRW4cfyibntBAOQIUu+1FHiwmv1kMY
 nuwVd7TkomspnAM07lP02koCRCb7JUUaqI0RtJmmFFI4442GCa8Lt24U1WbbxpXTIg
 9I7AER2rltLKsa8GSfFDgK7AR7oBauq8mB4+e5WtwwdrSLZjHN0vHHwnBjRkhr5psb
 Hn5hw15oPGCg8uYUVo+srchTQxmJNkVc1Q0PDX+Zc1edwDUQqjsVMa0qQleo/1WAGN
 BQakxVhjbZsW2Sx9ZU+EYLCYcREv8SUa2q6LiTpthgA9ib5m0b0WZOrKDEqMeeoGQZ
 9DdV3bKSgEWrg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 35ED4A0071;
 Wed,  1 May 2019 21:17:53 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WEHTC3.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Wed, 1
 May 2019 14:17:53 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>
Subject: Re: perf tools build broken after v5.1-rc1
Thread-Topic: perf tools build broken after v5.1-rc1
Thread-Index: AQHU9whSYuAYlq2eD0OAivz0M0d5Nw==
Date: Wed, 1 May 2019 21:17:52 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
 <20190501204115.GF21436@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_141757_798431_ACFCF27C 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Rich Felker <dalias@libc.org>, lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung
 Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/1/19 1:41 PM, Arnaldo Carvalho de Melo wrote:
>> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
>> missed all the other architectures changed in c8ce48f06503 and the
>> related commits.
> Right, I have a patch copying the missing headers, and that fixed the
> build with the glibc-based toolchain, but then broke the uCLibc one :-\

tools/perf/util/cloexec.c  #includes <sys/syscall.h> which for glibc includes
asm/unistd.h

uClibc <sys/syscall.h> OTOH #include <bits/sysnum.h> containign#define __NR_*
(generated by parsing kernel's unistd). This header does the right thing by
chekcing for redefs, but in the end we still collide with newly added
tools/arc/arc/*/**/unistd.h which doesn't have conditional definitions. I'm sure
this is not an ARC problem, any uClibc build would be affected. Do you have a arm
uclibc toolchain to test ?

All in all this is a mess. The quick band aid I can think of would be to add a
#ifndef __UCLIBC__ in tools/arch/arc/include/uapi/asm/unistd.h which is super
ugly, but in the end the solution is to get rid of this header duplicity.

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
