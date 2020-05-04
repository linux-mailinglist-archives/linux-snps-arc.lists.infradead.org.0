Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E90C1C30A5
	for <lists+linux-snps-arc@lfdr.de>; Mon,  4 May 2020 03:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGwFlf+AqIfMxBpUhhWbMPRR4EA67nTSL0osMdlhE3U=; b=Q8JLwfYZ302v4k
	m8/QeT40QpFXe/m4GnFwmqkGH0SbALgtdiGNdNHC5EevwA8L+9p6zbmKCR0NBOfB0vbALhWdRrTvY
	ZqtfPWupFz1zuAbrZFQQy85FN1WyVB53rtnUErk3CUFu0pTR6xdBbua0o3bi20agLnsjrvNoU5dkQ
	ds1JENpEaIcSfCY0TGEUAC2g4ZS3CJFxkjhLkFb8zxp//5swllFaPMym+fB3qivNb+piQ2z3+WrUz
	mMEh8+j0bwYuhNOa+aPb9j2WLhVfI+G3IvL0x36RDinwDBA8iQWmChmxNPEZTiyLWTYl2mdvA2PKn
	kIrrm8Cp+EIsUWMfzfug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPc2-0004HA-Du; Mon, 04 May 2020 01:09:38 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPbo-00042M-5N; Mon, 04 May 2020 01:09:25 +0000
IronPort-SDR: waD0NxD1Rh1ZcMgD38+fYcBPvOh/8uObLZ7gP44K/yFysuKLhg+MioYWdlhBwNgjl5THig51+N
 7McRO/1EfAcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 18:09:22 -0700
IronPort-SDR: 0sfTWrdVl9taYpdiQf4rbNyObgvnrL4HY5A/wwdVowOhzm+BQ1szN8Ld3ck7vtPYcDwAf8cgkk
 odi25qXkZcbQ==
X-IronPort-AV: E=Sophos;i="5.73,350,1583222400"; d="scan'208";a="249047740"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 18:09:21 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V2 02/11] arch/xtensa: Move kmap build bug out of the way
Date: Sun,  3 May 2020 18:09:03 -0700
Message-Id: <20200504010912.982044-3-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200504010912.982044-1-ira.weiny@intel.com>
References: <20200504010912.982044-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_180924_245467_C0E51984 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

Move the kmap() build bug to kmap_init() to facilitate patches to lift
kmap() to the core.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>

---
Changes from V1:
	combine code onto 1 line.
---
 arch/xtensa/include/asm/highmem.h | 5 -----
 arch/xtensa/mm/highmem.c          | 4 ++++
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/xtensa/include/asm/highmem.h b/arch/xtensa/include/asm/highmem.h
index 413848cc1e56..a9587c85be85 100644
--- a/arch/xtensa/include/asm/highmem.h
+++ b/arch/xtensa/include/asm/highmem.h
@@ -68,11 +68,6 @@ void kunmap_high(struct page *page);
 
 static inline void *kmap(struct page *page)
 {
-	/* Check if this memory layout is broken because PKMAP overlaps
-	 * page table.
-	 */
-	BUILD_BUG_ON(PKMAP_BASE <
-		     TLBTEMP_BASE_1 + TLBTEMP_SIZE);
 	might_sleep();
 	if (!PageHighMem(page))
 		return page_address(page);
diff --git a/arch/xtensa/mm/highmem.c b/arch/xtensa/mm/highmem.c
index 184ceadccc1a..da734a2ed641 100644
--- a/arch/xtensa/mm/highmem.c
+++ b/arch/xtensa/mm/highmem.c
@@ -88,6 +88,10 @@ void __init kmap_init(void)
 {
 	unsigned long kmap_vstart;
 
+	/* Check if this memory layout is broken because PKMAP overlaps
+	 * page table.
+	 */
+	BUILD_BUG_ON(PKMAP_BASE < TLBTEMP_BASE_1 + TLBTEMP_SIZE);
 	/* cache the first kmap pte */
 	kmap_vstart = __fix_to_virt(FIX_KMAP_BEGIN);
 	kmap_pte = kmap_get_fixmap_pte(kmap_vstart);
-- 
2.25.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
