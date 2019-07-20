Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE426ED5C
	for <lists+linux-snps-arc@lfdr.de>; Sat, 20 Jul 2019 04:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jq9Sz0mVCgUnx/5Gj0XEnMxvHKnSNc4v+PD2F/lByn8=; b=hE4W7iP/X0xHaE
	CM3m3CtXbpv9yJUaXPlnXhnARY/x8obEvc+3lwMFGZYG/97LZiUI25v1Sb71eDlst/YhFG3gvxibo
	sYqUpYnxijhKy8qhrlcqayG6oc3du0/v9BhoN4b1otdGUUgSNLooNLlcVSlNPNZeIoHlC7yQSMae0
	r5/7k/8L52QPwha/qjllfsGPTvELtjKLtvnv5zEnEsjhPuhqiNupVsoaJB0u+YayRXaEb9Fjs6D7c
	0tzT1NuET7JRUeIkr9y/4dXBKff+gPeYoM2zEq5AgM7OmO8djRxkqNSfrArAiWqno0NEz9jM/+Eil
	Gz2HR8/45O4mBxAmk2vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hofJy-0006Pq-GW; Sat, 20 Jul 2019 02:42:02 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hofJv-0006P9-DW
 for linux-snps-arc@lists.infradead.org; Sat, 20 Jul 2019 02:42:01 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6K2fa9J026144
 for <linux-snps-arc@lists.infradead.org>; Sat, 20 Jul 2019 11:41:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6K2fa9J026144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563590497;
 bh=cjbTfQ+RiOWGnD+P3w8/hXI1uAkKHwox2bpmBIGRw+c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tvyNq2C5QDy43yWSnQTrt9fZpvbhivoA8oLA/57KW00GlN16/rhWrebkxM6HocdKH
 mHuneFcGH5VckWDQ+5kbfsZjgxxmVmb82pwMDwZRoPU7ue3btduMX9BQI8z26neN/6
 5UPunKfdqKs+TJIwpEEMhdzPDGsdH0m7KpAdvA5kR4ZIcYjee8H5XYHTM9xGdSeeKV
 TqNajkDZfGpSxHIWGip/ch/Q2pU1aeREd1/VsU65BtidqLvI8DjklJAXA8tNpN/+45
 On67gegY5+J+I9Ujsk9rcMTdJdtGKoYyg6A1rRzA10+UMjKpcsX1Mv7AD6tmeey8kf
 VeiA5kw5vXe0w==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id y16so22728650vsc.3
 for <linux-snps-arc@lists.infradead.org>; Fri, 19 Jul 2019 19:41:36 -0700 (PDT)
X-Gm-Message-State: APjAAAV45wht3jhc43nfOgq5Y1kJ60RZThKGqNl3ORceKErrlp1gBPm7
 bWvHfo3IYr3M1jq1uS8TYMvc7iWkVOWbjZbDQA8=
X-Google-Smtp-Source: APXvYqyrP0gBJfWbNX2CrzcI4Xc86qn1ZOWEJC8CWA+yOCL9ygHgd4K3odEMTDiaNQd1kSnM1ODyQpuWXcK5AzVBdeM=
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr35031406vsl.155.1563590495717; 
 Fri, 19 Jul 2019 19:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190719192824.24639-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190719192824.24639-1-Eugeniy.Paltsev@synopsys.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 20 Jul 2019 11:40:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNARJjb3fgdo_dxPSv-vs5x573OHKf-UAUJGMc89Jfmk+QA@mail.gmail.com>
Message-ID: <CAK7LNARJjb3fgdo_dxPSv-vs5x573OHKf-UAUJGMc89Jfmk+QA@mail.gmail.com>
Subject: Re: [TRIVIAL PATCH] of: per-file dtc preprocessor flags
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_194159_705490_47F9D407 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sat, Jul 20, 2019 at 4:28 AM Eugeniy Paltsev
<Eugeniy.Paltsev@synopsys.com> wrote:
>
> As of today we are able to pass custom flags to dtc compiler but not
> to dtc preprocessor.
> This ability is required for including some board-specific header files.
> It allows us to pass defined constants to dts without their duplication
> in several places.

How to use this option in a useful way?

I see a bunch of defined constants under include/dt-bindings/.

If you are talking about code duplication across architectures,
you can include arm dtsi from arm64 dts, or vice versa.
This was made possible by the symbolic links
in scripts/dtc/include-prefixes/.

Could you please elaborate your issues if you cannot solve them
by the current strategy?



> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  scripts/Makefile.lib | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index f1f38c8cdc74..f2595a608dce 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -166,6 +166,8 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre.tmp -nostdinc                    \
>                  $(addprefix -I,$(DTC_INCLUDE))                          \
>                  -undef -D__DTS__
>
> +dtc_cpp_flags  += $(DTC_CPP_FLAGS_$(basetarget))
> +
>  # Useful for describing the dependency of composite objects
>  # Usage:
>  #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
> --
> 2.21.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
