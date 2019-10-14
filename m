Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4944ED695D
	for <lists+linux-snps-arc@lfdr.de>; Mon, 14 Oct 2019 20:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFvQZAbaWrnLiQN1kTkPxAP9++1NOOwZt8ypFfxa4tM=; b=bhJoTboB6R25VM
	hjqNJWgg+/20QUSYjeYUV1cup1ubo4qPA2Wtfc6lvZXiGdyo7/78ShpmYw/TGuH7/GjVlEQHiJ63l
	IlH8t2D+e9Y98Uygqe5wyI3nWiUR1hbunNhbxyaZ2CDrfRBUiW46iGTe9zHgbRCZAML+NoJAjsUm3
	RD0flasb/9mvXsg1A6/38Yeelg1c9qOmhMK6WTIk+cH1UbgMWL4TP46F/G8udF4aa7zav0eg8xktF
	lVBCGBOzyGnnUxtKn+VtPsNxMUAj7sJnQps/AVgpL9TdcTid7wUWMUaw69ig7lFX1y+bicIZHNrKj
	LChMwlPs9f9OGBawnrNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK52B-0004F7-2x; Mon, 14 Oct 2019 18:25:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK528-0004Ee-Kz
 for linux-snps-arc@lists.infradead.org; Mon, 14 Oct 2019 18:25:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id m13so17548414ljj.11
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 11:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KDuevqM/GLUJPGbOy3AGpp+bGYIu9uznq9tCzNOdVnk=;
 b=eFnO/9lpSVSXWLQ3fx0+ELMmNrsLtf3Hba4c2Es0a+hMIgo8BkTvA2g+XLL6ae5cuf
 eHpY4iHiQNdWJG0yCJ28JJvdlgzq74lQSbjKt6r0QLWzMfhv7g4BRu4JRX+xaJEXEY1R
 7khFc16C1Y9LdR7AcqZ12vycw+JbW4J+ln5j8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KDuevqM/GLUJPGbOy3AGpp+bGYIu9uznq9tCzNOdVnk=;
 b=rdK6rFL0pb4kMgvTXqIE6SS8hcq/Ehpm/XpAP9yK3vkDpcIYnOItWNiHma9irp8q6J
 am3cBTGkCin0aHtn7zVUfBmCjRY2Bhn69qeAf40YBHDHBCxhmOz3nzmGtEePWh1KOlX5
 d/oh0d+fQwsZw1yFUAmongoq66rO2HKJ5lpDPi/VHtXxa56qheVBcs9UFWix+EY39HC4
 Z+CcHGw6yt6xdaH0m6yoy1JyQ0VaWJVjUe5miY5qGCa8GfEiKuwfYRUnVFvhKcqHWsTu
 WAn+KOg/2rxZnnU0nvASbIeRyOPOOYWjTpWLaDttaNIW36X4F5ehMG1g/jM1Je4GgkmA
 WolA==
X-Gm-Message-State: APjAAAWwC22xmqdCLfWLNf0ll3gCfOnKfQI41oEyheO7l+knWT58I2lb
 8FJPMMQ9KnPTAgg9ERLN3ULapCNUrmQ=
X-Google-Smtp-Source: APXvYqzxk347kYE10qHQ/2vf98+VdjOtQcyDdHEDsQq9n1NCci/QI8damgJrxeBdazmfyQ/TExd5vA==
X-Received: by 2002:a2e:a0ca:: with SMTP id f10mr9638557ljm.84.1571077526522; 
 Mon, 14 Oct 2019 11:25:26 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id t22sm4402652lfg.91.2019.10.14.11.25.24
 for <linux-snps-arc@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 11:25:25 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id c195so12475736lfg.9
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 11:25:24 -0700 (PDT)
X-Received: by 2002:a19:f709:: with SMTP id z9mr18323634lfe.170.1571077524617; 
 Mon, 14 Oct 2019 11:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191011121951.nxna6hruuskvdxod@box>
 <20191011223818.7238-1-vgupta@synopsys.com>
 <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
 <c0979d98-7236-b7c8-bd40-173ee2e87385@gmail.com>
In-Reply-To: <c0979d98-7236-b7c8-bd40-173ee2e87385@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Oct 2019 11:25:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
Message-ID: <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
Subject: Re: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
To: Vineet Gupta <vineetg76@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_112528_711078_6EC83806 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Mon, Oct 14, 2019 at 11:02 AM Vineet Gupta <vineetg76@gmail.com> wrote:
>
> I suppose we could but
>
> (a) It would be asymmetric with the __p{u,4}d_free_tlb() changes in [1] and [2].

Your patch is already assymmetric wrt those anyway - you had to add that

  +#else
  +#define pmd_free_tlb(tlb, pmdp, address)        do { } while (0)
  +#endif

that the other cases don't currently have, so then you point to
another patch that makes the code uglier instead.

> Do you  prefer [1] and [2] be repun along the same lines as you propose above ?

In general, I absolutely detest how we have random

   #ifndef ARCH_HAS_ONE_DEFINE
   #define another_define_entirely()
   ...

which makes no sense and is ugly, and also wreaks havoc on simple
things like "git grep another_define_entirely"

I've long tried to convince people to just do

  #ifndef special_define
  #define special_define(xyz) ..
  #endif

instead, which doesn't mix up two completely unrelated names, and when
you grep for that function name, you _see_ all the context.

> Also would you care to shed light on my other question about not being able to
> fold away pmd_clear_bad() despite PMD_FOLDED given the pmd macros actually
> checking for pgd. Of all the people you are likely to have most insight on how the
> pmd folding actually evolved and works :-)

I think some of it is just ugly and historical, and confused.

In general, it should always be the "higher" level that folds away. So
I think the best example of this is

  include/asm-generic/pgtable-nop4d.h

where basically all the "pgd" functions become no-ops, and can never
not exist or be bad, because they are always just containers for the
lower level and don't have any data in them themselves:

  static inline int pgd_none(pgd_t pgd)           { return 0; }
  static inline int pgd_bad(pgd_t pgd)            { return 0; }
  static inline int pgd_present(pgd_t pgd)        { return 1; }
  static inline void pgd_clear(pgd_t *pgd)        { }

and walking from pgd to p4d is that nice folded op:

  static inline p4d_t *p4d_offset(pgd_t *pgd, unsigned long address)
  { return (p4d_t *)pgd; }

and this is how it should always work.See "nopud" and "nopmd"(which
are 3rd/2nd level respectively) doing the same thing exactly.

And yes, pmd_clear_bad() should just go away. We have

  static inline int pmd_none_or_clear_bad(pmd_t *pmd)
  {
        if (pmd_none(*pmd))
                return 1;
        if (unlikely(pmd_bad(*pmd))) {
                pmd_clear_bad(pmd);
                return 1;
        }
        return 0;
  }

and if the pmd doesn't exist, then both pmd_none() and pmd_bad()
should just be zero (see above), and the pmd_none_or_clear_bad()
should just become "return 0";

Exactly what part isn't working for you?

I suspect part of the problem is exactly that we than have that stupid
confusion with some code checking "#ifdef __PAGETABLE_PMD_FOLDED" and
then making their own random decisions based on things like that
instead.

When you do that, the code ends up relying on other magic than just
the natural folding.

            Linus

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
