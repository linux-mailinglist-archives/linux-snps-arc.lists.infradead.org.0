Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DEA1E7C64
	for <lists+linux-snps-arc@lfdr.de>; Fri, 29 May 2020 13:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FUJPLO7D9UveaTSkLIIPEOeLU+ssx9kezLn1AHtrRA=; b=X61gGa9YXPe60L
	my+iW0EJsYGjULcHQNL/6rKQwrIWE48wQNTKW8JaGfY1AKk6iZnLIlDYSE69AhjSY6Xu3fevPilY/
	8VHQUIkDJ/LQV/duOwpeLAMjqGLFoI0yvV14FTaLXLmmBRu+mirfxkdTN/QAqGsdfiB7r4veI5hIe
	CjfP73PEuTzQ7TKlPhdO3zugmkxmrTbVZUAlTP5XYOwWRKXL1seoqZthJVv4dWVYdoi2xfzKWs2d/
	5i+n++qrL+5sUKEaQu+F2JgkZEMCj785vjssRrWt8jvzuE/qrfunBuK6wjWyYB5Q85OncSpACner7
	GVsKicRAnWVT7pPCmYdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedcH-0007ot-BG; Fri, 29 May 2020 11:56:01 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedcE-0007nM-Hi
 for linux-snps-arc@lists.infradead.org; Fri, 29 May 2020 11:55:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A3F3C40926;
 Fri, 29 May 2020 11:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1590753357; bh=Dfq6lwwFSUj6yhixC7HC3wj+k/9vWHYyBBePg4pROUU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lnfWLNTzm2zxsgJbXVIrsGD9VLE6s4aloIATJH8KQGf+RHE7TObrPmT0XF9Sx1CtJ
 85Llme5jRD6e1LNAJM6G6Xvzzoo0FTaIXgHrnrBihGuRVtCZl9y5wXxg4yhSFpEI62
 miEN7uesQGhxjCXzzKbigyoOJbqaa1P75ESscXpttqyx2FOweHTZBKS7u1u55UJqZN
 qxsHDHULxe+sbjhIVEw9O/ATaptfhH8T3RiCl2U/gr46d6Nw+sR8G/Oe4C1nzvS9ia
 FAlo6eb0g4xX2Ddz4PEbzVazI8/EzJcubxoq7jq6u6chdyIi+bBw5r44/inAoKPZ0r
 9bv9nx9pU4q9g==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.50.16])
 by mailhost.synopsys.com (Postfix) with ESMTP id 78BF5A006B;
 Fri, 29 May 2020 11:55:53 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 2/3] ARC: ARCv2: support loop buffer (LPB) disabling
Date: Fri, 29 May 2020 14:55:33 +0300
Message-Id: <20200529115534.22883-4-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200529115534.22883-1-Eugeniy.Paltsev@synopsys.com>
References: <20200529115534.22883-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_045558_587436_98694A0F 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On HS cores, loop buffer (LPB) is programmable in runtime and can
be optionally disabled.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/Kconfig       | 6 ++++++
 arch/arc/kernel/head.S | 8 ++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 2d4f85dc914e..270504d4fdf5 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -471,6 +471,12 @@ config ARC_IRQ_NO_AUTOSAVE
 	  This is programmable and can be optionally disabled in which case
 	  software INTERRUPT_PROLOGUE/EPILGUE do the needed work
 
+config ARC_LPB_DISABLE
+	bool "Disable loop buffer (LPB)"
+	help
+	  On HS cores, loop buffer (LPB) is programmable in runtime and can
+	  be optionally disabled.
+
 endif # ISA_ARCV2
 
 endmenu   # "ARC CPU Configuration"
diff --git a/arch/arc/kernel/head.S b/arch/arc/kernel/head.S
index 6eb23f1545ee..17fd1ed700cc 100644
--- a/arch/arc/kernel/head.S
+++ b/arch/arc/kernel/head.S
@@ -59,6 +59,14 @@
 	bclr	r5, r5, STATUS_AD_BIT
 #endif
 	kflag	r5
+
+#ifdef CONFIG_ARC_LPB_DISABLE
+	lr	r5, [ARC_REG_LPB_BUILD]
+	breq    r5, 0, 1f		; LPB doesn't exist
+	mov	r5, 1
+	sr	r5, [ARC_REG_LPB_CTRL]
+1:
+#endif /* CONFIG_ARC_LPB_DISABLE */
 #endif
 	; Config DSP_CTRL properly, so kernel may use integer multiply,
 	; multiply-accumulate, and divide operations
-- 
2.21.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
