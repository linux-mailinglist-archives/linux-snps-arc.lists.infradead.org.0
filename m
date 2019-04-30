Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66C0EE49
	for <lists+linux-snps-arc@lfdr.de>; Tue, 30 Apr 2019 03:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0yyswMlfBIpRgQnYhkurlK4c2EdfB8XR+2DKJnRRTw=; b=sTJYDfXjs+UJTE
	Dyv7L3HRRFKHLEVHdCaNsD2OcAY1MmU80QTij9OT6Iaw7R1I2nViNwndgNQZRE4cmsdPZHLBESJ7D
	yTUoa6mGyl+y1qwcJdoIM+b13DZ0dpxu/SqlVk4J1t1xWqNcITiF/T9oFO9BtN0gk2z4leGD8t9za
	yDyfarApE1ecBquZB5oFZlMl4CZvNslBNUA7L3FNrP0hyoe0wNHpHgsz6vnlnFrtib8Mqr96WA9HO
	JUDwBVftANrF+3kKLOcgTmUKeS8QJjQQR/E2PuH2auoNe2CnLnVZCN1OwmAgekxKvOdOGmFmH32/Y
	EXMWL/6sc7Qi5O0MJlWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHPZ-00017e-DC; Tue, 30 Apr 2019 01:18:21 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHPY-00017T-4T
 for linux-snps-arc@lists.infradead.org; Tue, 30 Apr 2019 01:18:20 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id F32DF4111F; Mon, 29 Apr 2019 21:18:18 -0400 (EDT)
Date: Mon, 29 Apr 2019 21:18:18 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: perf tools build broken after v5.1-rc1
Message-ID: <20190430011818.GE7857@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <20190425214800.GC21829@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Em Mon, Apr 29, 2019 at 05:14:54PM +0000, Vineet Gupta escreveu:
> On 4/25/19 2:48 PM, Arnaldo Carvalho de Melo wrote:
> > Em Mon, Apr 22, 2019 at 12:20:27PM -0300, Arnaldo Carvalho de Melo escreveu:
> >> Em Fri, Apr 19, 2019 at 04:32:58PM -0700, Vineet Gupta escreveu:
> >>> When building perf for ARC (v5.1-rc2) I get the following
> >>  
> >>> | In file included from bench/futex-hash.c:26:
> >>> | bench/futex.h: In function 'futex_wait':
> >>> | bench/futex.h:37:10: error: 'SYS_futex' undeclared (first use in this function);
> >>  
> >>> git bisect led to 1a787fc5ba18ac767e635c58d06a0b46876184e3 ("tools headers uapi:
> >>> Sync copy of asm-generic/unistd.h with the kernel sources")
> >> Humm, I have to check why this:
> >>
> >> [perfbuilder@quaco ~]$ podman images | grep ARC
> >> docker.io/acmel/linux-perf-tools-build-fedora                24-x-ARC-uClibc          4c259582a8e6   5 weeks ago      846 MB
> >> [perfbuilder@quaco ~]$
> >>
> >> isn't catching this... :-\
> >>
> >> FROM docker.io/fedora:24
> >> MAINTAINER Arnaldo Carvalho de Melo <acme@kernel.org>
> >> ENV TOOLCHAIN=arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install
> >> ENV CROSS=arc-linux-
> >> ENV SOURCEFILE=${TOOLCHAIN}.tar.gz
> >> RUN dnf -y install make flex bison binutils gcc wget tar bzip2 bc findutils xz
> >> RUN wget https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_foss-2Dfor-2Dsynopsys-2Ddwc-2Darc-2Dprocessors_toolchain_releases_download_arc-2D2017.09-2Drc2_-24-257BSOURCEFILE-257D&d=DwIDaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=7FgpX6o3vAhwMrMhLh-4ZJey5kjdNUwOL2CWsFwR4T8&m=HjtufCLozrW47pS5C2YH3safLHQE7eEtmHFZsSWrz1M&s=29g4oKvGuYcLgheCUvZh3wojhhljivpLd8aj7Ur4sKQ&e=
> >> <SNIP>
> >> COPY rx_and_build.sh /
> >> ENV EXTRA_MAKE_ARGS=NO_LIBBPF=1
> >> ENV ARCH=arc
> >> ENV CROSS_COMPILE=/${TOOLCHAIN}/bin/${CROSS}
> >> ENV EXTRA_CFLAGS=-matomic
> > So, now I have a libnuma crossbuilt in this container that allows me to
> > build a ARC perf binary linked with zlib and numactl-devel, but only
> > after I applied the fix below.
> >
> > Can you please provide the feature detection header in the build? I.e.
> > what I have with my ARC cross build container right now, after applying
> > the patch below is:
> >
> > [perfbuilder@60d5802468f6 perf]$ make $EXTRA_MAKE_ARGS ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE EXTRA_CFLAGS="$EXTRA_CFLAGS" -C /git/perf/tools/perf O=/tmp/build/perf
> > make: Entering directory '/git/perf/tools/perf'
> >   BUILD:   Doing 'make -j8' parallel build
> > sh: line 0: command: -c: invalid option
> > command: usage: command [-pVv] command [arg ...]
> >
> > Auto-detecting system features:
> > ...                         dwarf: [ OFF ]
> > ...            dwarf_getlocations: [ OFF ]
> > ...                         glibc: [ on  ]
> 
> Not related to current issue, this run uses a uClibc toolchain and yet it is
> detecting glibc - doesn't seem right to me.

Ok, I'll improve that, I think it just tries to detect a libc, yeah,
see:

[acme@quaco linux]$ cat tools/build/feature/test-glibc.c
// SPDX-License-Identifier: GPL-2.0
#include <stdlib.h>

#if !defined(__UCLIBC__)
#include <gnu/libc-version.h>
#else
#define XSTR(s) STR(s)
#define STR(s) #s
#endif

int main(void)
{
#if !defined(__UCLIBC__)
	const char *version = gnu_get_libc_version();
#else
	const char *version = XSTR(__GLIBC__) "." XSTR(__GLIBC_MINOR__);
#endif

	return (long)version;
}
[acme@quaco linux]$

[perfbuilder@59ca4b424ded /]$ grep __GLIBC__ /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/*.h
/arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
/arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:#define	__GLIBC__	2
/arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:	((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))
[perfbuilder@59ca4b424ded /]$

Isn't that part of uClibc?
 
> > ...                          gtk2: [ OFF ]
> > ...                      libaudit: [ OFF ]
> > ...                        libbfd: [ OFF ]
> > ...                        libelf: [ OFF ]
> > ...                       libnuma: [ on  ]
> 
> Wondering why that is - for me numa is off - even when using a glibc toolchain.
> 
> > ...        numa_num_possible_cpus: [ on  ]
> > ...                       libperl: [ OFF ]
> > ...                     libpython: [ OFF ]
> > ...                      libslang: [ OFF ]
> > ...                     libcrypto: [ OFF ]
> > ...                     libunwind: [ OFF ]
> > ...            libdw-dwarf-unwind: [ OFF ]
> > ...                          zlib: [ OFF ]
> > ...                          lzma: [ OFF ]
> > ...                     get_cpuid: [ OFF ]
> > ...                           bpf: [ on  ]
> > ...                        libaio: [ OFF ]
> > ...        disassembler-four-args: [ OFF ]
> >
> >
> 
> For my glibc toolchain, here's the feature detection output
> 
> Auto-detecting system features:
> ...                         dwarf: [ on  ]
> ...            dwarf_getlocations: [ OFF ]
> ...                         glibc: [ on  ]
> ...                          gtk2: [ OFF ]
> ...                      libaudit: [ OFF ]
> ...                        libbfd: [ OFF ]
> ...                        libelf: [ on  ]
> ...                       libnuma: [ OFF ]
> ...        numa_num_possible_cpus: [ OFF ]
> ...                       libperl: [ OFF ]
> ...                     libpython: [ OFF ]
> ...                      libslang: [ OFF ]
> ...                     libcrypto: [ OFF ]
> ...                     libunwind: [ OFF ]
> ...            libdw-dwarf-unwind: [ OFF ]
> ...                          zlib: [ OFF ]
> ...                          lzma: [ OFF ]
> ...                     get_cpuid: [ OFF ]
> ...                           bpf: [ on  ]
> ...                        libaio: [ on  ]
> ...        disassembler-four-args: [ OFF ]
> 
> 

-- 

- Arnaldo

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
