Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C35811B92
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 16:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsLn275yz/e1GbIJs1zKtMxOd6UIayMTZp9sAPQMGUE=; b=mVGl56t50QxZyd
	BABUdBylaolcOOcf3uISItIHyhsl/3E+ob5lKNEiQ7rMB/5bx2X4qKowxgAnJ1BND9Y7xR9jh+VlU
	09jDoxlRo8XbT4vUgKUnEQxF7zxU+xDEGFhrmm10Gff0ca2QXM6TtIowcxLxP+DtM6i+dkvChvIJX
	bKW+BJxOdk8vcCcHHaL0DK35+uFdwwIMt0Evsqo2Dk1jXp13LATqzgl0KYyvfWpuwiI/beJJXY3wK
	j1UJSfinMyr4L4kdXwfPf98x96zygSJ/2SE/J/bu+UNx5uw6KXVQk6OiVHbHok2R0rz8KAjVvaYR4
	QPPT3bk6SsIncGNCmxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCov-0004Fa-RV; Thu, 02 May 2019 14:36:21 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCou-0004FT-N2
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 14:36:20 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id F174F4111F; Thu,  2 May 2019 10:36:18 -0400 (EDT)
Date: Thu, 2 May 2019 10:36:18 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: perf tools build broken after v5.1-rc1
Message-ID: <20190502143618.GH21436@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
 <20190501204115.GF21436@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
 Rich Felker <dalias@libc.org>, Arnd Bergmann <arnd@arndb.de>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Em Wed, May 01, 2019 at 09:17:52PM +0000, Vineet Gupta escreveu:
> On 5/1/19 1:41 PM, Arnaldo Carvalho de Melo wrote:
> >> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
> >> missed all the other architectures changed in c8ce48f06503 and the
> >> related commits.
> > Right, I have a patch copying the missing headers, and that fixed the
> > build with the glibc-based toolchain, but then broke the uCLibc one :-\
 
> tools/perf/util/cloexec.c  #includes <sys/syscall.h> which for glibc includes
> asm/unistd.h
 
> uClibc <sys/syscall.h> OTOH #include <bits/sysnum.h> containign#define __NR_*
> (generated by parsing kernel's unistd). This header does the right thing by
> chekcing for redefs, but in the end we still collide with newly added
> tools/arc/arc/*/**/unistd.h which doesn't have conditional definitions. I'm sure
> this is not an ARC problem, any uClibc build would be affected. Do you have a arm
> uclibc toolchain to test ?

This solves it for fedora:29,
arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install,
arc_gnu_2019.03-rc1_prebuilt_uclibc_le_archs_linux_install and
arc_gnu_2019.03-rc1_prebuilt_glibc_le_archs_linux_install.

Also ok with:

  make -C tools/perf build-test

Now build testing with the full set of containers.

- Arnaldo

commit 1931594a680dba28e98b526192dd065430c850c0
Author: Arnaldo Carvalho de Melo <acme@redhat.com>
Date:   Thu May 2 09:26:23 2019 -0400

    perf tools: Remove needless asm/unistd.h include fixing build in some places
    
    We were including sys/syscall.h and asm/unistd.h, since sys/syscall.h
    includes asm/unistd.h, sometimes this leads to the redefinition of
    defines, breaking the build.
    
    Noticed on ARC with uCLibc.
    
    Cc: Adrian Hunter <adrian.hunter@intel.com>
    Cc: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
    Cc: Arnd Bergmann <arnd@arndb.de>
    Cc: Jiri Olsa <jolsa@kernel.org>
    Cc: Namhyung Kim <namhyung@kernel.org>
    Cc: Rich Felker <dalias@libc.org>
    Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>
    Link: https://lkml.kernel.org/n/tip-xjpf80o64i2ko74aj2jih0qg@git.kernel.org
    Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>

diff --git a/tools/perf/util/cloexec.c b/tools/perf/util/cloexec.c
index ca0fff6272be..06f48312c5ed 100644
--- a/tools/perf/util/cloexec.c
+++ b/tools/perf/util/cloexec.c
@@ -7,7 +7,6 @@
 #include "asm/bug.h"
 #include "debug.h"
 #include <unistd.h>
-#include <asm/unistd.h>
 #include <sys/syscall.h>
 
 static unsigned long flag = PERF_FLAG_FD_CLOEXEC;

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
