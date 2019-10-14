Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF808D69E4
	for <lists+linux-snps-arc@lfdr.de>; Mon, 14 Oct 2019 21:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzfMnhLfa+WWOU5R0ann/GoFooS5SIPFjRS2ILtcOOI=; b=HFLu5reAS9r1gd
	+ADFowGc3BCt/2EkI9cnngXjhT34Ra8LPf3hz3eAOOrnsJXGI4FCEus+xfDj+STkf0tMGUPHqnfx6
	yS/19z74u6CNR3Q+GLJrXI8F6MI9UVk5Q11cUewHSsYhOGszNbkrsze83WDR0YhJNFKkKektioMCg
	T1ZuD+gwZID6q8lSMWkpoTAhnT3TpyaDwNuGy2VkTZvnGr8ML2r1wOc+XvN28XrhoGc+O5VoFO5Ce
	cHQ1nn8g191TxvbT7VYjHF+UM5QdDLyT3iV7u74ZTBPa7lRkVCISQVimnb+G5PHAgx6U5G2k5b1xc
	aJ8Tbbv9o6S08g8eZ7ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5hU-0002cn-Nu; Mon, 14 Oct 2019 19:08:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5hR-0002bi-Nc
 for linux-snps-arc@lists.infradead.org; Mon, 14 Oct 2019 19:08:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id q7so10889192pfh.8
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 12:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FBBg5EeaXdiPGcralCPHzJdKQfayQPYUEkTPu/r6Rps=;
 b=AJhqCUxTXxE4Lwxt/PAOcGyD6jlh4eST/XnUwAMSxkTq/4jcVnANtXecswKLMSjyxH
 xjhJKySne1jcNDSyA7J0N0rcGcT+CqHd+38YV8I1pl2sk8JqouXSLaqcl4gzjhEYwphw
 cYMid/cmIF1+mFNn6Lo4B+fYyY0Z3b86B+dE41VB9T3DaqbozaPf4FnSLV8GdHiPFTOn
 1HrAxScRjFjiYDyIQ1Ij4TSM7AeBdNeZDABEXh6HD9vxeWU8Y3wLhY2nhmijxhTVUP7j
 aPnwvrxl3d8KOCyCjkkIm+cNGTEfGj96wkaXCRg7N7AwLZvbMsO89DecKIrybg4nQFe4
 4TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FBBg5EeaXdiPGcralCPHzJdKQfayQPYUEkTPu/r6Rps=;
 b=ra3opJf0CI817YxNCtGccuh4NzIjg52+6X/OSxqhlBYBtHp7xiJB77lKyPxoCvEcZ/
 RoLQYk6ITf7I1DBQUKEg75YUU799BbInktguQFKxmiHOzbkZQYWl4IuxGj5Ddg2EDb5F
 qDTWDWYiV4gTQvE639np2OYC438cWvJQ5vqhj//mRakTpo6sh21keHeIprNjWP38mksw
 XC/hswy687VhB7R2G8CyxWuIzWt972qmRGtdVimVVHwwFzDa+XqTAnEO4hbZNmALcFLh
 8JzBIy4X439VdB4TdFzZNFRutiBKi43iU9seW4SVZu+adeIIl9AXHvPKs0SIKAcSIXq/
 sJ+w==
X-Gm-Message-State: APjAAAWSXRqVl8h9osH3BfzVXo6ti3DUtU3heqMjE026jlUB9plTXyFU
 7qeQvsAWCpre03Jt/QSuHqM=
X-Google-Smtp-Source: APXvYqxD2/k6MPmjphMDCqRWgIL9YwiwjirfkbK1kkA4XugVrqta0xFcwkFLpdRtAbibwVRCLsE5/w==
X-Received: by 2002:a63:4d61:: with SMTP id n33mr34136937pgl.158.1571080086452; 
 Mon, 14 Oct 2019 12:08:06 -0700 (PDT)
Received: from [192.168.110.119] ([198.182.47.47])
 by smtp.gmail.com with ESMTPSA id y8sm20513036pge.21.2019.10.14.12.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Oct 2019 12:08:05 -0700 (PDT)
Subject: Re: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20191011121951.nxna6hruuskvdxod@box>
 <20191011223818.7238-1-vgupta@synopsys.com>
 <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
 <c0979d98-7236-b7c8-bd40-173ee2e87385@gmail.com>
 <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
From: Vineet Gupta <vineetg76@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vineetg76@gmail.com; prefer-encrypt=mutual; keydata=
 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
 deE0Dvw98SWmZSNtdOPnJZ0D
Message-ID: <8bfd023b-5c00-8355-fd0f-3b4377951e6c@gmail.com>
Date: Mon, 14 Oct 2019 12:08:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_120809_800534_C512DAB4 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 10/14/19 11:25 AM, Linus Torvalds wrote:
> On Mon, Oct 14, 2019 at 11:02 AM Vineet Gupta <vineetg76@gmail.com> wrote:
>>
>> I suppose we could but
>>
>> (a) It would be asymmetric with the __p{u,4}d_free_tlb() changes in [1] and [2].
> 
> Your patch is already assymmetric wrt those anyway - you had to add that
> 
>   +#else
>   +#define pmd_free_tlb(tlb, pmdp, address)        do { } while (0)
>   +#endif
> 
> that the other cases don't currently have, so then you point to
> another patch that makes the code uglier instead.
> 
>> Do you  prefer [1] and [2] be repun along the same lines as you propose above ?
> 
> In general, I absolutely detest how we have random
> 
>    #ifndef ARCH_HAS_ONE_DEFINE
>    #define another_define_entirely()
>    ...
> 
> which makes no sense and is ugly, and also wreaks havoc on simple
> things like "git grep another_define_entirely"
> 
> I've long tried to convince people to just do
> 
>   #ifndef special_define
>   #define special_define(xyz) ..
>   #endif
> 
> instead, which doesn't mix up two completely unrelated names, and when
> you grep for that function name, you _see_ all the context.

Ok fair enough, I'd just add extra comments to non stubbed p?d_free_tlb that they
are stubbed out for corresponding case.

> 
>> Also would you care to shed light on my other question about not being able to
>> fold away pmd_clear_bad() despite PMD_FOLDED given the pmd macros actually
>> checking for pgd. Of all the people you are likely to have most insight on how the
>> pmd folding actually evolved and works :-)
> 
> I think some of it is just ugly and historical, and confused.
> 
> In general, it should always be the "higher" level that folds away. So
> I think the best example of this is
> 
>   include/asm-generic/pgtable-nop4d.h
> 
> where basically all the "pgd" functions become no-ops, and can never
> not exist or be bad, because they are always just containers for the
> lower level and don't have any data in them themselves:
> 
>   static inline int pgd_none(pgd_t pgd)           { return 0; }
>   static inline int pgd_bad(pgd_t pgd)            { return 0; }
>   static inline int pgd_present(pgd_t pgd)        { return 1; }
>   static inline void pgd_clear(pgd_t *pgd)        { }
> 
> and walking from pgd to p4d is that nice folded op:
> 
>   static inline p4d_t *p4d_offset(pgd_t *pgd, unsigned long address)
>   { return (p4d_t *)pgd; }
> 
> and this is how it should always work.See "nopud" and "nopmd"(which
> are 3rd/2nd level respectively) doing the same thing exactly.

Right, my naive mental model was assuming nopmd would somehow stub out pmd_*
macros (or call into upper level function somehow etc), wheres here
(1) we stub out the prior level and
(2) the function of stubbed level operate on the data type of higher level.


> And yes, pmd_clear_bad() should just go away. We have
> 
>   static inline int pmd_none_or_clear_bad(pmd_t *pmd)
>   {
>         if (pmd_none(*pmd))
>                 return 1;
>         if (unlikely(pmd_bad(*pmd))) {
>                 pmd_clear_bad(pmd);
>                 return 1;
>         }
>         return 0;
>   }
> 
> and if the pmd doesn't exist, then both pmd_none() and pmd_bad()
> should just be zero (see above), and the pmd_none_or_clear_bad()
> should just become "return 0";
> 
> Exactly what part isn't working for you?

I haven't tested that patch but I suspect even if it was broken, it would not
necessarily show right away with a trivial test.

Anyhow my worry/confusions starts at free_pgd_range() where
pgd_none_or_clear_bad(pgd) is no-op given pgd_none()/pgd_bad() are stubs for nopmd
case.

  free_pgd_range
	pgd = pgd_offset(tlb->mm, addr);
	do {
		next = pgd_addr_end(addr, end);
		if (pgd_none_or_clear_bad(pgd))
			continue;
		free_p4e_range(tlb, pgd, addr);
	} while (pgd++, addr = next, addr != end);
   ...

And the validation of pgd entry actually happens in pmd_none_or_clear_bad(pmd)
since there pmd actually ends up referencing pgd entry. Hence the ensuing
pmd_clear_bad() doesn't seem like if it could be stubbed out.

  free_pmd_range
	pmd = pmd_offset(pud, addr);
	do {
		next = pmd_addr_end(addr, end);
		if (pmd_none_or_clear_bad(pmd)) <--- pmd_bad()/pmd_clear_bad()
			continue;
		free_pte_range(tlb, pmd, addr);
	} while (pmd++, addr = next, addr != end);

I'm sure I'm missing something, but don't understand what !

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
