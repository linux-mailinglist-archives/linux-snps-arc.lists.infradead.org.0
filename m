Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D195235D
	for <lists+linux-snps-arc@lfdr.de>; Tue, 25 Jun 2019 08:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmQe4B/l1IUCVE5/qCbM9dOccoTdpy7UgjFlolWWCQM=; b=M2vO4rOqVHf/o+
	Rso0vKMTrFirKjq+BRoV6eXAaYuqboQWAB7HRVjgK+aoySSfTzPX7t3UVmzg/c0KcZPlSz8vKvEeu
	eaiE//O4VQuQ/DoVMTjuIfyqVsCve10n0hYhp/FrIoiBCWX/kbfV4pzrECn85PGY/wQ9qWpt3IoLq
	Pox5ISRnug9V/rlZzsDcte4cUgw0s9L+B7kCYAOBw3VwdlYTWo4qbn6xBaIUH8LbLreXk2uekqjs4
	Jsc9cQKPM7AT+iu4I21LbU20guaiRmCxg+ydn3h72STeEbn7xfKTg6j1M4+kkwwCfF+5IsGgUVytv
	ptLbA0t2mgFWwStnuO4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfeik-0000tH-5S; Tue, 25 Jun 2019 06:14:22 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfeiS-0000hJ-Ch; Tue, 25 Jun 2019 06:14:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4350A68B02; Tue, 25 Jun 2019 08:13:32 +0200 (CEST)
Date: Tue, 25 Jun 2019 08:13:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 1/7] arm-nommu: remove the partial
 DMA_ATTR_NON_CONSISTENT support
Message-ID: <20190625061332.GC28986@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-2-hch@lst.de>
 <a017e704-c6c4-7718-7f8b-eb8a0eced14d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a017e704-c6c4-7718-7f8b-eb8a0eced14d@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_231404_577600_F6B8E3A7 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 linux-parisc@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 03:23:08PM +0100, Vladimir Murzin wrote:
> On 6/14/19 3:44 PM, Christoph Hellwig wrote:
> > The arm-nommu DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
> > does not provide a cache_sync operation.  This means any user of it
> > will never be able to actually transfer cache ownership and thus cause
> > coherency bugs.
> 
> By the way, Documentation/DMA-attributes.txt doesn't specify cache_sync() as
> requirement for DMA_ATTR_NON_CONSISTENT it only states that it is responsibility
> of the driver to have all the correct and necessary sync points.

True.  dma_cache_sync has always been a rather odd interface, as it
doesn't specify in what direction we need to sync and doesn't
participate in our ownership protocol.  So my mid-term plan is to kill
it off and replace it with the existing dma_sync_* helpers.  This
series is the first step towards that.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
