Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6B11FA107
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 22:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0bFz/yRYKOo9pUcyUWAZIExbtlhpwz9Fiv2fZHM4JQ=; b=V43+nmEKjoIifU
	xp+ckOCBub1RwFNjpTReayMGRb3L0G4LcisW+DViji//Celi7cdkssTm7bgBpE4EjLffPeVdWcQpB
	F0hXZD2zr8TYVhlRlP7Wu35i8CXnMvDbxQyKqZZmk1lQ6gKAos9JeiQ6ZH9rlSedyA9oZ94yY/Fh+
	GCKheTMJEM2yGaNE9cg1BO+e98gpO7I9nYl55BsvunIKiNWLLi85FLeU/3zUEheN0BqBPcTJzEsal
	cPcvRK4H7v2zTxW3ct3mWM5VWq7cspQc6NJK9dpVd3akxk7RhEibSyXgSqnozry4KWh+1BHyxqM9R
	daUlv45sN86qwyQUDzKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvVQ-0003do-JP; Mon, 15 Jun 2020 20:14:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvVH-0003WX-Ex
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 20:14:53 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 84B2DC0BAE;
 Mon, 15 Jun 2020 20:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592252086; bh=WEzEV9lRILvFoFfCBsTd+4RtTd+4GUWQGYIyDAoZVbw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FGtJHMLxRfe7xLKWo0BUohEMV+tYEedEj4qSJ8Tlb0bOcH3/Jk/RsVWDSJCmiN3sK
 5E8nwmGlwhmYTyJw2efo6Ue5rt17H/Y6OTyYyWgev7EvR6b9amWwc+dYwDDeZFLaPw
 pwVrlBHI5pvzRn/oilWECYL6q6107B5gslUZNjdH9fk0FiIsFufOj75qRHQE/qGV7C
 OSez42eeuYlUBe59DddhWCVGFP3eCPbXNkUOuwR84dIBLBH0UHx632MNWNIXeuptO2
 TsCL5jXh2Q/zvq4Hjx0UKh9gPmPoREcisG7cPz8gS45P7DJIiZ6mCjlneNIilNPptW
 KmRp1+un/ZM0w==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 392FCA00A1;
 Mon, 15 Jun 2020 20:14:46 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v7 02/13] ARC: startup and dynamic linking code
Date: Mon, 15 Jun 2020 13:14:30 -0700
Message-Id: <20200615201441.31820-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615201441.31820-1-vgupta@synopsys.com>
References: <20200615201441.31820-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_131447_582105_E7085F19 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Code for C runtime startup and dynamic loading including PLT layout.
---
 sysdeps/arc/bits/link.h   |  52 ++++++
 sysdeps/arc/dl-machine.h  | 341 ++++++++++++++++++++++++++++++++++++++
 sysdeps/arc/entry.h       |   5 +
 sysdeps/arc/ldsodefs.h    |  43 +++++
 sysdeps/arc/sotruss-lib.c |  50 ++++++
 sysdeps/arc/start.S       |  74 +++++++++
 sysdeps/arc/tst-audit.h   |  23 +++
 7 files changed, 588 insertions(+)
 create mode 100644 sysdeps/arc/bits/link.h
 create mode 100644 sysdeps/arc/dl-machine.h
 create mode 100644 sysdeps/arc/entry.h
 create mode 100644 sysdeps/arc/ldsodefs.h
 create mode 100644 sysdeps/arc/sotruss-lib.c
 create mode 100644 sysdeps/arc/start.S
 create mode 100644 sysdeps/arc/tst-audit.h

diff --git a/sysdeps/arc/bits/link.h b/sysdeps/arc/bits/link.h
new file mode 100644
index 000000000000..b687250a7a07
--- /dev/null
+++ b/sysdeps/arc/bits/link.h
@@ -0,0 +1,52 @@
+/* Machine-specific declarations for dynamic linker interface, ARC version.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#ifndef	_LINK_H
+# error "Never include <bits/link.h> directly; use <link.h> instead."
+#endif
+
+/* Registers for entry into PLT on ARC.  */
+typedef struct La_arc_regs
+{
+  uint32_t lr_reg[8]; /* r0 through r7 (upto 8 args).  */
+} La_arc_regs;
+
+/* Return values for calls from PLT on ARC.  */
+typedef struct La_arc_retval
+{
+  /* For ARCv2, a 64-bit integer return value can use 2 regs.  */
+  uint32_t lrv_reg[2];
+} La_arc_retval;
+
+__BEGIN_DECLS
+
+extern ElfW(Addr) la_arc_gnu_pltenter (ElfW(Sym) *__sym, unsigned int __ndx,
+					 uintptr_t *__refcook,
+					 uintptr_t *__defcook,
+					 La_arc_regs *__regs,
+					 unsigned int *__flags,
+					 const char *__symname,
+					 long int *__framesizep);
+extern unsigned int la_arc_gnu_pltexit (ElfW(Sym) *__sym, unsigned int __ndx,
+					  uintptr_t *__refcook,
+					  uintptr_t *__defcook,
+					  const La_arc_regs *__inregs,
+					  La_arc_retval *__outregs,
+					  const char *symname);
+
+__END_DECLS
diff --git a/sysdeps/arc/dl-machine.h b/sysdeps/arc/dl-machine.h
new file mode 100644
index 000000000000..82940d8a701e
--- /dev/null
+++ b/sysdeps/arc/dl-machine.h
@@ -0,0 +1,341 @@
+/* Machine-dependent ELF dynamic relocation inline functions.  ARC version.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#ifndef dl_machine_h
+#define dl_machine_h
+
+#define ELF_MACHINE_NAME "arc"
+
+#include <entry.h>
+
+#ifndef ENTRY_POINT
+# error ENTRY_POINT needs to be defined for ARC
+#endif
+
+#include <string.h>
+#include <link.h>
+#include <dl-tls.h>
+
+/* Dynamic Linking ABI for ARCv2 ISA.
+
+                        PLT
+          --------------------------------	<---- DT_PLTGOT
+          |  ld r11, [pcl, off-to-GOT[1] |  0
+          |                              |  4
+   plt0   |  ld r10, [pcl, off-to-GOT[2] |  8
+          |                              | 12
+          |  j [r10]                     | 16
+          --------------------------------
+          |    Base address of GOT       | 20
+          --------------------------------
+          |  ld r12, [pcl, off-to-GOT[3] | 24
+   plt1   |                              |
+          |  j.d    [r12]                | 32
+          |  mov    r12, pcl             | 36
+          --------------------------------
+          |                              | 40
+          ~                              ~
+          ~                              ~
+          |                              |
+          --------------------------------
+
+               .got
+          --------------
+          |    [0]     |
+          |    ...     |  Runtime address for data symbols
+          |    [n]     |
+          --------------
+
+            .got.plt
+          --------------
+          |    [0]     |  Build address of .dynamic
+          --------------
+          |    [1]     |  Module info - setup by ld.so
+          --------------
+          |    [2]     |  resolver entry point
+          --------------
+          |    [3]     |
+          |    ...     |  Runtime address for function symbols
+          |    [f]     |
+          --------------
+
+   For ARCompact, the PLT is 12 bytes due to short instructions
+
+          --------------------------------
+          |  ld r12, [pcl, off-to-GOT[3] | 24   (12 bytes each)
+   plt1   |                              |
+          |  j_s.d  [r12]                | 32
+          |  mov_s  r12, pcl             | 34
+          --------------------------------
+          |                              | 36  */
+
+/* Return nonzero iff ELF header is compatible with the running host.  */
+static inline int
+elf_machine_matches_host (const Elf32_Ehdr *ehdr)
+{
+  return (ehdr->e_machine == EM_ARCV2		 /* ARC HS.  */
+	  || ehdr->e_machine == EM_ARC_COMPACT); /* ARC 700.  */
+}
+
+/* Get build time address of .dynamic as setup in GOT[0]
+   This is called very early in _dl_start so it has not been relocated to
+   runtime value.  */
+static inline ElfW(Addr)
+elf_machine_dynamic (void)
+{
+  extern const ElfW(Addr) _GLOBAL_OFFSET_TABLE_[] attribute_hidden;
+  return _GLOBAL_OFFSET_TABLE_[0];
+}
+
+
+/* Return the run-time load address of the shared object.  */
+static inline ElfW(Addr)
+elf_machine_load_address (void)
+{
+  ElfW(Addr) build_addr, run_addr;
+
+  /* For build address, below generates
+     ld  r0, [pcl, _GLOBAL_OFFSET_TABLE_@pcl].  */
+  build_addr = elf_machine_dynamic ();
+  __asm__ ("add %0, pcl, _DYNAMIC@pcl	\n" : "=r" (run_addr));
+
+  return run_addr - build_addr;
+}
+
+/* Set up the loaded object described by L so its unrelocated PLT
+   entries will jump to the on-demand fixup code in dl-runtime.c.  */
+
+static inline int
+__attribute__ ((always_inline))
+elf_machine_runtime_setup (struct link_map *l, int lazy, int profile)
+{
+  extern void _dl_runtime_resolve (Elf32_Word);
+
+  if (l->l_info[DT_JMPREL] && lazy)
+    {
+      /* On ARC DT_PLTGOT point to .plt whose 5th word (after the PLT header)
+         contains the address of .got.  */
+      ElfW(Addr) *plt_base = (ElfW(Addr) *) D_PTR (l, l_info[DT_PLTGOT]);
+      ElfW(Addr) *got = (ElfW(Addr) *) (plt_base[5] + l->l_addr);
+
+      got[1] = (ElfW(Addr)) l;	/* Identify this shared object.  */
+
+      /* This function will get called to fix up the GOT entry indicated by
+	 the offset on the stack, and then jump to the resolved address.  */
+      got[2] = (ElfW(Addr)) &_dl_runtime_resolve;
+    }
+
+  return lazy;
+}
+
+/* What this code does:
+    -ldso starts execution here when kernel returns from execve
+    -calls into generic ldso entry point _dl_start
+    -optionally adjusts argc for executable if exec passed as cmd
+    -calls into app main with address of finaliser.  */
+
+#define RTLD_START asm ("\
+.text									\n\
+.globl __start								\n\
+.type __start, @function						\n\
+__start:								\n\
+	/* (1). bootstrap ld.so.  */					\n\
+	bl.d    _dl_start                                       	\n\
+	mov_s   r0, sp  /* pass ptr to aux vector tbl.    */    	\n\
+	mov r13, r0	/* safekeep app elf entry point.  */		\n\
+									\n\
+	/* (2). If ldso ran with executable as arg.       */		\n\
+	/*      skip the extra args calc by dl_start.     */		\n\
+	ld_s    r1, [sp]       /* orig argc.  */			\n\
+	ld      r12, [pcl, _dl_skip_args@pcl]                   	\n\
+	breq	r12, 0, 1f						\n\
+									\n\
+	add2    sp, sp, r12 /* discard argv entries from stack.  */	\n\
+	sub_s   r1, r1, r12 /* adjusted argc on stack.  */      	\n\
+	st_s    r1, [sp]                                        	\n\
+	add	r2, sp, 4						\n\
+	/* intermediate LD for ST emcoding limitations.  */		\n\
+	ld	r3, [pcl, _dl_argv@gotpc]    				\n\
+	st	r2, [r3]						\n\
+1:									\n\
+	/* (3). call preinit stuff.  */					\n\
+	ld	r0, [pcl, _rtld_local@pcl]				\n\
+	add	r2, sp, 4	; argv					\n\
+	add2	r3, r2, r1						\n\
+	add	r3, r3, 4	; env					\n\
+	bl	_dl_init@plt						\n\
+									\n\
+	/* (4) call app elf entry point.  */				\n\
+	add     r0, pcl, _dl_fini@pcl					\n\
+	j	[r13]							\n\
+									\n\
+	.size  __start,.-__start                               		\n\
+	.previous                                               	\n\
+");
+
+/* ELF_RTYPE_CLASS_PLT iff TYPE describes relocation of a PLT entry, so
+   PLT entries should not be allowed to define the value.
+   ELF_RTYPE_CLASS_NOCOPY iff TYPE should not be allowed to resolve to one
+   of the main executable's symbols, as for a COPY reloc.  */
+#define elf_machine_type_class(type)				\
+  ((((type) == R_ARC_JUMP_SLOT					\
+     || (type) == R_ARC_TLS_DTPMOD				\
+     || (type) == R_ARC_TLS_DTPOFF				\
+     || (type) == R_ARC_TLS_TPOFF) * ELF_RTYPE_CLASS_PLT)	\
+   | (((type) == R_ARC_COPY) * ELF_RTYPE_CLASS_COPY))
+
+/* A reloc type used for ld.so cmdline arg lookups to reject PLT entries.  */
+#define ELF_MACHINE_JMP_SLOT  R_ARC_JUMP_SLOT
+
+/* ARC uses Elf32_Rela relocations.  */
+#define ELF_MACHINE_NO_REL 1
+#define ELF_MACHINE_NO_RELA 0
+
+/* Fixup a PLT entry to bounce directly to the function at VALUE.  */
+
+static inline ElfW(Addr)
+elf_machine_fixup_plt (struct link_map *map, lookup_t t,
+		       const ElfW(Sym) *refsym, const ElfW(Sym) *sym,
+		       const Elf32_Rela *reloc,
+		       ElfW(Addr) *reloc_addr, ElfW(Addr) value)
+{
+  return *reloc_addr = value;
+}
+
+/* Return the final value of a plt relocation.  */
+static inline ElfW(Addr)
+elf_machine_plt_value (struct link_map *map, const Elf32_Rela *reloc,
+                       ElfW(Addr) value)
+{
+  return value;
+}
+
+/* Names of the architecture-specific auditing callback functions.  */
+#define ARCH_LA_PLTENTER arc_gnu_pltenter
+#define ARCH_LA_PLTEXIT arc_gnu_pltexit
+
+#endif /* dl_machine_h */
+
+#ifdef RESOLVE_MAP
+
+inline void
+__attribute__ ((always_inline))
+elf_machine_rela (struct link_map *map, const ElfW(Rela) *reloc,
+                  const ElfW(Sym) *sym, const struct r_found_version *version,
+                  void *const reloc_addr_arg, int skip_ifunc)
+{
+  ElfW(Addr) *const reloc_addr = reloc_addr_arg;
+  const unsigned int r_type = ELF32_R_TYPE (reloc->r_info);
+
+  if (__glibc_unlikely (r_type == R_ARC_RELATIVE))
+    *reloc_addr += map->l_addr;
+  else if (__glibc_unlikely (r_type == R_ARC_NONE))
+    return;
+  else
+    {
+      const ElfW(Sym) *const refsym = sym;
+      struct link_map *sym_map = RESOLVE_MAP (&sym, version, r_type);
+      ElfW(Addr) value = SYMBOL_ADDRESS (sym_map, sym, true);
+
+      switch (r_type)
+	{
+        case R_ARC_COPY:
+	  if (__glibc_unlikely (sym == NULL))
+            /* This can happen in trace mode if an object could not be
+               found.  */
+            break;
+
+	  size_t size = sym->st_size;
+          if (__glibc_unlikely (size != refsym->st_size))
+            {
+	    const char *strtab = (const void *) D_PTR (map, l_info[DT_STRTAB]);
+	    if (sym->st_size > refsym->st_size)
+	      size = refsym->st_size;
+	    if (sym->st_size > refsym->st_size || GLRO(dl_verbose))
+	      _dl_error_printf ("\
+  %s: Symbol `%s' has different size in shared object, consider re-linking\n",
+				rtld_progname ?: "<program name unknown>",
+				strtab + refsym->st_name);
+            }
+
+          memcpy (reloc_addr_arg, (void *) value, size);
+          break;
+	case R_ARC_GLOB_DAT:
+	case R_ARC_JUMP_SLOT:
+            *reloc_addr = value;
+          break;
+        case R_ARC_TLS_DTPMOD:
+          if (sym_map != NULL)
+            /* Get the information from the link map returned by the
+               resolv function.  */
+            *reloc_addr = sym_map->l_tls_modid;
+          break;
+
+        case R_ARC_TLS_DTPOFF:
+          if (sym != NULL)
+            /* Offset set by the linker in the GOT entry would be overwritten
+               by dynamic loader instead of added to the symbol location.
+               Other target have the same approach on DTPOFF relocs.  */
+            *reloc_addr += sym->st_value;
+          break;
+
+        case R_ARC_TLS_TPOFF:
+          if (sym != NULL)
+            {
+              CHECK_STATIC_TLS (map, sym_map);
+              *reloc_addr = sym_map->l_tls_offset + sym->st_value + reloc->r_addend;
+            }
+          break;
+        case R_ARC_32:
+          *reloc_addr += value + reloc->r_addend;
+          break;
+
+        case R_ARC_PC32:
+          *reloc_addr += value + reloc->r_addend - (unsigned long int) reloc_addr;
+          break;
+
+	default:
+          _dl_reloc_bad_type (map, r_type, 0);
+          break;
+	}
+    }
+}
+
+inline void
+__attribute__ ((always_inline))
+elf_machine_rela_relative (ElfW(Addr) l_addr, const ElfW(Rela) *reloc,
+			   void *const reloc_addr_arg)
+{
+  ElfW(Addr) *const reloc_addr = reloc_addr_arg;
+  *reloc_addr += l_addr;
+}
+
+inline void
+__attribute__ ((always_inline))
+elf_machine_lazy_rel (struct link_map *map,
+		      ElfW(Addr) l_addr, const ElfW(Rela) *reloc,
+		      int skip_ifunc)
+{
+  ElfW(Addr) *const reloc_addr = (void *) (l_addr + reloc->r_offset);
+  if (ELF32_R_TYPE (reloc->r_info) == R_ARC_JUMP_SLOT)
+    *reloc_addr += l_addr;
+  else
+    _dl_reloc_bad_type (map, ELF32_R_TYPE (reloc->r_info), 1);
+}
+
+#endif /* RESOLVE_MAP */
diff --git a/sysdeps/arc/entry.h b/sysdeps/arc/entry.h
new file mode 100644
index 000000000000..adb01d981afd
--- /dev/null
+++ b/sysdeps/arc/entry.h
@@ -0,0 +1,5 @@
+#ifndef __ASSEMBLY__
+extern void __start (void) attribute_hidden;
+#endif
+
+#define ENTRY_POINT __start
diff --git a/sysdeps/arc/ldsodefs.h b/sysdeps/arc/ldsodefs.h
new file mode 100644
index 000000000000..cf1df36f6ccd
--- /dev/null
+++ b/sysdeps/arc/ldsodefs.h
@@ -0,0 +1,43 @@
+/* Run-time dynamic linker data structures for loaded ELF shared objects.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#ifndef _ARC_LDSODEFS_H
+#define _ARC_LDSODEFS_H 1
+
+#include <elf.h>
+
+struct La_arc_regs;
+struct La_arc_retval;
+
+#define ARCH_PLTENTER_MEMBERS						\
+    ElfW(Addr) (*arc_gnu_pltenter) (ElfW(Sym) *, unsigned int,	\
+				      uintptr_t *, uintptr_t *,		\
+				      const struct La_arc_regs *,	\
+				      unsigned int *, const char *,	\
+				      long int *);
+
+#define ARCH_PLTEXIT_MEMBERS						\
+    unsigned int (*arc_gnu_pltexit) (ElfW(Sym) *, unsigned int,	\
+				       uintptr_t *, uintptr_t *,	\
+				       const struct La_arc_regs *,	\
+				       struct La_arc_retval *,	\
+				       const char *);
+
+#include_next <ldsodefs.h>
+
+#endif
diff --git a/sysdeps/arc/sotruss-lib.c b/sysdeps/arc/sotruss-lib.c
new file mode 100644
index 000000000000..dfb0f0ee8d12
--- /dev/null
+++ b/sysdeps/arc/sotruss-lib.c
@@ -0,0 +1,50 @@
+/* Override generic sotruss-lib.c to define actual functions for ARC.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#define HAVE_ARCH_PLTENTER
+#define HAVE_ARCH_PLTEXIT
+
+#include <elf/sotruss-lib.c>
+
+ElfW(Addr)
+la_arc_gnu_pltenter (ElfW(Sym) *sym __attribute__ ((unused)),
+		       unsigned int ndx __attribute__ ((unused)),
+		       uintptr_t *refcook, uintptr_t *defcook,
+		       La_arc_regs *regs, unsigned int *flags,
+		       const char *symname, long int *framesizep)
+{
+  print_enter (refcook, defcook, symname,
+	       regs->lr_reg[0], regs->lr_reg[1], regs->lr_reg[2],
+	       *flags);
+
+  /* No need to copy anything, we will not need the parameters in any case.  */
+  *framesizep = 0;
+
+  return sym->st_value;
+}
+
+unsigned int
+la_arc_gnu_pltexit (ElfW(Sym) *sym, unsigned int ndx, uintptr_t *refcook,
+		      uintptr_t *defcook,
+		      const struct La_arc_regs *inregs,
+		      struct La_arc_retval *outregs, const char *symname)
+{
+  print_exit (refcook, defcook, symname, outregs->lrv_reg[0]);
+
+  return 0;
+}
diff --git a/sysdeps/arc/start.S b/sysdeps/arc/start.S
new file mode 100644
index 000000000000..83dd5308bd5e
--- /dev/null
+++ b/sysdeps/arc/start.S
@@ -0,0 +1,74 @@
+/* Startup code for ARC.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#define __ASSEMBLY__ 1
+#include <entry.h>
+#include <sysdep.h>
+
+#ifndef ENTRY_POINT
+# error ENTRY_POINT needs to be defined for ARC
+#endif
+
+/* When we enter this piece of code, the program stack looks like this:
+        argc            argument counter (integer)
+        argv[0]         program name (pointer)
+        argv[1...N]     program args (pointers)
+        argv[argc-1]    end of args (integer)
+	NULL
+        env[0...N]      environment variables (pointers)
+        NULL.  */
+
+ENTRY (ENTRY_POINT)
+
+	/* Needed to make gdb backtraces stop here.  */
+	.cfi_label .Ldummy
+	cfi_undefined (blink)
+
+	mov	fp, 0
+	ld_s	r1, [sp]	/* argc.  */
+
+	mov_s	r5, r0		/* rltd_fini.  */
+	add_s	r2, sp, 4	/* argv.  */
+	and	sp, sp, -8
+	mov	r6, sp
+
+	/* __libc_start_main (main, argc, argv, init, fini, rtld_fini, stack_end).  */
+
+#ifdef SHARED
+	ld	r0, [pcl, @main@gotpc]
+	ld	r3, [pcl, @__libc_csu_init@gotpc]
+	ld	r4, [pcl, @__libc_csu_fini@gotpc]
+	bl	__libc_start_main@plt
+#else
+	mov_s	r0, main
+	mov_s	r3, __libc_csu_init
+	mov	r4, __libc_csu_fini
+	bl	__libc_start_main
+#endif
+
+	/* Should never get here.  */
+	flag    1
+END (ENTRY_POINT)
+
+/* Define a symbol for the first piece of initialized data.  */
+	.data
+	.globl __data_start
+__data_start:
+	.long 0
+	.weak data_start
+	data_start = __data_start
diff --git a/sysdeps/arc/tst-audit.h b/sysdeps/arc/tst-audit.h
new file mode 100644
index 000000000000..0b8f0b9c2f3f
--- /dev/null
+++ b/sysdeps/arc/tst-audit.h
@@ -0,0 +1,23 @@
+/* Definitions for testing PLT entry/exit auditing.  ARC version.
+   Copyright (C) 2020 Free Software Foundation, Inc.
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
+#define pltenter la_arc_gnu_pltenter
+#define pltexit la_arc_gnu_pltexit
+#define La_regs La_arc_regs
+#define La_retval La_arc_retval
+#define int_retval lrv_reg[0]
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
