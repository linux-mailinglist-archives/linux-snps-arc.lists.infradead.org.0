Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E1310E2A
	for <lists+linux-snps-arc@lfdr.de>; Wed,  1 May 2019 22:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwDRYnmQgi1cg9wPZPAEdFjj23511+sVMmDcuPdLQ/8=; b=RJC88UrReRGfE2
	9HVwuuWrK3Mu9Mzl+0WniDtbJzHiA1f7Dcyp+qC7lJbJoWPyluEgzO/+qh8QMK2kN3dVtzzaYV0AC
	mMSVNlQoMhqLH+uAcL7WaDfAGhGawLKu5O226WuiGF69BXW8D/gwQnK3jOEhjvOvVL5XTsosZf8g+
	/bTJFzB2L/Hi3WK7AKH3S2WHU5C2OCzNoTbSSbwHjA9W2jPVLu3QGRO1ALcAM8hbFft2y8ixxJSfJ
	WdnJZWOZ29QtAJIVWIhVRp261m+qFXaprxs1AOGppGjhSYiL0Mb8yipWYyD2GGCSXTbjMHaUlV1FZ
	qwj4GB+h/T1zQHktj8jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLw3F-0000TH-Os; Wed, 01 May 2019 20:42:01 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLw2W-0000NS-LX
 for linux-snps-arc@lists.infradead.org; Wed, 01 May 2019 20:41:59 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 9B4674111F; Wed,  1 May 2019 16:41:15 -0400 (EDT)
Date: Wed, 1 May 2019 16:41:15 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: perf tools build broken after v5.1-rc1
Message-ID: <20190501204115.GF21436@kernel.org>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
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
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Em Tue, Apr 30, 2019 at 06:12:35PM +0200, Arnd Bergmann escreveu:
> On Mon, Apr 29, 2019 at 7:17 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
> >
> > On 4/22/19 8:31 AM, Arnaldo Carvalho de Melo wrote:
> > >> A quick fix for ARC will be to create our own version but I presume all existing
> > >> arches using generic syscall abi are affected. Thoughts ? In lack of ideas I'll
> > >> send out a patch for ARC.
> > >>
> > >> P.S. Why do we need the unistd.h duplication in tools directory, given it could
> > >> have used the in-tree unistd headers directly ?
> > > I have to write down the explanation and have it in a file, but we can't
> > > use anything in the kernel from outside tools/ to avoid adding a burden
> > > to kernel developers that would then have to make sure that the changes
> > > that they make outside tools/ don't break things living there.
> >
> > That is a sound guiding principle in general but I don't agree here. unistd is
> > backbone of kernel user interface it has to work and can't possibly be broken even
> > when kernel devs add a new syscall is added or condition-alize existing one. So
> > adding a copy - and deferring the propagation of in-kernel unistd to usersapce
> > won't necessarily help with anything and it just adds the burden of keeping them
> > in sync. Granted we won't necessarily need all the bleeding edge (new syscall
> > updates) into that header, its still more work.
> 
> I think more importantly, it seems completely broken to sync a file from
> asm-generic but not the arch specific file that includes it.
> 
> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
> missed all the other architectures changed in c8ce48f06503 and the
> related commits.

Right, I have a patch copying the missing headers, and that fixed the
build with the glibc-based toolchain, but then broke the uCLibc one :-\

I'm travelling, so coulnd't get back to this, will try as possible.

- Arnaldo

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
