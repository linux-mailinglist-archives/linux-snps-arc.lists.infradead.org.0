Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39F210424
	for <lists+linux-snps-arc@lfdr.de>; Wed,  1 May 2019 05:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+GEuFF+h1/Ph33DQHtCCjbZIcWDGGrfCxW20BEqP60=; b=Ngurr1eIVUi1AL
	C7vZp8Gcw/ZHZhw1JIcOzliXL02hpXTgv9S4qHqWjI3sPEGJFxLjERN7OTYKNG4MLOXNoRVpaNn76
	OHX6MjaBVWGZl9r70t9sH6ar5y97DAQzwZn6GwTrmOoYkYIDKnF6yoz9L8Tg2HSlshc8DyYZiZB1c
	VTHz56tZ9R4+4uOXkpR/jDgKdgKq8Fex83UTKH5W9ajCxBbHhpeObCkS8jWvPMtDnuu0IxIrUc0Gf
	LFeZ/ChnT1L+OL26kb0srdqz5AB1L7UDfJGlNDj3ZMjKaFRCNwQXX9OYr+7J5eK/C9sa0DzjbMqZk
	pv7CkcnkEKPDMl+7+WiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLffY-0006Ss-Ue; Wed, 01 May 2019 03:12:28 +0000
Received: from 216-12-86-13.cv.mvl.ntelos.net ([216.12.86.13]
 helo=brightrain.aerifal.cx)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLffW-0006S9-9c
 for linux-snps-arc@lists.infradead.org; Wed, 01 May 2019 03:12:28 +0000
Received: from dalias by brightrain.aerifal.cx with local (Exim 3.15 #2)
 id 1hLffL-0002EU-00; Wed, 01 May 2019 03:12:15 +0000
Date: Tue, 30 Apr 2019 23:12:15 -0400
From: Rich Felker <dalias@libc.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: Detecting libc in perf (was Re: perf tools build broken after
 v5.1-rc1)
Message-ID: <20190501031215.GZ23599@brightrain.aerifal.cx>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <20190425214800.GC21829@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
 <20190430011818.GE7857@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250601B@us01wembx1.internal.synopsys.com>
 <20190430170404.GX23599@brightrain.aerifal.cx>
 <17a86bc7-c1f9-8c3c-8f1d-711e95dac49d@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17a86bc7-c1f9-8c3c-8f1d-711e95dac49d@synopsys.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_201226_481338_61DE0FB2 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 10:13:40AM -0700, Vineet Gupta wrote:
> On 4/30/19 10:04 AM, Rich Felker wrote:
> > On Tue, Apr 30, 2019 at 03:53:18PM +0000, Vineet Gupta wrote:
> >> On 4/29/19 6:18 PM, Arnaldo Carvalho de Melo wrote:
> >>>>> Auto-detecting system features:
> >>>>> ...                         dwarf: [ OFF ]
> >>>>> ...            dwarf_getlocations: [ OFF ]
> >>>>> ...                         glibc: [ on  ]
> >>>> Not related to current issue, this run uses a uClibc toolchain and yet it is
> >>>> detecting glibc - doesn't seem right to me.
> >>> Ok, I'll improve that, I think it just tries to detect a libc, yeah,
> >>> see:
> >>>
> >>> [acme@quaco linux]$ cat tools/build/feature/test-glibc.c
> >>> // SPDX-License-Identifier: GPL-2.0
> >>> #include <stdlib.h>
> >>>
> >>> #if !defined(__UCLIBC__)
> >>> #include <gnu/libc-version.h>
> >>> #else
> >>> #define XSTR(s) STR(s)
> >>> #define STR(s) #s
> >>> #endif
> >>>
> >>> int main(void)
> >>> {
> >>> #if !defined(__UCLIBC__)
> >>> 	const char *version = gnu_get_libc_version();
> >>> #else
> >>> 	const char *version = XSTR(__GLIBC__) "." XSTR(__GLIBC_MINOR__);
> >>> #endif
> >>>
> >>> 	return (long)version;
> >>> }
> >>> [acme@quaco linux]$
> >>>
> >>> [perfbuilder@59ca4b424ded /]$ grep __GLIBC__ /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/*.h
> >>> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
> >>> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:#define	__GLIBC__	2
> >>> /arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install/arc-snps-linux-uclibc/sysroot/usr/include/features.h:	((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))
> >>> [perfbuilder@59ca4b424ded /]$
> >>>
> >>> Isn't that part of uClibc?
> >>
> >> Right you are. Per the big fat comment right above that code, this gross hack in
> >> uclibc is unavoidable as applications tend to rely on that define.
> >> So a better fix would be to check for various !GLIBC libs explicitly.
> >>
> >> #ifdef __UCLIBC__
> >>
> >> #elseif defined __MUSL__
> >>
> >> ....
> >>
> >> Not pretty from app usage pov, but that seems to be the only sane way of doing it.
> > 
> > What are you trying to achieve? I was just CC'd and I'm missing the
> > context.
> 
> Sorry I added you as a subject matter expert but didn't provide enough context.
> 
> The original issue [1] was perf failing to build on ARC due to perf tools needing
> a copy of unistd.h but this thread [2] was a small side issue of auto-detecting
> libc variaint in perf tools where despite uClibc tools, glibc is declared to be
> detected, due to uClibc's historical hack of defining __GLIBC__. So __GLIBC__ is
> not sufficient (and probably not the right interface to begin wtih) to ensure glibc.
> 
> [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-April/005676.html
> [2] http://lists.infradead.org/pipermail/linux-snps-arc/2019-April/005684.html

I think you misunderstood -- I'm asking what you're trying to achieve
by detecting whether the libc is glibc, rather than whether it has
some particular interface you want to conditionally use. This is a
major smell and is usually something wrong that shouldn't be done.

Rich

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
