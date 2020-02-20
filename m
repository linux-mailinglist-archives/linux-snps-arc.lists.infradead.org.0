Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7896A165A70
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Feb 2020 10:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gU5Hke/nY8ymedE4ig1rvkB6mf3rtmblZ86XocOvS5A=; b=scBxQ9xjhTqj05vOw01fZ93HVn
	d5NQtU35YxV7NtT4eD9ayeZqgBWkLpBAtV1T1qc8VOV1NZMKs2syHSoNclfMGQsr4ObtvWIAfUqAO
	T2DZFGJJlckiixJz/gxMA2rR24G6JaxyPMLZmFJEhshlre8is4+F+jCqMFxCv0/IzTDQMLxHSfwHS
	MUWnTZqfoXLV23pxScxWM1A3qGr4KAzKfm5jDQmbvyLHKBU4wNYYKlbtKKTlhLeAXgMkCIwLT+U0r
	C6AfGiokLJ17rW4q9ny6hUxKIfHGniZwVmJLNMiH31a14zicPMZEAtXgjK1GfgHiEMRHAHmKPD25i
	IoxJYT5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iRm-0004sF-6S; Thu, 20 Feb 2020 09:48:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iRj-0004rW-1H
 for linux-snps-arc@lists.infradead.org; Thu, 20 Feb 2020 09:48:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so1273236wmi.5
 for <linux-snps-arc@lists.infradead.org>; Thu, 20 Feb 2020 01:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E4lJsyRn5c8MRRBS5Cfwnz0ljZFD9tB/hN4lq7BDblw=;
 b=WkpaZeHVz17Y1TMUSg/nKktlNbfBErrdzoba0X8m4cd2P+F0769UaDz6I4KmBu48o2
 lMoOi/Cwm+PHYYNbWqK7Ddg/jlaRJig2OiNl83hjM8JEctgMO879Fa5MFFDWMnuNi1k3
 oB1m3BjwL1HKQZvs4FU4NBj4c0gf6LY8jqmIItkPOMh1NVaVIR8uNdWFlGs43xKkFye8
 MIRnGs1ImZeWy/9DqLH6/lyVmwBM206+HSE37MuJ7ym2aMui87j7PTvT1b25lk2LHNCf
 oSNvige6GVgAR0IuWMvroCs7ZPRfiu/roVTLsk7djT08it5jZA0EliiUAAzBaB6lW8jC
 eAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E4lJsyRn5c8MRRBS5Cfwnz0ljZFD9tB/hN4lq7BDblw=;
 b=MlyCmqTTt0I3sc5HMDOqshoI6S0NC1nMBJS3fk2CuXIZa4xy2nR1uJ6rWG1tb6bZ10
 dM8UTtnwXffSWXG/A/lN8wTIKudJ/S5YHyjz2UsPE0bwByriqJj8qrT5WCJD1BgCjFaC
 yYoA0lWkvH+9aM8g483etZlcR3tlaZw7stpRULWkWCfYF7IYXoNmmSTouhuJLetdYT8s
 Mjmbw3XZKS/o8ed42w4T2/MTqzZqOFefJ+XDZYrNlgYYF9u7tFJ22kownsdl+686ExA3
 IjXp+HOQePN1nEf81O7v1gyCmWeDYLZXu4ZS9mAmRVljV3pYlCf/j6E3+uMQnbJuth+t
 F9Mg==
X-Gm-Message-State: APjAAAVQfBppua7xjEBq/wSziIezzz6pEH7VwKQjBaCjhQ5be4CfeBhu
 LYRZ/1wT2jYSbaH0GiKmCsw=
X-Google-Smtp-Source: APXvYqyPmzwx/Erf5L+zeER2/OS5TZCx8jTOE2DdSiG/Rt9EQsSfncEy52jqOK7Nu9XPwLSMgu1jIg==
X-Received: by 2002:a1c:451:: with SMTP id 78mr3269673wme.125.1582192117251;
 Thu, 20 Feb 2020 01:48:37 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::49? ([2a0b:e7c0:0:107::49])
 by smtp.gmail.com with ESMTPSA id k10sm3752046wrd.68.2020.02.20.01.48.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 01:48:36 -0800 (PST)
Subject: Re: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-10-krzk@kernel.org>
From: Jiri Slaby <jirislaby@gmail.com>
Autocrypt: addr=jirislaby@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com>
Date: Thu, 20 Feb 2020 10:48:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200219175007.13627-10-krzk@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_014839_076474_2F2CD618 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jirislaby[at]gmail.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 19. 02. 20, 18:50, Krzysztof Kozlowski wrote:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireless/ath/ath5k/ahb.c
> index 2c9cec8b53d9..8bd01df369fb 100644
> --- a/drivers/net/wireless/ath/ath5k/ahb.c
> +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *pdev)
>  
>  	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
>  		/* Enable WMAC AHB arbitration */
> -		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
> +		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);

While I understand why the parameter of ioread32 should be const, I
don't see a reason for these casts on the users' side. What does it
bring except longer code to read?

thanks,
-- 
js

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
