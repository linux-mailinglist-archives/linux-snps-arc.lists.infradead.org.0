Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3DAE893
	for <lists+linux-snps-arc@lfdr.de>; Mon, 29 Apr 2019 19:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=isbgHp3f8oauLSzrZdT9de6rilBEc3yxRdmLp00WkH8=; b=Sviyzz4XnWP38Y
	pCRIS0oGb4DVfL3jLc+J9eJHMyxqd8cjghjeqbYTJXBtlQRJE0oKnFlhy7qzfxhX8feXrWTialWM3
	6fKdjUsOxzmUbn4Wxeys0p/2pjjvosyumvcvdV3IZcgOKXJKv66/yD5RO1vBKQpCBg1TAOc5cCKdS
	oZuQKhrp698Me7quYhEWUDnyW+Jh06DicMgrg/Adub4WoWLJHb3V7bg1HzhRLw/Vj0nVlUsDhp8e5
	yQHSqskOTeRKUVK+nbSLipgfmE9If8VR0qCJnHAHvMynlIWas9otx9sPZ0XpgZfsEl+/AXLbt8Old
	oDn1BIJhYVo3IrvmDgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9rt-0001dc-5o; Mon, 29 Apr 2019 17:15:05 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ro-0001cA-53
 for linux-snps-arc@lists.infradead.org; Mon, 29 Apr 2019 17:15:01 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 11F41C00A0;
 Mon, 29 Apr 2019 17:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556558097; bh=KiymCE0SEjFh+yxlLj/PIdQ6Vg47QwbSiN8/7YvmW/E=;
 h=From:To:CC:Subject:Date:References:From;
 b=TyBhTrfrv5ATDBT+TOcsUvEPyeYxUckG4dUgJgQqNiWR2PukgVsWPvvkpx5VSAf/d
 sTn8S0dg9ReMItRmlndG8IRnBts0IjpSmoEbLIbwIU/npUVv1o+4NRbTh++4cmYvG3
 eD49na40rtQBgHRPQhWN5AI68MovdwOkec2221UO9lQuabK4df+7b69miLpnfdxXP1
 6xlQOKtfkCIUx1xf/siKcvwxfll0KVPIIZOidvbf27srTs9Ru64fbJAKatBfJNO8px
 ssLHT0CICERo05dWpirW9eIqoeoWl7xbKlQWzZ7mrmEuKP1PwBxDz1P7gnbFAjiDYO
 prUwuqTB5ef+A==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 8338FA0072;
 Mon, 29 Apr 2019 17:14:54 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WXQAHTC1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Mon,
 29 Apr 2019 10:14:54 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: perf tools build broken after v5.1-rc1
Thread-Topic: perf tools build broken after v5.1-rc1
Thread-Index: AQHU9whSYuAYlq2eD0OAivz0M0d5Nw==
Date: Mon, 29 Apr 2019 17:14:54 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org> <20190425214800.GC21829@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101500_197711_2DC22665 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

On 4/25/19 2:48 PM, Arnaldo Carvalho de Melo wrote:
> Em Mon, Apr 22, 2019 at 12:20:27PM -0300, Arnaldo Carvalho de Melo escreveu:
>> Em Fri, Apr 19, 2019 at 04:32:58PM -0700, Vineet Gupta escreveu:
>>> When building perf for ARC (v5.1-rc2) I get the following
>>  
>>> | In file included from bench/futex-hash.c:26:
>>> | bench/futex.h: In function 'futex_wait':
>>> | bench/futex.h:37:10: error: 'SYS_futex' undeclared (first use in this function);
>>  
>>> git bisect led to 1a787fc5ba18ac767e635c58d06a0b46876184e3 ("tools headers uapi:
>>> Sync copy of asm-generic/unistd.h with the kernel sources")
>> Humm, I have to check why this:
>>
>> [perfbuilder@quaco ~]$ podman images | grep ARC
>> docker.io/acmel/linux-perf-tools-build-fedora                24-x-ARC-uClibc          4c259582a8e6   5 weeks ago      846 MB
>> [perfbuilder@quaco ~]$
>>
>> isn't catching this... :-\
>>
>> FROM docker.io/fedora:24
>> MAINTAINER Arnaldo Carvalho de Melo <acme@kernel.org>
>> ENV TOOLCHAIN=arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install
>> ENV CROSS=arc-linux-
>> ENV SOURCEFILE=${TOOLCHAIN}.tar.gz
>> RUN dnf -y install make flex bison binutils gcc wget tar bzip2 bc findutils xz
>> RUN wget https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_foss-2Dfor-2Dsynopsys-2Ddwc-2Darc-2Dprocessors_toolchain_releases_download_arc-2D2017.09-2Drc2_-24-257BSOURCEFILE-257D&d=DwIDaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=7FgpX6o3vAhwMrMhLh-4ZJey5kjdNUwOL2CWsFwR4T8&m=HjtufCLozrW47pS5C2YH3safLHQE7eEtmHFZsSWrz1M&s=29g4oKvGuYcLgheCUvZh3wojhhljivpLd8aj7Ur4sKQ&e=
>> <SNIP>
>> COPY rx_and_build.sh /
>> ENV EXTRA_MAKE_ARGS=NO_LIBBPF=1
>> ENV ARCH=arc
>> ENV CROSS_COMPILE=/${TOOLCHAIN}/bin/${CROSS}
>> ENV EXTRA_CFLAGS=-matomic
> So, now I have a libnuma crossbuilt in this container that allows me to
> build a ARC perf binary linked with zlib and numactl-devel, but only
> after I applied the fix below.
>
> Can you please provide the feature detection header in the build? I.e.
> what I have with my ARC cross build container right now, after applying
> the patch below is:
>
> [perfbuilder@60d5802468f6 perf]$ make $EXTRA_MAKE_ARGS ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE EXTRA_CFLAGS="$EXTRA_CFLAGS" -C /git/perf/tools/perf O=/tmp/build/perf
> make: Entering directory '/git/perf/tools/perf'
>   BUILD:   Doing 'make -j8' parallel build
> sh: line 0: command: -c: invalid option
> command: usage: command [-pVv] command [arg ...]
>
> Auto-detecting system features:
> ...                         dwarf: [ OFF ]
> ...            dwarf_getlocations: [ OFF ]
> ...                         glibc: [ on  ]

Not related to current issue, this run uses a uClibc toolchain and yet it is
detecting glibc - doesn't seem right to me.

> ...                          gtk2: [ OFF ]
> ...                      libaudit: [ OFF ]
> ...                        libbfd: [ OFF ]
> ...                        libelf: [ OFF ]
> ...                       libnuma: [ on  ]

Wondering why that is - for me numa is off - even when using a glibc toolchain.

> ...        numa_num_possible_cpus: [ on  ]
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
> ...                        libaio: [ OFF ]
> ...        disassembler-four-args: [ OFF ]
>
>

For my glibc toolchain, here's the feature detection output

Auto-detecting system features:
...                         dwarf: [ on  ]
...            dwarf_getlocations: [ OFF ]
...                         glibc: [ on  ]
...                          gtk2: [ OFF ]
...                      libaudit: [ OFF ]
...                        libbfd: [ OFF ]
...                        libelf: [ on  ]
...                       libnuma: [ OFF ]
...        numa_num_possible_cpus: [ OFF ]
...                       libperl: [ OFF ]
...                     libpython: [ OFF ]
...                      libslang: [ OFF ]
...                     libcrypto: [ OFF ]
...                     libunwind: [ OFF ]
...            libdw-dwarf-unwind: [ OFF ]
...                          zlib: [ OFF ]
...                          lzma: [ OFF ]
...                     get_cpuid: [ OFF ]
...                           bpf: [ on  ]
...                        libaio: [ on  ]
...        disassembler-four-args: [ OFF ]



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
