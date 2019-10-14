Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E91ED68BB
	for <lists+linux-snps-arc@lfdr.de>; Mon, 14 Oct 2019 19:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ErB2sz3SsT5TcqQ0HsEW167GYe974TiAMgCcbL24PQ=; b=DbdgnsC2ys79QL
	ktC0dBqoI2B1xxpnO3oVDU5CiLjUf+TkCqLPIsczLaOHVTx4B7ZuJxfS9WbQVsg26Ve0AvHfDTQ5Y
	Gdhhd/hm8/KGPSFJzcFJC24J9AB2AfTb8voRVZin6D0jaymvdd6+UFElfQ9c5ed1oActZ4iDjtXPR
	svC8MhsRDsGU7Ged5wxuAUJ885pzwIo9TEdu/Hrhxd6f7crpXslNrLEv9Q9kUBABg6Q463CU5J/yb
	pqYHOmzKrfJa067uOh+uI6HCMxS9OgmZCHeVTdxuJGPkOxQth7zLo+vhx4Ad1f7ULPQl6j+KgTbac
	To4sgpP2NG+s/Yez0GkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4Ln-0003X1-5A; Mon, 14 Oct 2019 17:41:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4Lj-0003WO-TE
 for linux-snps-arc@lists.infradead.org; Mon, 14 Oct 2019 17:41:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id q12so12369562lfc.11
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 10:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P799DeurAv7knAP/9jFPDE4m8m+46TvvpHN93XfkDjE=;
 b=HWWymbYdZnWtJmHwFOmPF1ZzJDaTOeayFZ5PwgDvPf6UmwnVngK8F0WL6ftDpUBt65
 6CA7fbK/RfBrDC+lGkPSzKjf3Py8iCvGuqPRh2kQkkDM55QsR1au+xiI2Z52IW4rOkCn
 s1q1W19Sc+umQVIDvAwB4blHAjaZuSeemBQjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P799DeurAv7knAP/9jFPDE4m8m+46TvvpHN93XfkDjE=;
 b=pJbc8nN94V2ZX22B+NT6jI04twbmB/vbj/VYUZuf+wo59xd0p9htTQqTUz8zn2/l+b
 4nA5YR8+zJbfwzaKadI1lCy2XMMnNpPwXKGsErCbOQ0V5D9bv0ldjtFIt/ZD6IfD2E0t
 z0D19QdLYGMxBzTufsh21JSiuI2E7iwSZbIonHwfQbRR63OVOgnhzCkMXVDYPaDfx0ui
 vwKukgMR81Y2r+E1QM7tzFis7h6ESfqxrT0O9qvADkW6GkBQckXlx4pNwwxRe30IxuOR
 3IK0W2dLHFMIZKvkcPaeS4PV5MZ7vZYKySlY3vsYRUQLbr6xejsUx8OUf3qUS9ZCn1xE
 +yeg==
X-Gm-Message-State: APjAAAW1NU0VYc2PtN63tGTuoHaD8N/hKYH/X8CYaUH5FSChGR/BatVI
 6TJNg/AQ+ZPmqrbygdXEdCIotFa0lhI=
X-Google-Smtp-Source: APXvYqxYGryyOwbh0UYeewvcciBQrvlu8vYv/v4LtFAKeVOy/uX28NSb41f4bVsbzJJuSBXmNBwC3g==
X-Received: by 2002:ac2:41d2:: with SMTP id d18mr17591069lfi.92.1571074897405; 
 Mon, 14 Oct 2019 10:41:37 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id 77sm4514413ljf.85.2019.10.14.10.41.35
 for <linux-snps-arc@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 10:41:35 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id m13so17426640ljj.11
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 10:41:35 -0700 (PDT)
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr19334971ljc.97.1571074895188; 
 Mon, 14 Oct 2019 10:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191011121951.nxna6hruuskvdxod@box>
 <20191011223818.7238-1-vgupta@synopsys.com>
In-Reply-To: <20191011223818.7238-1-vgupta@synopsys.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Oct 2019 10:41:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
Message-ID: <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
Subject: Re: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_104139_962579_F9B8CE66 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nick Piggin <npiggin@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 3:38 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> This is inine with similar patches for nopud [1] and nop4d [2] cases.

I don't think your patch is wrong, but wouldn't it be easier and
cleaner to just do this instead

    --- a/include/asm-generic/pgtable-nopmd.h
    +++ b/include/asm-generic/pgtable-nopmd.h
    @@ -60,7 +60,7 @@ static inline pmd_t * pmd_offset(pud_t * pud,
unsigned long address)
     static inline void pmd_free(struct mm_struct *mm, pmd_t *pmd)
     {
     }
    -#define __pmd_free_tlb(tlb, x, a)          do { } while (0)
    +#define pmd_free_tlb(tlb, x, a)            do { } while (0)

     #undef  pmd_addr_end
     #define pmd_addr_end(addr, end)                    (end)

and just rely on the regular "#ifndef pmd_free_tlb" in
include/asm-generic/tlb.h?

Completely untested.

              Linus

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
