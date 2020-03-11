Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609B6181DC3
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 17:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKCIAnEmVc8cltPJaK/yad6WdRn2WnSlx3xSxeOooPc=; b=rsJPbA0YF7kV0T
	VNoeyLxMdcVUExdZ6sJqsaBHSzCObQBeVPiOPgvZT1y2tRkg2g395Tu/g4aT9Azyy8lyCyxt479gd
	riMj2F7uNT7jhoOSTwUyNKlwJhnOb7lkXo/uDtaD7yetzfkS4aUfnY+HqTflX4y1TzFF2q6fO8wkF
	w1eWTvYwmvRzPTxwOpuvL1q8PVKoIV5z604OhEmFP0u9tChF8EMFszm3JgoOXzdYkMVNU8HgeT8Ip
	VAv1M0+n+TjZr71r9El8JE6uLPPFSI1HX7s+4oxJqWLZhHBB4WYZGcGoKzfgX9ueosEChjugp2NZd
	WoCXGevd8ZxXHMjy6m1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4C6-0007fq-4J; Wed, 11 Mar 2020 16:26:54 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4C2-0007eB-OU
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 16:26:53 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8653E43B5F;
 Wed, 11 Mar 2020 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583944009; bh=YEP/pPTvBwAKKbQrP/uUGOaw5ZxOg48FIifMp+mV0zs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IcA0IoOrBj/wbbpHTc9VBQxa1dL4p6DPs0Bp/sDHxJ1O5Mxzgdz90yOS78S04DMl2
 MY4uzC4uMhpKd+3B/czaHx9bIXN8mLYGUzDauCOhZzgG8Fo8Z7R47cbZega+S7i2rW
 YO72BCHnx7yHt8meLCo4Wflq9WT3ahfrH0vsWBaIyUci/sLblvfJxUYJZfJeFZVAed
 z+tmqwdQ4c54JM94dpawgoq2nLt/GTkG/2vOLS+mWQ57Qiq2rOiQkFeFuxAWLus8FC
 KPn+gtuxk498NAC9Oh6L5N12sQu72k7NgEzP3KXXF1KVTwO84ewElJoCw+FWRoyl4g
 rVEi8vWDvcubw==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id EF2FDA0061;
 Wed, 11 Mar 2020 16:26:47 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 2/2] ARC: don't align ret_from_exception function
Date: Wed, 11 Mar 2020 19:26:44 +0300
Message-Id: <20200311162644.7667-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200311162644.7667-1-Eugeniy.Paltsev@synopsys.com>
References: <20200311162644.7667-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092650_800675_04FD2F99 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

ARC have a tricky implemented ret_from_exception function.
It is written on ASM and can be called like regular function.
However it has another 'entry point' as it can be called as a
continuation of EV_Trap function.

As we declare "ret_from_exception" using ENTRY macro it may align
"ret_from_exception" by 4 bytes by adding padding before it.
"ret_from_exception" doesn't require alignment by 4 bytes
(as it doesn't go to vector table, etc...) so let's avoid aligning
it by switch from ENTRY (which is alias for SYM_FUNC_START) to
SYM_FUNC_START_NOALIGN macro.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/kernel/entry-arcv2.S | 2 +-
 arch/arc/kernel/entry.S       | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arc/kernel/entry-arcv2.S b/arch/arc/kernel/entry-arcv2.S
index 12d5f12d10d2..d482e1507f56 100644
--- a/arch/arc/kernel/entry-arcv2.S
+++ b/arch/arc/kernel/entry-arcv2.S
@@ -260,4 +260,4 @@ debug_marker_ds:
 	sr	r11, [AUX_IRQ_ACT]
 	b	.Lexcept_ret
 
-END(ret_from_exception)
+SYM_FUNC_END(ret_from_exception)
diff --git a/arch/arc/kernel/entry.S b/arch/arc/kernel/entry.S
index 60406ec62eb8..79409b518a09 100644
--- a/arch/arc/kernel/entry.S
+++ b/arch/arc/kernel/entry.S
@@ -280,7 +280,7 @@ END(EV_Trap)
 ;
 ; If ret to user mode do we need to handle signals, schedule() et al.
 
-ENTRY(ret_from_exception)
+SYM_FUNC_START_NOALIGN(ret_from_exception)
 
 	; Pre-{IRQ,Trap,Exception} K/U mode from pt_regs->status32
 	ld  r8, [sp, PT_status32]   ; returning to User/Kernel Mode
@@ -373,4 +373,3 @@ resume_kernel_mode:
 	b	.Lrestore_regs
 
 ##### DONT ADD CODE HERE - .Lrestore_regs actually follows in entry-<isa>.S
-
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
