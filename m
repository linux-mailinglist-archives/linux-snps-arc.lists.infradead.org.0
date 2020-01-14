Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B0113B361
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Jan 2020 21:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXvUIERJUb6rhWLkZrCHqJ6ihKOESjK0jwi7LEccbME=; b=iNp8y1O2wUy9KZ
	vHNDYCpBwHZFaW0jJJnNI77KxoQlMrmrZCL6QLRSD2QRTv5LkkIwiSurPRzQEVAActws/2gRvH3Rx
	AzfmLY3rIakHuAtEF8EoHlm0S7volwu9R7MK1XFfyiws0X8l2gMk7rxXLuN3mL0ghhOTeLpFQkg7q
	qOQlN0qhnGIW11ej5ZwkiRA2WHgPBOb0KauTywrsXlyv+jH+Utw5Ap/2DFXSC9eC5/NY/8j4ENysW
	ryw6rlXpvNBJAarqIoSw/72NWpz6psBrXQwuPv5XC2FWiS8LR2olD1hsoFiN59zUlGax4zCRp/XAq
	w27vT8Y07gDqLCLHBUIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSUp-0003XU-HZ; Tue, 14 Jan 2020 20:09:03 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSUj-0003UY-7P
 for linux-snps-arc@lists.infradead.org; Tue, 14 Jan 2020 20:09:00 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CE7D3406F6;
 Tue, 14 Jan 2020 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579032536; bh=k2Aw6T3dro6lYhVtIAfADIDnnJvA49ZT1cQEazYA+7Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NiiQjz1NmyNR9Z2NtbJ36Z/NZoKH5sY6byc2zPPKl5fq/SU5MgDPVb5SDAp3KNHEW
 fj/pvvv6mO3+1rDnCbwE4kjMI8TJoOEblhwYJO7W0RA0HsPV9lzV8IklNN4eM6OEfJ
 imqhvfT9B1JiSBWc7TnokpdY5fw6hk7WtUecsBNap8xOh8zJRQbww/THbyD9xqLFZV
 /HKms2Y147qs615Ty3p6/oNEe+FNrSEBFUGpbjJ0fzXltMlZ5GMHYwhqUEAFdPxpxw
 qJjcbea0OIZZgzWCuKKyU1+yaQB0V5kNcrMHZVP83CPgXJ+olWoYDI6fM4e2PcHJAT
 wr8Q3rrYm/5fQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.25])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6CB86A00A2;
 Tue, 14 Jan 2020 20:08:55 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnd Bergmann <arnd@arndb.de>, Khalid Aziz <khalid.aziz@oracle.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
 Aleksa Sarai <cyphar@cyphar.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Subject: [RFC 3/4] ARC: uaccess: remove noinline variants of
 __strncpy_from_user() and friends
Date: Tue, 14 Jan 2020 12:08:45 -0800
Message-Id: <20200114200846.29434-4-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114200846.29434-1-vgupta@synopsys.com>
References: <20200114200846.29434-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_120857_308630_E92F0179 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This helps with subsequent removal of arch specific variants in favour
of optimized generic routines (word vs byte access)

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/uaccess.h | 26 ++++++--------------------
 arch/arc/mm/extable.c          | 23 -----------------------
 2 files changed, 6 insertions(+), 43 deletions(-)

diff --git a/arch/arc/include/asm/uaccess.h b/arch/arc/include/asm/uaccess.h
index ea40ec7f6cae..0b34c152086f 100644
--- a/arch/arc/include/asm/uaccess.h
+++ b/arch/arc/include/asm/uaccess.h
@@ -613,7 +613,7 @@ raw_copy_to_user(void __user *to, const void *from, unsigned long n)
 	return res;
 }
 
-static inline unsigned long __arc_clear_user(void __user *to, unsigned long n)
+static inline unsigned long __clear_user(void __user *to, unsigned long n)
 {
 	long res = n;
 	unsigned char *d_char = to;
@@ -656,7 +656,7 @@ static inline unsigned long __arc_clear_user(void __user *to, unsigned long n)
 }
 
 static inline long
-__arc_strncpy_from_user(char *dst, const char __user *src, long count)
+__strncpy_from_user(char *dst, const char __user *src, long count)
 {
 	long res = 0;
 	char val;
@@ -688,7 +688,7 @@ __arc_strncpy_from_user(char *dst, const char __user *src, long count)
 	return res;
 }
 
-static inline long __arc_strnlen_user(const char __user *s, long n)
+static inline long __strnlen_user(const char __user *s, long n)
 {
 	long res, tmp1, cnt;
 	char val;
@@ -718,26 +718,12 @@ static inline long __arc_strnlen_user(const char __user *s, long n)
 	return res;
 }
 
-#ifndef CONFIG_CC_OPTIMIZE_FOR_SIZE
-
 #define INLINE_COPY_TO_USER
 #define INLINE_COPY_FROM_USER
 
-#define __clear_user(d, n)		__arc_clear_user(d, n)
-#define __strncpy_from_user(d, s, n)	__arc_strncpy_from_user(d, s, n)
-#define __strnlen_user(s, n)		__arc_strnlen_user(s, n)
-#else
-extern unsigned long arc_clear_user_noinline(void __user *to,
-		unsigned long n);
-extern long arc_strncpy_from_user_noinline (char *dst, const char __user *src,
-		long count);
-extern long arc_strnlen_user_noinline(const char __user *src, long n);
-
-#define __clear_user(d, n)		arc_clear_user_noinline(d, n)
-#define __strncpy_from_user(d, s, n)	arc_strncpy_from_user_noinline(d, s, n)
-#define __strnlen_user(s, n)		arc_strnlen_user_noinline(s, n)
-
-#endif
+#define __clear_user		__clear_user
+#define __strncpy_from_user	__strncpy_from_user
+#define __strnlen_user		__strnlen_user
 
 #include <asm/segment.h>
 #include <asm-generic/uaccess.h>
diff --git a/arch/arc/mm/extable.c b/arch/arc/mm/extable.c
index b06b09ddf924..88fa3a4d4906 100644
--- a/arch/arc/mm/extable.c
+++ b/arch/arc/mm/extable.c
@@ -22,26 +22,3 @@ int fixup_exception(struct pt_regs *regs)
 
 	return 0;
 }
-
-#ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
-
-unsigned long arc_clear_user_noinline(void __user *to,
-		unsigned long n)
-{
-	return __arc_clear_user(to, n);
-}
-EXPORT_SYMBOL(arc_clear_user_noinline);
-
-long arc_strncpy_from_user_noinline(char *dst, const char __user *src,
-		long count)
-{
-	return __arc_strncpy_from_user(dst, src, count);
-}
-EXPORT_SYMBOL(arc_strncpy_from_user_noinline);
-
-long arc_strnlen_user_noinline(const char __user *src, long n)
-{
-	return __arc_strnlen_user(src, n);
-}
-EXPORT_SYMBOL(arc_strnlen_user_noinline);
-#endif
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
