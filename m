Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2BD18C6A9
	for <lists+linux-snps-arc@lfdr.de>; Fri, 20 Mar 2020 05:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uPKqDD9fxhLpXwaqJle5s/fKi/3vteArfZffQ8gML44=; b=AuT
	jG+6lrju8G9pKp18JoIpP4WkpoDbRG0LkFRlg+/HHgZwU2W0Yi3WidnO1QLlgKvV1BqE8u1rzchkE
	Kl46SdIpfqMo9T5oPaBdTj/5Rwj0b4NVTPp1e8Ik92ti3uKBxNvbWNTT3vTN63NbuzMXwK9b9rBrH
	lc09FYkpGERC/p2OUClL34rdUE7UEHq6enPtgPsQY9qwlnsE7DYLs60k4ZD4LwTHqsya+PQPj687o
	L+MV4TWKviVaN/+5V/QgrgXgKXxWlNHdWp+UIE/grpFggnJxlKjAMWLMp698khmXa3wynQ2i3mpAr
	6FwrolkYgVSAIpEXgOJqK4GqYM7AQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF9gN-0006Og-DZ; Fri, 20 Mar 2020 04:54:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF9g7-0006Fr-Iv; Fri, 20 Mar 2020 04:54:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7DDC1FB;
 Thu, 19 Mar 2020 21:54:34 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 931443F52E;
 Thu, 19 Mar 2020 21:54:25 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH 0/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
Date: Fri, 20 Mar 2020 10:24:15 +0530
Message-Id: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_215439_668729_7E9423A3 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-snps-arc@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, nouveau@lists.freedesktop.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vineet Gupta <vgupta@synopsys.com>, linux-mips@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This series renames pmd_mknotpresent() as pmd_mknotvalid(). Before that it
drops an existing pmd_mknotpresent() definition from powerpc platform which
was never required as it defines it's pmdp_invalidate() through subscribing
__HAVE_ARCH_PMDP_INVALIDATE. This does not create any functional change.

This rename was suggested by Catalin during a previous discussion while we
were trying to change the THP helpers on arm64 platform for migration.

https://patchwork.kernel.org/patch/11019637/

This series is based on v5.6-rc6.

Boot tested on arm64 and x86 platforms.
Built tested on many other platforms including the ones changed here.

Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: nouveau@lists.freedesktop.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  powerpc/mm: Drop platform defined pmd_mknotpresent()
  mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()

 arch/arc/include/asm/hugepage.h              | 2 +-
 arch/arm/include/asm/pgtable-3level.h        | 2 +-
 arch/arm64/include/asm/pgtable.h             | 2 +-
 arch/mips/include/asm/pgtable.h              | 2 +-
 arch/powerpc/include/asm/book3s/64/pgtable.h | 4 ----
 arch/x86/include/asm/pgtable.h               | 2 +-
 arch/x86/mm/kmmio.c                          | 2 +-
 mm/pgtable-generic.c                         | 2 +-
 8 files changed, 7 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
