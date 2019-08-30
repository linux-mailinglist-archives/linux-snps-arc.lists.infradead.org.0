Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3F3A3B5E
	for <lists+linux-snps-arc@lfdr.de>; Fri, 30 Aug 2019 18:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ff+GbOEG2w4xGg+G5ZHHcQ+MXeFk35BOZToao23dSY0=; b=sen1RxPzILA/kJ
	nEeu3rVh1e0W+W9JWgBihVWF4a58t73tJDgaujqHF6kshvdNhFzAqsDsBe2yhWdpXjdXQa1pzlESx
	TMst4vZV2D8oj+NkQ1R9iu8/0YPF+hU9ojVkBP1WZ0WSMVcnPHNeAGSPp/0NAjkIwmlrQoew5BhBd
	KumKCh65T7rVbSZwsYwxScm1xB7XISx4ipJMXFKYrgZx18Ip7JToQ5ROY4eiTKsPi2UtxURoIOViP
	XlIDjtB+PErAgUfvc6JzWRcTX1n7JFcGOddwqUXw/vsmC0nWR4R8QeBC34K/fmK5Sy0u00aEEXkFp
	LQZZuI2zxvrt6wDNjSVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jPo-00058W-Si; Fri, 30 Aug 2019 16:06:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jOp-0004FU-Fw; Fri, 30 Aug 2019 16:05:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7296E227A8A; Fri, 30 Aug 2019 18:05:16 +0200 (CEST)
Date: Fri, 30 Aug 2019 18:05:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 19/26] arm64: remove __iounmap
Message-ID: <20190830160515.GC26887@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-20-hch@lst.de>
 <20190819073601.4yxjvmyjtpi7tk56@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819073601.4yxjvmyjtpi7tk56@willie-the-truck>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090520_035369_72710AD2 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:36:02AM +0100, Will Deacon wrote:
> On Sat, Aug 17, 2019 at 09:32:46AM +0200, Christoph Hellwig wrote:
> > No need to indirect iounmap for arm64.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/arm64/include/asm/io.h | 3 +--
> >  arch/arm64/mm/ioremap.c     | 4 ++--
> >  2 files changed, 3 insertions(+), 4 deletions(-)
> 
> Not sure why we did it like this...
> 
> Acked-by: Will Deacon <will@kernel.org>

Can you just pick this one up through the arm64 tree for 5.4?

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
