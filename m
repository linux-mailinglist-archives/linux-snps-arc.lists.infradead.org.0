Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651091A6BFF
	for <lists+linux-snps-arc@lfdr.de>; Mon, 13 Apr 2020 20:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iCuT+1ibtp9sqcO4xILLOcb3F5WtQzNNoQZHh3kdcc=; b=RhhgiPGGMQWosD
	7ZTmhun7v9saixw0B89kWh/v4aVfHBHenFj0O/fzZiOhzwKjcDPMymtUOPaa3rRnbl/g+RLBdRY9P
	lUqutckqnQEeoc9IJbxwEqCexqZz0nh+cOMiyyL2INpN+ywgwVITjJwW61v/LG2z2BbglJ2VAT5SK
	50968916ElsLuev7gWkp/ZZ0zk4p1F02+wbhyarCm50Kh7xHvrLELX6bLSPmcANRvj/3C6chWWBjd
	iS5irZ7E/0cHfMKq0mNxkAS7PyAItAIDgYlVoQSKIfX5M6wAuDIjGX9uYCrM2jy5j71Fs196hj88h
	WG7/GpFWFkrVdzckfL+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3gv-0000xq-NN; Mon, 13 Apr 2020 18:20:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3gs-0000xC-JV
 for linux-snps-arc@lists.infradead.org; Mon, 13 Apr 2020 18:20:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id n10so4876178pff.3
 for <linux-snps-arc@lists.infradead.org>; Mon, 13 Apr 2020 11:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OOnXvBD+1tH8qvIGf2uSojwZ4oLg81q4MCieLQpC63U=;
 b=oeuT1AV0ime5Fh4Rm1OT+N4p5ZprfDIRamr/sJ4vSfypoagGnjNeHMoAvTBInH8kl6
 w+vZ6BSLnN1/4u8FEXKAtpk/emslIy0rFdStcDetjHj4xedGp8HdCntv+FZxm5eKhtvs
 efuKf2pCVQOGr2QoXZ/JRNmPe0dmSoCYbdaUYZa1sAxCz/K0pXeTwoKlHl/bkeaXSLsp
 jF8vaZ1AAn+9GrlceQrjN0fnUYq7TGvgMAfgYK1mdp5VH5Vo4/MkvJmFMCv/3aoFm6CN
 1+EWzvfMTkgAJiYLzm8Wgff7B+O6d4czS2URiYRa/5KGgT+13iULt6+UB8A+845DKYdw
 LqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OOnXvBD+1tH8qvIGf2uSojwZ4oLg81q4MCieLQpC63U=;
 b=bQwd73/cnRreZDfkV/M8VQgtOutYzkwLUd/2PYgbN1SUPUnmuTf9VJc3agny3Bxc5u
 G2Ctt4JGk9cdAgMDetgr+gl7TVq/0Hq7SUmR7zpSQSOGIAmYtF5KFf4VFJwNO4d/SaRG
 IMggzkF1dadM5NoB8n0F2kLSdF0PVg/6s1DQoDGgu1zS1W7i1Snz+PhJeY/zRx95nb0o
 9zjFbRGRcoCPTm/U82UC3ycPSuI/ZrE0JGR618eN2eghFugro4i3KTVarwwimH4kKukF
 0yJ76fOGxHIGKednEc99BVzXj0YM5tS8PUvBwiKRNUKcX1RA/8HdimlQxo6orK+EZWm5
 bm/Q==
X-Gm-Message-State: AGi0PuYVvTm8JsyLsnAgfgrnZFKQ1kbmWi2sJYG1a0QLaVtuVJ8F58VE
 KmrTwtBpZighVIRgwqwIZa/S8c1HAE1zYmj97JNrfw==
X-Google-Smtp-Source: APiQypJwUNJu1vlLEjikzzfaLZvsRT9M+9FSian5AttKj5c01LY2XFIqQOuHAme5EAkTGljALMbupJwwZf5FUfYE8Fw=
X-Received: by 2002:a65:6704:: with SMTP id u4mr18738485pgf.263.1586802013753; 
 Mon, 13 Apr 2020 11:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200413020538.31322-1-masahiroy@kernel.org>
In-Reply-To: <20200413020538.31322-1-masahiroy@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 11:20:02 -0700
Message-ID: <CAKwvOdk3-o2-Zom-Ejt0HP3vn+QWBYkJo+kPNzamofc-eH-FjA@mail.gmail.com>
Subject: Re: [PATCH] arc: remove #ifndef CONFIG_AS_CFI_SIGNAL_FRAME
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_112014_666536_42251CB8 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-snps-arc@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 7:06 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_CFI_SIGNAL_FRAME is never defined for ARC.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Thanks for the patch.  I worry there may be many preprocessor checks
in the kernel that are always true/false.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


> ---
>
>  arch/arc/kernel/unwind.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arc/kernel/unwind.c b/arch/arc/kernel/unwind.c
> index 27ea64b1fa33..f87758a6851b 100644
> --- a/arch/arc/kernel/unwind.c
> +++ b/arch/arc/kernel/unwind.c
> @@ -1178,11 +1178,9 @@ int arc_unwind(struct unwind_frame_info *frame)
>  #endif
>
>         /* update frame */
> -#ifndef CONFIG_AS_CFI_SIGNAL_FRAME
>         if (frame->call_frame
>             && !UNW_DEFAULT_RA(state.regs[retAddrReg], state.dataAlign))
>                 frame->call_frame = 0;
> -#endif
>         cfa = FRAME_REG(state.cfa.reg, unsigned long) + state.cfa.offs;
>         startLoc = min_t(unsigned long, UNW_SP(frame), cfa);
>         endLoc = max_t(unsigned long, UNW_SP(frame), cfa);
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
