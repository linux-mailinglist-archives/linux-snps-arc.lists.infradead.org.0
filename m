Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C75946F0B
	for <lists+linux-snps-arc@lfdr.de>; Sat, 15 Jun 2019 10:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUChSD2w+KpE4K6+IJvmSVALslWzpqiChQ3Rywh7mXk=; b=LikyIvOEGa1W2s
	k5QKanndwTVl1YNz+ah4lHbGCZSDhUJ37AE/hfFmJvEkcX2/Uo/X72Ic+5UXilxnQ5U9yB1k8SDRC
	pWwXn7mf4Pyy03l/T/8ikQHu9TsC+uMqGs8V3k2+bRFCQoci5cq/6C86iKWJPkmrXsC0f7bVfqvjq
	pDbB4lwfZs7/C8Rg13L1C9l6T6YHGVpEBAaKPD0PxmyBmKqIYp1FIZt3vmxLpBFK7F7NrsaUGlxaj
	1Gd/GcfpoRuht1Tb+Qdmlo79ff3mSqi8Jz1RrGd7h81BLO5VVVBLrDMmMtzsvfYzrlClbHZXfdDjZ
	JKtvfdfwGifvZ4FoboGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4B5-0002pB-Gv; Sat, 15 Jun 2019 08:36:47 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4Am-0002dd-K3; Sat, 15 Jun 2019 08:36:31 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A382E68AFE; Sat, 15 Jun 2019 10:35:54 +0200 (CEST)
Date: Sat, 15 Jun 2019 10:35:54 +0200
From: "hch@lst.de" <hch@lst.de>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH 7/7] arc: use the generic remapping allocator for
 coherent DMA allocations
Message-ID: <20190615083554.GC23406@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-8-hch@lst.de>
 <78ac563f2815a9a14bfab6076d0ef948497f5b9f.camel@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78ac563f2815a9a14bfab6076d0ef948497f5b9f.camel@synopsys.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_013628_982789_774DF5FE 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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
Cc: "jonas@southpole.se" <jonas@southpole.se>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "vladimir.murzin@arm.com" <vladimir.murzin@arm.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan.kristiansson@saunalahti.fi" <stefan.kristiansson@saunalahti.fi>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 "deller@gmx.de" <deller@gmx.de>, "shorne@gmail.com" <shorne@gmail.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 06:05:01PM +0000, Eugeniy Paltsev wrote:
> Hi Christoph,
> 
> Regular question - do you have any public git repository with all this dma changes?
> I want to test it for ARC.
> 
> Pretty sure the
>  [PATCH 2/7] arc: remove the partial DMA_ATTR_NON_CONSISTENT support
> is fine.
> 
> Not so sure about
>  [PATCH 7/7] arc: use the generic remapping allocator for coherent DMA allocations
> :)

   git://git.infradead.org/users/hch/misc.git dma-not-consistent-cleanup

Gitweb:

   http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-not-consistent-cleanup

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
