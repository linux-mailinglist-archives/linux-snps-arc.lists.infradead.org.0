Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E823B15AE06
	for <lists+linux-snps-arc@lfdr.de>; Wed, 12 Feb 2020 18:06:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmXkFKruFdDzzl4pVZlDv2xVdGDGWTDKhIuclkUezbs=; b=HdeK8jaceTSinL
	WHKR4bA4lzmDFksNFLXzzg+3hWD6zhuSuFCKhi23Tqszp7j10tXbQOeXhr/aROVRUtpQFMbs0VFjZ
	E3vutZek6lsLgGrm8vRbdz35Js/gv2HiKt5dsarT0NhLG4LUt6fixC+yso6CYstOblmAXP7JXQNQE
	85e+EQM/ofMfD0miogtyB0tQIyC++w2ilbrIeWPtFdFbxqjj821blkQVW0Lr7qjt93nNGspXlp2HG
	AJ9/LyFDyPCYLalHdw2RCFAyoO9r7i9lDvaUHoZ3eOC+ayHeebgsRl7WuKspbBMi6vUdxCojfKqoP
	tg/5BYTLQye3lS+n9puQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vSm-0007Cv-My; Wed, 12 Feb 2020 17:06:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vSk-0007CP-I7
 for linux-snps-arc@lists.infradead.org; Wed, 12 Feb 2020 17:06:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEB1120658;
 Wed, 12 Feb 2020 17:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581527169;
 bh=sieMuaXvkCN45E7atxS9RyI0PoF5ma3kVN+ou27Wuc0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Jy6dN6rt0ftG2OUvuzlew0cOSLS7B2KdqEu97Ik7K5a6qjKCP6/zAb7MmvVY9lyv9
 UIJSUgTZUlfyihRHqaynLCZkrHwvamGeFN0AFaDvDSF7n6kHeAVUzBJZKYPfVObhbE
 5AIfh9GL5kKeoOVkQiuszbmKF/oWbULO3pyel22Q=
MIME-Version: 1.0
In-Reply-To: <20200212100047.18642-1-geert+renesas@glider.be>
References: <20200212100047.18642-1-geert+renesas@glider.be>
Subject: Re: [PATCH] ARC: Replace <linux/clk-provider.h> by <linux/of_clk.h>
From: Stephen Boyd <sboyd@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Vineet Gupta <vgupta@synopsys.com>
Date: Wed, 12 Feb 2020 09:06:08 -0800
Message-ID: <158152716893.121156.17153312552420472005@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_090610_624783_0A952E88 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-snps-arc@lists.infradead.org, linux-clk@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Quoting Geert Uytterhoeven (2020-02-12 02:00:47)
> The ARC platform code is not a clock provider, and just needs to call
> of_clk_init().
> 
> Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
