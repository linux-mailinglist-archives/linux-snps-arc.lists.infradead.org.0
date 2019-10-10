Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4620D31C5
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 22:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8QrUzdQVevgoNihBjnpbfeAC9ozTk9OB6GXtEAijOY=; b=bnNhEibqhXiF8/
	WmUngCt/pBcoO/bVrARkJsUijEXUFWlINjW9cYzUIY/8G8/aT+4sH7GP2x6KqeK0dDEfGS7hLJ1mR
	HzGMHjwgm2prI5OVdjPoGxsqR9l09+qLQ0YtVZONf4IiX+p3I/pC755lUL3BtFCRnGiAkmvCVqmt7
	QM9Mfupb1i+L+srGNvSqHcO/6FMUSrpUvaaZ+vDrPXmswc8z7mfJrr9VywjAm53t0AUlReEItzbhB
	dAL6oIPdRnXoEbWGjccFkdVXOSDtyxWRP8R4OTCSYdTxDGoTaemdDOLm8AMiEUJnD9wDKe8sj5ANC
	zIMvM6iNsjkWJC8NGFAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIehH-0008Jc-GL; Thu, 10 Oct 2019 20:06:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIehE-0008JB-T4
 for linux-snps-arc@lists.infradead.org; Thu, 10 Oct 2019 20:06:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id p30so4355196pgl.2
 for <linux-snps-arc@lists.infradead.org>; Thu, 10 Oct 2019 13:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=br9hyO7JC3RSUTqbjhJbUfqMlwXApKkFxnX4w1MXGCQ=;
 b=K9a96MVjtsfhN/5/PSh9815fkbwuUhBF24bQLz9szxD5g2p0w0NZhm4HWjamqOYwjG
 S9G4M5z//7QfhaRRsGVziP09/yTLaJUvOCFQWmsL/ysexyuFlAmtBWUixfs881Qxt0Q1
 Bbt298OQ6nXnT46qo4Fg80lz/PO8ifbkdzit6mDcUieNTREzg5tsMzXU+hXZIMWaXQSa
 Wb7chnXQ0jJxReJ+tIkeqGMJZnZuL/6YIc8+pAx5r9hNBZuagzZ0RmP+wNCjonLBAeBX
 HdVghMcgctQST0rW3EPM+h/bSC4XN50OTEiKH56QdJMjf9aRxORy4DYFpuyxptAXAncv
 90Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=br9hyO7JC3RSUTqbjhJbUfqMlwXApKkFxnX4w1MXGCQ=;
 b=rnK20MTvunI5NleojJME+Z71DLjCiIERjxk5atXbnNsG/a/z3MPbIuxH4d5c3eX4fb
 YdlOh9nwjwVBLJKxk7NL5eMXhzlBR1Fon65hsCAKAQGWAeB5YaQR5b30x+FEabnv/J9u
 k1D7F0rfyDdRSuA8lNknc6+X4sGRMhX05wQczxckmJhr2JsIPs8TB+sjY4K+lIgjoJC5
 lnaWrpr6D7pmJjFmimX57GQ6MBvvyWv9DD+0pgECtj8HIvW63OukgOWTiCdu1bYLOAKv
 HPbnm48QSSPaBa2iU5fUP84AuO5LfIqC4UD8Qbn47EKlnGTHSCBP8j18WilBLF+O5yid
 9E7w==
X-Gm-Message-State: APjAAAW01wt5+gy57maP5Y2ixtknhP582BygFLE1I50hbaZtfLgDywb+
 7PuoyID5BecUdv62cONHbqI=
X-Google-Smtp-Source: APXvYqyVU1Vm9EDwG+OZHYYBBR6Tbgz+4AtT9Ka2aCz7uhvoY1VbvLnRYoYtNmBwnQX5YGVYv59rYA==
X-Received: by 2002:a63:4e10:: with SMTP id c16mr12745671pgb.136.1570737959330; 
 Thu, 10 Oct 2019 13:05:59 -0700 (PDT)
Received: from ?IPv6:2601:641:c100:83a0:7d35:e452:d420:a5d1?
 ([2601:641:c100:83a0:7d35:e452:d420:a5d1])
 by smtp.gmail.com with ESMTPSA id i74sm7230784pfe.28.2019.10.10.13.05.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 13:05:57 -0700 (PDT)
Subject: Re: [PATCH 0/3] eldie generated code for folded p4d/pud
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
References: <20191009222658.961-1-vgupta@synopsys.com>
 <20191010085609.xgwkrbzea253wmfg@black.fi.intel.com>
From: Vineet Gupta <vineetg76@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vineetg76@gmail.com; prefer-encrypt=mutual; keydata=
 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
 deE0Dvw98SWmZSNtdOPnJZ0D
Message-ID: <8ba067a6-8b6a-2414-0f04-b251cd6bb47c@gmail.com>
Date: Thu, 10 Oct 2019 13:05:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010085609.xgwkrbzea253wmfg@black.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_130600_941182_9FFA9E37 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Nick Piggin <npiggin@gmail.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-snps-arc@lists.infradead.org, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


Hi Kirill,

On 10/10/19 1:56 AM, Kirill A. Shutemov wrote:
> On Wed, Oct 09, 2019 at 10:26:55PM +0000, Vineet Gupta wrote:
>>
>> This series elides extraneous generate code for folded p4d/pud.
>> This came up when trying to remove __ARCH_USE_5LEVEL_HACK from ARC port.
>> The code saving are not a while lot, but still worthwhile IMHO.
> 
> Agreed.

Thx.

So given we are folding pmd too, it seemed we could do the following as well.

+#ifndef __PAGETABLE_PMD_FOLDED
 void pmd_clear_bad(pmd_t *);
+#else
+#define pmd_clear_bad(pmd)        do { } while (0)
+#endif

+#ifndef __PAGETABLE_PMD_FOLDED
 void pmd_clear_bad(pmd_t *pmd)
 {
        pmd_ERROR(*pmd);
        pmd_clear(pmd);
 }
+#endif

I stared at generated code and it seems a bit wrong.
free_pgd_range() -> pgd_none_or_clear_bad() is no longer checking for unmapped pgd
entries as pgd_none/pgd_bad are all stubs returning 0.

This whole pmd folding is a bit confusing considering I only revisit it every few
years :-) Abstraction wise, __PAGETABLE_PMD_FOLDED only has pgd, pte but even in
this regime bunch of pmd macros are still valid

    pmd_set(pmdp, ptep) {
        *pmdp.pud.p4d.pgd = (unsigned long)ptep
    }

Is there a better way to make a mental model of this code folding.

In an ideal world pmd folded would have meant pmd_* routines just vanish - poof.
So in that sense I like your implementation under #[45]LEVEL_HACK where the level
simply vanishes by code like #define p4d_t pgd_t. Perhaps there is lot of historic
baggage, proliferated into arch code so hard to untangle.

Thx,
-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
