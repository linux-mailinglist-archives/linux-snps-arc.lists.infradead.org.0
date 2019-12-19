Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3802A126384
	for <lists+linux-snps-arc@lfdr.de>; Thu, 19 Dec 2019 14:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=boSbn7pHBgmKVs06zoKBQqH9NTSe9juyjEt8FBod5dM=; b=jEU047s4JNbI49
	zWUYajZT9ht9Ki7z7UHftSSkKfUHxRIdDaO4gZBSOSsjZ9gXwo5j86As2I4EctTRMIZVwxW9OCId0
	rK9F2HNDiRa9Bn7SShFRUIlTNzW2VteF86ShahwCbqidVdKs5kLuanZLKAAP1FPmRwA5JZzwkBwu2
	pj0sWhDvhAa901xPQir3GlNeZ4dwGKG3iYtqswnuyo74itLOOIYdYHbu2ssZ8eMUNED+dT5DUBGKC
	i49r8fmAtcb2cXuVN8hRGCNFA9QzWUMeRqQOOxlmNqipnKR1+5hxxVi3f60SxTBYv86g7LRFuPRxv
	/IUkYxJNHjr/MijKazjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvtB-0007h6-0C; Thu, 19 Dec 2019 13:30:49 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvt8-0007ed-8c
 for linux-snps-arc@lists.infradead.org; Thu, 19 Dec 2019 13:30:47 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5DB70405D4;
 Thu, 19 Dec 2019 13:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576762245; bh=CwpIHUsLSwWgfRfilgxCCE00b6aVv9KpT49ou2/oTLI=;
 h=From:To:Cc:Subject:Date:From;
 b=hER6opfXJxcbx+tkUxHY5+je+3Okwntz9LcihPHUs+oD9kfAF9Rruw7T4LK1V1r6s
 z81OPiVRoFUeKDDabUygcXzeNPRKFiV5+H47dn5L0VgOB9lm9YUV2lrJEgLtcwu+aT
 5XWq7wIUE1HV+6itz8ybsuCq2S/ZkpEHjbzW1ujVpplY8L3NI/e+ep4aexKQ4CbS95
 i6TpM3rk+mi2n9NgjoDTEs8MkaGiVJRE74anC3fhknrtmSeCK3VR2iyS2+F6LcHz8N
 mjVzNTjkJ6LX+QL8cEzX2NUmZFwdl0qvrbl9l+LWLQrOdeTn1vMhUMiA1QOV028Ukh
 5A3SY9K8FVzJw==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id 18ED4A0066;
 Thu, 19 Dec 2019 13:30:42 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: asm-offsets: remove duplicate entry
Date: Thu, 19 Dec 2019 16:30:40 +0300
Message-Id: <20191219133040.12736-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_053046_368653_10BBFBBA 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

We define 'PT_user_r25' twice in asm-offsets.c
It's not a big issue as we define it to the same value, however
let's fix it.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/kernel/asm-offsets.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arc/kernel/asm-offsets.c b/arch/arc/kernel/asm-offsets.c
index 1f621e416521..631ebb5d3458 100644
--- a/arch/arc/kernel/asm-offsets.c
+++ b/arch/arc/kernel/asm-offsets.c
@@ -66,7 +66,6 @@ int main(void)
 
 	DEFINE(SZ_CALLEE_REGS, sizeof(struct callee_regs));
 	DEFINE(SZ_PT_REGS, sizeof(struct pt_regs));
-	DEFINE(PT_user_r25, offsetof(struct pt_regs, user_r25));
 
 	return 0;
 }
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
