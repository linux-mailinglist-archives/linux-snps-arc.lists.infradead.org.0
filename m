Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3319B1838BF
	for <lists+linux-snps-arc@lfdr.de>; Thu, 12 Mar 2020 19:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4iAEX8tOjlFcLlMxeRpCrKiOxWY3uHzVYMteIxpWtI=; b=rC40lp7riqFdEF
	tixqc5Rt09ftpjBCCbfKM0dqWl/80HLI9Orh4yW18wI0ByZ0P+N6TWB70XkIPHWhWVrpm4KybgZ8S
	zV1prob+CMiL6ziKnP1VR56FNKW2QysZXPZ8NjAz4YJRQTL3jOUGw9laJDE5rNYWz1exduCbV+DX0
	qgOg/aGuCuZI6VWbLBZgcsWWIGmdB6VNYRyvDq1lHyyLZD1+TojP/K2ujkzC5duTxohjqmbt62Evd
	4uww1p6VpCfU7WciES1UF/shWpLsoFd9/tTVR2SrYL2hczd4wRuBmYxJOB2aQEfeh//CJlrTYr5YR
	7IYWGUBcycLOE1Qjk8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSeJ-00028b-Ge; Thu, 12 Mar 2020 18:33:39 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSeF-00027P-US
 for linux-snps-arc@lists.infradead.org; Thu, 12 Mar 2020 18:33:37 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 19B3243B8C;
 Thu, 12 Mar 2020 18:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584038014; bh=JNacbidb5U3bzxmnThb+SspvJZcMWIVEpfFop5b+c4g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I5fPn7Bjw5jMfxUFtMLVjj3L+4siEhFITwNbLNiX+zAc3yXeVAIdc/aqUzNRU3GMt
 byd5lOc9BAYGwL5T/Yk/7IuptvsxJN5RvnLPlv0lEVHmWFuM9+dTRq0IiENpWsq3Wq
 ouR84eV9OVVCiylcabl3UKEnGCoZj97qMpjRqT92nYIpmWE2hsYCpf7NpKpdXAkfeH
 WcyLPYcRGm4rx+bmnPyps0TFt8vmx+xakQygcCLrusBrtt420ALpR4TsCN8jYjPJR8
 xfzvYIoE8v+bHS73/roKwkNzLpr8OkDC287pXFUUxTRa83c8TvFY7MbFepOWPsH6Jb
 bVVaucQrv8bww==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.32])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9F283A00A4;
 Thu, 12 Mar 2020 18:33:26 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v2] Force 64-bit time based syscalls for TIMESIZE==64
Date: Thu, 12 Mar 2020 11:33:25 -0700
Message-Id: <20200312183325.594-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <87r1yjhv8l.fsf@oldenburg2.str.redhat.com>
References: <87r1yjhv8l.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_113335_987740_CF6BFD29 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
Changes since v1
  - don't redirect these to 64-bit variants
---
 sysdeps/unix/sysv/linux/generic/sysdep.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/sysdeps/unix/sysv/linux/generic/sysdep.h b/sysdeps/unix/sysv/linux/generic/sysdep.h
index 40b4b955ca1b..21facbad818a 100644
--- a/sysdeps/unix/sysv/linux/generic/sysdep.h
+++ b/sysdeps/unix/sysv/linux/generic/sysdep.h
@@ -17,6 +17,7 @@
    <https://www.gnu.org/licenses/>.  */
 
 #include <bits/wordsize.h>
+#include <bits/timesize.h>
 #include <kernel-features.h>
 #include <sysdeps/unix/sysdep.h>
 #include <sysdeps/unix/sysv/linux/sysdep.h>
@@ -25,3 +26,25 @@
 #ifdef __NR_llseek
 # define __NR__llseek __NR_llseek
 #endif
+
+#if __WORDSIZE == 32 && __TIMESIZE == 64
+
+/* Don't provide 32-bit time syscalls.
+   Older variants of asm-generic ABIs can provide those (e.g. ARC).  */
+
+# undef __NR_futex
+# undef __NR_rt_sigtimedwait
+# undef __NR_ppoll
+# undef __NR_utimensat
+# undef __NR_pselect6
+# undef __NR_recvmmsg
+# undef __NR_semtimedop
+# undef __NR_mq_timedreceive
+# undef __NR_mq_timedsend
+# undef __NR_clock_getres
+# undef __NR_timerfd_settime
+# undef __NR_timerfd_gettime
+# undef __NR_sched_rr_get_interval
+# undef __NR_clock_adjtime
+
+#endif
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
