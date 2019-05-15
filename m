Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E6C1E631
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrDGzQ1aF56feyZQy7NxS6tAcgSfP5jniaoljCGtO3c=; b=MwL0oiG2YgY1aO
	Jy/VTVGRIPKHHR0VD6Qb4OyOhSlICB+8I4iE0F1lL5TOyCDc0iGKWIyaIHeCX3FL7zlsRBn+fRmTw
	eBnxCOcXJ4/yRp3ygA/O0e8FrmrrnTKvyvu18/NurYZeCnL72gtuOE85VDV2Xc0pyu9t+BxUvw9kw
	JdZZldxpNo5m9dUfYYWSOLPfxHYxiTSzqlr4twzNiixkfAoXndbyL5d5UUHiBZup4SfwOaHqfyzht
	4bG3NEPfqtHc5Jdq3Dd+ANdFctpTxc2W5mnGZby+bwvtSmD40Pv720jfjzskhVxyl94xycIQZ5GA6
	RvaQ8/q+j+GlIAvKS6gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoa-00044u-7P; Wed, 15 May 2019 00:30:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoW-00043T-Hm
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:34 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D57C2C0A77;
 Wed, 15 May 2019 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880222; bh=5nGJv3FYZ4K8QvJw3tH/+4ah4G8NKr7npBJJdtbIcCU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=dxUetF3qUJUHHlevAE6m9jwQCZvx5OOcNg2+jVz5i7cLUOBRhCAhkOzlgeHBt4WDS
 RHLDjZKA8FU3rDUPnI3vhurYt4wOt6bcBiLfDdMlSMThKlTtlpc90jQY9G3KpXeGsM
 LPnjSyUJn4h+LP1QkcLiIPRyqBVC87QFt/J4odXpi+Ufu8DhByVj9kpVzgCnCiP1RM
 QTF7fSscMqlWfHE3VOOyBqq2xtUyqSa/IRDB83We81ZdEBEg7yX+indgkT3S1+ph/W
 tOrT4Z9gSBRlLv8Zd0X6g75pP8t3JeGYZSRoFGZfwwCHBttf4YZD1u1kpmmg1CwNQ6
 usCyvNyjo7jrQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 380E6A0068;
 Wed, 15 May 2019 00:30:32 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:26 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:23 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:34 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 9/9] ARC: mm: do_page_fault refactor #8: release mmap_sem
 sooner
Date: Tue, 14 May 2019 17:29:36 -0700
Message-ID: <1557880176-24964-10-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173032_593328_99FB0EDF 
X-CRM114-Status: GOOD (  13.23  )
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
Cc: Peter Zijlstra <peterz@infradead.org>, paltsev@snyopsys.com,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

In case of successful page fault handling, this patch releases mmap_sem
before updating the perf stat event for major/minor faults. So even
though the contention reduction is NOT supe rhigh, it is still an
improvement.

There's an additional code size improvement as we only have 2 up_read()
calls now.

Note to myself:
--------------

1. Given the way it is done, we are forced to move @bad_area label earlier
   causing the various "goto bad_area" cases to hit perf stat code.

 - PERF_COUNT_SW_PAGE_FAULTS is NOW updated for access errors which is what
   arm/arm64 seem to be doing as well (with slightly different code)
 - PERF_COUNT_SW_PAGE_FAULTS_{MAJ,MIN} must NOT be updated for the
   error case which is guarded by now setting @fault initial value
   to VM_FAULT_ERROR which serves both cases when handle_mm_fault()
   returns error or is not called at all.

2. arm/arm64 use two homebrew fault flags VM_FAULT_BAD{MAP,MAPACCESS}
   which I was inclined to add too but seems not needed for ARC

 - given that we have everything is 1 function we cabn stil use goto
 - we setup si_code at the right place (arm* do that in the end)
 - we init fault already to error value which guards entry into perf
   stats event update

Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 20402217d9da..e93ea06c214c 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -68,7 +68,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct mm_struct *mm = tsk->mm;
 	int sig, si_code = SEGV_MAPERR;
 	unsigned int write = 0, exec = 0, mask;
-	vm_fault_t fault;			/* handle_mm_fault() output */
+	vm_fault_t fault = VM_FAULT_ERROR;	/* handle_mm_fault() output */
 	unsigned int flags;			/* handle_mm_fault() input */
 
 	/*
@@ -155,6 +155,9 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		}
 	}
 
+bad_area:
+	up_read(&mm->mmap_sem);
+
 	/*
 	 * Major/minor page fault accounting
 	 * (in case of retry we only land here once)
@@ -173,13 +176,9 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		}
 
 		/* Normal return path: fault Handled Gracefully */
-		up_read(&mm->mmap_sem);
 		return;
 	}
 
-bad_area:
-	up_read(&mm->mmap_sem);
-
 	if (!user_mode(regs))
 		goto no_context;
 
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
