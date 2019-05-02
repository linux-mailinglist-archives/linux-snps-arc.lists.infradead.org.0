Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38461120E1
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 19:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sclsq5CubT2N07WUW4WyqH5latyxjJ60cWtQXsNJwMM=; b=NaPPalwsCs0Ubb
	ST0ILSFBVBmHia0CXbAgDzQyiQugCrmzaC0lRHRPOTtOMfbrsaGeGXXRKX2gnIBfSi3oKhTezLEy9
	5yy8DPoAPzVCwEGTjhHaO5ACM68adqrUSRjA2jNZyEI3+QG4AW/A7sDTu5e3fIbD+21ivpKIexFnN
	DFa6pm1iexlZqUHj1Q0St8WbMb/oA4WPXmgYRFJaXwXK2cChyfLQ17mLTY84L+etvnDUp28VxSLpz
	LmVBUARvl0UFyxQEBlI5hphu0r9xS5/UUJh2AJoqx1BIL1mT9CiiDc/LeTEEdqJ2C2diCVKR+IUEy
	/SNwf5qvLfnsx+sgsEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFIc-00038O-G5; Thu, 02 May 2019 17:15:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFIY-0002ao-C6
 for linux-snps-arc@bombadil.infradead.org; Thu, 02 May 2019 17:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/D28fWfWdJzUHVix7BI9GxltmT2+d98lgi6IpUKEDdY=; b=bHoC1kbJydCzuA8FCVNu3R2KU
 JyeJB+4hIv//W9nUVkWfQdKyZbamq3kqIIkWLdF0ikd2LRmcHTlwz+5d9JwjBv/Qh0HbBMFzAegXG
 3K0CW1rH3C2WEnbQVxAnZQ6ykxiGtKMdXQ6A4ooAgN/9zw+cYM1ImKGRpiqEYnssgwoAAqb8CQBQl
 MOnPREboFSAbgQ4FhHdckFDNObKxJqUxhmKD8ntZ2jAP68/P2+UnKi3AL0K4YO10ypbwJ1BPFdLeG
 Nb5a9jpu2ysBvrZbwQp1NW+dkfPPSO/+FIwEuh8Bx96WjmeCNKUkiGuXokvr0pXp/tP7ib2ZrhhMx
 XkqUdJPoQ==;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFIW-0001c7-8Q
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 17:15:04 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id CCC24403AD; Thu,  2 May 2019 12:41:04 -0400 (EDT)
Date: Thu, 2 May 2019 12:41:04 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: perf tools build broken after v5.1-rc1
Message-ID: <20190502164104.GB23984@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
 <20190501204115.GF21436@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
 <20190502143618.GH21436@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2506D04@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2506D04@us01wembx1.internal.synopsys.com>
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

Em Thu, May 02, 2019 at 04:09:43PM +0000, Vineet Gupta escreveu:
> On 5/2/19 7:36 AM, Arnaldo Carvalho de Melo wrote:
> > Em Wed, May 01, 2019 at 09:17:52PM +0000, Vineet Gupta escreveu:
> >> On 5/1/19 1:41 PM, Arnaldo Carvalho de Melo wrote:
> >>>> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
> >>>> missed all the other architectures changed in c8ce48f06503 and the
> >>>> related commits.
> >>> Right, I have a patch copying the missing headers, and that fixed the
> >>> build with the glibc-based toolchain, but then broke the uCLibc one :-\
> >  
> >> tools/perf/util/cloexec.c  #includes <sys/syscall.h> which for glibc includes
> >> asm/unistd.h
> >  
> >> uClibc <sys/syscall.h> OTOH #include <bits/sysnum.h> containign#define __NR_*
> >> (generated by parsing kernel's unistd). This header does the right thing by
> >> chekcing for redefs, but in the end we still collide with newly added
> >> tools/arc/arc/*/**/unistd.h which doesn't have conditional definitions. I'm sure
> >> this is not an ARC problem, any uClibc build would be affected. Do you have a arm
> >> uclibc toolchain to test ?
> > This solves it for fedora:29,
> > arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install,
> > arc_gnu_2019.03-rc1_prebuilt_uclibc_le_archs_linux_install and
> > arc_gnu_2019.03-rc1_prebuilt_glibc_le_archs_linux_install.
> >
> > Also ok with:
> >
> >   make -C tools/perf build-test
> >
> > Now build testing with the full set of containers.
> >
> > - Arnaldo
> >
> > commit 1931594a680dba28e98b526192dd065430c850c0
> > Author: Arnaldo Carvalho de Melo <acme@redhat.com>
> > Date:   Thu May 2 09:26:23 2019 -0400
> >
> >     perf tools: Remove needless asm/unistd.h include fixing build in some places
> >     
> >     We were including sys/syscall.h and asm/unistd.h, since sys/syscall.h
> >     includes asm/unistd.h, sometimes this leads to the redefinition of
> >     defines, breaking the build.
> >     
> >     Noticed on ARC with uCLibc.
> 
> Thx for this Arnaldo.
> 
> While this takes care of immediate issues, for the long term, are you open to idea
> of removing the header duplicity.

In the beginning we used the kernel headers directly, then, acting on
advice/complaints from Linus about tooling breaking when changes were
made in the kernel sources we were using directly, we moved to have
copies and notice when things change so that we could think about what
changed and act accordingly, without putting the burden to the kernel
developers to keep tools/ building, I want to keep it that way.

Now you say, validly, that there are bits that are designed to be used
by userspace, so for those, we should go back to not copying and using
it direcly, elliminating the duplicity you don't like.

I don't know, I'm used to the duplicity and the checks, not breaking
tools even when kernel developers make mistakes in the UAPI headers,
tools/perf is self container wrt the latest and greatest stuff not
present in older environments, and the onus is on perf developers to do
the sync.

This specific issue here happened because I made a mistake, which I
fixed when reported, now I have three containers for cross building for
ARC, two versions for the uCLibc based toolchain, one for the glibc one,
libnuma, elfutils and zlib are cross build there, so should make it less
likely problems like this will happen again.

> We could use a "less evil" idiom of copying only the minimal bits (since the sync
> onus remains one way or the other)
> e.g. I spotted below in bpf code and also seen in other ah-hoc multi arch projects
 
> #ifdef __NR_xx
> # if defined (__arch_y__)
> 
> # elif defined (__arch_z__)
> 
> # endif
> #endif

- Arnaldo

BTW: since the last report:

  25 fedora:24-x-ARC-uClibc        : Ok   arc-linux-gcc (ARCompact ISA Linux uClibc toolchain 2017.09-rc2) 7.1.1 20170710
  26 fedora:25                     : Ok   gcc (GCC) 6.4.1 20170727 (Red Hat 6.4.1-1)
  27 fedora:26                     : Ok   gcc (GCC) 7.3.1 20180130 (Red Hat 7.3.1-2)
  28 fedora:28                     : Ok   gcc (GCC) 8.3.1 20190223 (Red Hat 8.3.1-2)
  29 fedora:29                     : Ok   gcc (GCC) 8.3.1 20190223 (Red Hat 8.3.1-2)
  30 fedora:30                     : Ok   gcc (GCC) 9.0.1 20190312 (Red Hat 9.0.1-0.10)
  31 fedora:30-x-ARC-glibc         : Ok   arc-linux-gcc (ARC HS GNU/Linux glibc toolchain 2019.03-rc1) 8.3.1 20190225
  32 fedora:30-x-ARC-uClibc        : Ok   arc-linux-gcc (ARCv2 ISA Linux uClibc toolchain 2019.03-rc1) 8.3.1 20190225

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
