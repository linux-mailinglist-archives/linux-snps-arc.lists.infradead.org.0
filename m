Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AEED02EE
	for <lists+linux-snps-arc@lfdr.de>; Tue,  8 Oct 2019 23:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OiwAS+VlTVfk6nytfdXwdDxKeRq0gnKQ0329c6L2/nw=; b=g7DmVUZ0AEn1Qt
	Jd6SZXxUidA7eabvrg0sUZIdFKLKTB+X8nQUkhfcybR6KbVp7ERKTB85fFZL+d0aJ+9tRrjV193RH
	11hvT5gn1aB5I23RS7y8ENKuUiRPIKrFo02keagb/hIFO50AQVlHYfcrwOH2Jiw9NkZ3fprqnPefH
	8hPOZGUBeM3JMAVBvFtK4e8c3BLXat1UI5bR6rL2pqu2yO/PMKjraqLzG47aOZqV0nZ5OpkHXQRm/
	Z15Y2oM8ytITRxKbB/qhYarZ2kgCcg6mMMfw9JdEtMrGarzMQbmZdEHt5FO39M0G7EQ918kMUVevA
	YUAJPwEHU1ca/ZGSqAhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxBt-0007Kj-Ik; Tue, 08 Oct 2019 21:38:45 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxBq-0007JU-Tv
 for linux-snps-arc@lists.infradead.org; Tue, 08 Oct 2019 21:38:44 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 20B12C016B;
 Tue,  8 Oct 2019 21:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570570720; bh=JAzSMbVKPnZ9LRpz5V9AajWg5VC5h3GO+qyt5a4bXd0=;
 h=From:To:Cc:Subject:Date:From;
 b=IXmN2l/jckt3C4NEgwFRsV9LU+Y6rqIDsnWdolKOVZA3nyjDaGiE9S3UustmW3vmn
 jOjObD9GgyEui7tBwFVzwLi0cMG6/LxAzE8FB1MlFpwRryT56A0Xp+rRcHJs/FrnyQ
 Cj7BGMWQvqR3Dmduyd2X5zl+fz/Y50Ffg/87QjEHWGsqTn/dOFC18aToxQW4QKootU
 C2VgYfAyYyjFiOmBXA7vg2uQrSsB61lFw2wADHtsUk04+uK3UyD7KkgPxoOrItbG+5
 dK62zsewhuIYDPk9rd3h+2Knyc/xL34gpJhJhWIozHxfF1waDOL0Oq66KvKgwOQ+us
 F5PZXDU4zPAOA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 536FDA006B;
 Tue,  8 Oct 2019 21:38:39 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: mm: remove __ARCH_USE_5LEVEL_HACK
Date: Tue,  8 Oct 2019 14:38:36 -0700
Message-Id: <20191008213836.19266-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_143842_968428_9DBFBC95 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mm@kvack.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add the intermediate p4d accessors to make it 5 level compliant.

Thi sis non-functional change anyways since ARC has software page walker
with 2 lookup levels (pgd -> pte)

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/pgtable.h |  1 -
 arch/arc/mm/fault.c            | 10 ++++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 976b5931372e..902d45428cea 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -33,7 +33,6 @@
 #define _ASM_ARC_PGTABLE_H
 
 #include <linux/bits.h>
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 #include <asm/page.h>
 #include <asm/mmu.h>	/* to propagate CONFIG_ARC_MMU_VER <n> */
diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 3861543b66a0..fb86bc3e9b35 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -30,6 +30,7 @@ noinline static int handle_kernel_vaddr_fault(unsigned long address)
 	 * with the 'reference' page table.
 	 */
 	pgd_t *pgd, *pgd_k;
+	p4d_t *p4d, *p4d_k;
 	pud_t *pud, *pud_k;
 	pmd_t *pmd, *pmd_k;
 
@@ -39,8 +40,13 @@ noinline static int handle_kernel_vaddr_fault(unsigned long address)
 	if (!pgd_present(*pgd_k))
 		goto bad_area;
 
-	pud = pud_offset(pgd, address);
-	pud_k = pud_offset(pgd_k, address);
+	p4d = p4d_offset(pgd, address);
+	p4d_k = p4d_offset(pgd_k, address);
+	if (!p4d_present(*p4d_k))
+		goto bad_area;
+
+	pud = pud_offset(p4d, address);
+	pud_k = pud_offset(p4d_k, address);
 	if (!pud_present(*pud_k))
 		goto bad_area;
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
