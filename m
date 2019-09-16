Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFB4B431D
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PhccNw91wkWkz7BIvQBtvxakFVV3befysjyxXR2c5c=; b=kkhtbT8bE5x9qI
	Pi/KiyRRb0FkFtVELvW59+PAwef6uOoGCj8KYdm2rPj4oRho8cfI8ag2jXLri9AurEiTAODo26U8s
	UF66xrhrvEwNo0IKF3oBSJ5aUirZ4FbaxJvDE8aU6J2+bUjVr27KpcjZeXBa8feLY0uaeDy336YdP
	1bSucwMKGwSw0D6QyXm5Oq78A4xhXEK2bot7VMZqe6+1oYcA9GJw2HIE3C0I211jAIKTd555MQQGM
	UdslnGSobu6DKJovqMYFNHTtYl0nYp5Ae6wA1GqHTLkHhtIsy2ge7iyaA9eF05n4wl/P3W4bfjajD
	yDlDLuNhwQx0hMulXltQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybV-0003lO-Bm; Mon, 16 Sep 2019 21:32:13 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003id-F4
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:11 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 57CB6C042C
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=QVKVhUwlx2iEDRanTyoYFeFe7ZtLG/uDBO9M3Jzp76U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HkLc2jHTZuiFUScvCscLPyjITUtwdFPuTrnwWIIM+3e5v8sVEkVbA8kTg8y+lXbYZ
 zgMI2J6/Gw7Iudm03HNx61V1mbr7CuEXLPJbAfxoFrx8szXAlj0sc4Nlny8urcLSxA
 qFfdeMSl8oqTpioz/jWpE/QYNCFWqOaeMSGegzWMq3tagI18YpC5dB1c3Z93hwmSaF
 RNcFiD7pvffo+wfBlpy/kdWhRDW24oZPYT2CZqEFKPNvusAgGDaQEbHk7hsuCuYeAb
 PIiHNUzQkLcpO2inTyHXXBG0qPnbKXUqlmlDJ4FxsoT2+3crE8QIaGGHHlOjAmH4hG
 jdLJ7U6Y7fR2Q==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3DCFCA023D;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 2/6] ARCv2: mm: TLB Miss optim: Use double world load/stores
 LDD/STD
Date: Mon, 16 Sep 2019 14:32:03 -0700
Message-Id: <20190916213207.12792-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916213207.12792-1-vgupta@synopsys.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_507794_4FA2B605 
X-CRM114-Status: UNSURE (   8.51  )
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

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/tlbex.S | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
index d6fbdeda400a..110c72536e8b 100644
--- a/arch/arc/mm/tlbex.S
+++ b/arch/arc/mm/tlbex.S
@@ -122,17 +122,27 @@ ex_saved_reg1:
 #else	/* ARCv2 */
 
 .macro TLBMISS_FREEUP_REGS
+#ifdef CONFIG_ARC_HAS_LL64
+	std   r0, [sp, -16]
+	std   r2, [sp, -8]
+#else
 	PUSH  r0
 	PUSH  r1
 	PUSH  r2
 	PUSH  r3
+#endif
 .endm
 
 .macro TLBMISS_RESTORE_REGS
+#ifdef CONFIG_ARC_HAS_LL64
+	ldd   r0, [sp, -16]
+	ldd   r2, [sp, -8]
+#else
 	POP   r3
 	POP   r2
 	POP   r1
 	POP   r0
+#endif
 .endm
 
 #endif
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
