Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5D81C0C83
	for <lists+linux-snps-arc@lfdr.de>; Fri,  1 May 2020 05:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4YMUWfvwM7zJp2Q+l9c78GUdeEL7WwESllP3y1Nl8M=; b=l+BFvDGinnY23T
	ex7b7JNZFBvTw9WSv1cD1dzmSoEWzfUpu1qO+fL7/e7XNqsgEwTV2riKX2of+6ZEcS3VjRA7/ajdm
	HfI388EMPaa/CZECQwO9ffGdIUcIwRN5P9gisV60/oSzDVWQD3fp/qZURliqh3sC8yNzpYWuWpxIQ
	kaOmTmSb4exIK4P50/qfWMzyOYh7tm4nBcDzpNM1HFQ962rBZq3PE6eGKUC+gIHkUgLz20AWngmV4
	8jAuemQOmznzIBkGgK4vZmPO4EdWgK/FQVwkys99fcNxG/VoT1goztL12DIgWgRK8TkNn52pq150w
	fybjpYcVsfSNAlhSdy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUMEQ-0007hs-2r; Fri, 01 May 2020 03:20:54 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUMEN-0007gV-9R; Fri, 01 May 2020 03:20:52 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jUMDs-00FZCv-Qj; Fri, 01 May 2020 03:20:20 +0000
Date: Fri, 1 May 2020 04:20:20 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: ira.weiny@intel.com
Subject: Re: [PATCH V1 09/10] arch/kmap: Define kmap_atomic_prot() for all
 arch's
Message-ID: <20200501032020.GG23230@ZenIV.linux.org.uk>
References: <20200430203845.582900-1-ira.weiny@intel.com>
 <20200430203845.582900-10-ira.weiny@intel.com>
 <20200501023734.GF23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501023734.GF23230@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_202051_327382_8F1FA413 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 03:37:34AM +0100, Al Viro wrote:
> On Thu, Apr 30, 2020 at 01:38:44PM -0700, ira.weiny@intel.com wrote:
> 
> > -static inline void *kmap_atomic(struct page *page)
> > +static inline void *kmap_atomic_prot(struct page *page, pgprot_t prot)
> >  {
> >  	preempt_disable();
> >  	pagefault_disable();
> >  	if (!PageHighMem(page))
> >  		return page_address(page);
> > -	return kmap_atomic_high(page);
> > +	return kmap_atomic_high_prot(page, prot);
> >  }
> > +#define kmap_atomic(page)	kmap_atomic_prot(page, kmap_prot)
> 
> OK, so it *was* just a bisect hazard - you return to original semantics
> wrt preempt_disable()...

FWIW, how about doing the following: just before #5/10 have a patch
that would touch only microblaze, ppc and x86 splitting their
kmap_atomic_prot() into an inline helper + kmap_atomic_high_prot().
Then your #5 would leave their kmap_atomic_prot() as-is (it would
use kmap_atomic_prot_high() instead).  The rest of the series plays
out pretty much the same way it does now, and wrappers on those
3 architectures would go away when an identical generic one is
introduced in this commit (#9/10).

AFAICS, that would avoid the bisect hazard and might even end
up with less noise in the patches...

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
