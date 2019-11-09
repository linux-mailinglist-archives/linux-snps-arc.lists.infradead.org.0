Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0304F5E61
	for <lists+linux-snps-arc@lfdr.de>; Sat,  9 Nov 2019 11:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RuTCMDcpcyp/OeNJfsCq1obdJovaVHXO/w6HbCkG/Vk=; b=Ke7
	dTlvehd3Y8h9fGEuXwsMUovODlObwfL6uHFJxdYFKR9gjkNYIPX2tJiyXfqSvFVpdBEHGe24ABGUK
	OZt8016RjzQmNXvK7EHvtzVrQSRBLCpD+1kPEOoG7GljOuFJm2H5zN5UjussqgvL6GUrjUbwJS1+j
	t/ttqqllPmAU9tkqYzii9wF22K/3DWMjAKG2eqYAGNq+Wn2XFEmsy8HKiygYxor263yJuInU6Nkzb
	B8mrozJFkBBjXY1zNSuMR9B6ibhgn5fSxFyejhuVOU5IPh5VhYr/PmY71gh0TTfEnGrT8rKUStv9U
	NdUed/lEl17k7R+z52r1dHRziXTlIyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTNmV-00080h-6x; Sat, 09 Nov 2019 10:15:47 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTNmS-00080L-5S
 for linux-snps-arc@lists.infradead.org; Sat, 09 Nov 2019 10:15:46 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 37582C0406;
 Sat,  9 Nov 2019 10:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573294541; bh=UWekx9hiYvUWjNObxIbM/+Millgm4gh5KStgr/2I8t8=;
 h=From:To:Cc:Subject:Date:From;
 b=EJ7Nm4BnMFXFOmF262aWZaSYe688V3BJ2Iug+BFRDjBDLSXtKHuGv4S6fA28rZUS5
 bSZJq/9EpeWvxnJXS2I+SmslYe1all2yUbhkUBuaDtyUi9v4mUum00RY8D6cGHLu7c
 JHdEgtjgjNZEo26CyRLCPR4/i771Xe/kvlN86PGRCohoUXVLBKxgUSAIfhKXTyN44n
 MRgXWF2IH7nk3pflUOWguK71Y/mDOi6tMgRpgFuWKcv+SWHI+Apo8rlpuYm1rDjGr4
 wBSvB5zwnHQEeE9g+nmVlEfeWcAb68gcW91RqbqOHXkfuhLKOb5cK5VPvUB9y8C+Gt
 6/xhiTAOeU0xw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id EDF6BA00A2;
 Sat,  9 Nov 2019 10:15:37 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: gdb-patches@sourceware.org
Subject: [PATCH] gdb/remote: make tid/pid type long in wite_ptid
Date: Sat,  9 Nov 2019 13:15:31 +0300
Message-Id: <20191109101531.18759-1-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_021544_215278_0D53BD24 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 linux-snps-arc@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Evgeniy Didin <didin@synopsys.com>

In Zephyr RTOS the k_thread_create function returns
thread ID which is actually pointer to k_thread structure.
If the memory addressing starts from 0x80000000, passing such
big values to write_ptid() leads to overflow of "int tid" variable
and thread ID becomes negative.
So lets make tid/pid variables type "long", this will prevent overflow
and should not break any logic.

gdb/ChangeLog:

2019-11-09  Evgeniy Didin <didin@synopsys.com>

        * remote.c (remote_target::write_ptid): Make tid,pid
        variables type "long" to prevent overflow.

Signed-off-by: Evgeniy Didin <didin@synopsys.com>
Cc: linux-snps-arc@lists.infradead.org
---
 gdb/ChangeLog |  5 +++++
 gdb/remote.c  | 10 +++++-----
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/gdb/ChangeLog b/gdb/ChangeLog
index f5c8a76c0f..5581df877b 100644
--- a/gdb/ChangeLog
+++ b/gdb/ChangeLog
@@ -1,3 +1,8 @@
+2019-11-09  Evgeniy Didin <didin@synopsys.com>
+
+	* remote.c (remote_target::write_ptid): Make tid,pid
+	variables type "long" to prevent overflow.
+
 2019-11-08  Tom Tromey  <tromey@adacore.com>
 
 	* top.c (read_command_file): Update.
diff --git a/gdb/remote.c b/gdb/remote.c
index 1ac9013408..19602508f7 100644
--- a/gdb/remote.c
+++ b/gdb/remote.c
@@ -2909,22 +2909,22 @@ static int remote_newthread_step (threadref *ref, void *context);
 char *
 remote_target::write_ptid (char *buf, const char *endbuf, ptid_t ptid)
 {
-  int pid, tid;
+  long pid, tid;
   struct remote_state *rs = get_remote_state ();
 
   if (remote_multi_process_p (rs))
     {
       pid = ptid.pid ();
       if (pid < 0)
-	buf += xsnprintf (buf, endbuf - buf, "p-%x.", -pid);
+	buf += xsnprintf (buf, endbuf - buf, "p-%lx.", -pid);
       else
-	buf += xsnprintf (buf, endbuf - buf, "p%x.", pid);
+	buf += xsnprintf (buf, endbuf - buf, "p%lx.", pid);
     }
   tid = ptid.lwp ();
   if (tid < 0)
-    buf += xsnprintf (buf, endbuf - buf, "-%x", -tid);
+    buf += xsnprintf (buf, endbuf - buf, "-%lx", -tid);
   else
-    buf += xsnprintf (buf, endbuf - buf, "%x", tid);
+    buf += xsnprintf (buf, endbuf - buf, "%lx", tid);
 
   return buf;
 }
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
