Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8AE12301
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 22:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xt0wkjygwVtCaXAMxLx6IYQmmqMZmjd4OqGWT0pwA2g=; b=OJW83yASNUH6pN
	J8byup52LQhbUgG2XXzH6UISnKQTrAoF0jdr8ixAuwr17MTotGf3CZK2OUpQTjTbB4SuTHNUpc78r
	z46B8QrbKzx2odLMOgLOmeGZP/TUJFp2Dasho/k/LUdF+rPxpdunDZequ1boq6vKPLQTVheNMYULK
	wE74NoE6NLYEGI2TqZK+DBnTVNrGF3bVDkfrhiy+ptPvZcQ5nbyosqImQ27dekOX5JzNlVVxhkQxK
	1gFp4qFycvsd6ZFM4WNMCH1M22TTibfCESQyU5ePc5rAaWO8wcKQYApGQJYWWgxC39IHA7ZTa0dzr
	rWxdyta2T1KU4DNKIraw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMI1B-0006fp-OM; Thu, 02 May 2019 20:09:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMI17-0006ff-Gd
 for linux-snps-arc@bombadil.infradead.org; Thu, 02 May 2019 20:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nVxPvb4gHab89NR3TJEjvHX4WUon0plr7WUy6OMsIgU=; b=2TAbmppnUX5B/OUtXtZvQQzcf
 D0J7TbVBqdT+Y//LO4uHvN+k4YKAB1DsXi0QbzFX21sC/p1/FHudL1SKJZkBWJSyyGvTF1txb99fb
 pHPbkrb9YgmVOjZY9wWDJjQZ4ieDVA2z7tYsml8cfWKCGTea5g3Og+Crc0x/ISL57ZXlhwNspX0Lu
 sg4jy7xz/AsnF9wukgm0RBhmOpFy89U6FsUlBVCqtyK8LsZTnx4unoLhogAergd8OTbxiyfquPGPT
 WNZVzAAwcL+puK6rTMzQwG0YXVYMTOMaAL7F7atpSCGJJ/J7/WFv5dn556yzGmxbk2eZzryE69NvF
 mmZaDlhQA==;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMI15-0003HB-JW
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 20:09:15 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 17969403AD; Thu,  2 May 2019 16:09:14 -0400 (EDT)
Date: Thu, 2 May 2019 16:09:14 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: Detecting libc in perf (was Re: perf tools build broken after
 v5.1-rc1)
Message-ID: <20190502200914.GA22982@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <20190425214800.GC21829@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2505837@us01wembx1.internal.synopsys.com>
 <20190430011818.GE7857@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250601B@us01wembx1.internal.synopsys.com>
 <20190430170404.GX23599@brightrain.aerifal.cx>
 <17a86bc7-c1f9-8c3c-8f1d-711e95dac49d@synopsys.com>
 <20190501031215.GZ23599@brightrain.aerifal.cx>
 <596d2166-1952-a392-ef05-d3f59abf9fd0@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <596d2166-1952-a392-ef05-d3f59abf9fd0@synopsys.com>
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
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>, Rich Felker <dalias@libc.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Em Thu, May 02, 2019 at 09:55:26AM -0700, Vineet Gupta escreveu:
> On 4/30/19 8:12 PM, Rich Felker wrote:
> >>> What are you trying to achieve? I was just CC'd and I'm missing the
> >>> context.
> >>
> >> Sorry I added you as a subject matter expert but didn't provide enough context.
> >>
> >> The original issue [1] was perf failing to build on ARC due to perf tools needing
> >> a copy of unistd.h but this thread [2] was a small side issue of auto-detecting
> >> libc variaint in perf tools where despite uClibc tools, glibc is declared to be
> >> detected, due to uClibc's historical hack of defining __GLIBC__. So __GLIBC__ is
> >> not sufficient (and probably not the right interface to begin wtih) to ensure glibc.
> >>
> >> [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-April/005676.html
> >> [2] http://lists.infradead.org/pipermail/linux-snps-arc/2019-April/005684.html
> > 
> > I think you misunderstood -- 
> 
> :-)
> 
> > I'm asking what you're trying to achieve
> > by detecting whether the libc is glibc, rather than whether it has
> > some particular interface you want to conditionally use. This is a
> > major smell and is usually something wrong that shouldn't be done.
> 
> Good question indeed. Back in 2015 I initially ran into some quirks due to subtle
> libc differences.  At the time perf has a fwd ref for strlcpy which exactly
> matched glibc but not uClibc.  see commit  a83d869f300bf91 "(perf tools: Elide
> strlcpy warning with uclibc)" or 0215d59b154 "(tools lib: Reinstate strlcpy()
> header guard with __UCLIBC__)"
> 
> But this still used the libc defined symbol __UCLIBC__ or __GLIBC__
> 
> Your question however pertains to perf glibc feature check where perf generates an
> alternate symbol HAVE_GLIBC_SUPPORT.
> 
> This is dubious as first of all it detects glibc even for uClibc builds.

 
> Even of we were to improve it, there seems to be no users of this symbol.
> 
> $git grep HAVE_GLIBC_SUPPORT
> perf/Makefile.config:  CFLAGS += -DHAVE_GLIBC_SUPPORT
> perf/builtin-version.c: STATUS(HAVE_GLIBC_SUPPORT, glibc)
> 
> So I'd propose to remove it !

This is some remnant of the past, I'll check further but will end up
just ditching it altogether as you suggest :-)

[acme@quaco perf]$ find tools/ -type f | xargs grep HAVE_GLIBC_SUPPORT
tools/perf/builtin-version.c:	STATUS(HAVE_GLIBC_SUPPORT, glibc);
tools/perf/Makefile.config:  CFLAGS += -DHAVE_GLIBC_SUPPORT
[acme@quaco perf]$

Its just this case that ends up using that feature detection program,

[acme@quaco perf]$ vim tools/perf/Makefile.config
[acme@quaco perf]$ find tools/ -type f | xargs grep feature-glibc
tools/perf/Makefile.config:    ifeq ($(feature-glibc), 1)
tools/perf/Makefile.config:ifeq ($(feature-glibc), 1)
[acme@quaco perf]$

BTW the function on it doesn't mean anything, what matters is if the
program builds or not :-)

- Arnaldo

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
