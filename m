Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A70CB431F
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f/FsnXf5jOO0TDeXHNihTuWf3LGrsm8v/HST6MGDfo=; b=ivCLrbUPjHNIGf
	jA9+VYKZ+N25o5sd4O+5/28VKhdCxgAPHd5D5/XaMCAtvbK0pec/736v4bBgy+s6XzSzl+eMJvjaD
	jOtbxhQ+T9SQfD2eWeNGpmskvh+LOonQl8MdPAi3h7mY5XfP9MUukhr462NUPRqUshtCDsz8jrBxL
	BOSwDlPVUzjY6PLhhvHARzzyWgD99gXDUrAmLyuMW6IrQ373zaUZ1Q1V+f5JrMXY7Fek7Q5f2peKO
	WtElzq2G+KByoMWKB1IQzNRSMRLDuK+8GjB52m1N3mcwP1h3osS0dvVwMx/0YEBSzb6pvb+xSBs+G
	PW2g5lO6k5WI1TAIf6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybW-0003m0-3V; Mon, 16 Sep 2019 21:32:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003je-NF
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:12 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 93274C0489
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=wNxsR4nIFgXPEUfMGdgL986mXnOyIY1a/m2wHiedRLQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VXoZ1nTdb5cnR2XVXVnRDtjEPwI7xGmSPJyUAuNMhCSV2Grn96xsQxcfGG3rL5C8O
 2TN0Rr9Y8SRnOZzw62ruvsSJtbmyCA3PRu6TjK92F7UVz1Wi5we5IcBWe/zgGSlwBn
 WjQIJInVAj8RqCFUqegud0Q6k4eIBl/wyg0kc0Xoi6JQa9IF8rf7aoCpnOQ8+8IxV1
 fgs/tkbcsv2kKgGs0GLuU/+eCoBw32G/4C3LWevjfsUNTz50fqi5s9KKuA9ue64ztM
 2OMtvFAKgSR8E9QL53frn2fw2sIuGvUs99ebH/fNHxFM1/m4yQWJBLu8m13fHWW49g
 0tFxlkmhxbLwA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 77966A0247;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 6/6] ARC: mm: tlb flush optim: elide redundant uTLB
 invalidates for MMUv3
Date: Mon, 16 Sep 2019 14:32:07 -0700
Message-Id: <20190916213207.12792-7-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_761694_3C9AF3CD 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

For MMUv3 (and prior) the flush_tlb_{range,mm,page} API use the MMU
TLBWrite cmd which already nukes the entire uTLB, so NO need for
additional IVUTLB cmd from utlb_invalidate() - hence this patch

local_flush_tlb_all() is special since it uses a weaker TLBWriteNI
cmd (prec commit) to shoot down JTLB, hence we retain the explicit
uTLB flush

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/tlb.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arc/mm/tlb.c b/arch/arc/mm/tlb.c
index 210d807983dd..c340acd989a0 100644
--- a/arch/arc/mm/tlb.c
+++ b/arch/arc/mm/tlb.c
@@ -339,8 +339,6 @@ void local_flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
 		}
 	}
 
-	utlb_invalidate();
-
 	local_irq_restore(flags);
 }
 
@@ -369,8 +367,6 @@ void local_flush_tlb_kernel_range(unsigned long start, unsigned long end)
 		start += PAGE_SIZE;
 	}
 
-	utlb_invalidate();
-
 	local_irq_restore(flags);
 }
 
@@ -391,7 +387,6 @@ void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long page)
 
 	if (asid_mm(vma->vm_mm, cpu) != MM_CTXT_NO_ASID) {
 		tlb_entry_erase((page & PAGE_MASK) | hw_pid(vma->vm_mm, cpu));
-		utlb_invalidate();
 	}
 
 	local_irq_restore(flags);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
