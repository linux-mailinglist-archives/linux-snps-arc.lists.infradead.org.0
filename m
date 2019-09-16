Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC0B431E
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbRJtTByNEYMNDpYVMzLCeBeN5afIeTRA49LkwFNyTw=; b=VJbe7e8GfBaPAc
	MbFgzLc9iCEZLdBmWVw130EGvSacWhgQUD5H4pQUW5YBeHaGDKtFrF7BgNDBtVXRT83lYM8hCWW3l
	bbtac1WpBigdDF99K9cqNXwQ0un4U4CQLS9kWWb552qiNRersNggYGq5lf6vGyVjNOQdYTef2qOYF
	Z7h0lRBOeQZCrrPm8apBtyySof5aZbJvjUtrqIa//DU4hI4aX73Gr6b8hoRHmctz2FbBdD32JOKBF
	HpnbBYzZQQQmv8/W6rRSxPvzQhxZe0tOpRMBYs5L0PYmJNQXFYdy+J7/imphSR7UYYJPF99+Wk6LC
	CNvJNyTNJZzjeR3gSvjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybV-0003lg-Ps; Mon, 16 Sep 2019 21:32:13 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003j5-Hf
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:12 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 69287C043B
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=e1CtIlm8ZLKfGLqZXxjfGVIYfXpXuXb3NlSHqFGF2D4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OwC3JEKJtCYfd2jtD60pbEt6DsLIf3rz1XqacPq6HGQfmBfPQrZwZz1rNROnxYZ4g
 1udklEBgxHTwkrhnt4ehfsV86inYitSmCWPNtn8fmVPaWDHyAF1Hsk1oiwiqSgai8o
 DyxtJWcn8UkhS210yFikWdBfFRtllvvw++M9azLXEX8X04Dz0FTopvudE2vdquNT0r
 BZc/ICanYkge7u1aLGOkgsQZMaUMCUlFRG5jDAwN2LK1Bjx+kAT5Dym+JG918dHZH7
 vt5GF1jfZNUXpfWGepgr9SJv59xf9yQRhrUhw7cCKvDRVrr37cin8s/vcRrs7OqsE/
 Sb2zHykwK8eJw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4B95FA0095;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 3/6] ARC: mm: TLB Miss optim: avoid re-reading ECR
Date: Mon, 16 Sep 2019 14:32:04 -0700
Message-Id: <20190916213207.12792-4-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_605961_22B3A56A 
X-CRM114-Status: UNSURE (   8.43  )
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

For setting PTE Dirty bit, reuse the prior test for ST miss.

No need to reload ECR and test for ST cause code as the prev
condition code is still valid (uncloberred)

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/tlbex.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
index 110c72536e8b..4c88148d4cd1 100644
--- a/arch/arc/mm/tlbex.S
+++ b/arch/arc/mm/tlbex.S
@@ -380,9 +380,7 @@ ENTRY(EV_TLBMissD)
 
 	;----------------------------------------------------------------
 	; UPDATE_PTE: Let Linux VM know that page was accessed/dirty
-	lr      r3, [ecr]
 	or      r0, r0, _PAGE_ACCESSED        ; Accessed bit always
-	btst_s  r3,  ECR_C_BIT_DTLB_ST_MISS   ; See if it was a Write Access ?
 	or.nz   r0, r0, _PAGE_DIRTY           ; if Write, set Dirty bit as well
 	st_s    r0, [r1]                      ; Write back PTE
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
