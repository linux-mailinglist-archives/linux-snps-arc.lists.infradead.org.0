Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EE713B362
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Jan 2020 21:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mof0dYc/sW4+apZQTh5miI9JOj1sY6/CKYb5fBzsqaA=; b=ZvlO5S8ple3NNM
	c47LX4uROP/ZeV4o9DBhVQApqUF5YyvNI8V92a3qNOG7djAuOw4LhqX/4uxBdRUv6PPokhX1ahcIj
	QCUGGZPzIShQHKk1MQgCg294K59jMJb35lZivMAZw6GE6OzJniZqx6iE89cfSuwAcXD7EUR2zS/Ei
	j6ZzGiDU8juTvMuE7UbIncjUp8/bT/paouwqqCxaiKuFfsJQIa905GeUFH7EJbFA5OX84Mf0oCNAu
	QIlwJnZ38C2TonQhEjapS3CZghhC2tv+7O0j/wp3j9EGPD19wFbNPLkIsICvvK37lEv7Oxf9Vb4r4
	B9DLTo/65IJgDw6kSI6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSUp-0003Xe-Mf; Tue, 14 Jan 2020 20:09:03 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSUj-0003UZ-7O
 for linux-snps-arc@lists.infradead.org; Tue, 14 Jan 2020 20:09:00 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D144B406F7;
 Tue, 14 Jan 2020 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579032536; bh=pnuNzowJEgDqFBcmPzhqodh5b56v6RmG8ENp9KF/2mQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CBcoxjqItxVjnTN0eYL3kI5Re7OGfz1Wr/fEHGi/KZQSeWVEV4Y6lKo+YXfps9tUb
 +OiepL3APR61mf5HiqQQu3gcE6J+pDR2nkZ7DTCT04x+UYI3LJQ3JdS+1qUmG3KNcq
 M9ZR0dwNXKMThv+OivrSN9MRIeloVrhg60DOUKQLDEN8lx/7vcGDQPVI78x4J62nM5
 XfriUwN4yomOGCl2oTAqolFokcsc9QZHUdcLB8Ahmsyf2vwxzCNA47RfRByRL8x1H4
 Z9nVQ7//YTY82LmYfl+NRSYMWxCqAa42QwIT1cd3ExRleiMENTWfXTl+zfjcRK9hYQ
 SJtLUn/iHDKBw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.25])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8090AA00AD;
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
Subject: [RFC 4/4] ARC: uaccess: use optimized generic
 __strnlen_user/__strncpy_from_user
Date: Tue, 14 Jan 2020 12:08:46 -0800
Message-Id: <20200114200846.29434-5-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114200846.29434-1-vgupta@synopsys.com>
References: <20200114200846.29434-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_120857_306061_4A5545BC 
X-CRM114-Status: GOOD (  13.74  )
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

These rely on word access rather than byte loop

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/Kconfig                      |  2 +
 arch/arc/include/asm/Kbuild           |  1 -
 arch/arc/include/asm/uaccess.h        | 71 ++-------------------------
 arch/arc/include/asm/word-at-a-time.h | 49 ++++++++++++++++++
 4 files changed, 56 insertions(+), 67 deletions(-)
 create mode 100644 arch/arc/include/asm/word-at-a-time.h

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 26108ea785c2..3b074c4d31fb 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -26,6 +26,8 @@ config ARC
 	select GENERIC_PENDING_IRQ if SMP
 	select GENERIC_SCHED_CLOCK
 	select GENERIC_SMP_IDLE_THREAD
+	select GENERIC_STRNCPY_FROM_USER if MMU
+	select GENERIC_STRNLEN_USER if MMU
 	select HAVE_ARCH_KGDB
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_DEBUG_STACKOVERFLOW
diff --git a/arch/arc/include/asm/Kbuild b/arch/arc/include/asm/Kbuild
index 1b505694691e..cb8d459b7f56 100644
--- a/arch/arc/include/asm/Kbuild
+++ b/arch/arc/include/asm/Kbuild
@@ -24,5 +24,4 @@ generic-y += topology.h
 generic-y += trace_clock.h
 generic-y += user.h
 generic-y += vga.h
-generic-y += word-at-a-time.h
 generic-y += xor.h
diff --git a/arch/arc/include/asm/uaccess.h b/arch/arc/include/asm/uaccess.h
index 0b34c152086f..f579e06447a9 100644
--- a/arch/arc/include/asm/uaccess.h
+++ b/arch/arc/include/asm/uaccess.h
@@ -23,7 +23,6 @@
 
 #include <linux/string.h>	/* for generic string functions */
 
-
 #define __kernel_ok		(uaccess_kernel())
 
 /*
@@ -52,6 +51,8 @@
 #define __access_ok(addr, sz)	(unlikely(__kernel_ok) || \
 				 likely(__user_ok((addr), (sz))))
 
+#define user_addr_max() 	(uaccess_kernel() ? ~0UL : get_fs())
+
 /*********** Single byte/hword/word copies ******************/
 
 #define __get_user_fn(sz, u, k)					\
@@ -655,75 +656,13 @@ static inline unsigned long __clear_user(void __user *to, unsigned long n)
 	return res;
 }
 
-static inline long
-__strncpy_from_user(char *dst, const char __user *src, long count)
-{
-	long res = 0;
-	char val;
-
-	if (count == 0)
-		return 0;
-
-	__asm__ __volatile__(
-	"	mov	lp_count, %5		\n"
-	"	lp	3f			\n"
-	"1:	ldb.ab  %3, [%2, 1]		\n"
-	"	breq.d	%3, 0, 3f               \n"
-	"	stb.ab  %3, [%1, 1]		\n"
-	"	add	%0, %0, 1	# Num of NON NULL bytes copied	\n"
-	"3:								\n"
-	"	.section .fixup, \"ax\"		\n"
-	"	.align 4			\n"
-	"4:	mov %0, %4		# sets @res as -EFAULT	\n"
-	"	j   3b				\n"
-	"	.previous			\n"
-	"	.section __ex_table, \"a\"	\n"
-	"	.align 4			\n"
-	"	.word   1b, 4b			\n"
-	"	.previous			\n"
-	: "+r"(res), "+r"(dst), "+r"(src), "=r"(val)
-	: "g"(-EFAULT), "r"(count)
-	: "lp_count", "memory");
-
-	return res;
-}
-
-static inline long __strnlen_user(const char __user *s, long n)
-{
-	long res, tmp1, cnt;
-	char val;
-
-	__asm__ __volatile__(
-	"	mov %2, %1			\n"
-	"1:	ldb.ab  %3, [%0, 1]		\n"
-	"	breq.d  %3, 0, 2f		\n"
-	"	sub.f   %2, %2, 1		\n"
-	"	bnz 1b				\n"
-	"	sub %2, %2, 1			\n"
-	"2:	sub %0, %1, %2			\n"
-	"3:	;nop				\n"
-	"	.section .fixup, \"ax\"		\n"
-	"	.align 4			\n"
-	"4:	mov %0, 0			\n"
-	"	j   3b				\n"
-	"	.previous			\n"
-	"	.section __ex_table, \"a\"	\n"
-	"	.align 4			\n"
-	"	.word 1b, 4b			\n"
-	"	.previous			\n"
-	: "=r"(res), "=r"(tmp1), "=r"(cnt), "=r"(val)
-	: "0"(s), "1"(n)
-	: "memory");
-
-	return res;
-}
-
 #define INLINE_COPY_TO_USER
 #define INLINE_COPY_FROM_USER
 
 #define __clear_user		__clear_user
-#define __strncpy_from_user	__strncpy_from_user
-#define __strnlen_user		__strnlen_user
+
+extern long strncpy_from_user(char *dest, const char __user *src, long count);
+extern __must_check long strnlen_user(const char __user *str, long n);
 
 #include <asm/segment.h>
 #include <asm-generic/uaccess.h>
diff --git a/arch/arc/include/asm/word-at-a-time.h b/arch/arc/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..00e92be70987
--- /dev/null
+++ b/arch/arc/include/asm/word-at-a-time.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Synopsys Inc.
+ */
+#ifndef __ASM_ARC_WORD_AT_A_TIME_H
+#define __ASM_ARC_WORD_AT_A_TIME_H
+
+#ifdef __LITTLE_ENDIAN__
+
+#include <linux/kernel.h>
+
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits,
+				     const struct word_at_a_time *c)
+{
+	unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+#define prep_zero_mask(a, bits, c) (bits)
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+#ifdef CONFIG_64BIT
+	return fls64(mask) >> 3;
+#else
+	return fls(mask) >> 3;
+#endif
+}
+
+#define zero_bytemask(mask) (mask)
+
+#else	/* __BIG_ENDIAN__ */
+#include <asm-generic/word-at-a-time.h>
+#endif
+
+#endif /* __ASM_WORD_AT_A_TIME_H */
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
