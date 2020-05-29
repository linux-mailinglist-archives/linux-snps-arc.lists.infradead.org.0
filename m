Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3219C1E744B
	for <lists+linux-snps-arc@lfdr.de>; Fri, 29 May 2020 06:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8lv8jea79g/872fLjtHqvK1VYcnoGANdVXaB0VtkQI=; b=FZmiZcHbR2RxhH
	+N5MhqO/I1G/xCBG3EO+pe6LP2YLi66o5Sd7Ovd4JYyPeLA28Wdx9t/2iaAE+cIkOJ1ikrMQydbzH
	izlydl3JHL+ubYAqCOFDBfeKV3M4HzJBwbO75EOnsSJUOit414qnOq8ZZhvTqp5hWZ9tuM9ZdVtlT
	K0ms0VClBgex18bqKDf2jF+ueSvaQueZ419qbRZyKNYcRYWY1oVEA8CzA5Sz6vwymaDQbSVhzdQfT
	9ZDntPjxaWn0AtWm5nUbHzq34nX2IA5l2M3FEcjzJmRmNFI6vX7oAoNvFlP+N5qmIveV00Jy7TUvA
	jaHvjD/p3ACTXu8EcvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWIo-0008Au-Pm; Fri, 29 May 2020 04:07:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWIm-0008AV-JX
 for linux-snps-arc@lists.infradead.org; Fri, 29 May 2020 04:07:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3463220723;
 Fri, 29 May 2020 04:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590725244;
 bh=h0pxr9/wzLOF/9tz6TDv1ocdVyQnEr4jdBl3VKWu6Zs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=CHq95+kZOxfgFU58Zs4UZF12+xWI7UbACdIs7Xr1QTy+PP52K+8qHPgi/fP5VoWVx
 lE5aUUsDKCQGTEB6m6dHVJ5CY87umFj9wn27nIjWPiwhbyB5cq4yXF+8U/rfGfI+66
 4BHkmlO/qiuV5KPnhy44kH9zIHzZLKawAKoCuCkI=
MIME-Version: 1.0
In-Reply-To: <20200311134115.13257-2-Eugeniy.Paltsev@synopsys.com>
References: <20200311134115.13257-1-Eugeniy.Paltsev@synopsys.com>
 <20200311134115.13257-2-Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH 1/3] CLK: HSDK: CGU: check if PLL is bypassed first
From: Stephen Boyd <sboyd@kernel.org>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-clk@vger.kernel.org
Date: Thu, 28 May 2020 21:07:23 -0700
Message-ID: <159072524355.69627.3014845775029445369@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_210724_660010_892E6312 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Quoting Eugeniy Paltsev (2020-03-11 06:41:13)
> If PLL is bypassed the EN (enable) bit has no effect on
> output clock.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---

Applied to clk-next

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
