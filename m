Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77FF17C9F8
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 01:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqM/WAg312XkRkawIFYjCgeq+kIlfZjydPhwXTreWGM=; b=VTDUORis5yQY6E
	VxmZianLF4MGdOhNgvz+eAghJntaJjVWmV3EHB3lEIUAYDKauzF6M69PMQTUZfLmnIJey5Kid9dxM
	i1Ne0Ei1jCWC7HVJDoVLDWHNAyFTCAaOhSmhFoYSOMhplgEZ+7Or+Wb1nOSE1AJI+yaV5eD02C6iH
	1MUpzT1I2MLvImt6QY2chX5C8tNRI7hXXZ3A70k5XL+fKHYBytuj9h0nJgNd91wm3E3zxSBImj1Vi
	8ExKtTs8iVfychGmxiOXBRMsjv+w3iwcVcU/ykD4t29HbN24hB8x+otWdse/NQhbYQDR8AsG/WORL
	3Fz77HGwMx6zMN0YubbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANm8-0004EZ-AH; Sat, 07 Mar 2020 00:57:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANlr-0003yP-UU; Sat, 07 Mar 2020 00:56:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7192C30E;
 Fri,  6 Mar 2020 16:56:49 -0800 (PST)
Received: from [10.163.1.59] (unknown [10.163.1.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D25853F237;
 Fri,  6 Mar 2020 16:56:41 -0800 (PST)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
 <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
Date: Sat, 7 Mar 2020 06:26:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_165652_030655_D236F425 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 03/07/2020 06:04 AM, Qian Cai wrote:
> 
> 
>> On Mar 6, 2020, at 7:03 PM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
>>
>> Hmm, set_pte_at() function is not preferred here for these tests. The idea
>> is to avoid or atleast minimize TLB/cache flushes triggered from these sort
>> of 'static' tests. set_pte_at() is platform provided and could/might trigger
>> these flushes or some other platform specific synchronization stuff. Just
> 
> Why is that important for this debugging option?

Primarily reason is to avoid TLB/cache flush instructions on the system
during these tests that only involve transforming different page table
level entries through helpers. Unless really necessary, why should it
emit any TLB/cache flush instructions ?

> 
>> wondering is there specific reason with respect to the soft lock up problem
>> making it necessary to use set_pte_at() rather than a simple WRITE_ONCE() ?
> 
> Looks at the s390 version of set_pte_at(), it has this comment,
> vmaddr);
> 
> /*
>  * Certain architectures need to do special things when PTEs
>  * within a page table are directly modified.  Thus, the following
>  * hook is made available.
>  */
> 
> I can only guess that powerpc  could be the same here.

This comment is present in multiple platforms while defining set_pte_at().
Is not 'barrier()' here alone good enough ? Else what exactly set_pte_at()
does as compared to WRITE_ONCE() that avoids the soft lock up, just trying
to understand.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
