Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC6AF1571
	for <lists+linux-snps-arc@lfdr.de>; Wed,  6 Nov 2019 12:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaQ+kRX3w94gabY1FbKsZQxSjVxYR5ZAk1Zq+Sd0oaw=; b=j2XiC1d/Ir31H2
	HwOusFLgSDbY8UKtRtIQrNNkAUVF91Bod5zPwjIMDA/JAQMjPBCkrAQA3Gkekr4sUnI7U6yDXjfs/
	YJHJB+PNRezDunQALCrPuymqu3N1sTYt5QrOAC22sK2RAkRWEOh/AG9IWUmQjp8fquyy3/VSS/0Im
	2k9g+Ji8pLqcHmth0Sq4zbLcwhcuLj5wzhinRxX6d4fOfAmdWWo0AqZxcWG3nIyH/bphSp/8nqHyU
	tb60zr3ujXdLGdZvBznyBnW8JB96llK2X+lf/BbeNxZvhrGN91RlcGRwRPU0UEt1gmzSlBUFzMTVz
	xZC4MsfkpIvUlTfO/tew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJqy-0005k1-MR; Wed, 06 Nov 2019 11:52:00 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJqx-0005jb-0C
 for linux-snps-arc@lists.infradead.org; Wed, 06 Nov 2019 11:52:00 +0000
Received: by mail-vk1-xa31.google.com with SMTP id o82so3625334vka.5
 for <linux-snps-arc@lists.infradead.org>; Wed, 06 Nov 2019 03:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MqkmzY79gQo+6RAoqTtma7lrgQcIviKXc3AUAf3bsgs=;
 b=R2xksyKs0yIZ8rxIIN0Oo7o1CHHDGOVcBDngLfKdHam5IpGHEUYypjNDscQ1oEHZaA
 L7ozyrmDXiSAr4S2khxxQUKyE7I2mnAVI2+pF2GasWCozsdeXxyfsLbHLD3MVz2h6HKy
 S400QhJAZvopwukvj/m/8RbEfvxZ4PmbbvN+xdDjGEq8SLOCfXtGCJRGZGSFZPS72P7C
 eWSkL8AuyjiTus6qe+FAs6tHSQ9lBlTnBYYyQBoiTNfOeJReQyImWlLomo1KRBWyISlh
 0QJa7ubBCW0GnAUssBT4tAZftuSmATXIZgIGrr2Wk00tGLiWrjf32MDN7ci3ipoqWRNI
 a2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MqkmzY79gQo+6RAoqTtma7lrgQcIviKXc3AUAf3bsgs=;
 b=TXPS4CGQ4ZERrWJHkkeEr/KrAgNEuxh2tJqQWi1/sjM51Juex1qccFLXM5jkD3u3ba
 JzOoYv98Unjo0wuXc7Ev94wtV2h1nK8Dm1bf/YGVi8YtoXv/p33Bpb6/zdFe7UqFzGib
 tfxueYZkX3UFi4WqgOvTar3E3MecsKfZb5Teh4Al0gmcAxXjraYxGWttrIR1heqXEQKi
 Ksk0ZNrl0N1UqAZ5gsMcd4xBrLxNNN0P0VF9sv8mNFtD0wIkjgKDQOTlSlO5VZt6nOdU
 9Sey0pDurh8PJIdXt4N1rXRegEBPv4rwobjPrYTqi5gYv0saHycNnVJYYCURQeQCTZ4Z
 ryGw==
X-Gm-Message-State: APjAAAXglISUQqWrvv/NxQY3+lk+jsCMTZ6U4zusTyW14q4wYcwWP3fO
 Hp044RqnArzC1R9VsQsvLREoVz/qsqFwaSoBtl4=
X-Google-Smtp-Source: APXvYqyte+tBWZM1pUpdEeGxIGIImb+q1nnXabjNZpe/eDIzWCUVW6c32ct7ti93g7lzv3SYzloDwK0W8yKXLvnjtpE=
X-Received: by 2002:a1f:acd0:: with SMTP id v199mr1025365vke.5.1573041115944; 
 Wed, 06 Nov 2019 03:51:55 -0800 (PST)
MIME-Version: 1.0
References: <20191105191856.14652-1-vgupta@synopsys.com>
In-Reply-To: <20191105191856.14652-1-vgupta@synopsys.com>
From: Claudiu Zissulescu <claziss@gmail.com>
Date: Wed, 6 Nov 2019 12:51:44 +0100
Message-ID: <CAL0iMy0pvTJ4EU=XOnRcWfetYcA-bqWc-mjpeaPjG0q4u397Hg@mail.gmail.com>
Subject: Re: [PATCH] [ARC] Add builtins for identifying floating point support
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035159_067382_630943FD 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a31 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (claziss[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-snps-arc@lists.infradead.org, gcc-patches@gcc.gnu.org,
 Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Ok, I'll push it asap.

Thank you for your help,
Claudiu

On Tue, Nov 5, 2019 at 8:19 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> Currently for hard float we need to check for
>  __ARC_FPU_SP__ || __ARC_FPU_DP__ and for soft float inverse of that.
> So define single convenience macros for either cases
>
> gcc/
> xxxx-xx-xx  Vineet Gupta  <vgupta@synopsyscom>
>
>         * config/arc/arc-c.c (arc_cpu_cpp_builtins): Add
>           __arc_hard_float__, __ARC_HARD_FLOAT__,
>           __arc_soft_float__, __ARC_SOFT_FLOAT__
>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  gcc/ChangeLog          |  6 ++++++
>  gcc/config/arc/arc-c.c | 10 ++++++++++
>  2 files changed, 16 insertions(+)
>
> diff --git a/gcc/ChangeLog b/gcc/ChangeLog
> index f3deffc701ff..9237e81aa011 100644
> --- a/gcc/ChangeLog
> +++ b/gcc/ChangeLog
> @@ -1,3 +1,9 @@
> +2019-11-05  Vineet Gupta  <vgupta@synopsys.com>
> +
> +       * config/arc/arc-c.c (arc_cpu_cpp_builtins) : Add
> +       __arc_hard_float__, __ARC_HARD_FLOAT__,
> +       __arc_soft_float__, __ARC_SOFT_FLOAT__
> +
>  2019-11-05  Martin Sebor  <msebor@redhat.com>
>
>         PR middle-end/92333
> diff --git a/gcc/config/arc/arc-c.c b/gcc/config/arc/arc-c.c
> index cf3340d29c27..1a5ff3e88a67 100644
> --- a/gcc/config/arc/arc-c.c
> +++ b/gcc/config/arc/arc-c.c
> @@ -71,4 +71,14 @@ arc_cpu_cpp_builtins (cpp_reader * pfile)
>    if (TARGET_BIG_ENDIAN)
>      builtin_define ("__big_endian__");
>
> +  if (TARGET_HARD_FLOAT)
> +    {
> +      builtin_define ("__arc_hard_float__");
> +      builtin_define ("__ARC_HARD_FLOAT__");
> +    }
> +  else
> +    {
> +      builtin_define ("__arc_soft_float__");
> +      builtin_define ("__ARC_SOFT_FLOAT__");
> +    }
>  }
> --
> 2.20.1
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
