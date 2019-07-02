Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D83D5CDD2
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jul 2019 12:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hQ5G0zIVFdKeAQFo/etwkPIP9Mr3vwTYNF32Gwcals=; b=PyYqxEh7Zv/fVm
	eE4uGJ35X25ceuYvKX72CzP2MT8BNiuCmgk6WaSd/HJii4CNkef7Baj2YHkpnHfzDnrw8mPPLEZhM
	Aurr7rsLxYlreRsM04gYWlsLhQSvlZ7S+gpAou3phztbHelUy76Te8nLTvbRBCChoCJvcvzYHv6zn
	O/MBTT3UxDmoOSpCzrvHErWOmN4Hig6ZS2irtyLCIRXfTgTw3fXmmolW1OZA6sl9E8Q5lCLtyLE05
	JGtuP1KGFChb/1EFLrO4SkWqixUpU2jCxMwaO8jpWoHXp2MPdBRt5u+qVK0LlswgvPsoHc23A5/KK
	0r5VwbgebFwhZeIhK6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGIj-0001vJ-DU; Tue, 02 Jul 2019 10:46:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGIe-0001pz-Vq
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jul 2019 10:46:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A49912089C;
 Tue,  2 Jul 2019 10:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562064369;
 bh=dOb4MTdKAgRzGQ+yE9sL+9KKQb2/t5teCLbYFvKOmYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lmOIvgqYnhG6gcE4s/cT6vnAWChkKch0CdTkyDJV0+BS7qniUrgc23Phe5RJbw6LA
 WhbJFIEyA/+cY8ckrjvDHQ2okIpABjtyaPYorAnbvD8RfKiWkEWOHxbebbCC1LUVS4
 SgcDDwf0jt386rr72W5xAUO/Cy5BS4FWTKNGlAYY=
Date: Tue, 2 Jul 2019 11:46:04 +0100
From: Will Deacon <will@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Message-ID: <20190702104603.g3qssgfhfhvryhnu@willie-the-truck>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <73510bc7-8386-746c-ed1e-422fb5adaec5@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73510bc7-8386-746c-ed1e-422fb5adaec5@synopsys.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_034613_094719_9BCEDCA4 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.29
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
 "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 08:05:51PM +0000, Vineet Gupta wrote:
> On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> > On Thu, May 30, 2019 at 11:22:42AM -0700, Vineet Gupta wrote:
> >> Had an interesting lunch time discussion with our hardware architects pertinent to
> >> "minimal guarantees expected of a CPU" section of memory-barriers.txt
> >>
> >>
> >> |  (*) These guarantees apply only to properly aligned and sized scalar
> >> |     variables.  "Properly sized" currently means variables that are
> >> |     the same size as "char", "short", "int" and "long".  "Properly
> >> |     aligned" means the natural alignment, thus no constraints for
> >> |     "char", two-byte alignment for "short", four-byte alignment for
> >> |     "int", and either four-byte or eight-byte alignment for "long",
> >> |     on 32-bit and 64-bit systems, respectively.
> >>
> >>
> >> I'm not sure how to interpret "natural alignment" for the case of double
> >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > 
> > Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> > 
> > For any u64 type, that would give 8 byte alignment. the problem
> > otherwise being that your data spans two lines/pages etc..
> > 
> >> I presume (and the question) that lkmm doesn't expect such 8 byte load/stores to
> >> be atomic unless 8-byte aligned
> >>
> >> ARMv7 arch ref manual seems to confirm this. Quoting
> >>
> >> | LDM, LDC, LDC2, LDRD, STM, STC, STC2, STRD, PUSH, POP, RFE, SRS, VLDM, VLDR,
> >> | VSTM, and VSTR instructions are executed as a sequence of word-aligned word
> >> | accesses. Each 32-bit word access is guaranteed to be single-copy atomic. A
> >> | subsequence of two or more word accesses from the sequence might not exhibit
> >> | single-copy atomicity
> >>
> >> While it seems reasonable form hardware pov to not implement such atomicity by
> >> default it seems there's an additional burden on application writers. They could
> >> be happily using a lockless algorithm with just a shared flag between 2 threads
> >> w/o need for any explicit synchronization.
> > 
> > If you're that careless with lockless code, you deserve all the pain you
> > get.
> > 
> >> But upgrade to a new compiler which
> >> aggressively "packs" struct rendering long long 32-bit aligned (vs. 64-bit before)
> >> causing the code to suddenly stop working. Is the onus on them to declare such
> >> memory as c11 atomic or some such.
> > 
> > When a programmer wants guarantees they already need to know wth they're
> > doing.
> > 
> > And I'll stand by my earlier conviction that any architecture that has a
> > native u64 (be it a 64bit arch or a 32bit with double-width
> > instructions) but has an ABI that allows u32 alignment on them is daft.
> 
> So I agree with Paul's assertion that it is strange for 8-byte type being 4-byte
> aligned on a 64-bit system, but is it totally broken even if the ISA of the said
> 64-bit arch allows LD/ST to be augmented with acq/rel respectively.
> 
> Say the ISA guarantees single-copy atomicity for aligned cases (i.e. for 8-byte
> data only if it is naturally aligned) and in lack thereof programmer needs to use
> the proper acq/release

Apologies if I'm missing some context here, but it's not clear to me why the
use of acquire/release instructions has anything to do with single-copy
atomicity of unaligned accesses. The ordering they provide doesn't
necessarily prevent tearing, although a CPU architecture could obviously
provide that guarantee if it wanted to. Generally though, I wouldn't expect
the two to go hand-in-hand like you're suggesting.

Will

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
