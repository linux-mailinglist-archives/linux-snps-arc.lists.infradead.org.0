Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3C9817FF
	for <lists+linux-snps-arc@lfdr.de>; Mon,  5 Aug 2019 13:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkkmukZnwfwLXyNN9tOdAEUeXYVvNjJksPT+0PvHwjQ=; b=hmS4p/kpp20zGA
	aprpBoRojeQqRLXqVSKwbgQUurpYhjcoowFnCNgfOebNHCnnlsCqQtjr+3Itc7b54RRrKmMbl0hXm
	/8uyD9tpR0gAcokQCzcp14pjC+UdshZNdapnCGNOaDamaY8ZaeduiWEivgpIy8CV3B8X1BWYB7f5+
	wVbKlz80PTQLy1w7nGJ7w+O6cFOwynaxVsR6kaJQ3c9Wl67BemRkUvkB+oPu1T2qMm8QsJvly2tGf
	mVAxI8lbbvYuPYezQN1gBj1HGOBw/WW4WW36lg+9DCtrPi/4Q4guk5+kdrAhoIltKSNkJk0o5kUft
	V/o8dExO+7V7c43AL+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huazH-0007w2-VZ; Mon, 05 Aug 2019 11:17:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huazE-0007vM-El
 for linux-snps-arc@lists.infradead.org; Mon, 05 Aug 2019 11:17:09 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94A3620856;
 Mon,  5 Aug 2019 11:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565003825;
 bh=JCiN2ISR81s+2Lx+2tbYurR9+DzYblAfJLh6BdGkxrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UGNAi4134dElHNtXnff3/vxvYhB9pmlQfEHL460cRQmeChXMUX01Xa6fKwMNcymHM
 5w1ncMys94VH6IBbL9L91uAZoIyjS1UFmoJQzpHP8q9jbvZYMjUjQ1srFeB7PMCEiQ
 xNoh6h815xI/PVEljHzHiIbAzigwaQR2uVgCy0go=
Date: Mon, 5 Aug 2019 13:17:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Message-ID: <20190805111702.GA8189@kroah.com>
References: <20190214150745.18773-1-Eugeniy.Paltsev@synopsys.com>
 <20190214150745.18773-3-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB0120530B12273DDC5B06D823A1C80@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20190802074053.GE26174@kroah.com>
 <CY4PR1201MB01209C2D14AEE1A81164FE99A1D90@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB01209C2D14AEE1A81164FE99A1D90@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041708_537214_42A906BF 
X-CRM114-Status: GOOD (  19.56  )
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 04:25:39PM +0000, Alexey Brodkin wrote:
> Hi Greg,
> 
> > > May we have this one back-ported to linux-4.19.y?
> > >
> > > It was initially applied to Linus' tree during 5.0 development
> > > cycle [1] but was never back-ported.
> > >
> > > Now w/o that patch in KernelCI we see boot failure on ARC HSDK
> > > board [2] as opposed to normally working later kernel versions.
> > >
> > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=493a2f812446e92bcb1e69a77381b4d39808d730
> > > [2] https://storage.kernelci.org/stable/linux-4.19.y/v4.19.59/arc/hsdk_defconfig/gcc-8/lab-baylibre/boot-hsdk.txt
> > >
> > > Below is that same patch but rebased on linux-4.19 as in its pristine
> > > form it won't apply due to offset of one of hunks.
> > 
> > Why is this patch ok for stable kernel trees?  Are you not removing
> > existing support in 4.19 for a feature that people might be using there?
> > What bug is this fixing that requires this removal?
> 
> This patch removes a Kconfig option in a trade for properly working
> detection of arguments passed from U-Boot.
> 
> Back in the day [3] we had to add that option to get kernel reliably working
> in use-cases w/o U-Boot (those were typically loading kernel image via JTAG).
> But with a couple of fixes applied to linux-4.19.y already we no longer need
> that explicit toggle as we may rely on data passed via dedicated registers
> and thus automatically know if there was U-Boot which passed some info to
> the kernel or there was no U-Boot and we don't need to mess with garbage in
> those registers.
> 
> Main reason is to make vanilla 4.19.y kernels usable on HSDK board in KernelCI
> environment. Now they don't boot, see [2] as in HSDK's defconfig ARC_UBOOT_SUPPORT
> is not set. So we have 2 solutions:
> 
> 1. Add ARC_UBOOT_SUPPORT to arch/arc/configs/hsdk_defconfig
>    But we cannot do it for vanilla kernel because we simply cannot even submit that
>    change to the Linus' tree as that Kconfig option was removed.
>    Which means we cannot back-port it, right :)
> 
> 2. Back-port proposed patch which already exists in the Linus'tree and thus is
>    perfectly back-portable.
> 
> Makes sense?

Ok, it's your arch, you get to deal with the angry users if you have any
:)

now queued up.

greg k-h

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
