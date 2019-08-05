Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03E1825F0
	for <lists+linux-snps-arc@lfdr.de>; Mon,  5 Aug 2019 22:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=421HZWz1QQrQPd1wyI/89O+Y0B3anxjC1Kczqp2y8to=; b=bomaN0vdOrAgmm
	XHjPASLT9xHrCwIgH9S5ln3a/e2v+1ZqE7Sj6ZjterkeNARV6qJH/qEey1ne89CXHk0AH3l2NKVn8
	0zNDE0Z1kuLJmBdlxen85kY3AP6+/0aKfJD04aBQ1K2fjJnNy8oc7Wymf8cp8cgv8L5gy5clGhQ5A
	vnXkskCcUR2cvyxjRIJizmj+geSO1Rgz8at3wybqb8I6NMI/+LloxcWocmHVYNoJcKruoRNeow/6J
	MY9GADC9fUOJBCsKkigHQbah99btpbiUfWyX0lAQE8pWM3S3xg0hXwVMIvymN0jQaRfXx7Anc1A7G
	VWe1Fj8ZOGBjZ9LLI0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hujQy-00080w-PH; Mon, 05 Aug 2019 20:18:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hujQv-00080I-K8
 for linux-snps-arc@lists.infradead.org; Mon, 05 Aug 2019 20:18:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id i189so40195958pfg.10
 for <linux-snps-arc@lists.infradead.org>; Mon, 05 Aug 2019 13:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TnMFby6cuMGYKUzIgGV11jAhA9K8cooCmYdmv8dL38I=;
 b=LiShrSwdcJpHceuBpSDfF+8pv9O7akLw1+A5ugFbC6pxOsHvP7HsCixegf9LvvhIQk
 F641xHQC0ZSmuxurQksXXlPdfVdCh5V9vx4ummJlmFcmL4qr/apVxpvNwsxTvF3ae35E
 e9F3d6V7cA753k7mqlbxuF88LJmLKSteiN9e0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TnMFby6cuMGYKUzIgGV11jAhA9K8cooCmYdmv8dL38I=;
 b=eQZRv2+UuD1eeBbJ3S0ddrbSWMB0Xc3E9v6qKeACs6HLuWOojoF8STdSxvF72ktwDP
 M1lAvCtwGsahdgMMAsdDtCLXv9uJ8IpcEhoDK6oOAxYY4sqIuDerntJTG6fqpnE1qx21
 ew6c/WUTlWOfKZJvMrleI+ntY6qzo3LJbrTBfFsEmOeyGrLA1IuuianVvJ3OOPZY/f7j
 Q2oXah0Zuo4SHSFF+7fesar54O5kZrZk6QuBJhrmBYtwiPL3hiD//0TSGs1w1v4o09BP
 uBzxRA7BYN5GZYUY7UGGoOn2cLCGwKoQ3FahiCp0PwHVAfHjWS55Lh2hfrLDCZQtYaLy
 OI+A==
X-Gm-Message-State: APjAAAWEFR7HZW/01tMcsg8E88xygH0U6/kubNEI1ePunZFWZG3hqRiP
 LAKlAamG0GbOfzAnMDtgE9gWiw==
X-Google-Smtp-Source: APXvYqweLun+wrNksbm9Lbw7Q9yPpj9rLg5VuTi3f6zYmIoFGAGK7AIaAoVvqPNPgbhrpN5vJumUpA==
X-Received: by 2002:a17:90a:bf92:: with SMTP id
 d18mr20458772pjs.128.1565036296585; 
 Mon, 05 Aug 2019 13:18:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t7sm15233198pjq.15.2019.08.05.13.18.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 13:18:15 -0700 (PDT)
Date: Mon, 5 Aug 2019 13:18:14 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-throughs
Message-ID: <201908051318.5B1EB8106@keescook>
References: <20190805193232.GA12826@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805193232.GA12826@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_131817_687906_5B5629BE 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:32:32PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings (Building: haps_hs_defconfig arc):
> 
> arch/arc/kernel/unwind.c:827:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
> arch/arc/kernel/unwind.c:836:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arc/kernel/unwind.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arc/kernel/unwind.c b/arch/arc/kernel/unwind.c
> index c2663fce7f6c..445e4d702f43 100644
> --- a/arch/arc/kernel/unwind.c
> +++ b/arch/arc/kernel/unwind.c
> @@ -826,7 +826,7 @@ static int processCFI(const u8 *start, const u8 *end, unsigned long targetLoc,
>  			case DW_CFA_def_cfa:
>  				state->cfa.reg = get_uleb128(&ptr.p8, end);
>  				unw_debug("cfa_def_cfa: r%lu ", state->cfa.reg);
> -				/*nobreak*/
> +				/* fall through */
>  			case DW_CFA_def_cfa_offset:
>  				state->cfa.offs = get_uleb128(&ptr.p8, end);
>  				unw_debug("cfa_def_cfa_offset: 0x%lx ",
> @@ -834,7 +834,7 @@ static int processCFI(const u8 *start, const u8 *end, unsigned long targetLoc,
>  				break;
>  			case DW_CFA_def_cfa_sf:
>  				state->cfa.reg = get_uleb128(&ptr.p8, end);
> -				/*nobreak */
> +				/* fall through */
>  			case DW_CFA_def_cfa_offset_sf:
>  				state->cfa.offs = get_sleb128(&ptr.p8, end)
>  				    * state->dataAlign;
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
