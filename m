Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C82B77ED
	for <lists+linux-snps-arc@lfdr.de>; Thu, 19 Sep 2019 12:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ8ATF3yCB+75cmklUeJIr8me1la9cjSa2wwEV7LRrA=; b=f1Qw4nEYDQ4NcV
	Dm1MlRFB/z2e5LB7kN47yy5vw96aYwQtcRsZwj00pw3CenDEZig9Ru/BqYutNd5VSqt1TUm2hz+Zz
	dHW1vtgTtZyt3DosH8xSjva5pnN3OwkwBKaB32GqZbRu0kFlOgQamb5AmOw/psLRlyu8rt+bzf/Di
	mYT5pa6UXOiErWXIj6yosITR7osEKMZeCefl0mrK6cX+6uabfB/vTiDozUxOE/EhD0Vy0b2EjcyTY
	bvEBWZNKvamO6NCmROxIyWIthmQh4tk6JxaU2OHBMY1sDmJAm2JJfJEnZFWn32kdJPajjYM4Ddflh
	M7aFLuXwrs395NC0B8pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAu58-0006o4-Ot; Thu, 19 Sep 2019 10:54:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAu56-0006nL-5q
 for linux-snps-arc@lists.infradead.org; Thu, 19 Sep 2019 10:54:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E30DB21929;
 Thu, 19 Sep 2019 10:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568890475;
 bh=rDgR/IXI3/KNnIOSsNKvBH94J0iAuZUG/sc3vnyuGDI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dL6NBBtdFOWNrEbiDMF7SAJ9/pmUh23uKcYzLxzNFIaTS1IBCOLPeSXqKuX8zudBn
 JWOf1PtaVG6zMj+/KCuzk458potLQmEdee6I+Yxm5jpR8bOKoaxygZrU6pBmO9Y9j+
 hZAky9zbjDHx0D8rC/Mq4PnsKuxlc7o5XHrdZl7Y=
Date: Thu, 19 Sep 2019 12:54:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vineet Gupta <vineetg76@gmail.com>
Subject: Re: stable backport for dc8635b78cd8669
Message-ID: <20190919105432.GA2809200@kroah.com>
References: <efb68643-3750-e94b-8387-6e4cacb3a82a@gmail.com>
 <20190918185633.GB1944551@kroah.com>
 <6bcb935a-4dae-48cc-ad1e-88a51b9d6a5c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bcb935a-4dae-48cc-ad1e-88a51b9d6a5c@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_035436_240742_B625E7A8 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 arcml <linux-snps-arc@lists.infradead.org>, kbuild test robot <lkp@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 01:10:04PM -0700, Vineet Gupta wrote:
> On 9/18/19 11:56 AM, Greg Kroah-Hartman wrote:
> > So is this only needed in 4.9.y and 4.4.y?
> 
> Yes indeed !

It doesn't apply there at all, can you provide a working backport for
those kernels so that I can queue it up?

thanks,

greg k-h

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
