Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AD79131A
	for <lists+linux-snps-arc@lfdr.de>; Sat, 17 Aug 2019 23:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV8ckGRq7GL19X+y7fXCPahY23eKPq6qo1q+YbGV0nc=; b=eA84JJPwNc0h8W
	ZyPPHAhcOQNQHOsQBLCODt6UM+oNBbB8vHtcy2jad+bzlypuP82X9C4dg2DyCjaGeyLJV6072RNj+
	NaWgfuOwHNl6qtxzJqttEHR2rpsylJhH9PncfVHRPoEKBGJTgC51i4nyxG8tZxgUQh5yK/GOdO24r
	wM1pWbKjceTslfi4wKplqBL2qTdn4HqIdMiMvKHaVSIFbwXdpVqz3cYPo5i7/ivywmibJPeoLbTJk
	ISrxndx3kjVJjHmIeqJ5QMtz4y5zb0Zqn9BE0QTd9US1B8kS6kcQk9R/VQnTFK0fIxicZN1jNXQ9U
	Q4fUtVv8r29pXXS40z7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz64w-0005Wy-RA; Sat, 17 Aug 2019 21:17:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz62e-0003Kc-WF
 for linux-snps-arc@bombadil.infradead.org; Sat, 17 Aug 2019 21:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=of7+kXZ7O7iQMaD+uR4bskNv7dazvfYrCLyFqQNS+Ys=; b=A9Jf2nCOWydY9Mrbpi2UHCxQs
 /PaOSTTJDpVV/BQ0DEG+jJaK5TRoSNQ9dFr7oJxLABzik42UyE2HWzY2DpNZ4YFHl3KiBIGUwhAjv
 8+rnblJeYd2Nc64M0vLB68uP1IzYdy2a3mDa+q1u1hV2hEZBA20TvGKYyfKEx+STTQESQ5Q9iVLC/
 MUkHf3yjAHTi6JH/fTcWxKTL4D+2X93eUuJPYwVsDnabYtGBDdPOUKYqXRvrowFebrBJLHO8qWmn4
 aRCGXWb2oLR9qcc2xEXEUfJf3tA5/+8SSXtXyln2sOuediL0HKI8QhJkTw9aSTOlDXfBBtUk20w/Y
 /P4uzFyPw==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz62a-00038d-Md
 for linux-snps-arc@lists.infradead.org; Sat, 17 Aug 2019 21:15:15 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so13218518ioa.5
 for <linux-snps-arc@lists.infradead.org>; Sat, 17 Aug 2019 14:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=of7+kXZ7O7iQMaD+uR4bskNv7dazvfYrCLyFqQNS+Ys=;
 b=J32rrdBRvRsfbFjCu9mt8fMYOMslmZza78qiqRkRyerF7Tvcpg2S9u01Ma540XGXA7
 2iMu5p3Hkj4aS5LBrD+33KElVbGx/xBadIYVGPANBM7jO6Se6GA6GrwSMEwF29HvJ6ER
 vZ9LmfwOTrujU/Kp5jYgpxJYxNHczK453ZXPgcwCmkGHcdiVYKwlFvQ6JuUiC1/4nCYl
 uFAhRB0N/reKVlsdq1bNGymQlRL3HWYkOuH8XT80KfGMY/WL2QfRa8xGoQM4QoYPzMnq
 iTWN1h7rhUiSs1zoLq4NqE4o/IAPIBBfkwLsR3a1H+aqVN59SAAPttTAgUB3YgtJ2wpS
 6ilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=of7+kXZ7O7iQMaD+uR4bskNv7dazvfYrCLyFqQNS+Ys=;
 b=IqZe+kIPLFH6OHTLrOA/XnlNDx5Z4YKbSwtE40MoqWGcpCpSzPX/q4CSSXdlqsVBF+
 qM03BP1B3FuyQQBYVAo5U8GAzzdM+OUHK584AcawiNOCO3nj4OTyBUX0iKLSM1KugOyT
 m8GkJGskksuYkkLjG8gIIpc7+114UaT2KdGICHhfVE6w/jHboVP9W1hV16q7pADl7VqV
 e64It6H1SYvbiNpMB+erp/G+TtB55wJOhmPuxRxreRF3RG5bF3Z+X7cTmBdn/eDKiL38
 wxxm16o6cbIAFmXqtFOPe4/yy//orTI06T7y0a/AgyJp35eo2yfBWD9NdYHg4416wNQ4
 Eg3w==
X-Gm-Message-State: APjAAAU3wFLW8a122vpnTBNpZRWPvO8XlrdTuQvQRnJWFdf6gJSdrWcv
 x3ni2hqnLa4cCYOiS7vvYD+uMw==
X-Google-Smtp-Source: APXvYqxhPFwhoGwEv9EiCGR2YXAs4N7HYnW3IuL/COnl5kQqZm2U/FQDN7BsZ9+pbm1TtqxdMhb2eg==
X-Received: by 2002:a02:654d:: with SMTP id u74mr19023736jab.115.1566076507872; 
 Sat, 17 Aug 2019 14:15:07 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 z19sm8681923ioh.12.2019.08.17.14.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:15:07 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:15:06 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 16/26] asm-generic: don't provide ioremap for
 CONFIG_MMU
In-Reply-To: <20190817073253.27819-17-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908171414260.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-17-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019, Christoph Hellwig wrote:

> All MMU-enabled ports have a non-trivial ioremap and should thus provide
> the prototype for their implementation instead of providing a generic
> one unless a different symbol is not defined.  Note that this only
> affects sparc32 nds32 as all others do provide their own version.
> 
> Also update the kerneldoc comments in asm-generic/io.h to explain the
> situation around the default ioremap* implementations correctly.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/nds32/include/asm/io.h    |  2 ++
>  arch/sparc/include/asm/io_32.h |  1 +
>  include/asm-generic/io.h       | 29 ++++++++---------------------
>  3 files changed, 11 insertions(+), 21 deletions(-)
> 

[ ... ]

> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index a98ed6325727..6a5edc23afe2 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -922,28 +922,16 @@ static inline void *phys_to_virt(unsigned long address)
>  /**
>   * DOC: ioremap() and ioremap_*() variants
>   *
> - * If you have an IOMMU your architecture is expected to have both ioremap()
> - * and iounmap() implemented otherwise the asm-generic helpers will provide a
> - * direct mapping.
> + * Architectures with an MMU are expected to provide ioremap() and iounmap()
> + * themselves.  For NOMMU architectures we provide a default nop-op
> + * implementation that expect that the physical address used for MMIO are
> + * already marked as uncached, and can be used as kernel virtual addresses.
>   *
> - * There are ioremap_*() call variants, if you have no IOMMU we naturally will
> - * default to direct mapping for all of them, you can override these defaults.
> - * If you have an IOMMU you are highly encouraged to provide your own
> - * ioremap variant implementation as there currently is no safe architecture
> - * agnostic default. To avoid possible improper behaviour default asm-generic
> - * ioremap_*() variants all return NULL when an IOMMU is available. If you've
> - * defined your own ioremap_*() variant you must then declare your own
> - * ioremap_*() variant as defined to itself to avoid the default NULL return.
> + * ioremap_wc() and ioremap_wt() can provide more relaxed caching attributes
> + * for specific drivers if the architecture choses to implement them.  If they
                                               ^^^ chooses



- Paul

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
