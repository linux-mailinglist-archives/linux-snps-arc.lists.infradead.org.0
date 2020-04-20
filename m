Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C95D1B1A26
	for <lists+linux-snps-arc@lfdr.de>; Tue, 21 Apr 2020 01:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6H1Rk+AvZmWxW0weikXQuchDOEg9SKUjs3nNOkIUQc=; b=mtCKMhNNRFbVY2
	eM0Z+NK45fL0JoHcFJdtZ6sXSAMSX17+ESUC+edww0AenrqsxXx/IMm2eAcss8B02fQaywTe2jx8/
	qG4aEVTvEmAXUYa2LORvZf1SecyHFY5Tm89mklki7U0YiWizA+qtO3UosCPXOBa8FalVIADTK7ZH7
	MizZsOJO6H7zd7kZ2vCFesJdbht4yhrAKyL9YZd4bHaW5jycZh6GyFRSiM/mFXBHxicjytQW2vDmo
	AkMba/5Ke/Fjm+tG2p979Bd9H3c0uSgGf4PjdNeWaATTr3hXQfXEDidFNcXKZ6AGkaSv+xaOmv1wI
	FQaU0iB2l+nFkNxG764A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQfpV-0004WY-SG; Mon, 20 Apr 2020 23:27:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQfpN-0004Ov-Ni; Mon, 20 Apr 2020 23:27:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DF641FB;
 Mon, 20 Apr 2020 16:27:45 -0700 (PDT)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6918F3F73D;
 Mon, 20 Apr 2020 16:27:39 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 2/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
To: Will Deacon <will@kernel.org>
References: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
 <1584680057-13753-3-git-send-email-anshuman.khandual@arm.com>
 <20200420210354.GD29998@willie-the-truck>
Message-ID: <78fee884-78fc-6102-1a37-12106dc21336@arm.com>
Date: Tue, 21 Apr 2020 04:57:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200420210354.GD29998@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_162749_815072_69A726B3 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: x86@kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Russell King <linux@armlinux.org.uk>, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 nouveau@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-snps-arc@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org



On 04/21/2020 02:33 AM, Will Deacon wrote:
> On Fri, Mar 20, 2020 at 10:24:17AM +0530, Anshuman Khandual wrote:
>> pmd_present() is expected to test positive after pmdp_mknotpresent() as the
>> PMD entry still points to a valid huge page in memory. pmdp_mknotpresent()
>> implies that given PMD entry is just invalidated from MMU perspective while
>> still holding on to pmd_page() referred valid huge page thus also clearing
>> pmd_present() test. This creates the following situation which is counter
>> intuitive.
>>
>> [pmd_present(pmd_mknotpresent(pmd)) = true]
>>
>> This renames pmd_mknotpresent() as pmd_mknotvalid() reflecting the helper's
>> functionality more accurately while changing the above mentioned situation
>> as follows. This does not create any functional change.
>>
>> [pmd_present(pmd_mknotvalid(pmd)) = true]
>>
>> This is not applicable for platforms that define own pmdp_invalidate() via
>> __HAVE_ARCH_PMDP_INVALIDATE. Suggestion for renaming came during a previous
>> discussion here.
> 
> Bikeshed alert: maybe pmd_mkinvalid() would be better, given that this is
> a one-trick pony for pmdp_invalidate()?

I had thought about making it pmd_mkinvalid() earlier. But as we were replacing
pmd_mknotpresent(), hence went with similar pattern pmd_mknotvalid() which was
originally suggested by Catalin. There is an existing pte_mknotpresent() in arc
platform as well. I dont have a very strong opinion either way, will be happy
to rename. But then still wondering if we really need to.

> 
> Will
> 

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
