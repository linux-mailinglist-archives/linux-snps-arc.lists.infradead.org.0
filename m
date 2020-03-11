Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E51181987
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 14:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiO0q5q1Yil/For/oXuhJktkisvJa2m4oEoZ58mLs7Y=; b=ANI3vQsYM+W7g5
	FZ+7HujGQkdDtQJZIgdjOcFc8+e2tm/P0UfqmDu7D2lPzhXJWyfnH6g4XqTByLf2NF2EpnWMIirK/
	FKjGwKHE3akZHgmJaSLJ4bsrByyq9HMRGfhsqAZO8rrv4LNJhUkB9WCgF0efWFpXAhg+YJjLrRW0w
	VCdc70ayhVS5iEf92z5je614EjB4I0cU6xU5vXgix7OHcnYRh+Xhv+WLFQmeqx+SOYGYqCEbl94iU
	qVCsamFGrTeHfQYXrWjbDCBzejFMQD9fM5GFfzVRctLsQYvwJQMe3wmpHkBSQwxzYM8bKrerRSoPq
	LNBiE4vnuH6lnpys8ywA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1J9-0002MC-Iz; Wed, 11 Mar 2020 13:21:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1J5-0002LV-O8
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 13:21:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7624B21655;
 Wed, 11 Mar 2020 13:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583932914;
 bh=5y8xGr0LyTBUCWo725QctGIq4zafP/QOt9DMF+QjAfE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NkDcCuPyYEZGcrv86SLVQuguuW/E1m1gK0iIkKbNL9o8fOIKzhybZvUdFI0FoYYBg
 zqcCPzewilogs4PgMZZcioeyPfWsvxlozdCu7QSRVBVNsmwGK5JX46enBEMtyAw64m
 qwqPIu0Dm+p4YZF6UcbDKligOMnWJIrXvD7HUVAE=
Date: Wed, 11 Mar 2020 14:21:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH] DRM: ARC: PGU: interlaced mode not supported
Message-ID: <20200311132152.GA3902788@kroah.com>
References: <20200311131310.20446-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311131310.20446-1-Eugeniy.Paltsev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_062155_806943_8527BC59 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, stable@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 04:13:10PM +0300, Eugeniy Paltsev wrote:
> Filter out interlaced modes as they are not supported by ARC PGU
> hardware.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  drivers/gpu/drm/arc/arcpgu_crtc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
> index 8ae1e1f97a73..c854066d4c75 100644
> --- a/drivers/gpu/drm/arc/arcpgu_crtc.c
> +++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
> @@ -67,6 +67,9 @@ static enum drm_mode_status arc_pgu_crtc_mode_valid(struct drm_crtc *crtc,
>  	long rate, clk_rate = mode->clock * 1000;
>  	long diff = clk_rate / 200; /* +-0.5% allowed by HDMI spec */
>  
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return MODE_NO_INTERLACE;
> +
>  	rate = clk_round_rate(arcpgu->clk, clk_rate);
>  	if ((max(rate, clk_rate) - min(rate, clk_rate) < diff) && (rate > 0))
>  		return MODE_OK;
> -- 
> 2.21.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
