Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635E1F32FE
	for <lists+linux-snps-arc@lfdr.de>; Thu,  7 Nov 2019 16:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=IViKRgBOf0gfXUpbus1ayzBFhhGTKgF14Wl8ccNriI8=; b=E6t8Wn5rykE0Tjca6+cY+xqVR
	FZPzym/fxIjcyGpPS5JwU8wwG50KlhVHFRv0PPhTHHap2bMYQYHROaATc4wv0W7+5o2gjIOqIxDa1
	Su5YI3U/kQ/yCgO+3dBOAcGoIPY1WPW9cqtOQ5S5bOywuDeML3Q/DJbtIrd+QmXxp7MeuxzutY3xb
	vX8SG+xwpvMtUfUiEaIK4LPhN5V9Kk311SrqbwOaDeKp6xz83Qxopov+khcIMsdZw7opccGmMie6Q
	1SeUxEgZmsi9MHltZS4IdvUkSqpIuR8sNy49Afh0rCe4dJAnVCR96UIgzyGwBWUE/EbDm7IAPz0ic
	9wftFa0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjik-0006XU-1C; Thu, 07 Nov 2019 15:29:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjig-0006VJ-P1
 for linux-snps-arc@lists.infradead.org; Thu, 07 Nov 2019 15:29:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id z24so2340577pgu.4
 for <linux-snps-arc@lists.infradead.org>; Thu, 07 Nov 2019 07:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=GbyQkvm+sFQYWlS225S4dt9u2BPPAVTJsInNrOBU2Cw=;
 b=SSYfx+6GZDmDgcSY10ocXoeqy0hvmi6reeDxEoQaAK6GCZCK9w+PzQYApeYqiY++fk
 M+tQGD6vS51dQQe5tSz4jCiUaKguLT3oFupheS96jDMwxARnNuu5nNZUNPYkSKlItpwK
 n4+KCfywaoq2TS79EdF/7PydD1molSI6AAqvO/ZGgE+4pWfhiWmrteTgHV+/1VZacN6J
 zh92pqeL/VUD/D36NRtWMaA8VYTT6RbLnYEFFgWWP9sKvvMOqYEQ/LHSUZ0Ljg+bM2jc
 Hn0SXz5up/lwM0AnUXb3mkKmK/jhJDw/2Q6Q9tWDOGqA0rMh1HezGItuGNAqqcrUeFp+
 45ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GbyQkvm+sFQYWlS225S4dt9u2BPPAVTJsInNrOBU2Cw=;
 b=lqinrLqvWqaqvUHF5gSl5ebBTpmXNsFIKIUEjvW69tyaBUhj8ojDcjk2/TQ76Iu/J8
 OWq1O/DZ+ewS7yJJlvHmMufuP1Yh+oqrkIbudMhVq44rB/gdHBag9uor2B/qhJUR463a
 cdPcP02HaSMXeIuOvrRZOXe9f0sHKN6QHRgtvTzzXhjLqkbEDDo1dKGagzU58u0QCVPA
 cfpoFKWtB8gxOK1iMJvcMQ20I8W8Vz3rkI/2q08LC7Gej7HRC0faFIP4BrDLQYPq0+e7
 0mKEVI6Es4DwHYTkf//JQLhEaTRoPNMZsjiUWkt3I2XZxUmt9dllmhntbyn8IVYd5mhh
 Qejw==
X-Gm-Message-State: APjAAAV5cqgqUK4pfljF1OB1u/iqqe4UzwMSu/XLN89BsyGF+w7ZLhKI
 uPCK+SfstZxddTUAIm4mZSoqZg==
X-Google-Smtp-Source: APXvYqxZWuyJcE77KhdsPjm9nF9Fuj8aALe30eqgmntG5XGTW6TdluM2Ry7yVUPEvnD0qYzDHJsYjQ==
X-Received: by 2002:a63:d504:: with SMTP id c4mr5032823pgg.75.1573140549240;
 Thu, 07 Nov 2019 07:29:09 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id m15sm3002721pgv.58.2019.11.07.07.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 07:29:08 -0800 (PST)
Date: Thu, 07 Nov 2019 07:29:08 -0800 (PST)
X-Google-Original-Date: Wed, 06 Nov 2019 10:43:22 PST (-0800)
Subject: Re: [PATCH 12/21] arch: rely on asm-generic/io.h for default
 ioremap_* definitions
In-Reply-To: <20191029064834.23438-13-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-fd2a8aae-e87e-44dd-9416-57bb380955d9@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_072910_849798_6A89F60B 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, guoren@kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, deanbo422@gmail.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, green.hu@gmail.com,
 linux-mtd@lists.infradead.org, gxt@pku.edu.cn,
 linux-arm-kernel@lists.infradead.org, monstr@monstr.eu,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 23:48:25 PDT (-0700), Christoph Hellwig wrote:
> Various architectures that use asm-generic/io.h still defined their
> own default versions of ioremap_nocache, ioremap_wt and ioremap_wc
> that point back to plain ioremap directly or indirectly.  Remove these
> definitions and rely on asm-generic/io.h instead.  For this to work
> the backup ioremap_* defintions needs to be changed to purely cpp
> macros instea of inlines to cover for architectures like openrisc
> that only define ioremap after including <asm-generic/io.h>.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arc/include/asm/io.h        |  4 ----
>  arch/arm/include/asm/io.h        |  1 -
>  arch/arm64/include/asm/io.h      |  2 --
>  arch/csky/include/asm/io.h       |  1 -
>  arch/ia64/include/asm/io.h       |  1 -
>  arch/microblaze/include/asm/io.h |  3 ---
>  arch/nios2/include/asm/io.h      |  4 ----
>  arch/openrisc/include/asm/io.h   |  1 -
>  arch/riscv/include/asm/io.h      | 10 ----------
>  arch/s390/include/asm/io.h       |  4 ----
>  arch/x86/include/asm/io.h        |  1 -
>  arch/xtensa/include/asm/io.h     |  4 ----
>  include/asm-generic/io.h         | 18 +++---------------
>  13 files changed, 3 insertions(+), 51 deletions(-)
>
> diff --git a/arch/arc/include/asm/io.h b/arch/arc/include/asm/io.h
> index 72f7929736f8..8f777d6441a5 100644
> --- a/arch/arc/include/asm/io.h
> +++ b/arch/arc/include/asm/io.h
> @@ -34,10 +34,6 @@ static inline void ioport_unmap(void __iomem *addr)
>
>  extern void iounmap(const void __iomem *addr);
>
> -#define ioremap_nocache(phy, sz)	ioremap(phy, sz)
> -#define ioremap_wc(phy, sz)		ioremap(phy, sz)
> -#define ioremap_wt(phy, sz)		ioremap(phy, sz)
> -
>  /*
>   * io{read,write}{16,32}be() macros
>   */
> diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
> index 924f9dd502ed..aefdabdbeb84 100644
> --- a/arch/arm/include/asm/io.h
> +++ b/arch/arm/include/asm/io.h
> @@ -392,7 +392,6 @@ static inline void memcpy_toio(volatile void __iomem *to, const void *from,
>   */
>  void __iomem *ioremap(resource_size_t res_cookie, size_t size);
>  #define ioremap ioremap
> -#define ioremap_nocache ioremap
>
>  /*
>   * Do not use ioremap_cache for mapping memory. Use memremap instead.
> diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
> index 323cb306bd28..4e531f57147d 100644
> --- a/arch/arm64/include/asm/io.h
> +++ b/arch/arm64/include/asm/io.h
> @@ -167,9 +167,7 @@ extern void iounmap(volatile void __iomem *addr);
>  extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
>
>  #define ioremap(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
> -#define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
>  #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
> -#define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
>
>  /*
>   * PCI configuration space mapping function.
> diff --git a/arch/csky/include/asm/io.h b/arch/csky/include/asm/io.h
> index 80d071e2567f..a4b9fb616faa 100644
> --- a/arch/csky/include/asm/io.h
> +++ b/arch/csky/include/asm/io.h
> @@ -42,7 +42,6 @@ extern void iounmap(void *addr);
>
>  #define ioremap(addr, size)		__ioremap((addr), (size), pgprot_noncached(PAGE_KERNEL))
>  #define ioremap_wc(addr, size)		__ioremap((addr), (size), pgprot_writecombine(PAGE_KERNEL))
> -#define ioremap_nocache(addr, size)	ioremap((addr), (size))
>  #define ioremap_cache			ioremap_cache
>
>  #include <asm-generic/io.h>
> diff --git a/arch/ia64/include/asm/io.h b/arch/ia64/include/asm/io.h
> index fec9df9609ed..3d666a11a2de 100644
> --- a/arch/ia64/include/asm/io.h
> +++ b/arch/ia64/include/asm/io.h
> @@ -263,7 +263,6 @@ static inline void __iomem * ioremap_cache (unsigned long phys_addr, unsigned lo
>  	return ioremap(phys_addr, size);
>  }
>  #define ioremap ioremap
> -#define ioremap_nocache ioremap
>  #define ioremap_cache ioremap_cache
>  #define ioremap_uc ioremap_uc
>  #define iounmap iounmap
> diff --git a/arch/microblaze/include/asm/io.h b/arch/microblaze/include/asm/io.h
> index 86c95b2a1ce1..d33c61737b8b 100644
> --- a/arch/microblaze/include/asm/io.h
> +++ b/arch/microblaze/include/asm/io.h
> @@ -39,9 +39,6 @@ extern resource_size_t isa_mem_base;
>  extern void iounmap(volatile void __iomem *addr);
>
>  extern void __iomem *ioremap(phys_addr_t address, unsigned long size);
> -#define ioremap_nocache(addr, size)		ioremap((addr), (size))
> -#define ioremap_wc(addr, size)			ioremap((addr), (size))
> -#define ioremap_wt(addr, size)			ioremap((addr), (size))
>
>  #endif /* CONFIG_MMU */
>
> diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
> index 74ab34aa6731..d108937c321e 100644
> --- a/arch/nios2/include/asm/io.h
> +++ b/arch/nios2/include/asm/io.h
> @@ -33,10 +33,6 @@ static inline void iounmap(void __iomem *addr)
>  	__iounmap(addr);
>  }
>
> -#define ioremap_nocache ioremap
> -#define ioremap_wc ioremap
> -#define ioremap_wt ioremap
> -
>  /* Pages to physical address... */
>  #define page_to_phys(page)	virt_to_phys(page_to_virt(page))
>
> diff --git a/arch/openrisc/include/asm/io.h b/arch/openrisc/include/asm/io.h
> index 5b81a96ab85e..e18f038b2a6d 100644
> --- a/arch/openrisc/include/asm/io.h
> +++ b/arch/openrisc/include/asm/io.h
> @@ -25,7 +25,6 @@
>  #define PIO_OFFSET		0
>  #define PIO_MASK		0
>
> -#define ioremap_nocache ioremap
>  #include <asm-generic/io.h>
>  #include <asm/pgtable.h>
>
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index fc1189ad3777..c1de6875cc77 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -15,16 +15,6 @@
>  #include <asm/mmiowb.h>
>
>  extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
> -
> -/*
> - * The RISC-V ISA doesn't yet specify how to query or modify PMAs, so we can't
> - * change the properties of memory regions.  This should be fixed by the
> - * upcoming platform spec.
> - */
> -#define ioremap_nocache(addr, size) ioremap((addr), (size))
> -#define ioremap_wc(addr, size) ioremap((addr), (size))
> -#define ioremap_wt(addr, size) ioremap((addr), (size))
> -
>  extern void iounmap(volatile void __iomem *addr);
>
>  /* Generic IO read/write.  These perform native-endian accesses. */
> diff --git a/arch/s390/include/asm/io.h b/arch/s390/include/asm/io.h
> index ca421614722f..5a16f500515a 100644
> --- a/arch/s390/include/asm/io.h
> +++ b/arch/s390/include/asm/io.h
> @@ -26,10 +26,6 @@ void unxlate_dev_mem_ptr(phys_addr_t phys, void *addr);
>
>  #define IO_SPACE_LIMIT 0
>
> -#define ioremap_nocache(addr, size)	ioremap(addr, size)
> -#define ioremap_wc			ioremap_nocache
> -#define ioremap_wt			ioremap_nocache
> -
>  void __iomem *ioremap(unsigned long offset, unsigned long size);
>  void iounmap(volatile void __iomem *addr);
>
> diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
> index 6b5cc41319a7..9997521fc5cd 100644
> --- a/arch/x86/include/asm/io.h
> +++ b/arch/x86/include/asm/io.h
> @@ -205,7 +205,6 @@ extern void __iomem *ioremap_encrypted(resource_size_t phys_addr, unsigned long
>   */
>  void __iomem *ioremap(resource_size_t offset, unsigned long size);
>  #define ioremap ioremap
> -#define ioremap_nocache ioremap
>
>  extern void iounmap(volatile void __iomem *addr);
>  #define iounmap iounmap
> diff --git a/arch/xtensa/include/asm/io.h b/arch/xtensa/include/asm/io.h
> index 441fb56926a7..54188e69b988 100644
> --- a/arch/xtensa/include/asm/io.h
> +++ b/arch/xtensa/include/asm/io.h
> @@ -52,10 +52,6 @@ static inline void __iomem *ioremap_cache(unsigned long offset,
>  }
>  #define ioremap_cache ioremap_cache
>
> -#define ioremap_nocache ioremap
> -#define ioremap_wc ioremap
> -#define ioremap_wt ioremap
> -
>  static inline void iounmap(volatile void __iomem *addr)
>  {
>  	unsigned long va = (unsigned long) addr;
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 6a5edc23afe2..4e45e1cb6560 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -949,27 +949,15 @@ static inline void iounmap(void __iomem *addr)
>  #endif /* CONFIG_MMU */
>
>  #ifndef ioremap_nocache
> -#define ioremap_nocache ioremap_nocache
> -static inline void __iomem *ioremap_nocache(phys_addr_t offset, size_t size)
> -{
> -	return ioremap(offset, size);
> -}
> +#define ioremap_nocache ioremap
>  #endif
>
>  #ifndef ioremap_wc
> -#define ioremap_wc ioremap_wc
> -static inline void __iomem *ioremap_wc(phys_addr_t offset, size_t size)
> -{
> -	return ioremap_nocache(offset, size);
> -}
> +#define ioremap_wc ioremap
>  #endif
>
>  #ifndef ioremap_wt
> -#define ioremap_wt ioremap_wt
> -static inline void __iomem *ioremap_wt(phys_addr_t offset, size_t size)
> -{
> -	return ioremap_nocache(offset, size);
> -}
> +#define ioremap_wt ioremap
>  #endif
>
>  /*

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
