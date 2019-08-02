Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0087EDB6
	for <lists+linux-snps-arc@lfdr.de>; Fri,  2 Aug 2019 09:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYc6oC8TQD/qyg/+FWhmkeDS6fc9FfxfHeX5kV0pKFw=; b=FeLTWcVjUD/HG4
	ZKkd9GAUMi+OTRYJybYY0cgn89Fxx60N45rMHrPblWU+kOYVrc9L0yLTZunf4NkSaftkj//TVQgWr
	fB2ex0/VsuXdHORb2iQEJC/RnviFDYSd7KULiIOSrRo9QK+Y/GRYTIIwGtcNV2npeYArJbENLGwXx
	NH7S36je2nQD/z9jBurJyvgmPINQef2SjR61DrIWP2Ht6CODTFVMUcb9Dr5NoNxPtztYWbW++dvgr
	LosfxFFyAZ6WLnKiXHNffRcLHGsjnVGWgMrjc3bp0UyS9MpgflN0lPLQCkdu+ed0DlflSzGjdM2S/
	WWDO0vWtJ4HCvTv8BBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSBP-0000Us-E3; Fri, 02 Aug 2019 07:40:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSBM-0000UE-KU
 for linux-snps-arc@lists.infradead.org; Fri, 02 Aug 2019 07:40:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C0212086A;
 Fri,  2 Aug 2019 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564731655;
 bh=WdW+h+XGuGqjKwJ5w5plqYCPLFR0EQgahxkRPqpuyZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H3r9ZsyblPP9d/UZ24Yu885Myc5WLnctX0R5hAz3sA4P2qsYWNaLqtNNDvL7rE/cX
 SlD0BLzdzuDTPKncegj4CagRPWVSdfRKwIT95NaaqCu4gk5ahbYghF9vzCrh47n3aD
 EIVAeCNF4jloZPOWQMsi9AJpG8pR/gbNRYUudNWs=
Date: Fri, 2 Aug 2019 09:40:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Message-ID: <20190802074053.GE26174@kroah.com>
References: <20190214150745.18773-1-Eugeniy.Paltsev@synopsys.com>
 <20190214150745.18773-3-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB0120530B12273DDC5B06D823A1C80@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB0120530B12273DDC5B06D823A1C80@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004056_702295_0724014D 
X-CRM114-Status: GOOD (  13.30  )
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

On Thu, Jul 18, 2019 at 08:51:23PM +0000, Alexey Brodkin wrote:
> Hi Greg,
> 
> > -----Original Message-----
> > From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > Sent: Thursday, February 14, 2019 6:08 PM
> > To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> > Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Corentin Labbe
> > <clabbe@baylibre.com>; khilman@baylibre.com; Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> > Subject: [PATCH v2 2/2] ARC: enable uboot support unconditionally
> > 
> > After reworking U-boot args handling code and adding paranoid
> > arguments check we can eliminate CONFIG_ARC_UBOOT_SUPPORT and
> > enable uboot support unconditionally.
> > 
> > For JTAG case we can assume that core registers will come up
> > reset value of 0 or in worst case we rely on user passing
> > '-on=clear_regs' to Metaware debugger.
> > 
> > Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> 
> May we have this one back-ported to linux-4.19.y?
> 
> It was initially applied to Linus' tree during 5.0 development
> cycle [1] but was never back-ported.
> 
> Now w/o that patch in KernelCI we see boot failure on ARC HSDK
> board [2] as opposed to normally working later kernel versions.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=493a2f812446e92bcb1e69a77381b4d39808d730
> [2] https://storage.kernelci.org/stable/linux-4.19.y/v4.19.59/arc/hsdk_defconfig/gcc-8/lab-baylibre/boot-hsdk.txt
> 
> Below is that same patch but rebased on linux-4.19 as in its pristine
> form it won't apply due to offset of one of hunks.

Why is this patch ok for stable kernel trees?  Are you not removing
existing support in 4.19 for a feature that people might be using there?
What bug is this fixing that requires this removal?

thanks,

greg k-h

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
