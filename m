Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484B754ED6
	for <lists+linux-snps-arc@lfdr.de>; Tue, 25 Jun 2019 14:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kga0JiiP4q/jPgjYb6U359k6ZI8GwXMoW7Y3lJRCHwE=; b=kJjdKyHAZlVIy9
	yv/tEHJwyAQLK7OfD8/VAbWU2d4mLu6wl6UQdrF3mnx1+nn7Y/LXLOHSV3harHfG7HGqFW+OZYkkO
	vLjLzL+5IPte33ffO1TGZUw+2NpNFSyzjvZGOzgiqO26SfP3NKxEz4nLG82NSL6Rg5I2cpXJPp2mI
	S2ovM3i3fkI42yuC2apW1AfWRI9qWuhR2TmiauS9oJ+OjDvT8nGP8+1j5GkX/w8vV/TKw8J7zjn+Z
	ODo/6xhOY2QhP2a6GAlK/UIRISBbRD4upiN6lAxcZb6mf4ALyb7HFawZeJ8uUHMPbvkaeatAgTT4/
	oUavtYELA+9lx2yNISTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkZ9-0001LU-ST; Tue, 25 Jun 2019 12:28:51 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkYy-0001Az-FU; Tue, 25 Jun 2019 12:28:41 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 02DC568B05; Tue, 25 Jun 2019 14:28:09 +0200 (CEST)
Date: Tue, 25 Jun 2019 14:28:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH 5/7] dma-direct: handle DMA_ATTR_NON_CONSISTENT in
 common code
Message-ID: <20190625122808.GB4421@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-6-hch@lst.de>
 <3eb32e0b-5aa4-fe1e-e581-038750e11cef@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3eb32e0b-5aa4-fe1e-e581-038750e11cef@gmx.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_052840_667179_CEA963E7 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
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
Cc: Jonas Bonn <jonas@southpole.se>, Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-parisc@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 02:23:45PM +0200, Helge Deller wrote:
> On 14.06.19 16:44, Christoph Hellwig wrote:
> > Only call into arch_dma_alloc if we require an uncached mapping,
> > and remove the parisc code manually doing normal cached
> > DMA_ATTR_NON_CONSISTENT allocations.
> >
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Acked-by: Helge Deller <deller@gmx.de> # parisc
> 
> Boot-tested 32-bit kernel on PCX-L and PCX-W2 machines (although
> the patches don't cleanly apply any longer against git head).

The series was against the dma-mapping tree, which might have diverged
a bit already.

Thanks for testing!

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
