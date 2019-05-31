Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A6830A3A
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 May 2019 10:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0VANURjSNsoO2V7fVGXdLHlrdoJZxJ9dQRL/YzJdN0=; b=OmpMaPznzGb0p8
	t3X03AtLsHa6NBuc1jmI7GElsd7KTxGICAKrr5+iuCtdXJAzBE+NEgOsXbq0+lPDjDwCFDmaz1UKC
	NorEmLhbS0HeNva/HO2KgloM7JMIzqkLDO3ggZgIzZNxBOyCv+GOskYOYIt89EuscwIUhT07LPjQ/
	4FVPk/czRIU+womXcPY04s2fo+r+iq3W8Z9dW38HNASOU786sLr2NSBwYw/NHQtLNYV7c+9NU1U+T
	L9X977WjOFzbNsrBqJvvBSDVICw68VYHz20tQe3zPkGrEWCsyy/1Vi/4EtunJDaU9wTczyoQBNdh5
	seYJ1ddOpwws9FD0fGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcr2-0008Rv-2F; Fri, 31 May 2019 08:25:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcr0-0008Rj-IT
 for linux-snps-arc@bombadil.infradead.org; Fri, 31 May 2019 08:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnyF2LiZJO/YFVndv0fY0DHSYQjvYUj7yzeqlwI/hZM=; b=SBouILP5p618snw6vbevL7rJP
 C0snIepbF1Kj2DLmCjDkr6qZC7kcT34RTDx3ZZth1zEc8Hcf2phdU2qt7TC5qevd0jE7an8ZhiUoC
 X3DoXlcbf5EDwSrJzgb1DH422y/m7Tv+tPseUPQ2DLHU4UnixqrsiWFEiftZKevWqdOsca6MIamTd
 4ZHq+feZuztfhqd8ifQC6SjY4N3lDc0KgOWKX0GDcOhKyn7RLoFa31J/Ykgs0WI7i5EB+hWdUXWAu
 5Pr7r5VrEfP2p2k2e8eO/IEHSIWU0jXfUa1syUqifJrLt34hE8+m/bCnk81VIigz3EVhoTMi/XlT6
 Iqg7sK63g==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcqw-0002TO-5U; Fri, 31 May 2019 08:25:30 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A75DD201B8CFE; Fri, 31 May 2019 10:25:28 +0200 (CEST)
Date: Fri, 31 May 2019 10:25:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Message-ID: <20190531082528.GJ2623@hirez.programming.kicks-ass.net>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190530185358.GG28207@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530185358.GG28207@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:53:58AM -0700, Paul E. McKenney wrote:
> On Thu, May 30, 2019 at 11:22:42AM -0700, Vineet Gupta wrote:
> > Hi Peter,
> > 
> > Had an interesting lunch time discussion with our hardware architects pertinent to
> > "minimal guarantees expected of a CPU" section of memory-barriers.txt
> > 
> > 
> > |  (*) These guarantees apply only to properly aligned and sized scalar
> > |     variables.  "Properly sized" currently means variables that are
> > |     the same size as "char", "short", "int" and "long".  "Properly
> > |     aligned" means the natural alignment, thus no constraints for
> > |     "char", two-byte alignment for "short", four-byte alignment for
> > |     "int", and either four-byte or eight-byte alignment for "long",
> > |     on 32-bit and 64-bit systems, respectively.
> > 
> > 
> > I'm not sure how to interpret "natural alignment" for the case of double
> > load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> > alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > 
> > I presume (and the question) that lkmm doesn't expect such 8 byte load/stores to
> > be atomic unless 8-byte aligned
> 
> I would not expect 8-byte accesses to be atomic on 32-bit systems unless
> some special instruction was in use.  But that usually means special
> intrinsics or assembly code.

If the GCC of said platform defaults to the double-word instructions for
long long, then I would very much expect natural alignment on it too.

If the feature is only available through inline asm or intrinsics, then
we can be a little more lenient perhaps.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
