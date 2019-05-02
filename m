Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93C612031
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 18:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s6VM1AB+j3Ak+jM51pcnrQPAdMcmbj2DTqPxT+ywAE=; b=h9hLk9UM18sezG
	12MHqT69zihkgsVQBGva3C6PQI4X0sKJu1zj+LHY5+mBEpeVcx0x5EMmd4Q5f2YhKVpWM2ftJPRTL
	VgK6PTnrjGKeITuEuJHaks747SNHsXYgXNZyW7lKDACpUoSkMuU7mrj277NWDTCozn26qHsm0tZIp
	9z5dWxQk/N/P1zv+OBRA5WJ6v/lsrpxIxpsJTC7cc6jDpRGS4/9oy+yfLOcXFpKWOoLhAIjs94EFm
	5lVS3nxMFf9NPtP4R+ansot/DBdvdGmIzXIXGZfW4GFlcHNT2DeBrOVelEInmyMooTFrLHFYf11Ew
	HvUsjoQt/bfAAAZDzbbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEbs-0002Q1-In; Thu, 02 May 2019 16:31:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEbr-0002PU-4Y
 for linux-snps-arc@bombadil.infradead.org; Thu, 02 May 2019 16:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K9IyyI8mKVGbRJcQqxKVgNuye7sb0n1WK2AwTwP2rRo=; b=S1QKiHDdIYif4VvzkTCOQNdNL
 L0GjkEfj6INdTUShbk4vckLu4Dy7xN/Pfh8brmq/jc3/JNM1OLPAaASBtUneZPEKQXJWyzFH1uYg+
 Bdpxtb9yXZDWtrycYxEt12FdSomfyZIEfjDiqpU11eOeZD8WuWWzbiCtiawk+aaqWV+jCSfrTDD3L
 Jnq0oEWmr2Ftoa//fY+kDT/iacCHKVL9VAsJO3hbJuM0x6eWlBYIaKoP/FcjAmE3Bc1Z2mMRYEclW
 rndOjv/DQdkqFTp9sSNiP0wsuR/fdrH6kPRA2vu3cUasYigOdKA4DN6G65ED0anLzB9HhdWU0xwrd
 LJjPTAQZQ==;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDq3-0000aO-Ny
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 15:41:35 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 2D8B5403AD; Thu,  2 May 2019 11:41:34 -0400 (EDT)
Date: Thu, 2 May 2019 11:41:34 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: perf tools build broken after v5.1-rc1
Message-ID: <20190502154134.GA23984@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
 <20190501204115.GF21436@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
 <20190502143618.GH21436@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502143618.GH21436@kernel.org>
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
 lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Em Thu, May 02, 2019 at 10:36:18AM -0400, Arnaldo Carvalho de Melo escreveu:
> Em Wed, May 01, 2019 at 09:17:52PM +0000, Vineet Gupta escreveu:
> > On 5/1/19 1:41 PM, Arnaldo Carvalho de Melo wrote:
> > >> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
> > >> missed all the other architectures changed in c8ce48f06503 and the
> > >> related commits.
> > > Right, I have a patch copying the missing headers, and that fixed the
> > > build with the glibc-based toolchain, but then broke the uCLibc one :-\
>  
> > tools/perf/util/cloexec.c  #includes <sys/syscall.h> which for glibc includes
> > asm/unistd.h
>  
> > uClibc <sys/syscall.h> OTOH #include <bits/sysnum.h> containign#define __NR_*
> > (generated by parsing kernel's unistd). This header does the right thing by
> > chekcing for redefs, but in the end we still collide with newly added
> > tools/arc/arc/*/**/unistd.h which doesn't have conditional definitions. I'm sure
> > this is not an ARC problem, any uClibc build would be affected. Do you have a arm
> > uclibc toolchain to test ?
> 
> This solves it for fedora:29,
> arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install,
> arc_gnu_2019.03-rc1_prebuilt_uclibc_le_archs_linux_install and
> arc_gnu_2019.03-rc1_prebuilt_glibc_le_archs_linux_install.
> 
> Also ok with:
> 
>   make -C tools/perf build-test
> 
> Now build testing with the full set of containers.

So far, and the alpine ones use musl libc:

[perfbuilder@quaco ~]$ export PERF_TARBALL=http://192.168.124.1/perf/perf-5.1.0-rc6.tar.xz
[perfbuilder@quaco ~]$ time dm
   1 alpine:3.4                    : Ok   gcc (Alpine 5.3.0) 5.3.0
   2 alpine:3.5                    : Ok   gcc (Alpine 6.2.1) 6.2.1 20160822
   3 alpine:3.6                    : Ok   gcc (Alpine 6.3.0) 6.3.0
   4 alpine:3.7                    : Ok   gcc (Alpine 6.4.0) 6.4.0
   5 alpine:3.8                    : Ok   gcc (Alpine 6.4.0) 6.4.0
   6 alpine:3.9                    : Ok   gcc (Alpine 8.3.0) 8.3.0
   7 alpine:edge                   : Ok   gcc (Alpine 8.3.0) 8.3.0
   8 amazonlinux:1                 : Ok   gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-28)
   9 android-ndk:r12b-arm          : Ok   arm-linux-androideabi-gcc (GCC) 4.9.x 20150123 (prerelease)
  10 android-ndk:r15c-arm          : Ok   arm-linux-androideabi-gcc (GCC) 4.9.x 20150123 (prerelease)
  11 centos:5                      : Ok   gcc (GCC) 4.1.2 20080704 (Red Hat 4.1.2-55)
  12 centos:6                      : Ok   gcc (GCC) 4.4.7 20120313 (Red Hat 4.4.7-23)
  13 centos:7                      : Ok   gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-36)
  14 debian:8                      : Ok   gcc (Debian 4.9.2-10+deb8u2) 4.9.2
  15 debian:9                      : Ok   gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516
  16 debian:experimental           : Ok   gcc (Debian 8.3.0-6) 8.3.0
  17 debian:experimental-x-arm64   : Ok   aarch64-linux-gnu-gcc (Debian 8.3.0-4) 8.3.0
  18 debian:experimental-x-mips    : Ok   mips-linux-gnu-gcc (Debian 8.3.0-4) 8.3.0
  19 debian:experimental-x-mips64  : Ok   mips64-linux-gnuabi64-gcc (Debian 8.3.0-2) 8.3.0
  20 debian:experimental-x-mipsel  : Ok   mipsel-linux-gnu-gcc (Debian 8.3.0-4) 8.3.0
  21 fedora:20                     : Ok   gcc (GCC) 4.8.3 20140911 (Red Hat 4.8.3-7)
  22 fedora:22                     : Ok   gcc (GCC) 5.3.1 20160406 (Red Hat 5.3.1-6)
  23 fedora:23                     : Ok   gcc (GCC) 5.3.1 20160406 (Red Hat 5.3.1-6)
  24 fedora:24                     : Ok   gcc (GCC) 6.3.1 20161221 (Red Hat 6.3.1-1)
  25 fedora:24-x-ARC-uClibc        : Ok   arc-linux-gcc (ARCompact ISA Linux uClibc toolchain 2017.09-rc2) 7.1.1 20170710


- Arnaldo

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
