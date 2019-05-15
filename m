Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7391E626
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqLQfCTLq1hoIvaVUQCt3HUnCyzFsTHxOFX/8rh5r0M=; b=Zb0UGrgKixYRGg
	CO2zpsCu1DzXpyiNwrY97omlxkWcDgw0eiuGdw4yBccSUo1PVLYPyw0VTC64NILGWMY0c36jtfdFo
	OUbBrq+WQTJtRFP29PQUZtEHaJYHgaO5IZ722BDLs3fsXY3dVYdF2304xZdxpuBbRCanAq7DU8ycj
	rV937hp1htz97hyxx41rC8+IfaxPAuwftq/oXCH93qddQ2AWAzGgD0l2NIB7fcxqvGh6cVkx/uYf5
	Yr2/oYSWR907OZ23F/soGSOwWe73iwCNWFFQo7ZoDPresKAxHRoYofdUv4TPFclsFSP2HfuQIdsYq
	qM9b7WMUJPKJJVc991FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoG-0003wq-89; Wed, 15 May 2019 00:30:16 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoC-0003vd-P9
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:14 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4A762C0A63;
 Wed, 15 May 2019 00:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880202; bh=RoccKNAJvfR7aO06ihmHoprPEDJVe9pUK1rEpE7cTA4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=WKDI7fIfSmaOO0nu5LtbmO7YIFy0DRhPpjNaYmstTeATTprbl/orhFgQZBf4l6gU8
 3o0dJYDKaZhse+x7iumnQxyu08Dz4FTGc+fgax27Ea054X9lEtdUww/w1Kj9Ue4p1f
 jkRd30SP9qtFH+4LPcuPzlc0j1WT2Legu+9vZMkPkKU9jWIf4YFxDEG4HjpbXlLFHa
 HbzQx+4VL8efP/AEwqZEC3Z+KqEysDL0B+U7kbEXziA9JtVoIKPjh/cX9tmsTA4yzt
 3UVFJDsaS9nhYHE5xHxjQWrYyTpvu2p4/7EOzjTwCEKNwgQrYQ0SkOozNpe1JHWEt7
 zEqemSynABAeg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B68F5A023C;
 Wed, 15 May 2019 00:30:11 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:10 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:08 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:19 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 5/9] ARC: mm: do_page_fault refactor #4: consolidate retry
 related logic
Date: Tue, 14 May 2019 17:29:32 -0700
Message-ID: <1557880176-24964-6-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173012_823850_C2E5E502 
X-CRM114-Status: GOOD (  15.15  )
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

stats update code can now elide "retry" check and additional level of
indentation since all retry handling is done ahead of it already

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 60 +++++++++++++++++++++++++++--------------------------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index ae890a8d5ebf..7f211b493170 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -68,8 +68,8 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct mm_struct *mm = tsk->mm;
 	int si_code = SEGV_MAPERR;
 	unsigned int write = 0, exec = 0, mask;
-	vm_fault_t fault;
-	unsigned int flags;
+	vm_fault_t fault;			/* handle_mm_fault() output */
+	unsigned int flags;			/* handle_mm_fault() input */
 
 	/*
 	 * NOTE! We MUST NOT take any locks for this case. We may
@@ -128,49 +128,51 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		goto bad_area;
 	}
 
-	/*
-	 * If for any reason at all we couldn't handle the fault,
-	 * make sure we exit gracefully rather than endlessly redo
-	 * the fault.
-	 */
 	fault = handle_mm_fault(vma, address, flags);
 
-	if (fatal_signal_pending(current)) {
+	/*
+	 * Fault retry nuances
+	 */
+	if (unlikely(fault & VM_FAULT_RETRY)) {
 
 		/*
-		 * if fault retry, mmap_sem already relinquished by core mm
-		 * so OK to return to user mode (with signal handled first)
+		 * If fault needs to be retried, handle any pending signals
+		 * first (by returning to user mode).
+		 * mmap_sem already relinquished by core mm for RETRY case
 		 */
-		if (fault & VM_FAULT_RETRY) {
+		if (fatal_signal_pending(current)) {
 			if (!user_mode(regs))
 				goto no_context;
 			return;
 		}
+		/*
+		 * retry state machine
+		 */
+		if (flags & FAULT_FLAG_ALLOW_RETRY) {
+			flags &= ~FAULT_FLAG_ALLOW_RETRY;
+			flags |= FAULT_FLAG_TRIED;
+			goto retry;
+		}
 	}
 
+	/*
+	 * Major/minor page fault accounting
+	 * (in case of retry we only land here once)
+	 */
 	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
 
 	if (likely(!(fault & VM_FAULT_ERROR))) {
-		if (flags & FAULT_FLAG_ALLOW_RETRY) {
-			/* To avoid updating stats twice for retry case */
-			if (fault & VM_FAULT_MAJOR) {
-				tsk->maj_flt++;
-				perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
-					      regs, address);
-			} else {
-				tsk->min_flt++;
-				perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
-					      regs, address);
-			}
-
-			if (fault & VM_FAULT_RETRY) {
-				flags &= ~FAULT_FLAG_ALLOW_RETRY;
-				flags |= FAULT_FLAG_TRIED;
-				goto retry;
-			}
+		if (fault & VM_FAULT_MAJOR) {
+			tsk->maj_flt++;
+			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
+				      regs, address);
+		} else {
+			tsk->min_flt++;
+			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
+				      regs, address);
 		}
 
-		/* Fault Handled Gracefully */
+		/* Normal return path: fault Handled Gracefully */
 		up_read(&mm->mmap_sem);
 		return;
 	}
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
