Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC701EA7E3
	for <lists+linux-snps-arc@lfdr.de>; Mon,  1 Jun 2020 18:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjxxhfA1/FPmzypEtRSdAbEjDvuAXDRPnH3AYk1CVxk=; b=EipqEZ6YhTFgWN
	tT53en3La7NTnAH/i0rI5Mu7q/McOLkhV1G/RZ6d2ftqmxU+NMn4tt+xkgsopfFMx32+mtllQeWS/
	yhlfyOSBKHfc41cifYx6Auu0o58mKL2nQzdQPRXpuCcPEVu6WF0XKfd5KIlOZiYefHeJiEgBfq3xX
	uYMM7zPiogg0TipY4dI595GEW6Gy9SAE5h8yqdZOGeYuavZQutjOuDyu0u0Tw2BoT2JlTtqJ8zMoi
	WfyDnyOr3hkIbBO3T6GO9UA29Mi/w4nwmjS/UGUDP9+5rkwTF5cbefj4MBVcaIoqV06BzQsOVET1o
	KjcGYicXTTeled/wR8Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnSB-000403-3r; Mon, 01 Jun 2020 16:38:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnS7-0003z3-R4
 for linux-snps-arc@lists.infradead.org; Mon, 01 Jun 2020 16:38:21 +0000
Received: by mail-qk1-x741.google.com with SMTP id c14so8618682qka.11
 for <linux-snps-arc@lists.infradead.org>; Mon, 01 Jun 2020 09:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0fBRIiR+xDCBVwPCigHVNb6AIyZMxyZe8nY5hsGQfxo=;
 b=mpXwN18NKYEfk2uztY2fdmxkQby0Gd4CBRrVmxPTUXC1S/3podiIKAqUxyAkFF+PiJ
 TnoczyEZFLTwk5ZXh4VzqmdDw2+AZyh1giGtPYms92y9sbAak0bnbqyr+GzrSR3Luo44
 yOoWDDoSIqEckzM7yaagD+mZn73krgYPNSJ/bJbKIKWceCRebDo90dy7pW10av+5+NMn
 gBgyalwz+aX4b2oxwpSe8Bp9ogNHvethLPI3rQN1IaBog9KLxpJgFuMkF9EBPCV7lz5U
 DIij34LARzo0DUJJ+Yq0kvq2TCddhkTzkwm2KUGIppwfsnLu86TuagsJBrT643fFe+sm
 3zLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:autocrypt:subject
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0fBRIiR+xDCBVwPCigHVNb6AIyZMxyZe8nY5hsGQfxo=;
 b=qEAv54L2CUnJY4YD82oZKnq4riTD57JhwiAMJ0T3JhNaM53NGsYR5l7ad88ubaRU4G
 SOYCapjviVkQsYfPA4IQIU2Fj82FZHS5kfl5coeIwXJ1MoJ/dnzDYdF7vLlaB3Tzoj6C
 6KG2xbgfq13jicgiDjBVsGiIUgjLiT8PTC8yanZypCYOYElnjj6bYpvsXP9xaCjBuSCa
 0H0hqF+BSLaIblhAiMJxaVf2oHHq9Pu8OFs+IDwvFIrE5los6ib7p9spx8E7mMBqbsbh
 erdxKaDNekPHmUwlfk21NDWY7TV9gTIZ3vH7eCuqHvEitxHw504huNAyifUo6QrkMjPu
 aKaQ==
X-Gm-Message-State: AOAM533jeusLM2V5XH8pe2KEXwDOyDDMuGgrc7hakVZUtgU2SoZQxczQ
 HTN3yUkwOvA0cjhHYFIYsa+GsaHeNAg=
X-Google-Smtp-Source: ABdhPJzLQpOoNPdWOAvt3+VuUZHUoqwK56CRG3t2ullIinXQgcwZlATqMTMgxtft10a9Kk2KKx9OTw==
X-Received: by 2002:a37:70c5:: with SMTP id
 l188mr21330309qkc.396.1591029496390; 
 Mon, 01 Jun 2020 09:38:16 -0700 (PDT)
Received: from [192.168.1.4] ([177.194.48.209])
 by smtp.googlemail.com with ESMTPSA id 80sm14173604qkl.116.2020.06.01.09.38.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 09:38:15 -0700 (PDT)
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>, libc-alpha@sourceware.org
References: <20200530020047.5490-1-vgupta@synopsys.com>
 <20200530020047.5490-5-vgupta@synopsys.com>
From: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Autocrypt: addr=adhemerval.zanella@linaro.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH 4/5] aarch/fpu: use generic sqrt, fma functions
Message-ID: <c20755dc-bd3c-2ef6-c0ce-665529a62243@linaro.org>
Date: Mon, 1 Jun 2020 13:38:13 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200530020047.5490-5-vgupta@synopsys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_093819_946036_43D5289C 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 29/05/2020 23:00, Vineet Gupta wrote:
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>

LGTM, some comments below.

> ---
>  sysdeps/aarch64/fpu/e_sqrt.c            | 27 ----------
>  sysdeps/aarch64/fpu/e_sqrtf.c           | 27 ----------
>  sysdeps/aarch64/fpu/math-use-builtins.h | 70 +++++++++++++++++++++++++
>  sysdeps/aarch64/fpu/s_fma.c             | 28 ----------
>  sysdeps/aarch64/fpu/s_fmaf.c            | 28 ----------
>  5 files changed, 70 insertions(+), 110 deletions(-)
>  delete mode 100644 sysdeps/aarch64/fpu/e_sqrt.c
>  delete mode 100644 sysdeps/aarch64/fpu/e_sqrtf.c
>  create mode 100644 sysdeps/aarch64/fpu/math-use-builtins.h
>  delete mode 100644 sysdeps/aarch64/fpu/s_fma.c
>  delete mode 100644 sysdeps/aarch64/fpu/s_fmaf.c
> 
> diff --git a/sysdeps/aarch64/fpu/e_sqrt.c b/sysdeps/aarch64/fpu/e_sqrt.c
> deleted file mode 100644
> index abb67ef7b061..000000000000
> --- a/sysdeps/aarch64/fpu/e_sqrt.c
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -/* Square root of floating point number.
> -   Copyright (C) 2015-2020 Free Software Foundation, Inc.
> -   This file is part of the GNU C Library.
> -
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, see
> -   <https://www.gnu.org/licenses/>.  */
> -
> -#include <math_private.h>
> -#include <libm-alias-finite.h>
> -
> -double
> -__ieee754_sqrt (double d)
> -{
> -  return __builtin_sqrt (d);
> -}
> -libm_alias_finite (__ieee754_sqrt, __sqrt)

Ok.

> diff --git a/sysdeps/aarch64/fpu/e_sqrtf.c b/sysdeps/aarch64/fpu/e_sqrtf.c
> deleted file mode 100644
> index 13008a4f45d6..000000000000
> --- a/sysdeps/aarch64/fpu/e_sqrtf.c
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -/* Single-precision floating point square root.
> -   Copyright (C) 2015-2020 Free Software Foundation, Inc.
> -   This file is part of the GNU C Library.
> -
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, see
> -   <https://www.gnu.org/licenses/>.  */
> -
> -#include <math_private.h>
> -#include <libm-alias-finite.h>
> -
> -float
> -__ieee754_sqrtf (float s)
> -{
> -  return __builtin_sqrtf (s);
> -}
> -libm_alias_finite (__ieee754_sqrtf, __sqrtf)

Ok.

> diff --git a/sysdeps/aarch64/fpu/math-use-builtins.h b/sysdeps/aarch64/fpu/math-use-builtins.h
> new file mode 100644
> index 000000000000..52f0a0dad6dd
> --- /dev/null
> +++ b/sysdeps/aarch64/fpu/math-use-builtins.h
> @@ -0,0 +1,70 @@
> +/* Using math gcc builtins instead of generic implementation.  aarch64 version.
> +   Copyright (C) 2019-2020 Free Software Foundation, Inc.

I think it should be just 2020 here.

> +   This file is part of the GNU C Library.
> +
> +   The GNU C Library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   The GNU C Library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with the GNU C Library; if not, see
> +   <https://www.gnu.org/licenses/>.  */
> +
> +#ifndef MATH_USE_BUILTINS_H
> +#define MATH_USE_BUILTINS_H	1
> +
> +#include <features.h> /* For __GNUC_PREREQ.  */
> +
> +/* Define these macros to 1 to use __builtin_xyz instead of the
> +   generic implementation.  */
> +#define USE_NEARBYINT_BUILTIN 0
> +#define USE_NEARBYINTF_BUILTIN 0
> +#define USE_NEARBYINTL_BUILTIN 0
> +#define USE_NEARBYINTF128_BUILTIN 0

Since we are adding this new file for aarch64, we could also enable it fo
nearbyint{f} and remove sysdeps/aarch64/fpu/s_nearbyint{f}.c as well.

> +
> +#define USE_RINT_BUILTIN 0
> +#define USE_RINTF_BUILTIN 0
> +#define USE_RINTL_BUILTIN 0
> +#define USE_RINTF128_BUILTIN 0

Ditto.

> +
> +#define USE_FLOOR_BUILTIN 0
> +#define USE_FLOORF_BUILTIN 0
> +#define USE_FLOORL_BUILTIN 0
> +#define USE_FLOORF128_BUILTIN 0

Ditto.

> +
> +#define USE_CEIL_BUILTIN 0
> +#define USE_CEILF_BUILTIN 0
> +#define USE_CEILL_BUILTIN 0
> +#define USE_CEILF128_BUILTIN 0

Ditto.

> +
> +#define USE_TRUNC_BUILTIN 0
> +#define USE_TRUNCF_BUILTIN 0
> +#define USE_TRUNCL_BUILTIN 0
> +#define USE_TRUNCF128_BUILTIN 0

Ditto.

> +
> +#define USE_ROUND_BUILTIN 0
> +#define USE_ROUNDF_BUILTIN 0
> +#define USE_ROUNDL_BUILTIN 0
> +#define USE_ROUNDF128_BUILTIN 0

Ditto.

> +
> +#define USE_COPYSIGNL_BUILTIN 1
> +#if __GNUC_PREREQ (7, 0)
> +# define USE_COPYSIGNF128_BUILTIN 1
> +#else
> +# define USE_COPYSIGNF128_BUILTIN 0
> +#endif
> +

It should be described in commit message as well (although generated
instruction are essentially the same).

> +#define USE_SQRT_BUILTIN 1
> +#define USE_SQRTF_BUILTIN 1
> +
> +#define USE_FMA_BUILTIN 1
> +#define USE_FMAF_BUILTIN 1
> +#define USE_FMAL_BUILTIN 0
> +
> +#endif /* math-use-builtins.h */

Ok.

> diff --git a/sysdeps/aarch64/fpu/s_fma.c b/sysdeps/aarch64/fpu/s_fma.c
> deleted file mode 100644
> index 48bb40482dc9..000000000000
> --- a/sysdeps/aarch64/fpu/s_fma.c
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -/* Copyright (C) 1996-2020 Free Software Foundation, Inc.
> -
> -   This file is part of the GNU C Library.
> -
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, see
> -   <https://www.gnu.org/licenses/>.  */
> -
> -#include <math.h>
> -#include <libm-alias-double.h>
> -
> -double
> -__fma (double x, double y, double z)
> -{
> -  return __builtin_fma (x, y, z);
> -}
> -
> -libm_alias_double (__fma, fma)

Ok.

> diff --git a/sysdeps/aarch64/fpu/s_fmaf.c b/sysdeps/aarch64/fpu/s_fmaf.c
> deleted file mode 100644
> index 544f32e27aec..000000000000
> --- a/sysdeps/aarch64/fpu/s_fmaf.c
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
> -
> -   This file is part of the GNU C Library.
> -
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public License as
> -   published by the Free Software Foundation; either version 2.1 of the
> -   License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, see
> -   <https://www.gnu.org/licenses/>.  */
> -
> -#include <math.h>
> -#include <libm-alias-float.h>
> -
> -float
> -__fmaf (float x, float y, float z)
> -{
> -  return __builtin_fmaf (x, y, z);
> -}
> -
> -libm_alias_float (__fma, fma)
> 

Ok.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
