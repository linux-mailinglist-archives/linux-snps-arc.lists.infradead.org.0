Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEC5D6ADC
	for <lists+linux-snps-arc@lfdr.de>; Mon, 14 Oct 2019 22:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4venFE6ZiZYmj/Y4CkEDc5ZHQai1TvPHRzhsbd0p8zU=; b=lSDxPJMidJQ6Ql
	C5H4cRgpQN8yJAJ0h5b/evk/WzNKJ5w9x2lsxoGSEMlpWwq9X5P8WZce/2hyNtZ/VK1GV0/Gnbevg
	vlR6dfmF3bBQDOwPkpLE8vossJObhLfIi3VCoxsOfwL2S10wFFB0m7pqY/lvlJe2TFz20MhIUOtvV
	v3N0RMrxr2Ef1SZDomqg2Kw6j/Xr2pmqYaeXO3VUo08vnE7TnXbjWarnyMbOj04tPHZMo2+ciKD57
	mOaM87/OB3TaEWk5Pcrn40g96THTRNGLauf0va1YFgWlJTW7Jsj/DM0vVIR4mwm5JNRgtiBShYrhZ
	D2T/5AFi4dXfHMv60PoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK77N-0003jj-Bo; Mon, 14 Oct 2019 20:39:01 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK77J-0003jF-PJ
 for linux-snps-arc@lists.infradead.org; Mon, 14 Oct 2019 20:38:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id f5so17934559ljg.8
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 13:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LvNlasHHPKccXox7dKQ61wjVRqsBAIykBowufugafNw=;
 b=JHYeinNbUhDU9JOT1icXjbCc6D8tAAxdTuxxBxHbP7n5BxrRPMJN6jHCkGxuqtQsmo
 F38havP+GnWryvYUJVgEpDkK/4ERk+FjYdhOiRWDlYL15HUvXuaNMXnyFom5PU8TxlkT
 jhgnijOPh4hbegqJqlkHK+WVNTGc3Zb0SylD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LvNlasHHPKccXox7dKQ61wjVRqsBAIykBowufugafNw=;
 b=YIxeG1swf6Gy8BjTxaYX/ozggUNuwVjV+9OIookGbEQurJmyKJR5JJOCH+iRB4ZxAB
 lQZ2x6xqPBai5v5TIqey3FkndTU7rfPgzhHASmjrT4oYrdR7+kRJ1mmUwOcJujVh3Ph7
 Ym6JF6vkXfd1FsuE1HmlkZmpzACGRRX5d9QevmGWBPRu05TzpYH8JHEvObw5C4WfO4WK
 I5yq1QCnGtnbEJF9l4LXX93Qz0gimmLAFdiCKQPWZOTCRV+Lm2rxt6drU2ehd/0LBBJP
 gkGynfMn1F25dlZnjYlQsgRuIdjpwtr5GdjxzUgC6t1C+Avs9dgPSGul+nldivA8dNQt
 JGCw==
X-Gm-Message-State: APjAAAW8bZ2WuwCEv52IEU5yPHzzBKVbYm0HGh5ONKpVD+sN2MnxMZbk
 yFFwtf8YIuaUcHUmijdnCn5KTYVA9AI=
X-Google-Smtp-Source: APXvYqyA7D4eH/VjTSNTWdA1YFU1uqpISnHUd9zGKxdL+n7s46Ax2EIy8/fvnLaDmhN/q3HXZpXKeA==
X-Received: by 2002:a2e:9205:: with SMTP id k5mr19967423ljg.172.1571085535193; 
 Mon, 14 Oct 2019 13:38:55 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id o13sm4458229lji.31.2019.10.14.13.38.51
 for <linux-snps-arc@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 13:38:51 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 7so17931583ljw.7
 for <linux-snps-arc@lists.infradead.org>; Mon, 14 Oct 2019 13:38:51 -0700 (PDT)
X-Received: by 2002:a2e:8315:: with SMTP id a21mr10388327ljh.133.1571085530949; 
 Mon, 14 Oct 2019 13:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191011121951.nxna6hruuskvdxod@box>
 <20191011223818.7238-1-vgupta@synopsys.com>
 <CAHk-=whLs=TrRzmB9KRLxcPERq0QXPUUkbD8vzKzaDszBcUspg@mail.gmail.com>
 <c0979d98-7236-b7c8-bd40-173ee2e87385@gmail.com>
 <CAHk-=wi3WXpKJkcpgHkUMgLiX9UdXnXhSFzBd8vTWkKgFpz0+Q@mail.gmail.com>
 <8bfd023b-5c00-8355-fd0f-3b4377951e6c@gmail.com>
In-Reply-To: <8bfd023b-5c00-8355-fd0f-3b4377951e6c@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 14 Oct 2019 13:38:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgUxgA-s4ZvxpcKDFfyoEmvcDr9Ydgo5W4s2hvrLHhP+g@mail.gmail.com>
Message-ID: <CAHk-=wgUxgA-s4ZvxpcKDFfyoEmvcDr9Ydgo5W4s2hvrLHhP+g@mail.gmail.com>
Subject: Re: [RFC] asm-generic/tlb: stub out pmd_free_tlb() if
 __PAGETABLE_PMD_FOLDED
To: Vineet Gupta <vineetg76@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_133857_842699_892F3DA6 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Mon, Oct 14, 2019 at 12:08 PM Vineet Gupta <vineetg76@gmail.com> wrote:
>
> > And yes, pmd_clear_bad() should just go away. We have
> >
> >   static inline int pmd_none_or_clear_bad(pmd_t *pmd)
> >   {
> >         if (pmd_none(*pmd))
> >                 return 1;
> >         if (unlikely(pmd_bad(*pmd))) {
> >                 pmd_clear_bad(pmd);
> >                 return 1;
> >         }
> >         return 0;
> >   }

That was a particularly bad example.

The pmd always exists, even in a 2-level setup.

It's the pgd/p4d/pud that end up containing a lower level, but
pmd_none() is never one of the fixed "doesn't exist" cases.

> > Exactly what part isn't working for you?
>
> I haven't tested that patch but I suspect even if it was broken, it would not
> necessarily show right away with a trivial test.
>
> Anyhow my worry/confusions starts at free_pgd_range() where
> pgd_none_or_clear_bad(pgd) is no-op given pgd_none()/pgd_bad() are stubs for nopmd
> case.

Right. If you have a two-level setup, then p[g4u]d_none_or_clear_bad()
should end up being no-ops.

Buit then:

> And the validation of pgd entry actually happens in pmd_none_or_clear_bad(pmd)
> since there pmd actually ends up referencing pgd entry. Hence the ensuing
> pmd_clear_bad() doesn't seem like if it could be stubbed out.

Yes, you're correct, I was just "off by one" in my levels.

Yeah, the folding is damn confusing. And it doesn't help that I think
some of the code talks about the lower level being folded into the
higher level for historical reasons, so we have those PMD_FOLDED
macros etc, which are really about pud() just going away because pmd
is folded inside the pud.

So when the pud level is compiled away, we talk about the pmd level
being folded into it, and then we get confusion (like mine above)
where you end up being off by one level, because depending on how it's
being talked about, you talk about one or the other.

And it shows in the header files too. We have "pgtable-nopmd.h", which
then defines the page table accessors not for the pmd level, but for
the pud level.

Which is why I then spout nonsense like the above about pmd_none() -
because I was thinking of the nopmd case, but that makes the
p*u*d_none() be always 0, not p*m*d_none().

So we have this whole "off-by-one" error in our naming and thus our
thinking, and it's really easy to just get really confused about it.

We should probably get rid of the whole "PMD_FOLDED" logic, and
instead talk about "no PUD level".

It actually shows in our types too. We do this:

   typedef struct { pud_t pud; } pmd_t;
   #define PTRS_PER_PMD    1

because some of the code thinks of the pmd as containing the pud.

But it would probably be better to do it the other way around, and
just consistently think of it as "pud level doesn't exist, the pud
level just contains a pmd" instead.

So we have these really odd "somethimes we think of pmd as part of a
pud entry" vs "sometimes we think of pud as just containing a single
pmd".

And I think that latter model is the better mental model, but then we
should have

   typedef struct { pmd_t pud; } pud_t;
   #define PTRS_PER_PUD    1

instead, and we'd get

   static inline pmd_t * pmd_offset(pud_t * pud, unsigned long address)
   { return &pud->pmd; }

and that would make more sense, wouldn't it?

But trying to fix our odd "we seem to think about it wrong" model
would likely be too painful to be realistic., It would involve
renaming

  nop4d.h -> nopgd.h
  nopud.h -> nop4d.h
  nopmd.h -> nopud.h

and turning those types around (so we'd have those

   typedef struct { p4d_t p4d; } pgd_t;
   typedef struct { pud_t pud; | p4d_t;
   typedef struct { pmd_t pmd; } pud_t;

for no-pgd/no-p4d/no-pud respectively.

So then a 2-level machine would only define the pmd and pte levels,
and be done with it, because the upper levels would be defined in
terms of those.

But that's not what we do, and we mix up levels in odd and confusing ways.

And now I've said pgd/pud/p4d/pmd so many times that I've confused
myself and think I'm wrong again, and I think that historically -
originally - we always had a pgd, and then the pmd didn't exist
because it was folded into it. That makes sense from a x86 naming
standpoint. Then x86 _did_ get a pmd, and then we added more levels in
between, and other architectures did things differently.

So I think the confusion is historical, and is because we've switched
between thinking that the the lower level that doesn't exist, but is
embedded in the upper level, and slowly converted to "it's the upper
level that doesn't exist, and just contains the lower level"

The point stands: it's confusing, and we should probably pick one
model, and the model we pick should likely be "this level doesn't
exist, and just wraps the lower level", so it *should* be "no pgd"/"no
p4d"/"no pud".

            Linus

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
