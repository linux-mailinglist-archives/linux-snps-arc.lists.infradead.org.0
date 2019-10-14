Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D874D6B5C
	for <lists+linux-snps-arc@lfdr.de>; Mon, 14 Oct 2019 23:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/S3pHVyw42HU2vud3xuIGwGeZCz6XOcv67LhmQodu3c=; b=UyP7B5lfeUm8fw
	IHlHGVOC+lcU/56j5C5stYfrWqkwur1D8aX0YSJdsORoDsoT4D1B9G8e9/IuFQyZfPx3KK4n41PiM
	1UzbV/pzN/L71nkUVp2z6ba9mviNlv//1zLs+x1iGr//7HKxKmr15BqcuduwuxL+XXWRt6B/AVodc
	bNi8viJIt/JUn871D6GC/kEj29dQP3guk6PnFYNumJtUhmR9e9c7hasOiYY385eliaRMXYuMUnkKj
	yYOqVQK0RS2Vxx6qQ10FCRVF6jeaP8GjCMWTIj5JkWymAxRjK2EnMBYm2RrPolThR5bnNT4HiZ7Po
	M4bPfDZjO/53SAZlcr7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK8CC-0001sA-90; Mon, 14 Oct 2019 21:48:04 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK8CA-0001s1-5B; Mon, 14 Oct 2019 21:48:02 +0000
Date: Mon, 14 Oct 2019 14:48:02 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
Message-ID: <20191014214802.GA32665@bombadil.infradead.org>
References: <20191011121951.nxna6hruuskvdxod@box>
 <20191011223818.7238-1-vgupta@synopsys.com>
 <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
 <c0979d98-7236-b7c8-bd40-173ee2e87385@gmail.com>
 <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
 <8bfd023b-5c00-8355-fd0f-3b4377951e6c@gmail.com>
 <CAHk-=wgUxgA-s4ZvxpcKDFfyoEmvcDr9Ydgo5W4s2hvrLHhP+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgUxgA-s4ZvxpcKDFfyoEmvcDr9Ydgo5W4s2hvrLHhP+g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>, Vineet Gupta <vineetg76@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nick Piggin <npiggin@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 01:38:34PM -0700, Linus Torvalds wrote:
> And now I've said pgd/pud/p4d/pmd so many times that I've confused
> myself and think I'm wrong again, and I think that historically -
> originally - we always had a pgd, and then the pmd didn't exist
> because it was folded into it. That makes sense from a x86 naming
> standpoint. Then x86 _did_ get a pmd, and then we added more levels in
> between, and other architectures did things differently.

Oh my goodness.  Thank you for writing all this out and finally getting
to this point.  I was reading the whole thing thinking "This is different
from what I remember" and then you got here.  This explains so much about
how our MM does/doesn't work, and it's not just me that's confused ;-)

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
