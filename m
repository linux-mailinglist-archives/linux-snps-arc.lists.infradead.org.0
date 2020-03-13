Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A8D183F3D
	for <lists+linux-snps-arc@lfdr.de>; Fri, 13 Mar 2020 04:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2llHVhFEp4lnbe1mdL3isymzzLH+DAMo29hpFpPjej0=; b=FvR+lY6hT8nsX1
	zJf4HLNzD/G1Owy2QAaKwYe801MybyK8UnUyQ1Aw6sQj7M22h/icZV9PiZnMyLLO8OtRnN2G+Hq26
	KSn1hE3cMfidxMukxN/2AspxMaU3gDOK+k3CbhKRLoJAEVmAK9xhVdCudTb+vtyybtekygFzZHHyY
	FX4xW2S/55w7ooqfOLTbJpUpFbvt2ohP5NB18zAU6Ff+SwzfudRASme2VPWY+15dWf1v1AJ5rBi3x
	TmW4NSFPgzvmqoo5ChC3jtKoMxUFFAg+5liS2N6hwU/flfp2koQQpcMmihZbRIwq3YaBw1ygsQQ0v
	hg4MpNk3fmOLeFNy/yAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCacl-0003Uz-AI; Fri, 13 Mar 2020 03:04:35 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCaci-0003Ra-1C
 for linux-snps-arc@lists.infradead.org; Fri, 13 Mar 2020 03:04:34 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C37BA40216;
 Fri, 13 Mar 2020 03:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584068671; bh=DQ7Wp8SF/Yprpmt1Qbl/218IapMHdSTTFFCI4epvKtI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=loqinvs/MaMFucFAPtJC7PX5XFpPcRExmV1iL0g5mT6xWMo6NcIME/lpptJYsY9pO
 K0kvafG3CyaNn5JgBHycyK3Q5iXo1ci8BJvrwgUHhUr9vuSmBX3RJsBMw1TFWG09bl
 tY/+BFrJHnbk1RyAkKI1Nrnv238O879xVmx0EOYiKx7y1oNty0XuXDyZxlZhNIswyT
 HMEgw289LWJSqSLCXXk2RsxSvAooNKSSE5lMLUXip6DHvcbAUzBVRea981vvp4MJ8C
 kIRjc/hJSh8B/Dygyx2BV+gQvOy/OOQxR++Z1BS0XPz5CBu4MIX/mWRCxADja2U4jl
 Qtym76EBWBt+Q==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 92780A0082;
 Fri, 13 Mar 2020 03:04:31 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v4 10/15] ARC: Linux Startup and Dynamic Loading
Date: Thu, 12 Mar 2020 20:04:14 -0700
Message-Id: <20200313030419.15843-11-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313030419.15843-1-vgupta@synopsys.com>
References: <20200313030419.15843-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_200432_111151_26A9D1C0 
X-CRM114-Status: GOOD (  17.46  )
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
 sysdeps/arc/start.S                     | 15 +++--
 sysdeps/unix/sysv/linux/arc/dl-static.c | 84 +++++++++++++++++++++++++
 sysdeps/unix/sysv/linux/arc/ldsodefs.h  | 32 ++++++++++
 3 files changed, 125 insertions(+), 6 deletions(-)
 create mode 100644 sysdeps/unix/sysv/linux/arc/dl-static.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/ldsodefs.h

diff --git a/sysdeps/arc/start.S b/sysdeps/arc/start.S
index e006453dcd1f..25e43d71da9e 100644
--- a/sysdeps/arc/start.S
+++ b/sysdeps/arc/start.S
@@ -18,6 +18,8 @@
 
 #define __ASSEMBLY__ 1
 #include <entry.h>
+#include <sysdep.h>
+
 #ifndef ENTRY_POINT
 # error ENTRY_POINT needs to be defined for ARC
 #endif
@@ -31,11 +33,12 @@
         env[0...N]      environment variables (pointers)
         NULL.  */
 
-	.text
-	.align 4
-	.global __start
-	.type __start,@function
-__start:
+ENTRY (ENTRY_POINT)
+
+	/* Needed to make gdb backtraces stop here.  */
+	.cfi_label .Ldummy
+	cfi_undefined (blink)
+
 	mov	fp, 0
 	ld_s	r1, [sp]	; argc
 
@@ -60,7 +63,7 @@ __start:
 
 	/* Should never get here.  */
 	flag    1
-	.size  __start,.-__start
+END (ENTRY_POINT)
 
 /* Define a symbol for the first piece of initialized data.  */
 	.data
diff --git a/sysdeps/unix/sysv/linux/arc/dl-static.c b/sysdeps/unix/sysv/linux/arc/dl-static.c
new file mode 100644
index 000000000000..24c31b27fc11
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/dl-static.c
@@ -0,0 +1,84 @@
+/* Variable initialization.  ARC version.
+   Copyright (C) 2001-2020 Free Software Foundation, Inc.
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
+#include <ldsodefs.h>
+
+#ifdef SHARED
+
+void
+_dl_var_init (void *array[])
+{
+  /* It has to match "variables" below. */
+  enum
+    {
+      DL_PAGESIZE = 0
+    };
+
+  GLRO(dl_pagesize) = *((size_t *) array[DL_PAGESIZE]);
+}
+
+#else
+
+static void *variables[] =
+{
+  &GLRO(dl_pagesize)
+};
+
+static void
+_dl_unprotect_relro (struct link_map *l)
+{
+  ElfW(Addr) start = ((l->l_addr + l->l_relro_addr)
+		      & ~(GLRO(dl_pagesize) - 1));
+  ElfW(Addr) end = ((l->l_addr + l->l_relro_addr + l->l_relro_size)
+		    & ~(GLRO(dl_pagesize) - 1));
+
+  if (start != end)
+    __mprotect ((void *) start, end - start, PROT_READ | PROT_WRITE);
+}
+
+void
+_dl_static_init (struct link_map *l)
+{
+  struct link_map *rtld_map = l;
+  struct r_scope_elem **scope;
+  const ElfW(Sym) *ref = NULL;
+  lookup_t loadbase;
+  void (*f) (void *[]);
+  size_t i;
+
+  loadbase = _dl_lookup_symbol_x ("_dl_var_init", l, &ref, l->l_local_scope,
+				  NULL, 0, 1, NULL);
+
+  for (scope = l->l_local_scope; *scope != NULL; scope++)
+    for (i = 0; i < (*scope)->r_nlist; i++)
+      if ((*scope)->r_list[i] == loadbase)
+	{
+	  rtld_map = (*scope)->r_list[i];
+	  break;
+	}
+
+  if (ref != NULL)
+    {
+      f = (void (*) (void *[])) DL_SYMBOL_ADDRESS (loadbase, ref);
+      _dl_unprotect_relro (rtld_map);
+      f (variables);
+      _dl_protect_relro (rtld_map);
+    }
+}
+
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/ldsodefs.h b/sysdeps/unix/sysv/linux/arc/ldsodefs.h
new file mode 100644
index 000000000000..9eef836168be
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/ldsodefs.h
@@ -0,0 +1,32 @@
+/* Run-time dynamic linker data structures for loaded ELF shared objects. ARC
+   Copyright (C) 2001-2020 Free Software Foundation, Inc.
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
+#ifndef	_LDSODEFS_H
+
+/* Get the real definitions.  */
+#include_next <ldsodefs.h>
+
+/* Now define our stuff.  */
+
+/* We need special support to initialize DSO loaded for statically linked
+   binaries.  */
+extern void _dl_static_init (struct link_map *map);
+#undef DL_STATIC_INIT
+#define DL_STATIC_INIT(map) _dl_static_init (map)
+
+#endif /* ldsodefs.h */
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
