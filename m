Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1000B1A2DC4
	for <lists+linux-snps-arc@lfdr.de>; Thu,  9 Apr 2020 04:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9Ea6DozzZBTXud39KwORh9UrJMzICbVXeSe0Knuo4Q=; b=KkbyssOVvF+pm0
	aZI6mj3b1Tk/vmfa06JysAapSKux0Woo/hWhfPE/QmJL4CzR7+IleEdrFOXhj47apa5qTjmRPUFEM
	fuCtnG+2eYr2T7y7QZ+eTSz7hAA+JKJN+2180Gntc3+Kqgq+IC9HZohgSutMXFV137m4lp1x5JGqP
	xeHCpG58nGh/1E91WUjFqh2XWFwlvGFuocWev2dUoBk0hLGsA+TjZqYr4ueBFzrQ241It6oOEWpl1
	KjCdTeI3pRjSxvAF5GpDKwvvpBb1rCyyGfcQtbYyj2pwVWdUlBHdKQFOmELzLVKrEOTNIzNIrdHqx
	P39kZrd5GN1hwchgcMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMNN3-0005he-Jc; Thu, 09 Apr 2020 02:56:49 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMNMq-0005Yo-AS
 for linux-snps-arc@lists.infradead.org; Thu, 09 Apr 2020 02:56:46 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 326DAC0090;
 Thu,  9 Apr 2020 02:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586400995; bh=vl7GKI8ntlQdl3dyEAhMFSFhVtdiSf7qZF73bZpNHck=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l099ryMoC6LSkprvM886QmepwM6ycXD66sxlRp3z80ET3SVPHiR7Q4y8TJ0LlOeM6
 hNu6kQbyvrDaRWPf1Ij1lqxsJ0vOdfXAyY74zNE9oFg+A4gTUAX+KFPA2It8gL4ODq
 OmGa8HnOyYhKbdxdOVP3/L4oC2LbNDSnEp3MaY3po3v4ohC0B1kDfvSnYYfPcFUYAT
 2lj+i/H/LWpTR4H1eiXbAMVH6hdGZ0ucZg32f9CKr+tZuLVXewToZR4qa14k1ckAAf
 k7JBPr33B2hsQbsCIwNd8wT8nyZ6nr+C+apNlVThbl50qYsFLjxSkbRMCUkfyZZw0h
 F0p9kfk/JDeow==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 72FC8A00C0;
 Thu,  9 Apr 2020 02:56:34 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v5 08/14] ARC: Linux ABI
Date: Wed,  8 Apr 2020 19:56:09 -0700
Message-Id: <20200409025615.27003-9-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409025615.27003-1-vgupta@synopsys.com>
References: <20200409025615.27003-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_195636_452951_1809447A 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 sysdeps/arc/nptl/pthreaddef.h                 | 32 +++++++
 sysdeps/unix/sysv/linux/arc/bits/procfs.h     | 35 +++++++
 .../sysv/linux/arc/bits/types/__sigset_t.h    | 12 +++
 sysdeps/unix/sysv/linux/arc/getcontext.S      | 63 +++++++++++++
 sysdeps/unix/sysv/linux/arc/makecontext.c     | 73 +++++++++++++++
 sysdeps/unix/sysv/linux/arc/setcontext.S      | 92 +++++++++++++++++++
 sysdeps/unix/sysv/linux/arc/sigcontextinfo.h  | 28 ++++++
 sysdeps/unix/sysv/linux/arc/swapcontext.S     | 92 +++++++++++++++++++
 sysdeps/unix/sysv/linux/arc/sys/cachectl.h    | 36 ++++++++
 sysdeps/unix/sysv/linux/arc/sys/ucontext.h    | 61 ++++++++++++
 sysdeps/unix/sysv/linux/arc/sys/user.h        | 31 +++++++
 sysdeps/unix/sysv/linux/arc/ucontext-macros.h | 29 ++++++
 sysdeps/unix/sysv/linux/arc/ucontext_i.sym    | 20 ++++
 13 files changed, 604 insertions(+)
 create mode 100644 sysdeps/arc/nptl/pthreaddef.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/procfs.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/types/__sigset_t.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/getcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/makecontext.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/setcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigcontextinfo.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/swapcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/cachectl.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/ucontext.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/user.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ucontext-macros.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ucontext_i.sym

diff --git a/sysdeps/arc/nptl/pthreaddef.h b/sysdeps/arc/nptl/pthreaddef.h
new file mode 100644
index 000000000000..b265bf1a052c
--- /dev/null
+++ b/sysdeps/arc/nptl/pthreaddef.h
@@ -0,0 +1,32 @@
+/* pthread machine parameter definitions, ARC version.
+   Copyright (C) 2002-2020 Free Software Foundation, Inc.
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
+/* Default stack size.  */
+#define ARCH_STACK_DEFAULT_SIZE	(2 * 1024 * 1024)
+
+/* Required stack pointer alignment at beginning.  */
+#define STACK_ALIGN		4
+
+/* Minimal stack size after allocating thread descriptor and guard size.  */
+#define MINIMAL_REST_STACK	2048
+
+/* Alignment requirement for TCB.  */
+#define TCB_ALIGNMENT		4
+
+/* Location of current stack frame.  */
+#define CURRENT_STACK_FRAME	__builtin_frame_address (0)
diff --git a/sysdeps/unix/sysv/linux/arc/bits/procfs.h b/sysdeps/unix/sysv/linux/arc/bits/procfs.h
new file mode 100644
index 000000000000..465c40c71bbd
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/bits/procfs.h
@@ -0,0 +1,35 @@
+/* Types for registers for sys/procfs.h.  ARC version.
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
+#ifndef _SYS_PROCFS_H
+# error "Never include <bits/procfs.h> directly; use <sys/procfs.h> instead."
+#endif
+
+#include <sys/ucontext.h>
+
+/* And the whole bunch of them.  We could have used `struct
+   user_regs' directly in the typedef, but tradition says that
+   the register set is an array, which does have some peculiar
+   semantics, so leave it that way.  */
+#define ELF_NGREG (sizeof (struct user_regs_struct) / sizeof (elf_greg_t))
+
+typedef unsigned long int elf_greg_t;
+typedef unsigned long int elf_gregset_t[ELF_NGREG];
+
+/* There's no seperate floating point reg file in ARCv2.  */
+typedef struct { } elf_fpregset_t;
diff --git a/sysdeps/unix/sysv/linux/arc/bits/types/__sigset_t.h b/sysdeps/unix/sysv/linux/arc/bits/types/__sigset_t.h
new file mode 100644
index 000000000000..795638a30bd3
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/bits/types/__sigset_t.h
@@ -0,0 +1,12 @@
+/* Architecture-specific __sigset_t definition.  ARC version.  */
+#ifndef ____sigset_t_defined
+#define ____sigset_t_defined
+
+/* Linux asm-generic syscall ABI expects sigset_t to hold 64 signals.  */
+#define _SIGSET_NWORDS (64 / (8 * sizeof (unsigned long int)))
+typedef struct
+{
+  unsigned long int __val[_SIGSET_NWORDS];
+} __sigset_t;
+
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/getcontext.S b/sysdeps/unix/sysv/linux/arc/getcontext.S
new file mode 100644
index 000000000000..e00aeb1a6931
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/getcontext.S
@@ -0,0 +1,63 @@
+/* Save current context for ARC.
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
+#include "ucontext-macros.h"
+
+/* int getcontext (ucontext_t *ucp)
+   Save machine context in @ucp and return 0 on success, -1 on error
+    - saves callee saved registers only
+    - layout mandated by uncontext_t:m_context (hence different from setjmp).  */
+
+ENTRY (__getcontext)
+
+	/* Callee saved registers.  */
+	SAVE_REG (r13,   r0, 37)
+	SAVE_REG (r14,   r0, 36)
+	SAVE_REG (r15,   r0, 35)
+	SAVE_REG (r16,   r0, 34)
+	SAVE_REG (r17,   r0, 33)
+	SAVE_REG (r18,   r0, 32)
+	SAVE_REG (r19,   r0, 31)
+	SAVE_REG (r20,   r0, 30)
+	SAVE_REG (r21,   r0, 29)
+	SAVE_REG (r22,   r0, 28)
+	SAVE_REG (r23,   r0, 27)
+	SAVE_REG (r24,   r0, 26)
+	SAVE_REG (r25,   r0, 25)
+
+	SAVE_REG (blink, r0,  7)
+	SAVE_REG (fp,    r0,  8)
+	SAVE_REG (sp,    r0, 23)
+
+	/* Save 0 in r0 placeholder to return 0 when this @ucp activated.  */
+	mov r9, 0
+	SAVE_REG (r9,    r0, 22)
+
+	/* rt_sigprocmask (SIG_BLOCK, NULL, &ucp->uc_sigmask, _NSIG8).  */
+	mov r3, _NSIG8
+	add r2, r0, UCONTEXT_SIGMASK
+	mov r1, 0
+	mov r0, SIG_BLOCK
+	mov r8, __NR_rt_sigprocmask
+	ARC_TRAP_INSN
+	brhi    r0, -1024, .Lcall_syscall_err
+	j.d	[blink]
+	mov r0, 0	/* Success, error handled in .Lcall_syscall_err.  */
+
+PSEUDO_END (__getcontext)
+weak_alias (__getcontext, getcontext)
diff --git a/sysdeps/unix/sysv/linux/arc/makecontext.c b/sysdeps/unix/sysv/linux/arc/makecontext.c
new file mode 100644
index 000000000000..b3a352ce8414
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/makecontext.c
@@ -0,0 +1,73 @@
+/* Create new context for ARC.
+   Copyright (C) 2015-2020 Free Software Foundation, Inc.
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
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+#include <stdarg.h>
+#include <stdint.h>
+#include <sys/ucontext.h>
+
+void
+__makecontext (ucontext_t *ucp, void (*func) (void), int argc, ...)
+{
+  extern void __startcontext (void) attribute_hidden;
+  unsigned long int sp, *r;
+  va_list vl;
+  int i, reg_args, stack_args;
+
+  sp = ((unsigned long int) ucp->uc_stack.ss_sp + ucp->uc_stack.ss_size) & ~7;
+
+  ucp->uc_mcontext.__scratch.__sp = sp;
+  ucp->uc_mcontext.__scratch.__fp = 0;
+
+  /* __startcontext is sort of trampoline to invoke @func
+     From setcontext pov, the resume address is __startcontext,
+     set it up in BLINK place holder.  */
+
+  ucp->uc_mcontext.__scratch.__blink = (unsigned long int) &__startcontext;
+
+  /* __startcontext passed 2 types of args
+       - args to @func setup in canonical r0-r7
+       - @func itself in r9, and next function in r10.   */
+
+  ucp->uc_mcontext.__callee.__r13 = (unsigned long int) func;
+  ucp->uc_mcontext.__callee.__r14 = (unsigned long int) ucp->uc_link;
+
+  r = &ucp->uc_mcontext.__scratch.__r0;
+
+  va_start (vl, argc);
+
+  reg_args = argc > 8 ? 8 : argc;
+  for (i = 0; i < reg_args; i++)
+    *r-- = va_arg (vl, unsigned long int);
+
+  stack_args = argc - reg_args;
+
+  if (__glibc_unlikely (stack_args > 0))
+    {
+      sp -=  stack_args * sizeof (unsigned long int);
+      ucp->uc_mcontext.__scratch.__sp = sp;
+      r = (unsigned long int *)sp;
+
+      for (i = 0; i < stack_args; i++)
+        *r++ = va_arg(vl, unsigned long int);
+    }
+
+  va_end (vl);
+}
+
+weak_alias (__makecontext, makecontext)
diff --git a/sysdeps/unix/sysv/linux/arc/setcontext.S b/sysdeps/unix/sysv/linux/arc/setcontext.S
new file mode 100644
index 000000000000..0cc496be1060
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/setcontext.S
@@ -0,0 +1,92 @@
+/* Set current context for ARC.
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
+#include "ucontext-macros.h"
+
+/* int setcontext (const ucontext_t *ucp)
+     - Restores the machine context in @ucp and resumes execution
+       (doesn't return to caller).  */
+
+ENTRY (__setcontext)
+
+	mov  r9, r0	/* Stash @ucp across syscall.  */
+
+	/* rt_sigprocmask (SIG_SETMASK, &ucp->uc_sigmask, NULL, _NSIG8) */
+	mov  r3, _NSIG8
+	mov  r2, 0
+	add  r1, r0, UCONTEXT_SIGMASK
+	mov  r0, SIG_SETMASK
+	mov  r8, __NR_rt_sigprocmask
+	ARC_TRAP_INSN
+	brhi r0, -1024, .Lcall_syscall_err
+
+	/* Restore scratch/arg regs for makecontext case.  */
+	LOAD_REG (r0,    r9, 22)
+	LOAD_REG (r1,    r9, 21)
+	LOAD_REG (r2,    r9, 20)
+	LOAD_REG (r3,    r9, 19)
+	LOAD_REG (r4,    r9, 18)
+	LOAD_REG (r5,    r9, 17)
+	LOAD_REG (r6,    r9, 16)
+	LOAD_REG (r7,    r9, 15)
+
+	/* Restore callee saved registers.  */
+	LOAD_REG (r13,   r9, 37)
+	LOAD_REG (r14,   r9, 36)
+	LOAD_REG (r15,   r9, 35)
+	LOAD_REG (r16,   r9, 34)
+	LOAD_REG (r17,   r9, 33)
+	LOAD_REG (r18,   r9, 32)
+	LOAD_REG (r19,   r9, 31)
+	LOAD_REG (r20,   r9, 30)
+	LOAD_REG (r21,   r9, 29)
+	LOAD_REG (r22,   r9, 28)
+	LOAD_REG (r23,   r9, 27)
+	LOAD_REG (r24,   r9, 26)
+	LOAD_REG (r25,   r9, 25)
+
+	LOAD_REG (blink, r9,  7)
+	LOAD_REG (fp,    r9,  8)
+	LOAD_REG (sp,    r9, 23)
+
+	j    [blink]
+
+PSEUDO_END (__setcontext)
+weak_alias (__setcontext, setcontext)
+
+
+/* Helper for activating makecontext created context
+     - r13 has @func, r14 has uc_link.  */
+
+ENTRY (__startcontext)
+
+	.cfi_label .Ldummy
+	cfi_undefined (blink)
+
+        /* Call user @func, loaded in r13 by setcontext.  */
+        jl   [r13]
+
+        /* If uc_link (r14) call setcontext with that.  */
+        mov  r0, r14
+        breq r0, 0, 1f
+
+        bl   __setcontext
+1:
+        /* Exit with status 0.  */
+        b    HIDDEN_JUMPTARGET(exit)
+END (__startcontext)
diff --git a/sysdeps/unix/sysv/linux/arc/sigcontextinfo.h b/sysdeps/unix/sysv/linux/arc/sigcontextinfo.h
new file mode 100644
index 000000000000..551b4c9c1d2b
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sigcontextinfo.h
@@ -0,0 +1,28 @@
+/* ARC definitions for signal handling calling conventions.
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
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef _SIGCONTEXTINFO_H
+#define _SIGCONTEXTINFO_H
+
+static inline uintptr_t
+sigcontext_get_pc (const ucontext_t *ctx)
+{
+  return ctx->uc_mcontext.__scratch.__ret;
+}
+
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/swapcontext.S b/sysdeps/unix/sysv/linux/arc/swapcontext.S
new file mode 100644
index 000000000000..80ae73975af9
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/swapcontext.S
@@ -0,0 +1,92 @@
+/* Save and set current context for ARC.
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
+#include "ucontext-macros.h"
+
+/* int swapcontext (ucontext_t *oucp, const ucontext_t *ucp).  */
+
+ENTRY (__swapcontext)
+
+	/* Save context into @oucp pointed to by r0.  */
+
+	SAVE_REG (r13,   r0, 37)
+	SAVE_REG (r14,   r0, 36)
+	SAVE_REG (r15,   r0, 35)
+	SAVE_REG (r16,   r0, 34)
+	SAVE_REG (r17,   r0, 33)
+	SAVE_REG (r18,   r0, 32)
+	SAVE_REG (r19,   r0, 31)
+	SAVE_REG (r20,   r0, 30)
+	SAVE_REG (r21,   r0, 29)
+	SAVE_REG (r22,   r0, 28)
+	SAVE_REG (r23,   r0, 27)
+	SAVE_REG (r24,   r0, 26)
+	SAVE_REG (r25,   r0, 25)
+
+	SAVE_REG (blink, r0,  7)
+	SAVE_REG (fp,    r0,  8)
+	SAVE_REG (sp,    r0, 23)
+
+	/* Save 0 in r0 placeholder to return 0 when @oucp activated.  */
+	mov r9, 0
+	SAVE_REG (r9,    r0, 22)
+
+	/* Load context from @ucp.  */
+
+	mov r9, r1	/* Safekeep @ucp across syscall.  */
+
+	/* rt_sigprocmask (SIG_SETMASK, &ucp->uc_sigmask, &oucp->uc_sigmask, _NSIG8) */
+	mov r3, _NSIG8
+	add r2, r0, UCONTEXT_SIGMASK
+	add r1, r1, UCONTEXT_SIGMASK
+	mov r0, SIG_SETMASK
+	mov r8, __NR_rt_sigprocmask
+	ARC_TRAP_INSN
+	brhi r0, -1024, .Lcall_syscall_err
+
+	LOAD_REG (r0,    r9, 22)
+	LOAD_REG (r1,    r9, 21)
+	LOAD_REG (r2,    r9, 20)
+	LOAD_REG (r3,    r9, 19)
+	LOAD_REG (r4,    r9, 18)
+	LOAD_REG (r5,    r9, 17)
+	LOAD_REG (r6,    r9, 16)
+	LOAD_REG (r7,    r9, 15)
+
+	LOAD_REG (r13,   r9, 37)
+	LOAD_REG (r14,   r9, 36)
+	LOAD_REG (r15,   r9, 35)
+	LOAD_REG (r16,   r9, 34)
+	LOAD_REG (r17,   r9, 33)
+	LOAD_REG (r18,   r9, 32)
+	LOAD_REG (r19,   r9, 31)
+	LOAD_REG (r20,   r9, 30)
+	LOAD_REG (r21,   r9, 29)
+	LOAD_REG (r22,   r9, 28)
+	LOAD_REG (r23,   r9, 27)
+	LOAD_REG (r24,   r9, 26)
+	LOAD_REG (r25,   r9, 25)
+
+	LOAD_REG (blink, r9,  7)
+	LOAD_REG (fp,    r9,  8)
+	LOAD_REG (sp,    r9, 23)
+
+	j    [blink]
+
+PSEUDO_END (__swapcontext)
+weak_alias (__swapcontext, swapcontext)
diff --git a/sysdeps/unix/sysv/linux/arc/sys/cachectl.h b/sysdeps/unix/sysv/linux/arc/sys/cachectl.h
new file mode 100644
index 000000000000..1acb4018ae69
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sys/cachectl.h
@@ -0,0 +1,36 @@
+/* cacheflush - flush contents of instruction and/or data cache.
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
+#ifndef _SYS_CACHECTL_H
+#define _SYS_CACHECTL_H 1
+
+#include <features.h>
+
+/* Get the kernel definition for the op bits.  */
+#include <asm/cachectl.h>
+
+__BEGIN_DECLS
+
+#ifdef __USE_MISC
+extern int cacheflush (void *__addr, const int __nbytes, const int __op) __THROW;
+#endif
+extern int _flush_cache (char *__addr, const int __nbytes, const int __op) __THROW;
+
+__END_DECLS
+
+#endif /* sys/cachectl.h */
diff --git a/sysdeps/unix/sysv/linux/arc/sys/ucontext.h b/sysdeps/unix/sysv/linux/arc/sys/ucontext.h
new file mode 100644
index 000000000000..efbb9b2d20a7
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sys/ucontext.h
@@ -0,0 +1,61 @@
+/* struct ucontext definition, ARC version.
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
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+/* System V/ARC ABI compliant context switching support.  */
+
+#ifndef _SYS_UCONTEXT_H
+#define _SYS_UCONTEXT_H	1
+
+#include <features.h>
+
+#include <bits/types/sigset_t.h>
+#include <bits/types/stack_t.h>
+
+typedef struct
+  {
+    unsigned long int __pad;
+    struct {
+      unsigned long int __bta;
+      unsigned long int __lp_start, __lp_end, __lp_count;
+      unsigned long int __status32, __ret, __blink;
+      unsigned long int __fp, __gp;
+      unsigned long int __r12, __r11, __r10, __r9, __r8, __r7;
+      unsigned long int __r6, __r5, __r4, __r3, __r2, __r1, __r0;
+      unsigned long int __sp;
+    } __scratch;
+    unsigned long int __pad2;
+    struct {
+      unsigned long int __r25, __r24, __r23, __r22, __r21, __r20;
+      unsigned long int __r19, __r18, __r17, __r16, __r15, __r14, __r13;
+    } __callee;
+    unsigned long int __efa;
+    unsigned long int __stop_pc;
+    unsigned long int __r30, __r58, __r59;
+  } mcontext_t;
+
+/* Userlevel context.  */
+typedef struct ucontext_t
+  {
+    unsigned long int __uc_flags;
+    struct ucontext_t *uc_link;
+    stack_t uc_stack;
+    mcontext_t uc_mcontext;
+    sigset_t uc_sigmask;
+  } ucontext_t;
+
+#endif /* sys/ucontext.h */
diff --git a/sysdeps/unix/sysv/linux/arc/sys/user.h b/sysdeps/unix/sysv/linux/arc/sys/user.h
new file mode 100644
index 000000000000..a556d2113d9c
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sys/user.h
@@ -0,0 +1,31 @@
+/* ptrace register data format definitions.
+   Copyright (C) 1998-2020 Free Software Foundation, Inc.
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
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef _SYS_USER_H
+#define _SYS_USER_H	1
+
+/* Struct user_regs_struct is exported by kernel header
+   However apps like strace also expect a struct user, so it's better to
+   have a dummy implementation.  */
+#include <asm/ptrace.h>
+
+struct user {
+	int dummy;
+};
+
+#endif  /* sys/user.h */
diff --git a/sysdeps/unix/sysv/linux/arc/ucontext-macros.h b/sysdeps/unix/sysv/linux/arc/ucontext-macros.h
new file mode 100644
index 000000000000..4427be5dedd6
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/ucontext-macros.h
@@ -0,0 +1,29 @@
+/* Macros for ucontext routines, ARC version.
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
+#ifndef _LINUX_ARC_UCONTEXT_MACROS_H
+#define _LINUX_ARC_UCONTEXT_MACROS_H
+
+#include <sysdep.h>
+
+#include "ucontext_i.h"
+
+#define SAVE_REG(reg, rbase, off)	st  reg, [rbase, UCONTEXT_MCONTEXT + off * 4]
+#define LOAD_REG(reg, rbase, off)	ld  reg, [rbase, UCONTEXT_MCONTEXT + off * 4]
+
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/ucontext_i.sym b/sysdeps/unix/sysv/linux/arc/ucontext_i.sym
new file mode 100644
index 000000000000..d84e92f9f543
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/ucontext_i.sym
@@ -0,0 +1,20 @@
+#include <inttypes.h>
+#include <signal.h>
+#include <stddef.h>
+#include <sys/ucontext.h>
+
+SIG_BLOCK
+SIG_SETMASK
+
+-- sizeof(sigset_t) expected by kernel: see comment in ARC sigaction.c for details
+_NSIG8				(_NSIG / 8)
+
+-- Offsets of the fields in the ucontext_t structure.
+#define ucontext(member)	offsetof (ucontext_t, member)
+
+UCONTEXT_FLAGS			ucontext (__uc_flags)
+UCONTEXT_LINK			ucontext (uc_link)
+UCONTEXT_STACK			ucontext (uc_stack)
+UCONTEXT_MCONTEXT		ucontext (uc_mcontext)
+UCONTEXT_SIGMASK		ucontext (uc_sigmask)
+UCONTEXT_SIZE			sizeof (ucontext_t)
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
