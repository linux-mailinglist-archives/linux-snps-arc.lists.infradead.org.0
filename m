Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C383AE2D
	for <lists+linux-snps-arc@lfdr.de>; Mon, 10 Jun 2019 06:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVYG/X0JKsuuyzI4snhzJjpWzqeiUEeV5UBFbmqGO8s=; b=jyKrao7cxD4R2T
	LFbk/6J83xKZiwDgW5sDwPPpG3y21xrZQ6AjFZAAXW1XWUMIL45i4B9CXmtsKBBs8JTxPKAIB32KO
	+OrsLQnRkguuRrzocY1P7Uz5OovMRymqg0z2jX8ey86LyNBe/xv/hoVL4GSPelE5HXeafB32lK2bn
	GkzoDonwMQbkV4pSyGHvojwqnFX6wEJm9Rjfl0/9OPJab0q9+IGwtKIOZTR+rrkDGiueFmm/D1fP3
	HK4OAc4sxqb+eYW4sRC+co7Ys3jLNSGfLf8jVquU9ch88C+NdeRKO7d9j3jz7s1gPjEzmStyXL3o9
	1VSQMJ964ENRfocMtfFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haC1R-00065g-H5; Mon, 10 Jun 2019 04:35:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haC19-0005qX-93; Mon, 10 Jun 2019 04:34:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69043337;
 Sun,  9 Jun 2019 21:34:43 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B2CA33F557; Sun,  9 Jun 2019 21:34:31 -0700 (PDT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Matthew Wilcox <willy@infradead.org>
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <20190607201202.GA32656@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f1b109a3-ef4c-359c-a124-e219e84a6266@arm.com>
Date: Mon, 10 Jun 2019 10:04:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190607201202.GA32656@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_213447_411327_0C67300B 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 James Hogan <jhogan@kernel.org>, linux-snps-arc@lists.infradead.org,
 Fenghua Yu <fenghua.yu@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 06/08/2019 01:42 AM, Matthew Wilcox wrote:
> Before:
> 
>> @@ -46,23 +46,6 @@ kmmio_fault(struct pt_regs *regs, unsigned long addr)
>>  	return 0;
>>  }
>>  
>> -static nokprobe_inline int kprobes_fault(struct pt_regs *regs)
>> -{
>> -	if (!kprobes_built_in())
>> -		return 0;
>> -	if (user_mode(regs))
>> -		return 0;
>> -	/*
>> -	 * To be potentially processing a kprobe fault and to be allowed to call
>> -	 * kprobe_running(), we have to be non-preemptible.
>> -	 */
>> -	if (preemptible())
>> -		return 0;
>> -	if (!kprobe_running())
>> -		return 0;
>> -	return kprobe_fault_handler(regs, X86_TRAP_PF);
>> -}
> 
> After:
> 
>> +++ b/include/linux/kprobes.h
>> @@ -458,4 +458,20 @@ static inline bool is_kprobe_optinsn_slot(unsigned long addr)
>>  }
>>  #endif
>>  
>> +static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
>> +					      unsigned int trap)
>> +{
>> +	int ret = 0;
>> +
>> +	/*
>> +	 * To be potentially processing a kprobe fault and to be allowed
>> +	 * to call kprobe_running(), we have to be non-preemptible.
>> +	 */
>> +	if (kprobes_built_in() && !preemptible() && !user_mode(regs)) {
>> +		if (kprobe_running() && kprobe_fault_handler(regs, trap))
>> +			ret = 1;
>> +	}
>> +	return ret;
>> +}
> 
> Do you really think this is easier to read?
> 
> Why not just move the x86 version to include/linux/kprobes.h, and replace
> the int with bool?

Will just return bool directly without an additional variable here as suggested
before. But for the conditional statement, I guess the proposed one here is more
compact than the x86 one.

> 
> On Fri, Jun 07, 2019 at 04:04:15PM +0530, Anshuman Khandual wrote:
>> Very similar definitions for notify_page_fault() are being used by multiple
>> architectures duplicating much of the same code. This attempts to unify all
>> of them into a generic implementation, rename it as kprobe_page_fault() and
>> then move it to a common header.
> 
> I think this description suffers from having been written for v1 of
> this patch.  It describes what you _did_, but it's not what this patch
> currently _is_.
> 
> Why not something like:
> 
> Architectures which support kprobes have very similar boilerplate around
> calling kprobe_fault_handler().  Use a helper function in kprobes.h to
> unify them, based on the x86 code.
> 
> This changes the behaviour for other architectures when preemption
> is enabled.  Previously, they would have disabled preemption while
> calling the kprobe handler.  However, preemption would be disabled
> if this fault was due to a kprobe, so we know the fault was not due
> to a kprobe handler and can simply return failure.  This behaviour was
> introduced in commit a980c0ef9f6d ("x86/kprobes: Refactor kprobes_fault()
> like kprobe_exceptions_notify()")

Will replace commit message with above.

> 
>>  arch/arm/mm/fault.c      | 24 +-----------------------
>>  arch/arm64/mm/fault.c    | 24 +-----------------------
>>  arch/ia64/mm/fault.c     | 24 +-----------------------
>>  arch/powerpc/mm/fault.c  | 23 ++---------------------
>>  arch/s390/mm/fault.c     | 16 +---------------
>>  arch/sh/mm/fault.c       | 18 ++----------------
>>  arch/sparc/mm/fault_64.c | 16 +---------------
>>  arch/x86/mm/fault.c      | 21 ++-------------------
>>  include/linux/kprobes.h  | 16 ++++++++++++++++
> 
> What about arc and mips?

+ Vineet Gupta <vgupta@synopsys.com> 
+ linux-snps-arc@lists.infradead.org

+ James Hogan <jhogan@kernel.org>
+ Paul Burton <paul.burton@mips.com>
+ Ralf Baechle <ralf@linux-mips.org>
+ linux-mips@vger.kernel.org

Both the above architectures dont call kprobe_fault_handler() from the
page fault context (do_page_fault() to be specific). Though it gets called
from mips kprobe_exceptions_notify (DIE_PAGE_FAULT). Am I missing something
here ?

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
