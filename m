Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBA6E8BF
	for <lists+linux-snps-arc@lfdr.de>; Mon, 29 Apr 2019 19:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=/FudvSaCqDCPihq1oGjOgJT0EV9vBbiTNdJHkF7hIa0=; b=J0pdJA01A7zCY0
	DkHzf+cotQ3Ty1M8xzuWwkLy7fOVF7AdQERxbdHusMv4GKETxthGt81CdbUvk6hGvwA+cl9QrhsM2
	fkly0zpjBPx1RTf8OVG8kENbFf/q/XHHIlsRNIcQvbD3BNqk8k8wmOEszcbcpxWEbz6fC5oHNkNB+
	Pnt0+xKe85czl75Laq7hoUrfzhpziFsuwoAb8vjjGOPcE+AxyoJ8iaDHkZOiK6YUCvNkda3wiJ8gU
	wvnJekOFu0TSVvmCa/lz8A3oKA0yJRdCRhwBBkz8Gxikx7fOTZO1Su3CvNuIsgCFSQPr+uT5lTZQB
	RToFBH545zPqpZnWIcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA0Z-0005qk-SP; Mon, 29 Apr 2019 17:24:03 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA0W-0005ol-16
 for linux-snps-arc@lists.infradead.org; Mon, 29 Apr 2019 17:24:02 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9CCBBC0038;
 Mon, 29 Apr 2019 17:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556558637; bh=m4qkc6Una/9g3xtiiboFQMSo/oJ8dA9J62RK9ZySa70=;
 h=From:To:CC:Subject:Date:References:From;
 b=LZox4v6kQr+NqTkFyQVp73N2lXeTFxyvZVwrJAmo05b+AQYmk2h8PV354FgmNaUe+
 NWvw/YAUuLSGRvMi/IkpeEwUTt/ibg1FIXEQ0pUezjTRVl/dQB4yCNhPfPqlpP6Qyi
 Ek0wsYjaqmKQfmqgtTKKbTLys0VBx2/dMo4bjE9nAPdeqt7X05OkoVVJG/tuB/SiQ8
 djgCNJ8NlDPRqUNDEkLO8AxakR5XTfjSksJXq5Of5PwYfGbjUi5Ul+eOgMU9XqJ2TM
 6bIno5rvjNhyt1X12CQge0Taf7/FUpe9szct72X4bAdZASeMdEY7e9kzZj78mE/aD0
 3iT3rk4vikE2A==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id F1FA0A0091;
 Mon, 29 Apr 2019 17:23:58 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Mon, 29 Apr 2019 10:23:58 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: perf tools build broken after v5.1-rc1
Thread-Topic: perf tools build broken after v5.1-rc1
Thread-Index: AQHU9whSYuAYlq2eD0OAivz0M0d5Nw==
Date: Mon, 29 Apr 2019 17:23:57 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2505863@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org> <20190425214800.GC21829@kernel.org>
 <20190426192834.GB28586@kernel.org> <20190426193531.GC28586@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_102400_076896_F023120B 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 4/26/19 12:35 PM, Arnaldo Carvalho de Melo wrote:
> Em Fri, Apr 26, 2019 at 04:28:34PM -0300, Arnaldo Carvalho de Melo escreveu:
>> Em Thu, Apr 25, 2019 at 06:48:00PM -0300, Arnaldo Carvalho de Melo escreveu:
>>> Em Mon, Apr 22, 2019 at 12:20:27PM -0300, Arnaldo Carvalho de Melo escreveu:
>>>> Em Fri, Apr 19, 2019 at 04:32:58PM -0700, Vineet Gupta escreveu:
>>>>> When building perf for ARC (v5.1-rc2) I get the following
>>>>  
>>>>> | In file included from bench/futex-hash.c:26:
>>>>> | bench/futex.h: In function 'futex_wait':
>>>>> | bench/futex.h:37:10: error: 'SYS_futex' undeclared (first use in this function);
>>>>  
>>>>> git bisect led to 1a787fc5ba18ac767e635c58d06a0b46876184e3 ("tools headers uapi:
>>>>> Sync copy of asm-generic/unistd.h with the kernel sources")
>>>> Humm, I have to check why this:
>>>>
>>>> [perfbuilder@quaco ~]$ podman images | grep ARC
>>>> docker.io/acmel/linux-perf-tools-build-fedora                24-x-ARC-uClibc          4c259582a8e6   5 weeks ago      846 MB
>>>> [perfbuilder@quaco ~]$
>>>>
>>>> isn't catching this... :-\
>>>>
>>>> FROM docker.io/fedora:24
>>>> MAINTAINER Arnaldo Carvalho de Melo <acme@kernel.org>
>>>> ENV TOOLCHAIN=arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install
>>>> ENV CROSS=arc-linux-
>>>> ENV SOURCEFILE=${TOOLCHAIN}.tar.gz
>>>> RUN dnf -y install make flex bison binutils gcc wget tar bzip2 bc findutils xz
>>>> RUN wget https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_foss-2Dfor-2Dsynopsys-2Ddwc-2Darc-2Dprocessors_toolchain_releases_download_arc-2D2017.09-2Drc2_-24-257BSOURCEFILE-257D&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=7FgpX6o3vAhwMrMhLh-4ZJey5kjdNUwOL2CWsFwR4T8&m=obdUU5ZihUrFi8F2O4JfVYScd7CLKNItF83dHmezlkU&s=oOPRKzvGneimee7GFXWyqqoVfgvHu-jwSMKPbSqwP5M&e=
>>>> <SNIP>
>>>> COPY rx_and_build.sh /
>>>> ENV EXTRA_MAKE_ARGS=NO_LIBBPF=1
>>>> ENV ARCH=arc
>>>> ENV CROSS_COMPILE=/${TOOLCHAIN}/bin/${CROSS}
>>>> ENV EXTRA_CFLAGS=-matomic
>>> So, now I have a libnuma crossbuilt in this container that allows me to
>>> build a ARC perf binary linked with zlib and numactl-devel, but only
>>> after I applied the fix below.
>>>
>>> Can you please provide the feature detection header in the build? I.e.
>>> what I have with my ARC cross build container right now, after applying
>>> the patch below is:
>> So, switched from the uCLibc build system to the glibc based one, so
>> that I could get elfutils building (it needs argp that isn't available
>> with uCLibc) I have it reproduced, see below, now I'm testing with the
>> fix, which is to grab the unistd.h files you noticed missing for the
>> arches that are present in tools/arch/, will post results soon
> Yep, now it builds:
>
> /tmp/build/perf/perf: ELF 32-bit LSB executable, *unknown arch 0xc3* version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-arc.so.2, for GNU/Linux 3.9.0, with debug_info, not stripped
>
> With this patch:
>
> commit dd423246b321967eace3f3e0fe73d638050b447c
> Author: Arnaldo Carvalho de Melo <acme@redhat.com>
> Date:   Mon Apr 22 15:21:35 2019 -0300
>
>     WIP
>     
>     Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
>
> diff --git a/tools/arch/arc/include/uapi/asm/unistd.h b/tools/arch/arc/include/uapi/asm/unistd.h
> new file mode 100644
> index 000000000000..5eafa1115162
> --- /dev/null
> +++ b/tools/arch/arc/include/uapi/asm/unistd.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * Copyright (C) 2004, 2007-2010, 2011-2012 Synopsys, Inc. (http://www.synopsys.com)
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +/******** no-legacy-syscalls-ABI *******/
> +
> +/*
> + * Non-typical guard macro to enable inclusion twice in ARCH sys.c
> + * That is how the Generic syscall wrapper generator works
> + */
> +#if !defined(_UAPI_ASM_ARC_UNISTD_H) || defined(__SYSCALL)

This guard ifdef is not present in existing tools/arch/*/**/unistd.h , nor in the
ones below so I'd suggest just drop it to keep things consistent.
If you still want them, best to call it _TOOLS_UAPI_ASM_ARC_UNISTD_H

> +#define _UAPI_ASM_ARC_UNISTD_H
> +
> +#define __ARCH_WANT_RENAMEAT
> +#define __ARCH_WANT_STAT64
> +#define __ARCH_WANT_SET_GET_RLIMIT
> +#define __ARCH_WANT_SYS_EXECVE
> +#define __ARCH_WANT_SYS_CLONE
> +#define __ARCH_WANT_SYS_VFORK
> +#define __ARCH_WANT_SYS_FORK
> +#define __ARCH_WANT_TIME32_SYSCALLS
> +
> +#define sys_mmap2 sys_mmap_pgoff
> +
> +#include <asm-generic/unistd.h>

> +
> +#define NR_syscalls	__NR_syscalls
> +
> +/* Generic syscall (fs/filesystems.c - lost in asm-generic/unistd.h */
> +#define __NR_sysfs		(__NR_arch_specific_syscall + 3)
> +
> +/* ARC specific syscall */
> +#define __NR_cacheflush		(__NR_arch_specific_syscall + 0)
> +#define __NR_arc_settls		(__NR_arch_specific_syscall + 1)
> +#define __NR_arc_gettls		(__NR_arch_specific_syscall + 2)
> +#define __NR_arc_usr_cmpxchg	(__NR_arch_specific_syscall + 4)
> +
> +__SYSCALL(__NR_cacheflush, sys_cacheflush)
> +__SYSCALL(__NR_arc_settls, sys_arc_settls)
> +__SYSCALL(__NR_arc_gettls, sys_arc_gettls)
> +__SYSCALL(__NR_arc_usr_cmpxchg, sys_arc_usr_cmpxchg)
> +__SYSCALL(__NR_sysfs, sys_sysfs)
> +
> +#undef __SYSCALL
> +
> +#endif
> diff --git a/tools/arch/hexagon/include/uapi/asm/unistd.h b/tools/arch/hexagon/include/uapi/asm/unistd.h
> new file mode 100644
> index 000000000000..432c4db1b623
> --- /dev/null
> +++ b/tools/arch/hexagon/include/uapi/asm/unistd.h
> @@ -0,0 +1,40 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * Syscall support for Hexagon
> + *
> + * Copyright (c) 2010-2011, The Linux Foundation. All rights reserved.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 and
> + * only version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
> + * 02110-1301, USA.
> + */
> +
> +/*
> + *  The kernel pulls this unistd.h in three different ways:
> + *  1.  the "normal" way which gets all the __NR defines
> + *  2.  with __SYSCALL defined to produce function declarations
> + *  3.  with __SYSCALL defined to produce syscall table initialization
> + *  See also:  syscalltab.c
> + */
> +
> +#define sys_mmap2 sys_mmap_pgoff
> +#define __ARCH_WANT_RENAMEAT
> +#define __ARCH_WANT_STAT64
> +#define __ARCH_WANT_SET_GET_RLIMIT
> +#define __ARCH_WANT_SYS_EXECVE
> +#define __ARCH_WANT_SYS_CLONE
> +#define __ARCH_WANT_SYS_VFORK
> +#define __ARCH_WANT_SYS_FORK
> +#define __ARCH_WANT_TIME32_SYSCALLS
> +
> +#include <asm-generic/unistd.h>
> diff --git a/tools/arch/riscv/include/uapi/asm/unistd.h b/tools/arch/riscv/include/uapi/asm/unistd.h
> new file mode 100644
> index 000000000000..0e2eeeb1fd27
> --- /dev/null
> +++ b/tools/arch/riscv/include/uapi/asm/unistd.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * Copyright (C) 2018 David Abdurachmanov <david.abdurachmanov@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <https://urldefense.proofpoint.com/v2/url?u=http-3A__www.gnu.org_licenses_&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=7FgpX6o3vAhwMrMhLh-4ZJey5kjdNUwOL2CWsFwR4T8&m=obdUU5ZihUrFi8F2O4JfVYScd7CLKNItF83dHmezlkU&s=qw-VNuV5RBu7T5rL77GOTAKBzZB-zvizjJ3Haik7x9g&e=>.
> + */
> +
> +#ifdef __LP64__
> +#define __ARCH_WANT_NEW_STAT
> +#define __ARCH_WANT_SET_GET_RLIMIT
> +#endif /* __LP64__ */
> +
> +#include <asm-generic/unistd.h>
> +
> +/*
> + * Allows the instruction cache to be flushed from userspace.  Despite RISC-V
> + * having a direct 'fence.i' instruction available to userspace (which we
> + * can't trap!), that's not actually viable when running on Linux because the
> + * kernel might schedule a process on another hart.  There is no way for
> + * userspace to handle this without invoking the kernel (as it doesn't know the
> + * thread->hart mappings), so we've defined a RISC-V specific system call to
> + * flush the instruction cache.
> + *
> + * __NR_riscv_flush_icache is defined to flush the instruction cache over an
> + * address range, with the flush applying to either all threads or just the
> + * caller.  We don't currently do anything with the address range, that's just
> + * in there for forwards compatibility.
> + */
> +#ifndef __NR_riscv_flush_icache
> +#define __NR_riscv_flush_icache (__NR_arch_specific_syscall + 15)
> +#endif
> +__SYSCALL(__NR_riscv_flush_icache, sys_riscv_flush_icache)
>


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
