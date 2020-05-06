Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D911C6839
	for <lists+linux-snps-arc@lfdr.de>; Wed,  6 May 2020 08:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euOCkbE4nZhPDa1xpkTmpgRw3w9t+dlazitVRdkEFM0=; b=Zt1tcDgcPktb0n
	g6f2PXxCq9HQw78sSvJ9x72LsNUGiwjlN5qxlsyMpj03We2H6u1ajjX8ib24uc8nESYQ6d3VhteF2
	CeB/bym+gOj1wj3DQvAt4EYZ747xPfoO9whpy8/13F0p7FaiMU53d7muHrg1xhqlavK2J47vyb+EC
	2dyCDdHoZ+Cr/6CQyODta+4+eauafVM/ShZNluUmn7Qx5zCUNnF6/mBEH70I9Gw5GGo+Fqaarkaof
	r9N+Xbeq8+EKuySt3V6fvEANuX8jQn1o5v4BRpVXnV1MqaEr62a2QOPDOrXWacyFTlxzOQU/6Lghi
	MOKfvZ1Y/oNUidotBOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDKQ-0006YY-83; Wed, 06 May 2020 06:14:46 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jWDJq-00064d-Uc; Wed, 06 May 2020 06:14:10 +0000
Date: Tue, 5 May 2020 23:14:10 -0700
From: Christoph Hellwig <hch@infradead.org>
To: ira.weiny@intel.com
Subject: Re: [PATCH V2 10/11] arch/kmap: Define kmap_atomic_prot() for all
 arch's
Message-ID: <20200506061410.GE5192@infradead.org>
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-11-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504010912.982044-11-ira.weiny@intel.com>
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

On Sun, May 03, 2020 at 06:09:11PM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> To support kmap_atomic_prot(), all architectures need to support
> protections passed to their kmap_atomic_high() function.  Pass
> protections into kmap_atomic_high() and change the name to
> kmap_atomic_high_prot() to match.
> 
> Then define kmap_atomic_prot() as a core function which calls
> kmap_atomic_high_prot() when needed.
> 
> Finally, redefine kmap_atomic() as a wrapper of kmap_atomic_prot() with
> the default kmap_prot exported by the architectures.
> 
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
