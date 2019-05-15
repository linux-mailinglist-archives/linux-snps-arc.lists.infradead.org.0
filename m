Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A11E62A
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo5cw/bYpGWCzVX0hh1fGA5UiaVqgsbgYkkkJRYRzME=; b=V0eInlqLtABzpc
	mMzwQeubRwIYR1mn415aiO3Q50EXBKfs2nQXPFpBNPgIXO3QDXzExMHWW8tJE2/o87vtHdDBirq17
	Zhk3W9KYHSl+Z92THo/Qug1NTw0vcpAgETxbnjOS9M4ND9LvgJCLvaPBG5N3NmId/yBw8edv+59ed
	4wi1DWSYPY6C6QkccNFHhTGpj++KGlMKwp9cRxjoNinF/OdFd/EtiJ54f4CAMEnHICrKESxr7EhoP
	Hi6/MiClOzGF+ImbauPSvIlg3fPQ+ol2Bs3oHm976rBKWha1fJEj6zBVAeqsxfJDDWqd7VOHzsWlz
	C4f+MFc7sK3eizjNf+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoQ-00040E-DF; Wed, 15 May 2019 00:30:26 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoN-0003yt-E5
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:24 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 622BBC125A;
 Wed, 15 May 2019 00:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880228; bh=BbOArzhCYfXqLI1L+PWNkHvNIYDOVRl28L7WeykEn0k=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=cvsuWs6C3nQmf2EnZKnLLueUjqsQMWTVettJFq+6AhkpWX10HAxgVupEuHll2KTxr
 JFN1Fq4xkyPx7T1qYP7mbNWcO+A6gReec8fdsCHFXd7CG45wj/aPI2KIGNTr34eq2H
 MlJ++0FI57ROZz4bFPjGrIEl95+t+RQHH+Y2YfrYLVVRR8vOxDfhoY0hgICHrEMu/Y
 BObWS/2EoGA6Lh19saBMNmWNxIn4r3SDDfeG4w0hEK/rCUcosflQ3t0bYExWIc/Cc5
 4+pwIYLo9zbpzGGJ2hyBXCXVvKRu7M/7j5J/chC1JHvMJCLrvmffJVuvIxyv27AdtX
 7eQlxpUj/WeVQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3DA49A023C;
 Wed, 15 May 2019 00:30:18 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:01 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 05:59:57 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:09 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 2/9] ARC: mm: do_page_fault refactor #1: remove label
 @good_area
Date: Tue, 14 May 2019 17:29:29 -0700
Message-ID: <1557880176-24964-3-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173023_480641_12D35A2C 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: paltsev@snyopsys.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Invert the condition for stack expansion.
No functional change

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 6836095251ed..94d242740ac5 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -100,21 +100,19 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		flags |= FAULT_FLAG_USER;
 retry:
 	down_read(&mm->mmap_sem);
+
 	vma = find_vma(mm, address);
 	if (!vma)
 		goto bad_area;
-	if (vma->vm_start <= address)
-		goto good_area;
-	if (!(vma->vm_flags & VM_GROWSDOWN))
-		goto bad_area;
-	if (expand_stack(vma, address))
-		goto bad_area;
+	if (unlikely(address < vma->vm_start)) {
+		if (!(vma->vm_flags & VM_GROWSDOWN) || expand_stack(vma, address))
+			goto bad_area;
+	}
 
 	/*
 	 * Ok, we have a good vm_area for this memory access, so
 	 * we can handle it..
 	 */
-good_area:
 	si_code = SEGV_ACCERR;
 
 	/* Handle protection violation, execute on heap or stack */
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
