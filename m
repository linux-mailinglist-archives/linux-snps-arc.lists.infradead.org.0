Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11D11BCA50
	for <lists+linux-snps-arc@lfdr.de>; Tue, 28 Apr 2020 20:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dORlwpDfMmwaIfH6K5/m9ibfOzNXFJVoNYOLe4s4cMY=; b=iXMJFAL3g6Yvdz
	b6Y508TmxjHE6I2XjJPqyzT3F83DlwUoopLthVVrssbynlEj5q4d8xbl8QH4ZfPfTlibPNiqZFxFW
	SyyJ6dPY9qegqBci4gY/5Y7rnZo9/7PJeCj1laJixteb/VlK1GRLyy4OSr/8TITTH2RwrC6d8Lgfl
	1yA98N6Mk4ku7cpLPGJiA7mLxae4LOPOhw0po6RXoYlrh5rUofknf5eO/8ZAsiCyEzmV7CnscZ3Y1
	b2JYAq6bfvdUSID/yM0NtF/TnywVCsFlN7Qn2qtJdfL8/wdmLCPzDK36bhrubhD2XTrwclKPYbf/Z
	nKcLEUwQpGJDF31/lFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTVJZ-0005GB-QE; Tue, 28 Apr 2020 18:50:41 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTVJY-0005Ex-0i
 for linux-snps-arc@lists.infradead.org; Tue, 28 Apr 2020 18:50:41 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 163B84050C;
 Tue, 28 Apr 2020 18:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1588099837; bh=iaYI21+MnPBrnDuud0zQCEFIVFhiyAVqgsYhvsjm76Q=;
 h=From:To:Cc:Subject:Date:From;
 b=NPZ/FQ8PFcvqtKXrrau3mjBxXZIDkJujA7FKYvL5yahbSevgpngaz3xqVs+YtfCyV
 KpqCZAAEuoPatXb2R4aNoUAUVQB90gKHAXqqF4M86NK0dAz2IZjnU8QGDEEUTclh4O
 g661tyOK/DLjLH4p0N8cdTFo+pYi6l+l+z/Xu18TshwzNDhh0uJdK1X7clP8Q0wNu3
 l2qRXBrTiRo9+qaSrJUQq3BIp5aa4AvprA/PvpW8Vn0mx1WE3DVAUrXFHoPEK2g+jw
 uS0LxTuf3b4AC9zjS3fzaG/qn3MgZaIEzhNg4VS2HWPWYLFfT2ZncaknlM/hXwsDEF
 CW8YJgUaPyOdQ==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.116.33.250])
 by mailhost.synopsys.com (Postfix) with ESMTP id E8392A007C;
 Tue, 28 Apr 2020 18:50:31 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: guard dsp early init against non ARCv2
Date: Tue, 28 Apr 2020 21:50:24 +0300
Message-Id: <20200428185024.5168-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_115040_064974_1C8AC5AE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As of today we guard early DSP init code with
ARC_AUX_DSP_BUILD (0x7A) BCR check to verify that we have
CPU with DSP configured. However that's not enough as in
ARCv1 CPU the same BCR (0x7A) is used for checking MUL/MAC
instructions presence.

So, let's guard DSP early init against non ARCv2.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/include/asm/dsp-impl.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arc/include/asm/dsp-impl.h b/arch/arc/include/asm/dsp-impl.h
index e1aa212ca6eb..e64d945ae7df 100644
--- a/arch/arc/include/asm/dsp-impl.h
+++ b/arch/arc/include/asm/dsp-impl.h
@@ -15,12 +15,14 @@
 
 /* clobbers r5 register */
 .macro DSP_EARLY_INIT
+#if defined(CONFIG_ISA_ARCV2)
 	lr	r5, [ARC_AUX_DSP_BUILD]
 	bmsk	r5, r5, 7
 	breq    r5, 0, 1f
 	mov	r5, DSP_CTRL_DISABLED_ALL
 	sr	r5, [ARC_AUX_DSP_CTRL]
 1:
+#endif
 .endm
 
 /* clobbers r10, r11 registers pair */
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
