Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE741DD453
	for <lists+linux-snps-arc@lfdr.de>; Thu, 21 May 2020 19:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUWxvaODSh3U+VMwjpjKZL3vnmCiSsJTB0aQrJ4xhJA=; b=XZ7EmzE4TPrxpL
	frVQZ62Ua+TKUQc0L1UlsiUnCQSk/QMifUBGjLGgIjQ+OJNBSZvxsoV/vbm9sZNjNksxOAW977rqg
	rfi64J0eyCm/3NGDwFKNErUB9E5zvA8APHCp8qC5/gl2LE6AEL9+TbMY1vlt12wlxNO1ZTas1FY2X
	ZnZmrMLac+xKu49dvft+XRNzaV0Yg4VkWgi5UMbcNxSSy0122D1rgHjuzeoUOhVdUiKhBGOTuVAj4
	t9u55wLvCKXCWMlSayBpaTrBYvIm76MY7gRiE+H30aDM/C9wQJw6H2ZSrkNw/hsErVQ6W3TWI9lLz
	tSl5hmrmNjkAduaKAf4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbozW-00070i-EA; Thu, 21 May 2020 17:28:22 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbozT-0006zC-9H; Thu, 21 May 2020 17:28:21 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jboyG-00D3FP-QE; Thu, 21 May 2020 17:27:04 +0000
Date: Thu, 21 May 2020 18:27:04 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200521172704.GF23230@ZenIV.linux.org.uk>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
 <20200519165422.GA5838@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519165422.GA5838@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_102819_322816_63FB968C 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 ira.weiny@intel.com, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
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

On Tue, May 19, 2020 at 09:54:22AM -0700, Guenter Roeck wrote:
> On Mon, May 18, 2020 at 11:48:43AM -0700, ira.weiny@intel.com wrote:
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > The kunmap_atomic clean up failed to remove one set of pagefault/preempt
> > enables when vaddr is not in the fixmap.
> > 
> > Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate code")
> > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> 
> microblazeel works with this patch, as do the nosmp sparc32 boot tests,
> but sparc32 boot tests with SMP enabled still fail with lots of messages
> such as:

BTW, what's your setup for sparc32 boot tests?  IOW, how do you manage to
shrink the damn thing enough to have the loader cope with it?  I hadn't
been able to do that for the current mainline ;-/

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
