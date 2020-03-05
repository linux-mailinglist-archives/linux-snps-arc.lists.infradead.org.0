Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E864179D0A
	for <lists+linux-snps-arc@lfdr.de>; Thu,  5 Mar 2020 01:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vypr/gtmJLRLIGoY6vUSEfoWadZk5dlsrEoLnLqzYSo=; b=s16/L6T21ggzdW
	K6pGfqryt/4PZnSpWvGp9/YgP3jPOlkKDQ21AgAkIls3vw2C1kFO/jFXt6jnUiIMyCg/f2kjdz/zF
	VUrA4MUxZ81wtcIIeBJb062g9W3xlsFUQ5uQOPYuWembW5I1Z+fM9pYb/GuoFgTlSUjp8DnoxWv19
	8JKFcZHhHY6ADSIud6oejM+ab7iU3AhbrU7gGZyTWI9VLxIDE+znHVrFPP6z2H8jezD3fBf/Sp9Ly
	nF0zr4CgCcnKijHoU0fJ1R9YPm0EzVIbD91hrfq58hvGbpB4RPZ4RAOlr/l5ghtoJFGNECmYborRc
	RayKvOhRsZwzWoKdtuxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9enF-00065s-1t; Thu, 05 Mar 2020 00:55:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9emu-0004el-SX; Thu, 05 Mar 2020 00:54:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D656F31B;
 Wed,  4 Mar 2020 16:54:54 -0800 (PST)
Received: from [10.163.1.88] (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60E2D3F534;
 Wed,  4 Mar 2020 16:54:46 -0800 (PST)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Christophe Leroy <christophe.leroy@c-s.fr>
References: <c022e863-0807-fab1-cd41-3c320381f448@c-s.fr>
 <11F41980-97CF-411F-8120-41287DC1A382@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <57a3bc61-bbd5-e251-9621-7bc28f7901a1@arm.com>
Date: Thu, 5 Mar 2020 06:24:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <11F41980-97CF-411F-8120-41287DC1A382@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165456_965233_5C6FC8CA 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 03/04/2020 04:59 PM, Qian Cai wrote:
> 
> 
>> On Mar 4, 2020, at 1:49 AM, Christophe Leroy <christophe.leroy@c-s.fr> wrote:
>>
>> AFAIU, you are not taking an interrupt here. You are stuck in the pte_update(), most likely due to nested locks. Try with LOCKDEP ?
> 
> Not exactly sure what did you mean here, but the kernel has all lockdep enabled and did not flag anything here.

As the patch has been dropped from Linux next (next-20200304) perhaps in
order to fold back the __pa_symbol() fix [1], so I am planning to respin
the original patch once more as V15 while adding Qian's signed off by for
the powerpc part. For now lets enable radix MMU ppc64 along with existing
ppc32. As PPC_RADIX_MMU depends on PPC_BOOK3S_64, the following change
should be good enough ?

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 497b7d0b2d7e..8d5ae14c5d4c 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -116,6 +116,7 @@  config PPC
 	#
 	select ARCH_32BIT_OFF_T if PPC32
 	select ARCH_HAS_DEBUG_VIRTUAL
+	select ARCH_HAS_DEBUG_VM_PGTABLE if (PPC_RADIX_MMU || PPC32)
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FORTIFY_SOURCE

[1] https://patchwork.kernel.org/patch/11407715/

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
