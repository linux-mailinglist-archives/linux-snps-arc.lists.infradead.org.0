Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89ED1B520B
	for <lists+linux-snps-arc@lfdr.de>; Thu, 23 Apr 2020 03:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12+yQ55k5AyCabUT6aKulDT1dyIxEvUONK7nLHI5SE8=; b=jasO9v23gDtCBd
	q4tPZ6ytInSLw/1hC2sMBRpPTCHcYwQ4MzvSZVYqSRMeGutpcBnucQIqv9OgS743tynyH7L1NXy4G
	0eDETMBFS5QlY15HMalaXZY60aWxMgWV+hrNw+8P9CxDxxUJz9srjaiXqs2akDSV0g/wdKv1aOOO3
	iL/XezKRUNh1kow99wwRCZ868wMn9lG8j6tA2yH5FD2CpybuHFo8wEgqJH8m5L854vguzb7m/TAx+
	HlXA+yFZ7aoDcn2i4KbeyN5P6xuHocQrZZCZ8XaDyTdrU/lSVo4qlaw+AFLqj84OiQVB2OETq8Rep
	W+Klw8wjzHel+PwFJuJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQs0-0004nx-AM; Thu, 23 Apr 2020 01:41:40 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQrs-0004hd-En
 for linux-snps-arc@lists.infradead.org; Thu, 23 Apr 2020 01:41:38 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4DD6AC0083;
 Thu, 23 Apr 2020 01:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1587606091; bh=jm2bCpw9VOZbOlopQhdN1nqlND4CQgkOpG2L+tdRyJA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FUervgLwwJkjg/2DShf5sKRsK32K/486qk/HWNw0k/E1XvYxO6N2wDoTmFtQtzjpe
 og9O/Qm5K1M7B8/BpT4ex2FlDKXrafMFX7WTOwDQZZbHjluPLzrnZTIr8/I495+dK3
 vWgXeh7J1QOMBMIbpxFlZmv8IlDT4orpSxxIMPuYKQLNIcgHfsxSQMPmOIT76M8HT9
 8CUh0Y3HoG3WnU4USR2ST5tvg5cUQRBJqOb/N5Bi3zRJOLBZWpMyVOhjIqD8gF4E13
 mJG3saCxK2WAcvPMknAMp24J5ZrThpNBMl18/E8XPq4GS1vxmH6q6lyIhT4kGd63BT
 V/cq8hs8eyJ6w==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9D6E4A0099;
 Thu, 23 Apr 2020 01:41:30 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v6 01/13] ARC: ABI Implementation
Date: Wed, 22 Apr 2020 18:41:14 -0700
Message-Id: <20200423014126.10417-2-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423014126.10417-1-vgupta@synopsys.com>
References: <20200423014126.10417-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_184132_581197_FFFC57BE 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This code deals with the ARC ABI.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 sysdeps/arc/__longjmp.S       | 50 ++++++++++++++++++++++
 sysdeps/arc/abort-instr.h     |  2 +
 sysdeps/arc/bits/endianness.h | 15 +++++++
 sysdeps/arc/bits/setjmp.h     | 26 ++++++++++++
 sysdeps/arc/bsd-_setjmp.S     |  1 +
 sysdeps/arc/bsd-setjmp.S      |  1 +
 sysdeps/arc/dl-runtime.c      | 33 +++++++++++++++
 sysdeps/arc/dl-sysdep.h       | 25 +++++++++++
 sysdeps/arc/dl-trampoline.S   | 80 +++++++++++++++++++++++++++++++++++
 sysdeps/arc/gccframe.h        | 21 +++++++++
 sysdeps/arc/jmpbuf-offsets.h  | 47 ++++++++++++++++++++
 sysdeps/arc/jmpbuf-unwind.h   | 47 ++++++++++++++++++++
 sysdeps/arc/machine-gmon.h    | 35 +++++++++++++++
 sysdeps/arc/memusage.h        | 23 ++++++++++
 sysdeps/arc/setjmp.S          | 66 +++++++++++++++++++++++++++++
 sysdeps/arc/sysdep.h          | 48 +++++++++++++++++++++
 sysdeps/arc/tls-macros.h      | 47 ++++++++++++++++++++
 17 files changed, 567 insertions(+)
 create mode 100644 sysdeps/arc/__longjmp.S
 create mode 100644 sysdeps/arc/abort-instr.h
 create mode 100644 sysdeps/arc/bits/endianness.h
 create mode 100644 sysdeps/arc/bits/setjmp.h
 create mode 100644 sysdeps/arc/bsd-_setjmp.S
 create mode 100644 sysdeps/arc/bsd-setjmp.S
 create mode 100644 sysdeps/arc/dl-runtime.c
 create mode 100644 sysdeps/arc/dl-sysdep.h
 create mode 100644 sysdeps/arc/dl-trampoline.S
 create mode 100644 sysdeps/arc/gccframe.h
 create mode 100644 sysdeps/arc/jmpbuf-offsets.h
 create mode 100644 sysdeps/arc/jmpbuf-unwind.h
 create mode 100644 sysdeps/arc/machine-gmon.h
 create mode 100644 sysdeps/arc/memusage.h
 create mode 100644 sysdeps/arc/setjmp.S
 create mode 100644 sysdeps/arc/sysdep.h
 create mode 100644 sysdeps/arc/tls-macros.h

diff --git a/sysdeps/arc/__longjmp.S b/sysdeps/arc/__longjmp.S
new file mode 100644
index 000000000000..ffc3daa7de72
--- /dev/null
+++ b/sysdeps/arc/__longjmp.S
@@ -0,0 +1,50 @@
+/* longjmp for ARC.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public License as
+   published by the Free Software Foundation; either version 2.1 of the
+   License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+#include <jmpbuf-offsets.h>
+
+;@ r0 = jump buffer from which regs will be restored
+;@ r1 = value that setjmp( ) will return due to this longjmp
+
+ENTRY (__longjmp)
+
+	ld_s r13,   [r0]
+	ld_s r14,   [r0,4]
+	ld   r15,   [r0,8]
+	ld   r16,   [r0,12]
+	ld   r17,   [r0,16]
+	ld   r18,   [r0,20]
+	ld   r19,   [r0,24]
+	ld   r20,   [r0,28]
+	ld   r21,   [r0,32]
+	ld   r22,   [r0,36]
+	ld   r23,   [r0,40]
+	ld   r24,   [r0,44]
+	ld   r25,   [r0,48]
+
+	ld   blink, [r0,60]
+	ld   fp,    [r0,52]
+	ld   sp,    [r0,56]
+
+	mov.f  r0, r1	; get the setjmp return value(due to longjmp) in place
+
+	j.d    [blink]	; to caller of setjmp location, right after the call
+	mov.z  r0, 1	; can't let setjmp return 0 when it is due to longjmp
+
+END (__longjmp)
diff --git a/sysdeps/arc/abort-instr.h b/sysdeps/arc/abort-instr.h
new file mode 100644
index 000000000000..49f33613c404
--- /dev/null
+++ b/sysdeps/arc/abort-instr.h
@@ -0,0 +1,2 @@
+/* FLAG 1 is privilege mode only instruction, hence will crash any program.  */
+#define ABORT_INSTRUCTION asm ("flag 1")
diff --git a/sysdeps/arc/bits/endianness.h b/sysdeps/arc/bits/endianness.h
new file mode 100644
index 000000000000..8f17ca84b485
--- /dev/null
+++ b/sysdeps/arc/bits/endianness.h
@@ -0,0 +1,15 @@
+#ifndef _BITS_ENDIANNESS_H
+#define _BITS_ENDIANNESS_H 1
+
+#ifndef _BITS_ENDIAN_H
+# error "Never use <bits/endian.h> directly; include <endian.h> instead."
+#endif
+
+/* ARC has selectable endianness.  */
+#ifdef __BIG_ENDIAN__
+# define __BYTE_ORDER __BIG_ENDIAN
+#else
+# define __BYTE_ORDER __LITTLE_ENDIAN
+#endif
+
+#endif /* bits/endianness.h */
diff --git a/sysdeps/arc/bits/setjmp.h b/sysdeps/arc/bits/setjmp.h
new file mode 100644
index 000000000000..333e5cce3bea
--- /dev/null
+++ b/sysdeps/arc/bits/setjmp.h
@@ -0,0 +1,26 @@
+/* Define the machine-dependent type `jmp_buf'.  ARC version.
+   Copyright (C) 1992-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef _ARC_BITS_SETJMP_H
+#define _ARC_BITS_SETJMP_H 1
+
+/* Saves r13-r25 (callee-saved), fp (frame pointer), sp (stack pointer),
+   blink (branch-n-link).  */
+typedef long int __jmp_buf[32];
+
+#endif
diff --git a/sysdeps/arc/bsd-_setjmp.S b/sysdeps/arc/bsd-_setjmp.S
new file mode 100644
index 000000000000..90b99cd8c3e0
--- /dev/null
+++ b/sysdeps/arc/bsd-_setjmp.S
@@ -0,0 +1 @@
+/* _setjmp is in setjmp.S.  */
diff --git a/sysdeps/arc/bsd-setjmp.S b/sysdeps/arc/bsd-setjmp.S
new file mode 100644
index 000000000000..d3b823c118bc
--- /dev/null
+++ b/sysdeps/arc/bsd-setjmp.S
@@ -0,0 +1 @@
+/* setjmp is in setjmp.S.  */
diff --git a/sysdeps/arc/dl-runtime.c b/sysdeps/arc/dl-runtime.c
new file mode 100644
index 000000000000..b28da38329f1
--- /dev/null
+++ b/sysdeps/arc/dl-runtime.c
@@ -0,0 +1,33 @@
+/* dl-runtime helpers for ARC.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public License as
+   published by the Free Software Foundation; either version 2.1 of the
+   License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+/* PLT jump into resolver passes PC of PLTn, while _dl_fixup expects the
+   address of corresponding .rela.plt entry.  */
+
+#define reloc_index						\
+({								\
+  unsigned long int plt0 = D_PTR (l, l_info[DT_PLTGOT]);	\
+  unsigned long int pltn = reloc_arg;				\
+  /* Exclude PLT0 and PLT1.  */					\
+  unsigned long int idx = ((pltn - plt0) / 16) - 2;		\
+  idx;								\
+})
+
+#define reloc_offset reloc_index * sizeof (PLTREL)
+
+#include <elf/dl-runtime.c>
diff --git a/sysdeps/arc/dl-sysdep.h b/sysdeps/arc/dl-sysdep.h
new file mode 100644
index 000000000000..6382c05bf485
--- /dev/null
+++ b/sysdeps/arc/dl-sysdep.h
@@ -0,0 +1,25 @@
+/* System-specific settings for dynamic linker code.  ARC version.
+   Copyright (C) 2009-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include_next <dl-sysdep.h>
+
+/* _dl_argv cannot be attribute_relro, because _dl_start_user
+   might write into it after _dl_start returns.  */
+#define DL_ARGV_NOT_RELRO 1
+
+#define DL_EXTERN_PROTECTED_DATA
diff --git a/sysdeps/arc/dl-trampoline.S b/sysdeps/arc/dl-trampoline.S
new file mode 100644
index 000000000000..3dad904caaf9
--- /dev/null
+++ b/sysdeps/arc/dl-trampoline.S
@@ -0,0 +1,80 @@
+/* PLT trampolines.  ARC version.
+   Copyright (C) 2005-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+#include <libc-symbols.h>
+
+#include <sysdep.h>
+#include <sys/syscall.h>
+
+/* Save the registers which resolver could possibly clobber
+	r0-r9: args to the function - symbol being resolved
+	r10-r12 are already clobbered by PLTn, PLT0 thus neednot be saved.  */
+
+.macro	SAVE_CALLER_SAVED
+	push_s	r0
+	push_s	r1
+	push_s	r2
+	push_s	r3
+	st.a	r4, [sp, -4]
+	st.a	r5, [sp, -4]
+	st.a	r6, [sp, -4]
+	st.a	r7, [sp, -4]
+	st.a	r8, [sp, -4]
+	st.a	r9, [sp, -4]
+	cfi_adjust_cfa_offset (40)
+	push_s	blink
+	cfi_adjust_cfa_offset (4)
+	cfi_rel_offset (blink, 0)
+.endm
+
+.macro RESTORE_CALLER_SAVED_BUT_R0
+	ld.ab	blink,[sp, 4]
+	cfi_adjust_cfa_offset (-4)
+	cfi_restore (blink)
+	ld.ab	r9, [sp, 4]
+	ld.ab	r8, [sp, 4]
+	ld.ab	r7, [sp, 4]
+	ld.ab	r6, [sp, 4]
+	ld.ab	r5, [sp, 4]
+	ld.ab	r4, [sp, 4]
+	pop_s   r3
+	pop_s   r2
+	pop_s   r1
+	cfi_adjust_cfa_offset (-36)
+.endm
+
+/* Upon entry, PLTn, which led us here, sets up the following regs
+	r11 = Module info (tpnt pointer as expected by resolver)
+	r12 = PC of the PLTn itself - needed by resolver to find
+	      corresponding .rela.plt entry.  */
+
+ENTRY (_dl_runtime_resolve)
+	; args to func being resolved, which resolver might clobber
+	SAVE_CALLER_SAVED
+
+	mov_s 	r1, r12
+	bl.d  	_dl_fixup
+	mov   	r0, r11
+
+	RESTORE_CALLER_SAVED_BUT_R0
+	j_s.d   [r0]    /* r0 has resolved function addr.  */
+	pop_s   r0      /* restore first arg to resolved call.  */
+	cfi_adjust_cfa_offset (-4)
+	cfi_restore (r0)
+END (_dl_runtime_resolve)
diff --git a/sysdeps/arc/gccframe.h b/sysdeps/arc/gccframe.h
new file mode 100644
index 000000000000..5d547fd40a6c
--- /dev/null
+++ b/sysdeps/arc/gccframe.h
@@ -0,0 +1,21 @@
+/* Definition of object in frame unwind info.  ARC version.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#define FIRST_PSEUDO_REGISTER 40
+
+#include <sysdeps/generic/gccframe.h>
diff --git a/sysdeps/arc/jmpbuf-offsets.h b/sysdeps/arc/jmpbuf-offsets.h
new file mode 100644
index 000000000000..a76af7d0f7ce
--- /dev/null
+++ b/sysdeps/arc/jmpbuf-offsets.h
@@ -0,0 +1,47 @@
+/* Private macros for accessing __jmp_buf contents.  ARC version.
+   Copyright (C) 2006-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+/* Save offsets within __jmp_buf
+   We don't use most of these symbols; they are here for documentation. */
+
+/* Callee Regs.  */
+#define JB_R13 0
+#define JB_R14 1
+#define JB_R15 2
+#define JB_R16 3
+#define JB_R17 4
+#define JB_R18 5
+#define JB_R19 6
+#define JB_R20 7
+#define JB_R21 8
+#define JB_R22 9
+#define JB_R23 10
+#define JB_R24 11
+#define JB_R25 12
+
+/* Frame Pointer, Stack Pointer, Branch-n-link.  */
+#define JB_FP  13
+#define JB_SP  14
+#define JB_BLINK  15
+
+/* We save space for some extra state to accommodate future changes
+   This is number of words.  */
+#define JB_NUM	32
+
+/* Helper for generic ____longjmp_chk.  */
+#define JB_FRAME_ADDRESS(buf) ((void *) (unsigned long int) (buf[JB_SP]))
diff --git a/sysdeps/arc/jmpbuf-unwind.h b/sysdeps/arc/jmpbuf-unwind.h
new file mode 100644
index 000000000000..b333cd51c80e
--- /dev/null
+++ b/sysdeps/arc/jmpbuf-unwind.h
@@ -0,0 +1,47 @@
+/* Examine __jmp_buf for unwinding frames.  ARC version.
+   Copyright (C) 2005-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <setjmp.h>
+#include <jmpbuf-offsets.h>
+#include <stdint.h>
+#include <unwind.h>
+
+/* Test if longjmp to JMPBUF would unwind the frame
+   containing a local variable at ADDRESS.  */
+
+#define _JMPBUF_UNWINDS(jmpbuf, address, demangle) \
+  ((void *) (address) < (void *) demangle (jmpbuf[JB_SP]))
+
+#define _JMPBUF_CFA_UNWINDS_ADJ(_jmpbuf, _context, _adj) \
+  _JMPBUF_UNWINDS_ADJ (_jmpbuf, (void *) _Unwind_GetCFA (_context), _adj)
+
+static inline uintptr_t __attribute__ ((unused))
+_jmpbuf_sp (__jmp_buf jmpbuf)
+{
+  uintptr_t sp = jmpbuf[JB_SP];
+#ifdef PTR_DEMANGLE
+  PTR_DEMANGLE (sp);
+#endif
+  return sp;
+}
+
+#define _JMPBUF_UNWINDS_ADJ(_jmpbuf, _address, _adj) \
+  ((uintptr_t) (_address) - (_adj) < (uintptr_t) (_jmpbuf_sp (_jmpbuf) - (_adj)))
+
+/* We use the normal longjmp for unwinding.  */
+#define __libc_unwind_longjmp(buf, val) __libc_longjmp (buf, val)
diff --git a/sysdeps/arc/machine-gmon.h b/sysdeps/arc/machine-gmon.h
new file mode 100644
index 000000000000..5fcde54722f2
--- /dev/null
+++ b/sysdeps/arc/machine-gmon.h
@@ -0,0 +1,35 @@
+/* Machine-dependent definitions for profiling support.  ARC version.
+   Copyright (C) 1996-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+
+#define _MCOUNT_DECL(frompc, selfpc)					\
+static void								\
+__mcount_internal (unsigned long int frompc, unsigned long int selfpc)
+
+/* This is very simple as gcc does all the heavy lifting at _mcount call site
+    - sets up caller's blink in r0, so frompc is setup correctly
+    - preserve argument registers for original call.  */
+
+#define MCOUNT								\
+void									\
+_mcount (void *frompc)							\
+{									\
+  __mcount_internal ((unsigned long int) frompc,			\
+		     (unsigned long int) __builtin_return_address (0));	\
+}
diff --git a/sysdeps/arc/memusage.h b/sysdeps/arc/memusage.h
new file mode 100644
index 000000000000..c72beb1ce9a4
--- /dev/null
+++ b/sysdeps/arc/memusage.h
@@ -0,0 +1,23 @@
+/* Machine-specific definitions for memory usage profiling, ARC version.
+   Copyright (C) 2000-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#define GETSP() ({ register uintptr_t stack_ptr asm ("sp"); stack_ptr; })
+
+#define uatomic32_t unsigned int
+
+#include <sysdeps/generic/memusage.h>
diff --git a/sysdeps/arc/setjmp.S b/sysdeps/arc/setjmp.S
new file mode 100644
index 000000000000..e745f81643e3
--- /dev/null
+++ b/sysdeps/arc/setjmp.S
@@ -0,0 +1,66 @@
+/* setjmp for ARC.
+   Copyright (C) 1991-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+
+#include <sysdep.h>
+
+/* Upon entry r0 = jump buffer into which regs will be saved.  */
+ENTRY (setjmp)
+	b.d	__sigsetjmp
+	mov	r1, 1		; save signals
+END (setjmp)
+
+/* Upon entry r0 = jump buffer into which regs will be saved.  */
+ENTRY (_setjmp)
+	b.d	__sigsetjmp
+	mov	r1, 0		/* don't save signals.  */
+END (_setjmp)
+libc_hidden_def (_setjmp)
+
+/* Upon entry
+   r0 = jump buffer into which regs will be saved
+   r1 = do we need to save signals.  */
+ENTRY (__sigsetjmp)
+
+	st_s r13, [r0]
+	st_s r14, [r0,4]
+	st   r15, [r0,8]
+	st   r16, [r0,12]
+	st   r17, [r0,16]
+	st   r18, [r0,20]
+	st   r19, [r0,24]
+	st   r20, [r0,28]
+	st   r21, [r0,32]
+	st   r22, [r0,36]
+	st   r23, [r0,40]
+	st   r24, [r0,44]
+	st   r25, [r0,48]
+	st   fp,  [r0,52]
+	st   sp,  [r0,56]
+
+	/* Make a note of where longjmp will return to.
+	   that will be right next to this setjmp call-site which will be
+	   contained in blink, since "C" caller of this routine will do
+	   a branch-n-link */
+
+	st   blink, [r0,60]
+	b    __sigjmp_save
+
+END (__sigsetjmp)
+
+libc_hidden_def (__sigsetjmp)
diff --git a/sysdeps/arc/sysdep.h b/sysdeps/arc/sysdep.h
new file mode 100644
index 000000000000..e94955ed9d5f
--- /dev/null
+++ b/sysdeps/arc/sysdep.h
@@ -0,0 +1,48 @@
+/* Assembler macros for ARC.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public License as
+   published by the Free Software Foundation; either version 2.1 of the
+   License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdeps/generic/sysdep.h>
+
+#ifdef	__ASSEMBLER__
+
+/* Syntactic details of assembler.
+   ; is not newline but comment, # is also for comment.  */
+# define ASM_SIZE_DIRECTIVE(name) .size name,.-name
+
+# define ENTRY(name)						\
+	.align 4				ASM_LINE_SEP	\
+	.globl C_SYMBOL_NAME(name)		ASM_LINE_SEP	\
+	.type C_SYMBOL_NAME(name),%function	ASM_LINE_SEP	\
+	C_LABEL(name)				ASM_LINE_SEP	\
+	cfi_startproc				ASM_LINE_SEP	\
+	CALL_MCOUNT
+
+# undef  END
+# define END(name)						\
+	cfi_endproc				ASM_LINE_SEP	\
+	ASM_SIZE_DIRECTIVE(name)
+
+# ifdef SHARED
+#  define PLTJMP(_x)	_x##@plt
+# else
+#  define PLTJMP(_x)	_x
+# endif
+
+# define CALL_MCOUNT		/* Do nothing for now.  */
+
+#endif	/* __ASSEMBLER__ */
diff --git a/sysdeps/arc/tls-macros.h b/sysdeps/arc/tls-macros.h
new file mode 100644
index 000000000000..b96425569143
--- /dev/null
+++ b/sysdeps/arc/tls-macros.h
@@ -0,0 +1,47 @@
+/* Macros to support TLS testing in times of missing compiler support.  ARC version.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+
+/* For now.  */
+#define TLS_LD(x)	TLS_IE(x)
+
+#define TLS_GD(x)					\
+  ({ int *__result;					\
+     __asm__ ("add r0, pcl, @" #x "@tlsgd      \n"     	\
+	  ".tls_gd_ld " #x "`bl __tls_get_addr@plt \n"	\
+	  "mov %0, r0                    \n"		\
+	  : "=&r" (__result)				\
+	  ::"r0","r1","r2","r3","r4","r5","r6","r7",	\
+	    "r8","r9","r10","r11","r12");		\
+     __result; })
+
+#define TLS_LE(x)					\
+  ({ int *__result;					\
+     void *tp = __builtin_thread_pointer ();		\
+     __asm__ ("add %0, %1, @" #x "@tpoff   \n"		\
+	  : "=r" (__result) : "r"(tp));	        	\
+     __result; })
+
+#define TLS_IE(x)					\
+  ({ int *__result;					\
+     void *tp = __builtin_thread_pointer ();		\
+     __asm__ ("ld %0, [pcl, @" #x "@tlsie]      \n"     \
+	  "add %0, %1, %0                       \n"	\
+	  : "=&r" (__result) : "r" (tp));		\
+     __result; })
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
