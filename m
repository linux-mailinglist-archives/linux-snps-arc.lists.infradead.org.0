Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFB9B830C
	for <lists+linux-snps-arc@lfdr.de>; Thu, 19 Sep 2019 22:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsWvQo79GZOGRAg92UiimyBnXRv9ECu7cFjVK8ymUkI=; b=bBxx/Mb9HLfkiT
	Y3hPZIVu7mm+flRCh8SUcyPtYvwXed3CnmVhKt6+w+Y6EPpQxmM5kWDccq1e7vFyyoxSHGztViVTf
	nzxanXKdklzQTXVsBodZKndFYcThzwtsVhfmNyunjSIH1IYi/oQDXmJDhQfn5rxvtbQ2S2UHO5cgw
	pJ39wuYRGjLvtDz1DmXOZCrZfuICph+dE+fWCJQB0L/8QO6PMuG2/OvAk+lctfyRwG5oFc4A3YTPE
	Dp2iXFxo0k/vQpjuhDmTtNJX3Eio5LQ5AUMTVlTaUuMaX1zT2/km93MTLObZnpMCbopTJRpMnFyEO
	GmmBe2mH/jMxkCdhm7Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB3Vy-0007DJ-14; Thu, 19 Sep 2019 20:58:58 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB3Vu-0007Cz-RQ
 for linux-snps-arc@lists.infradead.org; Thu, 19 Sep 2019 20:58:56 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8BB3AC0390;
 Thu, 19 Sep 2019 20:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568926732; bh=J0zJEzcfcFgRLmj4dqXRUat6VykPyyAFuhXeW0Xenrc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G9xORNl3iGWQcAGN/9HG47iPi+tLpK0V2e22IDvnktz2Eu6tO/+iCxge/5xvi9/+i
 tdPdhLUrjwttWtgxTFoLO/E/EFodq/hAJ1uKE78kCBlApPs1pGDhUs5oH+itFPW7uV
 B/eb5bQfxDAmeVsQ1Z5nOpTHulBwvdUmJNdCtCe1obngKnlnX4cPFvRNec0PRN6jDr
 fUnnFt4pepoqhp+omX39Uk3ujB64Qti/zwLaw2pTWszLJk4wOMZU5ZSzw15957WvsD
 GHR7k0R7ZVb70BH7FLP4U66oAkFbKjR0WuYRmKncTh2el3z3OG1J6G+92tXgYA6fuW
 FBMW5AyZ89CYA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 572FAA0065;
 Thu, 19 Sep 2019 20:58:51 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] ARC: export "abort" for modules
Date: Thu, 19 Sep 2019 13:58:47 -0700
Message-Id: <20190919205847.4806-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919105432.GA2809200@kroah.com>
References: <20190919105432.GA2809200@kroah.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_135854_897109_37093689 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org, kbuild test robot <lkp@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This is a custom patch (no mainline equivalent) for stable backport only
to address 0-Day kernel test infra ARC 4.x.y builds errors.

The reason for this custom patch as that it is a single patch, touches
only ARC, vs. atleast two 7c2c11b208be09c1, dc8635b78cd8669 which touch
atleast 3 other arches (one long removed) and could potentially have a
fallout.

Reported-by: kbuild test robot <lkp@intel.com>
CC: stable@vger.kernel.org	# 4.4, 4.9
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/kernel/traps.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/kernel/traps.c b/arch/arc/kernel/traps.c
index 2fb0cd39a31c..cd6e3615e3d1 100644
--- a/arch/arc/kernel/traps.c
+++ b/arch/arc/kernel/traps.c
@@ -163,3 +163,4 @@ void abort(void)
 {
 	__asm__ __volatile__("trap_s  5\n");
 }
+EXPORT_SYMBOL(abort);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
