Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5729A1EE98D
	for <lists+linux-snps-arc@lfdr.de>; Thu,  4 Jun 2020 19:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdlwEFgJPMKboqwMIJiczzJG5pYR1RJLks4ZYt098CY=; b=dWimduTaxpyGpg
	GKKhHX8PkJq+c88MjNnN1u1AJgT9hyPxTB3QgAvFyj26V0hQHyvMWXqndUXZNOXCqoB3fT33HmkES
	XRcH8DexF41vE69k/b7A26vYX2ZKTc9NEyFN1IfNGVu0KJh/+EIFDKHTvE7y4p1l3cJ83xQqCEdW1
	iFjI2xotsfzSBJwIWGtVCd3s715APHVzAoZt736D2L3jzAqaTu5eII9EhnSbivKS7hDoDnz3GjyLm
	+Np4+oAF7r3DRms/Qw3PMPqcUWwP1oK126iSBSxnsnjVGxtZ28/ebp2eKVmUVnst1yZjLPDJiC/JR
	Fadq2f5VN0xdYBfYX97w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtqO-0001Gr-Q6; Thu, 04 Jun 2020 17:39:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtqL-0001Er-2N
 for linux-snps-arc@lists.infradead.org; Thu, 04 Jun 2020 17:39:54 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 16D8840069;
 Thu,  4 Jun 2020 17:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591292391; bh=GEMxpmOCdzLjPq0Pu+A1Lsu+3IzlfoVaSV6+HhV9xEA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lanO2LIaJj9fZ9baFWMj4FjGPLnEFw0QMEJ8gSD/WRt2WwIF9axegMwTfQr4lS9Hj
 Rf5udWoYKt+flNHJmvitoudFUmh0KNYkj4QHvF2ptSpNiDSs59/wvCykRPqEXtqadY
 dxe9iVfXfnJTWD5XWutz5WYkj0ifH53luE14hoXOCY28HKD6RvWY0QZvGLJAzcNDIJ
 SB0yR+ObEx397JoqcoF4ZYImjkQPnNUKBqid/SpWspdZdyqGiwHoouiMQIiEervWg2
 55P5x6xBZBXEq+RouImRx8/WI80uy7X9ASkLXj3hR6kvpChB2xCsuUM9V8MnZ0FlXI
 UYcj+YpcyOdXw==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.49.234])
 by mailhost.synopsys.com (Postfix) with ESMTP id 947CBA0065;
 Thu,  4 Jun 2020 17:39:49 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2 2/4] ARC: ARCv2: support loop buffer (LPB) disabling
Date: Thu,  4 Jun 2020 20:39:25 +0300
Message-Id: <20200604173927.23127-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
References: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_103953_364210_E079DA81 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
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
index 7034c217708f..2dc142c8e1f5 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -473,6 +473,12 @@ config ARC_IRQ_NO_AUTOSAVE
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
