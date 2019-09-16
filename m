Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B6EB4320
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTYQqNFTPu0JT9ghE6eL0U2Wis83UzSpGjXML2hhpns=; b=lUYFdg2P6iU6Ec
	tVfThulJ47QeSuROALHaLsL8mEahp+9qm79iNeioFfSGbZAl9u0y3+qT9HNuOw+PC4+UeF7jxMLy4
	AJ57uG/phe2fwdZcGv89wK47LfsZNqDDpUE7YNx3oiYydgmNKLpIGtLQ4Z00p3IXabRJ7wB7o8Nda
	+xvTb5UXJ7m+3jvN4uDcSf30KhRjUzJQVYBZh25wfkl8k3IZUMf6TzoJiK+bzlcPZN7XEJGIwnnOY
	c22yGkNHOmREZXihzKXe5cQZvkogXE9mfoE/Hdg7/LFFA371zKF3jhWz16/ayJiG2ztqDOd5q1K6Q
	AXeS2ZoQmE959u6hkbyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybW-0003mM-Bk; Mon, 16 Sep 2019 21:32:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003jD-Iz
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:12 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 74DA3C043F
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=1Ray0n+EVYESE1DkuohJZeoAREWRkAQF/xXib2Hd9FE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ak0S8Eer20sjK8w7MgKz7b9Ma0Gvz6cv+lnR95OTfcnXs/OwW6O/2b/cDyvDFANTf
 3p/azIMcGSdYZiVE8fEQe6h5RhH4pwdJGTck/vDxgZcWU9RurymPgAHIsTEc/qlaEj
 MyR4ir6+QFjJaodxmRBmnGw0oBQ7XCpk61N/UcCcyY9tV4ZkzPHcrO6FhU/H7itVw0
 kORUilveovNyOjVNjVtN4g90HibwdNjazsZhi3JK4umVtZXKZezJQxJtcjUpNTkETv
 AfoMW0g1Z0XeTlAB7tP+0XtStFQd7OGxUUsy+IjZHjDaSE4Ryi7SwfTTZ6Ga03NnvZ
 vu9EELxT+qbhQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 597DCA0240;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 4/6] ARC: mm: tlb flush optim: Make TLBWriteNI fallback to
 TLBWrite if not available
Date: Mon, 16 Sep 2019 14:32:05 -0700
Message-Id: <20190916213207.12792-5-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_632220_BF4A2556 
X-CRM114-Status: UNSURE (   9.35  )
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

TLBWriteNI was introduced in MMUv2 (to not invalidate uTLBs in Fast Path
TLB Refill Handler). To avoid #ifdef'ery make it fallback to TLBWrite availabel on all MMUs. This will also help with next change

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/mmu.h | 2 ++
 arch/arc/mm/tlbex.S        | 4 ----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arc/include/asm/mmu.h b/arch/arc/include/asm/mmu.h
index 0abacb82a72b..26b731d32a2b 100644
--- a/arch/arc/include/asm/mmu.h
+++ b/arch/arc/include/asm/mmu.h
@@ -67,6 +67,8 @@
 #if (CONFIG_ARC_MMU_VER >= 2)
 #define TLBWriteNI  0x5		/* write JTLB without inv uTLBs */
 #define TLBIVUTLB   0x6		/* explicitly inv uTLBs */
+#else
+#define TLBWriteNI  TLBWrite	/* Not present in hardware, fallback */
 #endif
 
 #if (CONFIG_ARC_MMU_VER >= 4)
diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
index 4c88148d4cd1..2efaf6ca0c06 100644
--- a/arch/arc/mm/tlbex.S
+++ b/arch/arc/mm/tlbex.S
@@ -292,11 +292,7 @@ ex_saved_reg1:
 	sr  TLBGetIndex, [ARC_REG_TLBCOMMAND]
 
 	/* Commit the Write */
-#if (CONFIG_ARC_MMU_VER >= 2)   /* introduced in v2 */
 	sr TLBWriteNI, [ARC_REG_TLBCOMMAND]
-#else
-	sr TLBWrite, [ARC_REG_TLBCOMMAND]
-#endif
 
 #else
 	sr TLBInsertEntry, [ARC_REG_TLBCOMMAND]
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
