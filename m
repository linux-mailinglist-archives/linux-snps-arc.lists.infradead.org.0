Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1B71DA9B5
	for <lists+linux-snps-arc@lfdr.de>; Wed, 20 May 2020 07:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC8cscrViV4+2DW7fHlw5dHVcxiGmVUJHcLj2ZYbo68=; b=c0ZZZc6bDAOM73
	trbGbClrXCXCbKzewgnEDTffgAqa/O+TT0SooWeJI187iATHFb82NdOwYSTJPjwFe/HpfikKpyR7Q
	daubncq17K+6q61/NdLHRMj3jP1ZKnmwHjgAk1TIVDZ8FX/zUqWgHL91mT1lVglctRZgUMlE0RO7v
	T6bsSmO293KqArtaV8bYygnbtZv+peFuY9YUL4xLHTC4CUmxcOdXKWPZC55jFm90kbvYzsm213I5w
	akI92A4s0jtflyIm8JzNCSg/7Vl/yPfgii+VJLgSEigCdsUb9BWn/SphL5InD9Sv1wAsaeMrplF7G
	poeE8A6KyPrmP4FZOxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbH2o-0001e2-LB; Wed, 20 May 2020 05:13:30 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbH2b-0001Tt-FY; Wed, 20 May 2020 05:13:18 +0000
IronPort-SDR: AzJldpE1TtbWLKqtUOW470pWDpycNqOCMiMcSH5kIdMj8xk6Pu0kW4mWLCP84RFCS/bfqGwNFj
 JQkGu9mrrHPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 22:13:16 -0700
IronPort-SDR: WmoC4hUYiR7JNn8619hAjjYz7TWT9psqQxnwh045tX7/jT/bvy1RfqxhT5OjjfSF9i1OiaMvS+
 nDNlwL0DIiCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,412,1583222400"; d="scan'208";a="264557290"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2020 22:13:16 -0700
Date: Tue, 19 May 2020 22:13:16 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200520051315.GA3660833@iweiny-DESK2.sc.intel.com>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
 <20200519165422.GA5838@roeck-us.net>
 <20200519184031.GB3356843@iweiny-DESK2.sc.intel.com>
 <20200519194215.GA71941@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519194215.GA71941@roeck-us.net>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_221317_531318_E26E889E 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 12:42:15PM -0700, Guenter Roeck wrote:
> On Tue, May 19, 2020 at 11:40:32AM -0700, Ira Weiny wrote:
> > On Tue, May 19, 2020 at 09:54:22AM -0700, Guenter Roeck wrote:
> > > On Mon, May 18, 2020 at 11:48:43AM -0700, ira.weiny@intel.com wrote:
> > > > From: Ira Weiny <ira.weiny@intel.com>
> > > > 
> > > > The kunmap_atomic clean up failed to remove one set of pagefault/preempt
> > > > enables when vaddr is not in the fixmap.
> > > > 
> > > > Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate code")
> > > > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> > > 
> > > microblazeel works with this patch,
> > 
> > Awesome...  Andrew in my rush yesterday I should have put a reported by on the
> > patch for Guenter as well.
> > 
> > Sorry about that Guenter,
> 
> No worries.
> 
> > Ira
> > 
> > > as do the nosmp sparc32 boot tests,
> > > but sparc32 boot tests with SMP enabled still fail with lots of messages
> > > such as:
> > > 
> > > BUG: Bad page state in process swapper/0  pfn:006a1
> > > page:f0933420 refcount:0 mapcount:1 mapping:(ptrval) index:0x1
> > > flags: 0x0()
> > > raw: 00000000 00000100 00000122 00000000 00000001 00000000 00000000 00000000
> > > page dumped because: nonzero mapcount
> > > Modules linked in:
> > > CPU: 0 PID: 1 Comm: swapper/0 Tainted: G    B             5.7.0-rc6-next-20200518-00002-gb178d2d56f29 #1
> > > [f00e7ab8 :
> > > bad_page+0xa8/0x108 ]
> > > [f00e8b54 :
> > > free_pcppages_bulk+0x154/0x52c ]
> > > [f00ea024 :
> > > free_unref_page+0x54/0x6c ]
> > > [f00ed864 :
> > > free_reserved_area+0x58/0xec ]
> > > [f0527104 :
> > > kernel_init+0x14/0x110 ]
> > > [f000b77c :
> > > ret_from_kernel_thread+0xc/0x38 ]
> > > [00000000 :
> > > 0x0 ]
> > > 
> > > Code path leading to that message is different but always the same
> > > from free_unref_page().

Actually it occurs to me that the patch consolidating kmap_prot is odd for
sparc 32 bit...

Its a long shot but could you try reverting this patch?

4ea7d2419e3f kmap: consolidate kmap_prot definitions

Alternately I will need to figure out how to run the sparc on qemu here...

Thanks very much for all the testing though!  :-D

Ira

> > > 
> > > Still testing ppc images.
> > > 
> 
> ppc image tests are passing with this patch.
> 
> Guenter

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
