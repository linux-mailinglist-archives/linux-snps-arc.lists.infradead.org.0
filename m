Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A18A21E58
	for <lists+linux-snps-arc@lfdr.de>; Fri, 17 May 2019 21:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCvWYMX7m9184RvsweX3ywxruOhwTPMqe4a1NTRfBRw=; b=nmjPE0tBrcsgbi
	jvV7L/pGciP5rbXMo3bkEAecSIrd1pfkmlkbosTl0JPXAD7EWsRKpAQ3VX1LbTzrfdRcfb+cwakzN
	GQ35EyiQMmmz3DKWE/V3obuTPq+21aNGmC9aUew35zUzO/ovgzP7nQNWeJxCRoqvJZVd6JY15CDH9
	iyEJCr0PfzXIPyr/wH+peR+yVj5Sxet/zaorEBRJ3Lz7cdmZB93xz4LTkgm8u3Sv3VEvOhVWZOWVK
	jV7Fdpos7Sg8gkjVRlx7hfPSVnbLBKWs4CrlWCuE7KA5EzKRJh4ikeMe9SI1PE+ieOmec8m3f+kr9
	ziT4KEzvydGbdhww3h0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRiau-0005T6-0Y; Fri, 17 May 2019 19:32:40 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRiar-0005S7-3D
 for linux-snps-arc@lists.infradead.org; Fri, 17 May 2019 19:32:38 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EFBCAC00EC;
 Fri, 17 May 2019 19:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558121546; bh=fAUxrkJtkHNBYPCF1Tt5XpGFd5OGsTKlAxmk7SradgE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=WFw4Y3wt/jOdKlXfhkdDzdK1igXiJeh/rreyGpTFJ7xrpDjpU9pctp5cJD1xVE/oV
 m7MrlqYIGknu4/SsWx5E3vsPEOcOxsg5HHIJRP42Vnd1tGqNTLoq7SN2xNThRIEsBO
 Jz60ZB+KFnDSBqcus/ywMfCJixaEi3znzl1hWQlWBvOZAlKIcwmAEG5U/INxzeLzmg
 fZd0TOjVB3pkw/HsBmiBSCZuRp4VEnIg/9/6fwR2E97AElR3GtufqkVHoV8zzBcmmu
 FlhLBPLTP57XIZ15ZrUfQLiL7z4aQgXsFQkdpC3NBE424nEHJFO8+6JWRLwsat4m8v
 7ypKxY+QK7DTg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9CDECA005D;
 Fri, 17 May 2019 19:32:35 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 17 May 2019 12:32:35 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:43 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.10.161.89) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:31 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 5/5] ARC: entry: EV_Trap expects r10 (vs. r9) to have
 exception cause
Date: Fri, 17 May 2019 12:32:08 -0700
Message-ID: <1558121528-30184-6-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
References: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.10.161.89]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_123237_144694_B6755D9A 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

avoids 1 MOV instruction in light of double load/store code

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/entry-arcv2.h   | 3 +--
 arch/arc/include/asm/entry-compact.h | 4 ++--
 arch/arc/kernel/entry.S              | 4 ++--
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arc/include/asm/entry-arcv2.h b/arch/arc/include/asm/entry-arcv2.h
index 0733752ce7fe..f5ae394ebe06 100644
--- a/arch/arc/include/asm/entry-arcv2.h
+++ b/arch/arc/include/asm/entry-arcv2.h
@@ -95,9 +95,8 @@
 	lr	r10, [ecr]
 	lr	r11, [erbta]
 	ST2	r10, r11, PT_event
-	mov	r9, r10
 
-	; OUTPUT: r9 has ECR
+	; OUTPUT: r10 has ECR expected by EV_Trap
 .endm
 
 /*------------------------------------------------------------------------
diff --git a/arch/arc/include/asm/entry-compact.h b/arch/arc/include/asm/entry-compact.h
index 29f3988c9424..98aff149b344 100644
--- a/arch/arc/include/asm/entry-compact.h
+++ b/arch/arc/include/asm/entry-compact.h
@@ -198,8 +198,8 @@
 	PUSHAX  CTOP_AUX_EFLAGS
 #endif
 
-	lr	r9, [ecr]
-	st      r9, [sp, PT_event]    /* EV_Trap expects r9 to have ECR */
+	lr	r10, [ecr]
+	st      r10, [sp, PT_event]    /* EV_Trap expects r10 to have ECR */
 .endm
 
 /*--------------------------------------------------------------
diff --git a/arch/arc/kernel/entry.S b/arch/arc/kernel/entry.S
index 85d9ea4a0acc..730b83ccfbc1 100644
--- a/arch/arc/kernel/entry.S
+++ b/arch/arc/kernel/entry.S
@@ -235,8 +235,8 @@ ENTRY(EV_Trap)
 	EXCEPTION_PROLOGUE
 
 	;============ TRAP 1   :breakpoints
-	; Check ECR for trap with arg (PROLOGUE ensures r9 has ECR)
-	bmsk.f 0, r9, 7
+	; Check ECR for trap with arg (PROLOGUE ensures r10 has ECR)
+	bmsk.f 0, r10, 7
 	bnz    trap_with_param
 
 	;============ TRAP  (no param): syscall top level
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
