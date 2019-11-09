Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01F2F5F70
	for <lists+linux-snps-arc@lfdr.de>; Sat,  9 Nov 2019 14:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQr+DbA9sOUQpZJZ5uLDyHv/I8dNJGAtZ8oFNFo5xDo=; b=djQfAtsqPY9eW2
	uTl8stj1d4JJNKx/t3lhVQYeopC21fBULQ8vvyjqR/lkzWnSOHkUh4pZkzXUyZw9FNQiSIvQ0KY55
	Fy6Z03Grxs1WJaEoNQnF/xjcKjl6yXRtzpuyDc9yKGhR+e7+gYcjoj8XP7K4RhHVBargQmWYLWRwx
	S23phQhC4YHiurL02md0cGdblvrzrN3Gjiufa0f2iESQcdBOsBB6ktrJrSvi3C5BnoiUONjVbtAB8
	HBbTsm5BJATvu/uKiwB2tQeQRTgjS5lE136BNokg51gIYiMwkPG26xQ+fKR3/JtQK4j730lJr8AH5
	5o/0TbR6VhhbJTQr31Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTR55-0002ZB-H8; Sat, 09 Nov 2019 13:47:11 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTR52-0002XL-Je
 for linux-snps-arc@lists.infradead.org; Sat, 09 Nov 2019 13:47:10 +0000
X-Originating-IP: 90.76.216.45
Received: from windsurf (lfbn-1-2159-45.w90-76.abo.wanadoo.fr [90.76.216.45])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0F3E4E0002;
 Sat,  9 Nov 2019 13:46:56 +0000 (UTC)
Date: Sat, 9 Nov 2019 14:46:56 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [Buildroot] [PATCH 1/3] arch/config.in.arc: Introduce the ARC
 optimized hs38 config
Message-ID: <20191109144656.3da6a1b0@windsurf>
In-Reply-To: <20191108174112.28183-2-vgupta@synopsys.com>
References: <20191108174112.28183-1-vgupta@synopsys.com>
 <20191108174112.28183-2-vgupta@synopsys.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_054708_783055_94485F8D 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: buildroot@busybox.net, Evgeniy.Didin@synopsys.com,
 linux-snps-arc@lists.infradead.org, Alexey.Brodkin@synopsys.com,
 Arnout Vandecappelle <arnout@mind.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hello,

+Arnout for legacy handling.

On Fri,  8 Nov 2019 09:41:10 -0800
Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:

> This corresponds to -mcu=hs38 with mpy-option=9 (64-bit multiplier)
> 
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  arch/Config.in.arc | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/Config.in.arc b/arch/Config.in.arc
> index c65bb01f1f4f..284951b82cee 100644
> --- a/arch/Config.in.arc
> +++ b/arch/Config.in.arc
> @@ -11,13 +11,19 @@ config BR2_arc750d
>  config BR2_arc770d
>  	bool "ARC 770D"
>  
> -config BR2_archs38
> +config BR2_archs
>  	bool "ARC HS38"
>  	help
>  	  Generic ARC HS capable of running Linux, i.e. with MMU,
> -	  caches and multiplier. Also it corresponds to the default
> +	  caches and 32-bit multiplier. Also it corresponds to the default
>  	  configuration in older GNU toolchain versions.
>  
> +config BR2_archs38

This re-use of an existing name is a bit annoying. Indeed, all existing
users of Buildroot that have a configuration with BR2_archs38 will now
be building for a ARC system with a 64-bit multiplier, while they were
previously building for a 32-bit multiplier.

I see that what you have done is to try to be consistent between the
BR2_ options and the gcc options. I'm hesitating between keeping the
consistency but making the migration a bit annoying for users, or
breaking the consistency to make the migration smooth for users.

Since I think the number of affected users will probably be quite
small/limited, I think I would be fine with merging your patch as-is,
but I'd like to hear from others.

Thanks,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
