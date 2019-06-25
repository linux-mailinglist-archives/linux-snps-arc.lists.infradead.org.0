Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39A352397
	for <lists+linux-snps-arc@lfdr.de>; Tue, 25 Jun 2019 08:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zttmxjxOuq1c5jcNjKqbQR8/FEZydxhw81dfqBiu6o=; b=qVpcdII6W20v8v
	euDxQUxdPcj/StuntifVzsEb7y6AuVy6CYmW27ulSynVU3BhVnmYwkGm6oMiEa4KGabDVc9Jkt/rJ
	pfrDqZXszyv3/WLgRPzVibj/3QXyqnZOeXtIv04lYM084Kg4ZF/u0oHll8FVGi3q0M/DRH650mN7Z
	cgYcSCpPSY7V8+LKdeSOgaVkLWhAEiedXCwHRqm/bre7szfC4h2BOHLx5TqkvVTa+Gsb7hM3jc9mo
	FR+5qy9WV4+IV2D0x9h42BTHqQDlGKcZuUSaZlDQRhIueVX+1j2F9qE5wOO2PUI3NHpHAvrWxvumo
	m1oV0/TyFceMF0YqzKHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hff2M-0007F0-Jb; Tue, 25 Jun 2019 06:34:38 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hff2K-0007E3-CF
 for linux-snps-arc@lists.infradead.org; Tue, 25 Jun 2019 06:34:37 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 2A77268B02; Tue, 25 Jun 2019 08:34:03 +0200 (CEST)
Date: Tue, 25 Jun 2019 08:34:02 +0200
From: "hch@lst.de" <hch@lst.de>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH 7/7] arc: use the generic remapping allocator for
 coherent DMA allocations
Message-ID: <20190625063402.GC29561@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-8-hch@lst.de>
 <78ac563f2815a9a14bfab6076d0ef948497f5b9f.camel@synopsys.com>
 <20190615083554.GC23406@lst.de> <20190624131417.GA10593@lst.de>
 <d9ed8f6a82801b94d1d7792eb74effdbce09ce51.camel@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9ed8f6a82801b94d1d7792eb74effdbce09ce51.camel@synopsys.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_233436_565571_9F5FE0F6 
X-CRM114-Status: UNSURE (   7.21  )
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
Cc: "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 07:13:17PM +0000, Eugeniy Paltsev wrote:
> Hi Christoph,
> 
> Yep I've reviewed and tested it for both cases:
> - coherent/noncoherent dma
> - allocation from atomic_pool/regular allocation
> 
> everything works fine for ARC.

Thanks.  I've applied the whole series to the dma-mapping for-next
branch.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
