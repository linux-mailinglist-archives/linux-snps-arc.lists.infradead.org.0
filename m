Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728711E630
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obHo+ctxOEPlKRIv5wyIev7o/gYBwTneqOKiIXqHc4U=; b=W3Abx+jhbLLV++
	BbMWSA+AvcCvxAmHP9dXNwVG5rrvtSMEXAdxMxr8g7p+o8XaR3Eo+XH68jjZoV3h9ReS0hB027/As
	8hcHyTHAKYvSFYO4uTGPxuTTC1aDBO0Xoz44/dJiTAdkPM5YS91G2nQODecz/tOT7wv8DbyRG0WWK
	OpGEjpO6h4tVDoJ/FfQ/VUqZmJ12MURHyxbp286/FA+JFEGBHLOgR4DysE3UGCU0AQjLjqxckdK1I
	QQYbgjlyIDujmFuUYDU8Yqjde3mYEt5P4/YJh2nZHja4Qi4SSE/DsemrjQITFMmTUPHZfUOuLMayi
	2b0mGFj5WkYQLiSfSJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoa-00044m-31; Wed, 15 May 2019 00:30:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoW-000432-9x
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:34 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 98629C0A74;
 Wed, 15 May 2019 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880222; bh=4Uok3nJEPZvjzWu786MUXGhW5I+RXAihVDhKrqpraSM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=MO0L1yuAeVCJb8LJ/JMkMGL3IDUc9f+b2ft1UasnB9zCjzE/pctSfIV6la9jxUpqk
 ctcKo/Kkcq7G7NPrrCrk62eXOy3SgGjfOHGeuDYVeJxo0wVpBfMotMHnUl2fbZoDiG
 vfr8a5y+pMeDPr0K8NXdxUTjSu5R0keHtK4PBa1nWhKsa/Wywevb/73sGKdxjl0NLY
 HmQs6zqqJSKXOYq1DKvCQkbD5YjsKpayZKh9S6FH4QI7AUFQpeKBzEPJdPxsTk5uTy
 DXkY+u29aQ2wMWjlH/ZkKI1osXYtfJlPE68XNm98wYCcNFGpru03wjks3E8h8jCSs1
 io6ufqVh6GxSQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1DA85A0069;
 Wed, 15 May 2019 00:30:32 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:18 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:14 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:26 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 7/9] ARC: mm: do_page_fault refactor #6: error handlers to use
 same pattern
Date: Tue, 14 May 2019 17:29:34 -0700
Message-ID: <1557880176-24964-8-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173032_347379_B299BD2A 
X-CRM114-Status: GOOD (  11.65  )
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

 - up_read
 - if !user_mode
 - whatever error handling

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index c0a60aeb4abd..0e1a222a97ad 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -194,22 +194,21 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 bad_area:
 	up_read(&mm->mmap_sem);
 
-	/* User mode accesses just cause a SIGSEGV */
-	if (user_mode(regs)) {
-		tsk->thread.fault_address = address;
-		force_sig_fault(SIGSEGV, si_code, (void __user *)address, tsk);
-		return;
-	}
+	if (!user_mode(regs))
+		goto no_context;
+
+	tsk->thread.fault_address = address;
+	force_sig_fault(SIGSEGV, si_code, (void __user *)address, tsk);
+	return;
 
 out_of_memory:
 	up_read(&mm->mmap_sem);
 
-	if (user_mode(regs)) {
-		pagefault_out_of_memory();
-		return;
-	}
+	if (!user_mode(regs))
+		goto no_context;
 
-	goto no_context;
+	pagefault_out_of_memory();
+	return;
 
 do_sigbus:
 	up_read(&mm->mmap_sem);
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
