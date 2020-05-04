Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFE51C30F4
	for <lists+linux-snps-arc@lfdr.de>; Mon,  4 May 2020 03:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KVeGDxLc1FNErOJJa7b1QaBynPhXV0LTmZ8nMnKQuM=; b=ZmDMMxF3EZiHKU
	4ZugmRAXUagc9yPajLU8zCFbUmecCKKwXVVK2pCsSf73aqRsRLf6cqN5nqeE8cc9uuUdVJpwCS21A
	tgiG9BeIpsTqaV8V8Bh+v4Emp/pyaw+EwoN5IvI8jBQW+1iyS2S12bW0deyLcIoz8hakTUexkjvQZ
	NuxARaMV7IlLPe2blKAMkvPqZlrCvm5dgg2IKsMrloGtIk6YIDsiy9e0EsHEzSwIiDZqn3bEsVTOV
	eJQaMgbFLdDxvCB+h08BopFRxqp1lejytdoNxZK5fRvZLBOU0TMTN7OKN9Q0PnRSJRj4pPmWb0/Bo
	/yqof/FYF06ySKYRl0Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPez-0001Fq-OB; Mon, 04 May 2020 01:12:41 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPbt-00044u-AZ; Mon, 04 May 2020 01:09:32 +0000
IronPort-SDR: XKlo/DUzWUpIYjOnsU3owmOnl8QdaAy37hSiVUwkKLacj7ujPbiGjW7yvguZM3bd76RAC7CsYM
 wMOiKA27QSrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 18:09:26 -0700
IronPort-SDR: Fc2IIc9c2THj/HwNYcVXgIy3ANuD6CfXzgcUpSYeSxuPrkm+NdoaedfEUy5/ze1d2Nc6Rr/ExU
 7n2k4cO5wh4w==
X-IronPort-AV: E=Sophos;i="5.73,350,1583222400"; d="scan'208";a="433937305"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 18:09:26 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V2 08/11] arch/kmap: Ensure kmap_prot visibility
Date: Sun,  3 May 2020 18:09:09 -0700
Message-Id: <20200504010912.982044-9-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200504010912.982044-1-ira.weiny@intel.com>
References: <20200504010912.982044-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_180929_425056_B169C16D 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

We want to support kmap_atomic_prot() on all architectures and it makes
sense to define kmap_atomic() to use the default kmap_prot.

So we ensure all arch's have a globally available kmap_prot either as a
define or exported symbol.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 arch/microblaze/include/asm/highmem.h | 2 +-
 arch/microblaze/mm/init.c             | 3 ---
 arch/powerpc/include/asm/highmem.h    | 2 +-
 arch/powerpc/mm/mem.c                 | 3 ---
 arch/sparc/mm/highmem.c               | 1 +
 5 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
index 1b8a3c5102bd..033ac5b5c2da 100644
--- a/arch/microblaze/include/asm/highmem.h
+++ b/arch/microblaze/include/asm/highmem.h
@@ -25,8 +25,8 @@
 #include <linux/uaccess.h>
 #include <asm/fixmap.h>
 
+#define kmap_prot		PAGE_KERNEL
 extern pte_t *kmap_pte;
-extern pgprot_t kmap_prot;
 extern pte_t *pkmap_page_table;
 
 /*
diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index 1ffbfa96b9b8..a467686c13af 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -49,8 +49,6 @@ unsigned long lowmem_size;
 #ifdef CONFIG_HIGHMEM
 pte_t *kmap_pte;
 EXPORT_SYMBOL(kmap_pte);
-pgprot_t kmap_prot;
-EXPORT_SYMBOL(kmap_prot);
 
 static inline pte_t *virt_to_kpte(unsigned long vaddr)
 {
@@ -68,7 +66,6 @@ static void __init highmem_init(void)
 	pkmap_page_table = virt_to_kpte(PKMAP_BASE);
 
 	kmap_pte = virt_to_kpte(__fix_to_virt(FIX_KMAP_BEGIN));
-	kmap_prot = PAGE_KERNEL;
 }
 
 static void highmem_setup(void)
diff --git a/arch/powerpc/include/asm/highmem.h b/arch/powerpc/include/asm/highmem.h
index 373a470df205..ee5de974c5ef 100644
--- a/arch/powerpc/include/asm/highmem.h
+++ b/arch/powerpc/include/asm/highmem.h
@@ -29,8 +29,8 @@
 #include <asm/page.h>
 #include <asm/fixmap.h>
 
+#define kmap_prot		PAGE_KERNEL
 extern pte_t *kmap_pte;
-extern pgprot_t kmap_prot;
 extern pte_t *pkmap_page_table;
 
 /*
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 041ed7cfd341..3f642b058731 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -64,8 +64,6 @@ bool init_mem_is_free;
 #ifdef CONFIG_HIGHMEM
 pte_t *kmap_pte;
 EXPORT_SYMBOL(kmap_pte);
-pgprot_t kmap_prot;
-EXPORT_SYMBOL(kmap_prot);
 #endif
 
 pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
@@ -245,7 +243,6 @@ void __init paging_init(void)
 	pkmap_page_table = virt_to_kpte(PKMAP_BASE);
 
 	kmap_pte = virt_to_kpte(__fix_to_virt(FIX_KMAP_BEGIN));
-	kmap_prot = PAGE_KERNEL;
 #endif /* CONFIG_HIGHMEM */
 
 	printk(KERN_DEBUG "Top of RAM: 0x%llx, Total RAM: 0x%llx\n",
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index 469786bc430f..9f06d75e88e1 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -33,6 +33,7 @@
 #include <asm/vaddrs.h>
 
 pgprot_t kmap_prot;
+EXPORT_SYMBOL(kmap_prot);
 
 static pte_t *kmap_pte;
 
-- 
2.25.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
