Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C911362
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 08:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYGNWLwANsA2TFr36YuWbMAI/HV8eSmEKCPdtcKpPYI=; b=YAZc0urDMIIqzT
	ZiuFRBsPcBkhpCnM7gZmSGNN5SDN+Mh3Ul96pf22Dw/fntLpqwhLSSAdwyye4Sd4mklMyjISjVjmY
	pQOAMaXEH0qG6erHGzWSIOX2sNq1+BfgUve0p+ZrsNukQR5QknhoiT5TJn3sEzu09j5vicskfBQUN
	gRkf3ZHoGsfYoJLkuWQffqGtyES/9gsj5C85YhiRb6VStSoSvd7C/ZzgWWjG4kY2X61y+hSWPh+GT
	sFpzfWkoD7SOUOEo9hpFzsZbMbvoKpQ4fN6XHP/VH1zmyzDB3IlUh8c42rdSEhewo2XYHyB5E6bwN
	dQY+E0f3lc3f2D2D9/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5GI-0005aV-T2; Thu, 02 May 2019 06:32:06 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5GF-0005Zq-G8
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 06:32:04 +0000
Received: by mail-io1-xd42.google.com with SMTP id u12so1124210iop.0
 for <linux-snps-arc@lists.infradead.org>; Wed, 01 May 2019 23:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WGMCFAzGm3CobSQocX4r+FnTqfDTBc1bpPU4QQeOhDY=;
 b=CXMeVfq0ALu7tWgwUP+PeWaHpT2p9eKmz76o3zD9hnt2O7wj9FEZhcm1iubi+6qJ25
 HCS8zEdI8HANKXKt2mpN2Cdais0yzlnLPQwuKj8nfm3HaDOeC+56GC1bSKkw+BfhnFJK
 FJYMW+2Xr9J/QobmDEOxMkIp+i5uPgikmL++JBu0XHAKmFX2fPHIJ9QfpsQ+a854gnEG
 kYAKMoqhtss6NzBF7uq23XkK8oJIPVZedn2UAYQZg5ZDk5odHm7IFl90rG5+7B7t/vPV
 9Rva7vsPetYxp9WbjYyh20VWER4uA8+lX0Xv5R29M6aMUo26MdIuGqllERStuHRQRQHU
 27dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WGMCFAzGm3CobSQocX4r+FnTqfDTBc1bpPU4QQeOhDY=;
 b=TEqADXeO3bcslHpZt9EuqsiB0KgP6SznTIM62IffNrijBpOeSW92QF+zfaKso8c1le
 cSxIGYH0b6jUju7rM0FE8+pkzdl6ngPoRIjkex0gjz7pD086c/fQ1WJIpByD0cIOAwmW
 PD01fDQvxi57neITGFZc1kWVxowyKZi2Gqk7qQRk+0/LGsczbq4A7i0bU/uOT/OtPfO7
 jZwXknT8lV59cc5GF34Q1l+W14HPcCt1GdTd/PZcXJIz29XSeSjf9A/d+nhesVCOHPzU
 dOdV6YL2nA3f00QVf2hN5NHeZJqvsfmc2Yw7fcKiwwc2C1EaZmLIvsQjCu9G1sPTRMAz
 WeIg==
X-Gm-Message-State: APjAAAW+NTXRb4J0tOfLeBgp/+7S0LS+gvB1jOYB1k1lu8aUTp2F0/2i
 mMmBntxEzKnz6ceF6+xfUpcqS+z0VYBtRi/4cpk=
X-Google-Smtp-Source: APXvYqxvraDLWRHUAd6drNfVgpeSbYfAIVhDqH2YhhHfFHihnxUJyYTI75XZixavJtyWEnYfKEfxjxVAjzKL3wgRxnE=
X-Received: by 2002:a05:6602:21d3:: with SMTP id
 c19mr1262943ioc.233.1556778721541; 
 Wed, 01 May 2019 23:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <1556751209-4778-1-git-send-email-vgupta@synopsys.com>
In-Reply-To: <1556751209-4778-1-git-send-email-vgupta@synopsys.com>
From: Y Song <ys114321@gmail.com>
Date: Wed, 1 May 2019 23:31:25 -0700
Message-ID: <CAH3MdRVkUFfwKkgT-pi-RLBpcEf6n0bAwWZOu-=7+qctPTCpkw@mail.gmail.com>
Subject: Re: [PATCH] tools/bpf: fix perf build error with uClibc (seen on ARC)
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_233203_563195_1EE1B29B 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ys114321[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ys114321[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-perf-users@vger.kernel.org, arnaldo.melo@gmail.com,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 linux-snps-arc@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 3:55 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> When build perf for ARC recently, there was a build failure due to lack
> of __NR_bpf.
>
> | Auto-detecting system features:
> |
> | ...                     get_cpuid: [ OFF ]
> | ...                           bpf: [ on  ]
> |
> | #  error __NR_bpf not defined. libbpf does not support your arch.
>     ^~~~~
> | bpf.c: In function 'sys_bpf':
> | bpf.c:66:17: error: '__NR_bpf' undeclared (first use in this function)
> |  return syscall(__NR_bpf, cmd, attr, size);
> |                 ^~~~~~~~
> |                 sys_bpf
>
> The fix is to define a fallbak __NR_bpf.
>
> The obvious fix with be __arc__ specific value, but i think a better fix
> is to use the asm-generic uapi value applicable to ARC as well as any new
> arch (hopefully we don't add an old existing arch here). Otherwise I can
> just add __arc__

I prefer explicitly guard with __arc__. We still have arm/sh with different
__NR_bpf values. This patch will give wrong bpf syscall values for these
two architectures.

Alternatively, you could add support for arm/sh together
with your current patch. Hopefully I did not miss other architectures.

>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  tools/lib/bpf/bpf.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/tools/lib/bpf/bpf.c b/tools/lib/bpf/bpf.c
> index 9cd015574e83..2c5eb7928400 100644
> --- a/tools/lib/bpf/bpf.c
> +++ b/tools/lib/bpf/bpf.c
> @@ -47,7 +47,10 @@
>  # elif defined(__s390__)
>  #  define __NR_bpf 351
>  # else
> -#  error __NR_bpf not defined. libbpf does not support your arch.
> +/*
> + * Any non listed arch (new) will have to asm-generic uapi complient
> + */
> +#  define __NR_bpf 280
>  # endif
>  #endif
>
> --
> 2.7.4
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
