Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A66B1A90
	for <lists+linux-snps-arc@lfdr.de>; Fri, 13 Sep 2019 11:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9mYPmrLrR0o61hQYvhcQILpvzLE9zqsOzBEe5rLzQg=; b=K3nhpqOv68Zh48
	GSUFPMtD4Jad7cljgmFCw0GEeI79emZve5BiKceJFLakDDqnrXuJiCTONSl+F0ULcxpEhmbELQ2GP
	YlE7J+DVkEvPickw/SAKkWWTx4pbIHsnRfxRykGYXy27xTzUrbM2wdUH5kI+wKmIBHQMnmwx7K8Gy
	Kw1ksDcCFw1jAPUb3KYCeZUomOXdvT+He6L/cFP7U5FqWrhtNKp6lOOKiUPPERQzCILHnpem3nWkS
	BhN0zk3ot7u3CGFZ1arf0+bMnrsdbNGLTNKs71TOh0WpwXiJFPlwbXR67tVPTPPWMIGQmpiq92VjW
	Kn9Xikc2Guzt0I1YT7jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8heD-0000kS-9K; Fri, 13 Sep 2019 09:13:45 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hdZ-0000Oo-Dr
 for linux-snps-arc@lists.infradead.org; Fri, 13 Sep 2019 09:13:06 +0000
Received: by mail-ed1-x544.google.com with SMTP id p2so25201409edx.11
 for <linux-snps-arc@lists.infradead.org>; Fri, 13 Sep 2019 02:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GEliFawsGnvWaq/wjC8o7X+uw8pCAUzjjDt3si5wKpw=;
 b=cuhllGlp2MOrdGub8Xg9DSnbN4UNbu5MAj+tu2g8/hUaiRvqMMOHfTNwMUyS5pk0Wh
 Cr/5CrT44vV+Lu6MEqICuL5EsXflVt2aB1CYOvw49Ff95R0+EpyudeDA0c1SjKiSBgvJ
 j392DdO8k5wtN6+t0Mq4Pin3skB6EB7fqWabfD22XoO9Zau3MU3BJhMVCPaEwzZDcctL
 3Z1utSLzZkSKBXiuC7y0bwtRfMC6JHyQJ4KI6FWcJD3QstGxSDpCFQt7SWa9ffXb7iM8
 Ka/YoQxle3ll0z8qQj2WsoJL1cViPtFo+jeRDT45DkakRyYbR2vwrsjhDwiP9OSANs1/
 05gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GEliFawsGnvWaq/wjC8o7X+uw8pCAUzjjDt3si5wKpw=;
 b=nYssXrkUXuN3sW5cljk0a0u3hUvQ+I4U5LqxmF/OpEbGmvIh/EgPKG8dWJTq2NhQkW
 e0GG1NSQnb1rZGvDV1WjkhFiyvXNDiOvWqJbKZkj2m83AH52TZ+lHrRKFvSaTsuK6Ukq
 0zrjZsQgwy4JTH5U+EGfZg/EwK2UVA4GlwuK2h1l+2icagb2HiRUVYykp4U1Kqi3Pk14
 YdzZv1RbHQNCeqMFqazs8W5B7DxlGeNahmnif/lKEhqzmk1y1jjssMhtBM3G3uZdqBqM
 XQK5UO3hxlLK2yRlM0pBKQ54gt13CQ0DO9p9Ne/7eN27O4SX65hLAR197Psm1jwkZZXt
 2jZg==
X-Gm-Message-State: APjAAAU5wGk5NK5iW0Tzd65f6u68/7NUe9vx47zHmL4lWELdzwZyqmGF
 4MSnl8OiwGSOdbzmp6sooKEmSg==
X-Google-Smtp-Source: APXvYqz9+Jjoiq6EpEOnNn2ue7LgRH298IcNtOZjCAdMkVz1fw1ulTQ0FfVWoOu1Q7FOQkoJoXJfvw==
X-Received: by 2002:aa7:da59:: with SMTP id w25mr44834467eds.143.1568365983857; 
 Fri, 13 Sep 2019 02:13:03 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id oo23sm3092469ejb.64.2019.09.13.02.13.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 02:13:03 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 3271B10160B; Fri, 13 Sep 2019 12:13:05 +0300 (+03)
Date: Fri, 13 Sep 2019 12:13:05 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20190913091305.rkds4f3fqv3yjhjy@box>
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_021305_468315_20D69D31 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 02:32:04PM +0530, Anshuman Khandual wrote:
> =

> On 09/12/2019 10:44 PM, Christophe Leroy wrote:
> > =

> > =

> > Le 12/09/2019 =E0 08:02, Anshuman Khandual a =E9crit=A0:
> >> This adds a test module which will validate architecture page table he=
lpers
> >> and accessors regarding compliance with generic MM semantics expectati=
ons.
> >> This will help various architectures in validating changes to the exis=
ting
> >> page table helpers or addition of new ones.
> >>
> >> Test page table and memory pages creating it's entries at various leve=
l are
> >> all allocated from system memory with required alignments. If memory p=
ages
> >> with required size and alignment could not be allocated, then all depe=
nding
> >> individual tests are skipped.
> >>
> > =

> > [...]
> > =

> >>
> >> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> >> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> >> ---
> >> =A0 arch/x86/include/asm/pgtable_64_types.h |=A0=A0 2 +
> >> =A0 mm/Kconfig.debug=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 |=A0 14 +
> >> =A0 mm/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> >> =A0 mm/arch_pgtable_test.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 | 429 ++++++++++++++++++++++++
> >> =A0 4 files changed, 446 insertions(+)
> >> =A0 create mode 100644 mm/arch_pgtable_test.c
> >>
> >> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/includ=
e/asm/pgtable_64_types.h
> >> index 52e5f5f2240d..b882792a3999 100644
> >> --- a/arch/x86/include/asm/pgtable_64_types.h
> >> +++ b/arch/x86/include/asm/pgtable_64_types.h
> >> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
> >> =A0 #define pgtable_l5_enabled() 0
> >> =A0 #endif /* CONFIG_X86_5LEVEL */
> >> =A0 +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> >> +
> > =

> > This is specific to x86, should go in a separate patch.
> =

> Thought about it but its just a single line. Kirill suggested this in the
> previous version. There is a generic fallback definition but s390 has it's
> own. This change overrides the generic one for x86 probably as a fix or as
> an improvement. Kirill should be able to help classify it in which case it
> can be a separate patch.

I don't think it worth a separate patch.

-- =

 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
