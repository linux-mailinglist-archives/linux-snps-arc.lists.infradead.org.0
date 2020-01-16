Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E235C13D8D0
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 Jan 2020 12:19:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpPcOt0qeAd9zV2SBZeuv7AkC9Ib3bOTLEKOkwVWCis=; b=GYXDbtI/3c4E/t
	6O5gKscb7J631j0X/YtcyJSMY4FPPmQauQ+k1+/WMjpnNfVhpmTAOJoPa4c6UqeVCoH3QmFTNkHy0
	C6vS8VzonGz1qToAFteMhXqIqAJx9LfxgnuwfrQlU8UGoJEAZtnpi/0ci1kGa7VPftIFOMHFNHH/M
	hmZtvix0zTgRNU4xW70tX6f//QHYfvP+MtZJd2gXPggx3k+4vENYq15IceiYi4lDdSXNJyfFVd5Uk
	bFipmG5WplxdiP6pFXxTVtZLtDT5V4nSAF4qPnsqKzR1QGDBEW7T7pJ78CBDI8YlgFqt73PG9leKe
	mKKEjeC0ZyOpE4sYg4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3BJ-0000lQ-Ni; Thu, 16 Jan 2020 11:19:21 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3BD-0000kJ-S6
 for linux-snps-arc@lists.infradead.org; Thu, 16 Jan 2020 11:19:20 +0000
Received: from ip5f5bd663.dynamic.kabel-deutschland.de ([95.91.214.99]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1is3B9-0000wC-Lv; Thu, 16 Jan 2020 11:19:11 +0000
Date: Thu, 16 Jan 2020 12:19:11 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: wireup clone3 syscall
Message-ID: <20200116111910.b3vhwudsdb4oe5b2@wittgenstein>
References: <20200116000948.17646-1-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116000948.17646-1-vgupta@synopsys.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_031916_039394_AB2A5059 
X-CRM114-Status: UNSURE (   4.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 04:09:48PM -0800, Vineet Gupta wrote:
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>

Thanks!
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
