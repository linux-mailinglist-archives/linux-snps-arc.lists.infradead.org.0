Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44647BADC9
	for <lists+linux-snps-arc@lfdr.de>; Mon, 23 Sep 2019 08:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Dx6SLwUptBf6pTcPAMRyN43bTZI+uC9LzwB3R9W/Kw=; b=rU81H8oR2GWKKg
	DjANP3K6dAFnzfGw/JfLWKuj0oc/+frR/Di6Y+pdeCTkl/F+C0O2ksB9WY5d/3cWFOoE8Idi/uCus
	OGopvZNXFfsaRxaVoWFWCScg3Pc9i5zohskrdQQWOTp9NQoWRZULqPnYsF5GoAusgQd77XQ0Mz8Pi
	Tjgi4IRYdZ7eHNWnjN+KYe0Lm4whQ6j/V2vzikbHxgIalG3gz5hz47Kuovegvmo+UoirTqrk8RVIA
	vZkW7Yk2/tpRohabwT3sJe/TjsOnKsyjLkK9WTVa1pCaTRACZrtNqwRBQUIsx/urodo6coLpV3gtD
	7cSq4s9ElsCm7voRySdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCHpB-0003Ae-Jb; Mon, 23 Sep 2019 06:27:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHoh-00031u-SW; Mon, 23 Sep 2019 06:27:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86A51337;
 Sun, 22 Sep 2019 23:27:22 -0700 (PDT)
Received: from [10.162.40.137] (p8cg001049571a15.blr.arm.com [10.162.40.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7248C3F59C; Sun, 22 Sep 2019 23:29:45 -0700 (PDT)
Subject: Re: [PATCH V3 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: kbuild test robot <lkp@intel.com>
References: <20190921160049.GB13569@xsang-OptiPlex-9020>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ab7c36ae-0942-d2e3-2a46-924c13a3d999@arm.com>
Date: Mon, 23 Sep 2019 11:57:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190921160049.GB13569@xsang-OptiPlex-9020>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_232724_203750_EBEF59FE 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-sh@vger.kernel.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, kbuild-all@01.org,
 Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 09/21/2019 09:30 PM, kbuild test robot wrote:
> Hi Anshuman,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3 next-20190919]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Anshuman-Khandual/mm-debug-Add-tests-for-architecture-exported-page-table-helpers/20190920-143746
> config: ia64-allmodconfig (attached as .config)
> compiler: ia64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=ia64 
> :::::: branch date: 3 hours ago
> :::::: commit date: 3 hours ago
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from include/asm-generic/pgtable-nopud.h:8:0,
>                     from arch/ia64/include/asm/pgtable.h:591,
>                     from include/linux/mm.h:99,
>                     from include/linux/highmem.h:8,
>                     from mm/arch_pgtable_test.c:14:
>    mm/arch_pgtable_test.c: In function 'pud_clear_tests':
>>> include/asm-generic/pgtable-nop4d-hack.h:47:32: error: implicit declaration of function '__pgd'; did you mean '__p4d'? [-Werror=implicit-function-declaration]
>     #define __pud(x)    ((pud_t) { __pgd(x) })
>                                    ^
>>> mm/arch_pgtable_test.c:162:8: note: in expansion of macro '__pud'
>      pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
>            ^~~~~
>>> include/asm-generic/pgtable-nop4d-hack.h:47:22: warning: missing braces around initializer [-Wmissing-braces]
>     #define __pud(x)    ((pud_t) { __pgd(x) })
>                          ^
>>> mm/arch_pgtable_test.c:162:8: note: in expansion of macro '__pud'
>      pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
>            ^~~~~
>    cc1: some warnings being treated as errors
> 
> # https://github.com/0day-ci/linux/commit/49047f93b076974eefa5b019311bd3b734d61f8c
> git remote add linux-review https://github.com/0day-ci/linux
> git remote update linux-review
> git checkout 49047f93b076974eefa5b019311bd3b734d61f8c
> vim +47 include/asm-generic/pgtable-nop4d-hack.h
> 
> 30ec842660bd0d Kirill A. Shutemov 2017-03-09  45  
> 30ec842660bd0d Kirill A. Shutemov 2017-03-09  46  #define pud_val(x)				(pgd_val((x).pgd))
> 30ec842660bd0d Kirill A. Shutemov 2017-03-09 @47  #define __pud(x)				((pud_t) { __pgd(x) })

I had mentioned about this build failure in the cover letter. The same
problem also exists on arm32 platform.

- Anshuman

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
