Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB29D21E54
	for <lists+linux-snps-arc@lfdr.de>; Fri, 17 May 2019 21:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKDG3rNhclX6fak5niuvoMiknR/EOIRQofjAwQ82q8c=; b=Sl/YnJIwTUMu+t
	aRmwWIBkhmD1x3oetGtWig1bFphQ30KdPy6QlaEbOYmVh5cymXgrNY0X79B3Lt3Cer0tP9nSE4SCQ
	E6eGnnVG6gDk/UuNLtEjp0jHy7W+CkDExJPXpyL2aZiZ7km6SMcwz3zTylYvkHDMQqKGtyBnGQFZO
	qsQOZP1MTOCECu4pmbPyDeC3FDPztdP+/EtII4WtnVrChx3VZMtVnUI5wroEau9yxkaeqzfu3hbAK
	j0Mzm2jBqnfNR/jucMOFwXAN0cVC3uB7vtivPq+CB58wwICN7qzwly9EnbU9b82ypD0TTmN5JN63h
	4qQtw5mZ49VAy/5AMbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRian-0005PP-BW; Fri, 17 May 2019 19:32:33 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRiak-0005Nr-S6
 for linux-snps-arc@lists.infradead.org; Fri, 17 May 2019 19:32:32 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C93D4C00F9;
 Fri, 17 May 2019 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558121554; bh=xj+F4rfsxPPtbg7rvu15yyPc1Q9tuWTngEt3T6FetdM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=EdkjMnpoDQjbzQh9Nt1lWDwpjgJn7PF8Q0X8Qm7hR9yByETbeVGrEbpzO2hJSLQLN
 OrVITMgb/R71E4gqztetiyedpqIKRru2BdS7NdvXckcALDmkpuiPMb1FrYwwGxiclO
 rFbpyYZQJ26NamI5LHoeqig/J3izFeXYKJ26xrk7XU3bYSOAN0sjd8uUV/EWLnWgKG
 xyvcjk7ft/AhGMiUEQq3afsoHPRSXJl49OFp7CwHd95fpXQGrZ2uU49aaFtj5y5UD2
 iWNNtUXeGHW/1XnZ/smxcyvYfXSHmjwsQoERQ8/eQRjzXmXSdxhcyOV/mKkIiL/QbQ
 1eki3IkRM3SLg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id AE188A009C;
 Fri, 17 May 2019 19:32:27 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 17 May 2019 12:32:26 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:37 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.10.161.89) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:25 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 2/5] ARCv2: entry: push out the Z flag unclobber from common
 EXCEPTION_PROLOGUE
Date: Fri, 17 May 2019 12:32:05 -0700
Message-ID: <1558121528-30184-3-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
References: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.10.161.89]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_123230_966908_181016CB 
X-CRM114-Status: GOOD (  14.22  )
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

Upon a taken interrupt/exception from User mode, HS hardware auto sets Z flag.
This helps shave a few instructions from EXCEPTION_PROLOGUE by eliding
re-reading ERSTATUS and some bit fiddling.

However TLB Miss Exception handler can clobber the CPU flags and still end
up in EXCEPTION_PROLOGUE in the slow path handling TLB handling case:

   EV_TLBMissD
     do_slow_path_pf
       EV_TLBProtV (aliased to call_do_page_fault)
          EXCEPTION_PROLOGUE

As a result, EXCEPTION_PROLOGUE need to "unclobber" the Z flag which this
patch changes. It is now pushed out to TLB Miss Exception handler.
The reasons beings:

 - The flag restoration is only needed for slowpath TLB Miss Exception
   handling, but currently being in EXCEPTION_PROLOGUE penalizes all
   exceptions such as ProtV and syscall Trap, where Z flag is already
   as expected.

 - Pushing unclobber out to where it was clobbered is much cleaner and
   also serves to document the fact.

 - Makes EXCEPTION_PROLGUE similar to INTERRUPT_PROLOGUE so easier to
   refactor the common parts which is what this series aims to do

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/entry-arcv2.h |  8 --------
 arch/arc/mm/tlbex.S                | 11 +++++++++++
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arc/include/asm/entry-arcv2.h b/arch/arc/include/asm/entry-arcv2.h
index 1c3520d1fa42..3209a6762960 100644
--- a/arch/arc/include/asm/entry-arcv2.h
+++ b/arch/arc/include/asm/entry-arcv2.h
@@ -225,14 +225,6 @@
 
 	; -- for interrupts, regs above are auto-saved by h/w in that order --
 	; Now do what ISR prologue does (manually save r12, sp, fp, gp, r25)
-	;
-	; Set Z flag if this was from U mode (expected by INTERRUPT_PROLOGUE)
-	; Although H/w exception micro-ops do set Z flag for U mode (just like
-	; for interrupts), it could get clobbered in case we soft land here from
-	; a TLB Miss exception handler (tlbex.S)
-
-	and	r10, r10, STATUS_U_MASK
-	xor.f	0, r10, STATUS_U_MASK
 
 	INTERRUPT_PROLOGUE  exception
 
diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
index 0e1e47a67c73..e50cac799a51 100644
--- a/arch/arc/mm/tlbex.S
+++ b/arch/arc/mm/tlbex.S
@@ -396,6 +396,17 @@ EV_TLBMissD_fast_ret:	; additional label for VDK OS-kit instrumentation
 ;-------- Common routine to call Linux Page Fault Handler -----------
 do_slow_path_pf:
 
+#ifdef CONFIG_ISA_ARCV2
+	; Set Z flag if exception in U mode. Hardware micro-ops do this on any
+	; taken interrupt/exception, and thus is already the case at the entry
+	; above, but ensuing code would have already clobbered.
+	; EXCEPTION_PROLOGUE called in slow path, relies on correct Z flag set
+
+	lr	r2, [erstatus]
+	and	r2, r2, STATUS_U_MASK
+	bxor.f	0, r2, STATUS_U_BIT
+#endif
+
 	; Restore the 4-scratch regs saved by fast path miss handler
 	TLBMISS_RESTORE_REGS
 
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
