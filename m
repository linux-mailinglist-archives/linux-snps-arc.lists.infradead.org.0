Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53331D21A3
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 09:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIFA0fK5KyefPv/iIB/N2wsv0hGicgSHK6+gEP7u7xw=; b=PklIj6p4DbnUIV
	+s7jlfh0w1HI/3K533NdO7BInwyfrMvE0c9n+eob0c0twDPNoY795d2VsKaBKVc085vg6sMz4m3sY
	DKWYsNYMbxcVnoNOnKGC7xcsX4PJLo/t76mCNSbP7Bgz0o0yHlc5pZDyYtaxKVq2eTVCwkUD3cqP4
	nG15Oro3oeWjMJVwYLJbGw4Hrh0kpBbUIaIAHAuWab1Rg13AOFAFTe+UvvsvLYBLmkx5b/LwpEO/e
	oX1vngVeSUt2RVrZo9DAFvXC9QQ445X0YslVaPAr3clIT9q9Gsvkt8M5Dz6pmtuf82VoTHTvB8a3M
	4oN/AlPF/qgJNaVZYpLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIStZ-00016C-3c; Thu, 10 Oct 2019 07:29:57 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIStX-000162-12; Thu, 10 Oct 2019 07:29:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5A95D3013A4;
 Thu, 10 Oct 2019 09:29:00 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7BBE5202F4F4F; Thu, 10 Oct 2019 09:29:52 +0200 (CEST)
Date: Thu, 10 Oct 2019 09:29:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH 0/3] eldie generated code for folded p4d/pud
Message-ID: <20191010072952.GM2311@hirez.programming.kicks-ass.net>
References: <20191009222658.961-1-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009222658.961-1-vgupta@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Nick Piggin <npiggin@gmail.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-snps-arc@lists.infradead.org, Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 03:26:55PM -0700, Vineet Gupta wrote:
> Hi,
> 
> This series elides extraneous generate code for folded p4d/pud.
> This came up when trying to remove __ARCH_USE_5LEVEL_HACK from ARC port.
> The code saving are not a while lot, but still worthwhile IMHO.
> 
> bloat-o-meter2 vmlinux-A-baseline vmlinux-E-elide-p?d_clear_bad
> add/remove: 0/2 grow/shrink: 0/1 up/down: 0/-146 (-146)
> function                                     old     new   delta
> p4d_clear_bad                                  2       -      -2
> pud_clear_bad                                 20       -     -20
> free_pgd_range                               546     422    -124
> Total: Before=4137148, After=4137002, chg -1.000000%
> 

Works for me, thanks!

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
