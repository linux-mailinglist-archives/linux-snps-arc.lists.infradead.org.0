Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F26A6E7C
	for <lists+linux-snps-arc@lfdr.de>; Tue,  3 Sep 2019 18:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl/sAWzA/gLhoRFClwIQhM6nXvcPSRzIb/sEAtKHkFA=; b=CXGupNIxTDVKlC
	samKWyQm2tx1AuMb8vOybm343P8docYXg9DG+VbqFpbotgm0iYMbJrKWc3GY3lU0uvrtqSrfW2BTi
	HIrjwWHWh4A63bNW7d4JV3HYMTDt+qtk4SDiwcOCuJpssrQ2RtYAkiPaBG/Nzsh1uFv0RIcHfRQd0
	0qWMcDeNuEafgDp6+oVciHZ0wtpa/0zDd+TIkKYs8GV5hiodeLU0x3iYZKMyGJbmtfBILOB3jQEsO
	Eo3tQ4vpupcckoJzpMGLWRFBKg0fB58otUkPKlLSBsIqNCPjCvtmKV1LlEtw/dl/mEbCI4Lgl2vj8
	UwzTTYJZ2I9Oy5k+stog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Bdq-0000mc-Ex; Tue, 03 Sep 2019 16:26:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Bdn-0000la-9c
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 16:26:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71CB1238C6;
 Tue,  3 Sep 2019 16:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567528007;
 bh=REnPNTLrhxtJ3anH3iT9BiT+jJLrbT6d4WeR9kfmNM4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TfXxUsdAOlM7lAddg++FEUOfV+TcIoRH4UeTb8DRRucBruYZ4G20bBfd/awpWBoa+
 NCHkaqwdGKBQWBb+1Jqez+NvSxvlvjxr5YYLc0IOgCMtPt+W3r9ptDNY9F4X2Jf9k8
 /gyjWKMb4SM1mWWrjThROWvUVlYNaMYzP9QQM008=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 050/167] ARC: mm: do_page_fault fixes #1:
 relinquish mmap_sem if signal arrives while handle_mm_fault
Date: Tue,  3 Sep 2019 12:23:22 -0400
Message-Id: <20190903162519.7136-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162519.7136-1-sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_092647_370221_C884D372 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Vineet Gupta <vgupta@synopsys.com>

[ Upstream commit 4d447455e73b47c43dd35fcc38ed823d3182a474 ]

do_page_fault() forgot to relinquish mmap_sem if a signal came while
handling handle_mm_fault() - due to say a ctl+c or oom etc.
This would later cause a deadlock by acquiring it twice.

This came to light when running libc testsuite tst-tls3-malloc test but
is likely also the cause for prior seen LTP failures. Using lockdep
clearly showed what the issue was.

| # while true; do ./tst-tls3-malloc ; done
| Didn't expect signal from child: got `Segmentation fault'
| ^C
| ============================================
| WARNING: possible recursive locking detected
| 4.17.0+ #25 Not tainted
| --------------------------------------------
| tst-tls3-malloc/510 is trying to acquire lock:
| 606c7728 (&mm->mmap_sem){++++}, at: __might_fault+0x28/0x5c
|
|but task is already holding lock:
|606c7728 (&mm->mmap_sem){++++}, at: do_page_fault+0x9c/0x2a0
|
| other info that might help us debug this:
|  Possible unsafe locking scenario:
|
|       CPU0
|       ----
|  lock(&mm->mmap_sem);
|  lock(&mm->mmap_sem);
|
| *** DEADLOCK ***
|

------------------------------------------------------------
What the change does is not obvious (note to myself)

prior code was

| do_page_fault
|
|   down_read()		<-- lock taken
|   handle_mm_fault	<-- signal pending as this runs
|   if fatal_signal_pending
|       if VM_FAULT_ERROR
|           up_read
|       if user_mode
|          return	<-- lock still held, this was the BUG

New code

| do_page_fault
|
|   down_read()		<-- lock taken
|   handle_mm_fault	<-- signal pending as this runs
|   if fatal_signal_pending
|       if VM_FAULT_RETRY
|          return       <-- not same case as above, but still OK since
|                           core mm already relinq lock for FAULT_RETRY
|    ...
|
|   < Now falls through for bug case above >
|
|   up_read()		<-- lock relinquished

Cc: stable@vger.kernel.org
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arc/mm/fault.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index db6913094be3c..f28db0b112a30 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -143,12 +143,17 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	 */
 	fault = handle_mm_fault(vma, address, flags);
 
-	/* If Pagefault was interrupted by SIGKILL, exit page fault "early" */
 	if (unlikely(fatal_signal_pending(current))) {
-		if ((fault & VM_FAULT_ERROR) && !(fault & VM_FAULT_RETRY))
-			up_read(&mm->mmap_sem);
-		if (user_mode(regs))
+
+		/*
+		 * if fault retry, mmap_sem already relinquished by core mm
+		 * so OK to return to user mode (with signal handled first)
+		 */
+		if (fault & VM_FAULT_RETRY) {
+			if (!user_mode(regs))
+				goto no_context;
 			return;
+		}
 	}
 
 	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
