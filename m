Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CEE14DB5A
	for <lists+linux-snps-arc@lfdr.de>; Thu, 30 Jan 2020 14:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaRUWS6tiVA1ZXFj+QMjEgo3Qv87Y3ENRBqOaN06g7w=; b=XPC1eJjcQmKBIz
	kr2UsvJwEsZ/Dc4HudjylV6qskiauZXJHd4jF0kMj4F2znLRRUjP3KLeMEfEKc+nWY4K0z13wPn7c
	X1tvmmbCgt4TqPHoyX+ipOJurA4o6Y6HIzc5tzQPUhxZ3nSa5tuzkSfXwK3vSdSxt6lDWoI9q+mn1
	ZcUOMnm6aiCXeljXkiIJib0t0kDMTvrLL6b0UF6qoh7IuyMpElFVv/rZP1skBRNVi2weAukbAhYeG
	TL2oCToWkjWkG8a24uQpbLFbPsiRSI8TziQSTFOZa8X5F8ijeMuABPkwOCd2LAh5cyHVjceDJViED
	e8z48qTG4UEcGCTb/7Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9cM-0007Zm-7j; Thu, 30 Jan 2020 13:12:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9cC-0007Rs-DC; Thu, 30 Jan 2020 13:12:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 087D6328;
 Thu, 30 Jan 2020 05:12:11 -0800 (PST)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAD5D3F68E;
 Thu, 30 Jan 2020 05:11:57 -0800 (PST)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <20200129232028.5a27e656@thinkpad>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5baed7e2-fc83-6223-8bb4-dcd771f9a4ea@arm.com>
Date: Thu, 30 Jan 2020 18:41:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200129232028.5a27e656@thinkpad>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_051212_533081_5AEF02C5 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 01/30/2020 03:50 AM, Gerald Schaefer wrote:
> On Tue, 28 Jan 2020 06:57:53 +0530
> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> This adds tests which will validate architecture page table helpers and
>> other accessors in their compliance with expected generic MM semantics.
>> This will help various architectures in validating changes to existing
>> page table helpers or addition of new ones.
>>
>> This test covers basic page table entry transformations including but not
>> limited to old, young, dirty, clean, write, write protect etc at various
>> level along with populating intermediate entries with next page table page
>> and validating them.
>>
>> Test page table pages are allocated from system memory with required size
>> and alignments. The mapped pfns at page table levels are derived from a
>> real pfn representing a valid kernel text symbol. This test gets called
>> right after page_alloc_init_late().
>>
>> This gets build and run when CONFIG_DEBUG_VM_PGTABLE is selected along with
>> CONFIG_VM_DEBUG. Architectures willing to subscribe this test also need to
>> select CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE which for now is limited to x86 and
>> arm64. Going forward, other architectures too can enable this after fixing
>> build or runtime problems (if any) with their page table helpers.
>>
>> Folks interested in making sure that a given platform's page table helpers
>> conform to expected generic MM semantics should enable the above config
>> which will just trigger this test during boot. Any non conformity here will
>> be reported as an warning which would need to be fixed. This test will help
>> catch any changes to the agreed upon semantics expected from generic MM and
>> enable platforms to accommodate it thereafter.
>>
> 
> [...]
> 
>>
>> Tested-by: Christophe Leroy <christophe.leroy@c-s.fr>		#PPC32
> 
> Tested-by: Gerald Schaefer <gerald.schaefer@de.ibm.com> # s390

Thanks for testing.

> 
> Thanks again for this effort, and for keeping up the spirit against
> all odds and even after 12 iterations :-)
> 
>>
>> diff --git a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
>> new file mode 100644
>> index 000000000000..f3f8111edbe3
>> --- /dev/null
>> +++ b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
>> @@ -0,0 +1,35 @@
>> +#
>> +# Feature name:          debug-vm-pgtable
>> +#         Kconfig:       ARCH_HAS_DEBUG_VM_PGTABLE
>> +#         description:   arch supports pgtable tests for semantics compliance
>> +#
>> +    -----------------------
>> +    |         arch |status|
>> +    -----------------------
>> +    |       alpha: | TODO |
>> +    |         arc: |  ok  |
>> +    |         arm: | TODO |
>> +    |       arm64: |  ok  |
>> +    |         c6x: | TODO |
>> +    |        csky: | TODO |
>> +    |       h8300: | TODO |
>> +    |     hexagon: | TODO |
>> +    |        ia64: | TODO |
>> +    |        m68k: | TODO |
>> +    |  microblaze: | TODO |
>> +    |        mips: | TODO |
>> +    |       nds32: | TODO |
>> +    |       nios2: | TODO |
>> +    |    openrisc: | TODO |
>> +    |      parisc: | TODO |
>> +    |  powerpc/32: |  ok  |
>> +    |  powerpc/64: | TODO |
>> +    |       riscv: | TODO |
>> +    |        s390: | TODO |
> 
> s390 is ok now, with my patches included in v5.5-rc1. So you can now add
> 
> --- a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
> +++ b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
> @@ -25,7 +25,7 @@
>      |  powerpc/32: |  ok  |
>      |  powerpc/64: | TODO |
>      |       riscv: | TODO |
> -    |        s390: | TODO |
> +    |        s390: |  ok  |
>      |          sh: | TODO |
>      |       sparc: | TODO |
>      |          um: | TODO |
> --- a/arch/s390/Kconfig
> +++ b/arch/s390/Kconfig
> @@ -59,6 +59,7 @@ config KASAN_SHADOW_OFFSET
>  config S390
>  	def_bool y
>  	select ARCH_BINFMT_ELF_STATE
> +	select ARCH_HAS_DEBUG_VM_PGTABLE
>  	select ARCH_HAS_DEVMEM_IS_ALLOWED
>  	select ARCH_HAS_ELF_RANDOMIZE
>  	select ARCH_HAS_FORTIFY_SOURCE

Sure, will add this up.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
