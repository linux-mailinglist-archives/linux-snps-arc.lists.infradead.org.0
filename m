Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04C91A2DB9
	for <lists+linux-snps-arc@lfdr.de>; Thu,  9 Apr 2020 04:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3Ytm8BEFLAlX3OvTjCLIx1CbkQZN/NdWdr2Yb5XZYc=; b=TDV/s5arSe10C/
	c4TqBdiiwj5yZpERYLFOmaHPUbxPubwEaUhBNNWTN4xoUW2ktbfl2gk07jprQUerr7V5KNzSkY+v3
	LIT5s4O8gJqV4lwuCD0GvgBLHRrTjYDyXQyZRNv/9ER2sXRQqK+jpYQi5Yf375qCWgTn5MCAHJMWH
	YHlC879o5m36/zRQ+hL/qd9G5Xclp5RDDWAPpGKAmIY3ZWaoxBANu44gAKOI31l/fOGD/1X7abjHT
	yUuCX1ouHbBmgw8nPZ40SLXqUeu9H0l8zjz1z8COzOI/jbZwLkOk7fw11Unc5e4v5kClNJUw7au1p
	i4Sxq/WW5C5TFioTsXPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMNMr-0005Zh-0B; Thu, 09 Apr 2020 02:56:37 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMNMn-0005Wg-4g
 for linux-snps-arc@lists.infradead.org; Thu, 09 Apr 2020 02:56:35 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8EEEB40658;
 Thu,  9 Apr 2020 02:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586400992; bh=+BvquDyWzWoshNzRJDAqXTzZE8GO3IAD1ZZVDgOrINo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zy5tuKpwBJv9NPR2BWMazZi8OoNKRwepc9kPn3wLGTOz1jab6wCxUHtITVZ85Re6u
 k5ta6J6CAWlZFyEveWAIc6pgUPGJqxuCtrYrL0U+gIPWkI0FVYC+xKFl/Tq3zv0KrT
 CBsVm/voJ3WWvCzmhi3aLT1bD/C9uOFKYNBqTeejaQAcyTOEJvgNwVt5nKhDnF4VFb
 5arcflueFSXuVwG6TgHvDarZ5cn+/N6haJ0Dyj12IPfXPERm2j6FLx/mY2N9dqy0B9
 NhP49u1Kr0c7JnX5cGFSzKKwVPb+VT54p4MqBA2YOvdgDKbuHllfeIASuKDOsw436m
 hKVFFDdghq6Jw==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 61777A00C6;
 Thu,  9 Apr 2020 02:56:32 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v5 03/14] ARC: Thread Local Storage support
Date: Wed,  8 Apr 2020 19:56:04 -0700
Message-Id: <20200409025615.27003-4-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409025615.27003-1-vgupta@synopsys.com>
References: <20200409025615.27003-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_195633_208523_C0A36069 
X-CRM114-Status: GOOD (  16.83  )
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

This includes all 4 TLS addressing models

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 sysdeps/arc/dl-tls.h             |  30 +++++++
 sysdeps/arc/libc-tls.c           |  27 ++++++
 sysdeps/arc/nptl/tcb-offsets.sym |  11 +++
 sysdeps/arc/nptl/tls.h           | 150 +++++++++++++++++++++++++++++++
 sysdeps/arc/stackinfo.h          |  33 +++++++
 5 files changed, 251 insertions(+)
 create mode 100644 sysdeps/arc/dl-tls.h
 create mode 100644 sysdeps/arc/libc-tls.c
 create mode 100644 sysdeps/arc/nptl/tcb-offsets.sym
 create mode 100644 sysdeps/arc/nptl/tls.h
 create mode 100644 sysdeps/arc/stackinfo.h

diff --git a/sysdeps/arc/dl-tls.h b/sysdeps/arc/dl-tls.h
new file mode 100644
index 000000000000..2269ac6c3daa
--- /dev/null
+++ b/sysdeps/arc/dl-tls.h
@@ -0,0 +1,30 @@
+/* Thread-local storage handling in the ELF dynamic linker.  ARC version.
+   Copyright (C) 2012-2020 Free Software Foundation, Inc.
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
+/* Type used for the representation of TLS information in the GOT.  */
+typedef struct
+{
+  unsigned long int ti_module;
+  unsigned long int ti_offset;
+} tls_index;
+
+extern void *__tls_get_addr (tls_index *ti);
+
+/* Value used for dtv entries for which the allocation is delayed.  */
+#define TLS_DTV_UNALLOCATED	((void *) -1l)
diff --git a/sysdeps/arc/libc-tls.c b/sysdeps/arc/libc-tls.c
new file mode 100644
index 000000000000..ec88282de60e
--- /dev/null
+++ b/sysdeps/arc/libc-tls.c
@@ -0,0 +1,27 @@
+/* Thread-local storage handling in the ELF dynamic linker.  ARC version.
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
+#include <csu/libc-tls.c>
+#include <dl-tls.h>
+
+void *
+__tls_get_addr (tls_index *ti)
+{
+  dtv_t *dtv = THREAD_DTV ();
+  return (char *) dtv[1].pointer.val + ti->ti_offset;
+}
diff --git a/sysdeps/arc/nptl/tcb-offsets.sym b/sysdeps/arc/nptl/tcb-offsets.sym
new file mode 100644
index 000000000000..64c432c22e76
--- /dev/null
+++ b/sysdeps/arc/nptl/tcb-offsets.sym
@@ -0,0 +1,11 @@
+#include <sysdep.h>
+#include <tls.h>
+
+-- Derive offsets relative to the thread register.
+#define thread_offsetof(mem)	(long)(offsetof (struct pthread, mem) - sizeof (struct pthread))
+
+MULTIPLE_THREADS_OFFSET		offsetof (struct pthread, header.multiple_threads)
+TLS_PRE_TCB_SIZE		sizeof (struct pthread)
+TLS_TCB_SIZE            	sizeof (tcbhead_t)
+
+PTHREAD_TID			offsetof (struct pthread, tid)
diff --git a/sysdeps/arc/nptl/tls.h b/sysdeps/arc/nptl/tls.h
new file mode 100644
index 000000000000..10c7117527ff
--- /dev/null
+++ b/sysdeps/arc/nptl/tls.h
@@ -0,0 +1,150 @@
+/* Definition for thread-local data handling.  NPTL/ARC version.
+   Copyright (C) 2012-2020 Free Software Foundation, Inc.
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
+#ifndef _ARC_NPTL_TLS_H
+#define _ARC_NPTL_TLS_H	1
+
+#include <dl-sysdep.h>
+
+#ifndef __ASSEMBLER__
+# include <stdbool.h>
+# include <stddef.h>
+# include <stdint.h>
+
+#include <dl-dtv.h>
+
+/* Get system call information.  */
+# include <sysdep.h>
+
+/* The TLS blocks start right after the TCB.  */
+# define TLS_DTV_AT_TP	1
+# define TLS_TCB_AT_TP	0
+
+/* Get the thread descriptor definition.  */
+# include <nptl/descr.h>
+
+typedef struct
+{
+  dtv_t *dtv;
+  uintptr_t pointer_guard;
+} tcbhead_t;
+
+register struct pthread *__thread_self __asm__("r25");
+
+/* This is the size of the initial TCB.  */
+# define TLS_INIT_TCB_SIZE	sizeof (tcbhead_t)
+
+/* Alignment requirements for the initial TCB.  */
+# define TLS_INIT_TCB_ALIGN	__alignof__ (struct pthread)
+
+/* This is the size of the TCB.  */
+#ifndef TLS_TCB_SIZE
+# define TLS_TCB_SIZE		sizeof (tcbhead_t)
+#endif
+
+/* Alignment requirements for the TCB.  */
+# define TLS_TCB_ALIGN		__alignof__ (struct pthread)
+
+/* This is the size we need before TCB.  */
+# define TLS_PRE_TCB_SIZE	sizeof (struct pthread)
+
+/* Install the dtv pointer.  The pointer passed is to the element with
+   index -1 which contain the length.  */
+# define INSTALL_DTV(tcbp, dtvp) \
+  (((tcbhead_t *) (tcbp))->dtv = (dtvp) + 1)
+
+/* Install new dtv for current thread.  */
+# define INSTALL_NEW_DTV(dtv) \
+  (THREAD_DTV() = (dtv))
+
+/* Return dtv of given thread descriptor.  */
+# define GET_DTV(tcbp) \
+  (((tcbhead_t *) (tcbp))->dtv)
+
+/* Code to initially initialize the thread pointer.  */
+# define TLS_INIT_TP(tcbp)					\
+  ({                                            		\
+	long result_var;					\
+	__builtin_set_thread_pointer(tcbp);     		\
+	result_var = INTERNAL_SYSCALL (arc_settls, 1, (tcbp));	\
+	INTERNAL_SYSCALL_ERROR_P (result_var)			\
+	? "settls syscall error" : NULL;			\
+   })
+
+/* Value passed to 'clone' for initialization of the thread register.  */
+# define TLS_DEFINE_INIT_TP(tp, pd) void *tp = (pd) + 1
+
+/* Return the address of the dtv for the current thread.  */
+# define THREAD_DTV() \
+  (((tcbhead_t *) __builtin_thread_pointer ())->dtv)
+
+/* Return the thread descriptor for the current thread.  */
+# define THREAD_SELF \
+ ((struct pthread *)__builtin_thread_pointer () - 1)
+
+/* Magic for libthread_db to know how to do THREAD_SELF.  */
+# define DB_THREAD_SELF \
+  CONST_THREAD_AREA (32, sizeof (struct pthread))
+
+/* Access to data in the thread descriptor is easy.  */
+# define THREAD_GETMEM(descr, member) \
+  descr->member
+# define THREAD_GETMEM_NC(descr, member, idx) \
+  descr->member[idx]
+# define THREAD_SETMEM(descr, member, value) \
+  descr->member = (value)
+# define THREAD_SETMEM_NC(descr, member, idx, value) \
+  descr->member[idx] = (value)
+
+/* Get and set the global scope generation counter in struct pthread.  */
+#define THREAD_GSCOPE_IN_TCB      1
+#define THREAD_GSCOPE_FLAG_UNUSED 0
+#define THREAD_GSCOPE_FLAG_USED   1
+#define THREAD_GSCOPE_FLAG_WAIT   2
+#define THREAD_GSCOPE_RESET_FLAG() \
+  do									     \
+    { int __res								     \
+	= atomic_exchange_rel (&THREAD_SELF->header.gscope_flag,	     \
+			       THREAD_GSCOPE_FLAG_UNUSED);		     \
+      if (__res == THREAD_GSCOPE_FLAG_WAIT)				     \
+	lll_futex_wake (&THREAD_SELF->header.gscope_flag, 1, LLL_PRIVATE);   \
+    }									     \
+  while (0)
+#define THREAD_GSCOPE_SET_FLAG() \
+  do									     \
+    {									     \
+      THREAD_SELF->header.gscope_flag = THREAD_GSCOPE_FLAG_USED;	     \
+      atomic_write_barrier ();						     \
+    }									     \
+  while (0)
+#define THREAD_GSCOPE_WAIT() \
+  GL(dl_wait_lookup_done) ()
+
+#else
+
+# include <tcb-offsets.h>
+
+# r25 is dedicated TLS register for ARC
+.macro THREAD_SELF reg
+	# struct pthread is just ahead of TCB
+	sub     \reg, r25, TLS_PRE_TCB_SIZE
+.endm
+
+#endif /* __ASSEMBLER__ */
+
+#endif	/* tls.h */
diff --git a/sysdeps/arc/stackinfo.h b/sysdeps/arc/stackinfo.h
new file mode 100644
index 000000000000..911efd928675
--- /dev/null
+++ b/sysdeps/arc/stackinfo.h
@@ -0,0 +1,33 @@
+/* Stack environment definitions for ARC.
+   Copyright (C) 2012-2020 Free Software Foundation, Inc.
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
+/* This file contains a bit of information about the stack allocation
+   of the processor.  */
+
+#ifndef _STACKINFO_H
+#define _STACKINFO_H	1
+
+#include <elf.h>
+
+/* On ARC the stack grows down.  */
+#define _STACK_GROWS_DOWN	1
+
+/* Default to a non-executable stack.  */
+#define DEFAULT_STACK_PERMS (PF_R|PF_W)
+
+#endif	/* stackinfo.h */
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
