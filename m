Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E721120269
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Dec 2019 11:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xs6VG+mNOaoKT3lNcFwoF7TxEGMLaBtzI9d6D7kDgc=; b=uKwFwWU9YRrIWo
	zShhCQPpG6RwR5269lR+7zqpC9ei6jUz7HrOEJw5roKydUTBpg4kKg2zpyz4Vu+OSUV/SRrXWf/Ji
	6T6htmnQMq/36uK88eVknL4sd1BcT4+0DijS50WHX7phGE/+amDsOoMAMdFx9HssyQGlvEyHnv95o
	EvgEOTgF3hS7A8xTm6BauYnmy+a725twpncBf/hqGgB70huh5HS75JB3xK6nbJadKZ7JN4uhrSVis
	68hp/lih83pwBfBXvka1zVw4PaKq5jzR4vLAw1POxof1NhPNqPK2oDC/w0SuubFn6sm+0v5+Hh9/4
	YntpxhgMxKLWeHXh+m9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igncg-0005ky-Dy; Mon, 16 Dec 2019 10:29:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igncd-0005kP-6p
 for linux-snps-arc@lists.infradead.org; Mon, 16 Dec 2019 10:29:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id p17so6100034wmb.0
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Dec 2019 02:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=46o7gfaBJKWXTkcq7jAyrA6x8PfxHhsT8BvQ5sfS3jI=;
 b=cGP6aCvJaouKqRF113ZIszW+7Jq6GOE1v2MmKkeCKv1mYQDJ+HoY9Z8V/MPmZfGd2U
 pUDJOT6IetAiG84ATEptiwmgdtqEPnWSn/4zKO8isMNvuaoMoUim5xMIOef0BhZ2MldS
 HdmuLehU6XU8/gpx+ejlWQF4cXlHvAPwPnBKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=46o7gfaBJKWXTkcq7jAyrA6x8PfxHhsT8BvQ5sfS3jI=;
 b=pBmv03ylNktJeaRr6tFVeHyCE4zZtTkVJIksk+BUueTZic8uHuCZLDs0LwROImdYJV
 oECYZTV71pmLWmGROel+n0WOg9conapnTV1h+jXnUrFt4zHFHVt0IshieHxA9U+7BCX1
 W4uwoiyWt6ozZvQ7Me/Z5O7aOZ4qjjitpmug+2LpCS2qvAsAKyNy+sqQ8e4KbXkKGTjE
 Za4cc3CEErRh5dQtk4VY196TZbTrKAuEwKtR0OKAPOn8ukho/6uU3j6dcoKUgcVjm136
 5H3pH7F3l7edhasrCGNCtQ7m11pMvuHR1J3YBJaBKVSMBNW0rn3cCiZXqs15UWj0TTC9
 ns4g==
X-Gm-Message-State: APjAAAUqOI10sz/JweHBmRJquLHxmq2oQ9CMmK8h0qnjI8aayXLudcRF
 YPbJD6OL/ncUTc53+a7WZ5nXdw==
X-Google-Smtp-Source: APXvYqxqYBkRX2S1WOmH3iJu+DF4WPqvZ4wos4keiSNNx6sBRLiORSihcgxKEvoS1oZAV5r2/Zr72w==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr30026831wmb.0.1576492141292; 
 Mon, 16 Dec 2019 02:29:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id a1sm21003085wrr.80.2019.12.16.02.28.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 02:29:00 -0800 (PST)
Date: Mon, 16 Dec 2019 11:28:58 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [GIT PULL] drm/arc: Yet another set of minor fixes
Message-ID: <20191216102858.GR624164@phenom.ffwll.local>
References: <CY4PR1201MB012062AAE1D2223BEF3AB204A1440@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20191127100634.GE29965@phenom.ffwll.local>
 <CY4PR1201MB01201760E81B40589D182E08A1440@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <CAKMK7uHSm6oKUUDxQxPkOJMj4Ut6+B1dFdZGoauNjrT_o841sA@mail.gmail.com>
 <CY4PR1201MB0120529194B092E2C2ACD77EA1540@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20191213102219.GE624164@phenom.ffwll.local>
 <CY4PR1201MB01206B89011211BB25EF82ADA1540@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB01206B89011211BB25EF82ADA1540@CY4PR1201MB0120.namprd12.prod.outlook.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_022903_307011_B2223765 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:24:42AM +0000, Alexey Brodkin wrote:
> Hi Daniel,
> 
> > -----Original Message-----
> > From: Daniel Vetter <daniel@ffwll.ch>
> > Sent: Friday, December 13, 2019 1:22 PM
> > To: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>; David Airlie <airlied@linux.ie>; arcml <linux-snps-
> > arc@lists.infradead.org>; Eugeniy Paltsev <paltsev@synopsys.com>; dri-devel@lists.freedesktop.org
> > Subject: Re: [GIT PULL] drm/arc: Yet another set of minor fixes
> > 
> 
> [snip]
> 
> > > Not sure if you noticed re-spin of my pull-request in the previous message.
> > > Do you want me to send it in a separate email?
> > 
> > Yeah I guess this got lost again.
> 
> So should I re-send it in another email or you will pick it up
> from existing thread?
> 
> If I'm going to re-send it do I need to re-base it on today's drm/drm-next?

I just tried to vacuum it in, but it chokes the scripts since it's
multiple pull requests in one mail with quotes. So please redo in a clean
mail.

Wrt baseline, here's the recommendation in order of my preference:
- Just stuff it into drm-misc-next
- Base your tree on a tag from Linux
- If you need a specific depedency, base your tree on drm-next with that
  patch included.
- If it's even more complicated, do a multi-way topic branch with lots of
  coordination.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
