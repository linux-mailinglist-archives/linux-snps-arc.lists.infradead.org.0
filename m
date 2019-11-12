Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19FAF9B3E
	for <lists+linux-snps-arc@lfdr.de>; Tue, 12 Nov 2019 21:52:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxVgxn6I/JOKzd/qRXYbz63feFz1clvTrpchXODAhhI=; b=LszIYR9JJyelqx
	0AN3z220baHu9OXWmyU/hKZA4FPw1fWnX1MvSRSzsfMnCX3w3P/YnXxid4+lQJAzoW5rmaiOFrpyA
	StPa/4ujvQaZo5HTR1tJWzIPYzlwNGuxGej2Zs3sonEVi0xu9mLyVyp6nS5aYfqy3rl3YVV2KayfX
	76kRXOxt4weEbtFT0kpwfVM289fCwkVNI2Yedev1xplO+5KlhZ9OaM/ce2Qgf2t2pT5EX0mTFQ82r
	LlviQxbNsF9HkxT9yp0GiB9x8nM3hEr33u9wBv8U4f204qWaL355Rx7w4t1yqYp2OJyHhZhGNvEYW
	56aS8yab30chbApCQh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUd9B-0005Vh-Em; Tue, 12 Nov 2019 20:52:21 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUd97-0005Uz-Pt
 for linux-snps-arc@lists.infradead.org; Tue, 12 Nov 2019 20:52:19 +0000
X-Originating-IP: 90.76.216.45
Received: from windsurf (lfbn-1-2159-45.w90-76.abo.wanadoo.fr [90.76.216.45])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3DD0820003;
 Tue, 12 Nov 2019 20:52:05 +0000 (UTC)
Date: Tue, 12 Nov 2019 21:52:04 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [Buildroot] [PATCH v2 1/1] arch/config.in.arc: Introduce the
 ARC optimized hs38 config
Message-ID: <20191112215204.0ea65eb9@windsurf>
In-Reply-To: <20191112153443.15715-2-vgupta@synopsys.com>
References: <20191112153443.15715-1-vgupta@synopsys.com>
 <20191112153443.15715-2-vgupta@synopsys.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_125217_975245_358678ED 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: buildroot@busybox.net, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 07:34:43 -0800
Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:

> This corresponds to -mcu=hs38 with mpy-option=9 (64-bit multiplier)
> 
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
> Changes since v1
>  - Retained BR2_hs38 build semantics (dropped BR2_archs)
>  - Introduced BR2_hs38_64mpy for generating double multiply instructions
> ---
>  arch/Config.in.arc | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)

Applied to next, thanks.

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
