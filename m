Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1238E1E62B
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgeKxrN2n9txXHBKG3ZNjCowOp3WhfCd3aiuZyCfbv8=; b=TqCsbFd3h6FPSN
	UXj6WStoAxqTBWPFPJsWb3cuj7rZAhaHMP3RTQ+WQX0MEF8XMWr2FFtYuHH7d8yid69sA9wmnyYFP
	2W9Q0nBiq/D15Mr53bkwHULN3FwUi2/0iS5oMMSQ/jOR+gfvyB2a4o9lL2W45ltRavFNw1rV2BntE
	XNP8ROF2AKLCaMRsvXPIYFnJUkPhhvZi0ddj/b3Z5HN1Fj5+8OHD9i0Or5nJEH3zeKlvVHPWvHuk2
	TQmVwF1KorPDL+D0J8QQHNvQBc8W1VMOgxgMMLUCsMZLrSXTQvUvG1YDKENA8yi+uqzsRHexfimcm
	Ah/53w8Z7yheyL5Apsgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoQ-00040L-IU; Wed, 15 May 2019 00:30:26 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoN-0003z9-Jg
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:24 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 91053C125D;
 Wed, 15 May 2019 00:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880228; bh=93f71ZD3+EurATqopDmH75w385G69mhgd8zJncs+9Rk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=HoaR3fobjpKsYMDby8xp+QxzN2t5qSrJf5H3K7JYvInIR+3RI/BeNz4pkj7Ob3K8T
 SnkBG0G4nkd5g/D1azqUQd2lbmpAgzm8a9QFTzZ0FaS+ZMSVhFcolC3DytYX1R72tC
 bvuEky12aDX/QFmFsR5Hk3/uLWc7x0p7J+D5qDqAUGhlqh/6dizBRckWkPf5zf3JIe
 2lQvfFAJElDXxEW6GmWF+tCvKhjPtpWX0asQU+O1eygfrJpIX3XIu2GjRzdOzQRuty
 8WCsTCOfRR0Ht30/h4SDceHamgm7NXVPQtjfNo93BCyxA/qXv4/L2aEllk30LSFeB1
 eyZV1FoRi6Cfg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6F9E7A023D;
 Wed, 15 May 2019 00:30:23 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:15 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:11 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:23 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 6/9] ARC: mm: do_page_fault refactor #5: scoot no_context to
 end
Date: Tue, 14 May 2019 17:29:33 -0700
Message-ID: <1557880176-24964-7-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173023_696823_AF8DC562 
X-CRM114-Status: GOOD (  11.20  )
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

This is different than the rest of signal handling stuff

No functional change

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 7f211b493170..c0a60aeb4abd 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -201,20 +201,6 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		return;
 	}
 
-no_context:
-	/* Are we prepared to handle this kernel fault?
-	 *
-	 * (The kernel has valid exception-points in the source
-	 *  when it accesses user-memory. When it fails in one
-	 *  of those points, we find it in a table and do a jump
-	 *  to some fixup code that loads an appropriate error
-	 *  code)
-	 */
-	if (fixup_exception(regs))
-		return;
-
-	die("Oops", regs, address);
-
 out_of_memory:
 	up_read(&mm->mmap_sem);
 
@@ -233,4 +219,11 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 
 	tsk->thread.fault_address = address;
 	force_sig_fault(SIGBUS, BUS_ADRERR, (void __user *)address, tsk);
+	return;
+
+no_context:
+	if (fixup_exception(regs))
+		return;
+
+	die("Oops", regs, address);
 }
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
