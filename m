Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCE01FA105
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 22:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VB5r+HO+dc7orYLHis1UG7I4ZoPiMWA87zCwNGXXgww=; b=Bp9824yEqgs31M
	b4TkwJtHy15zKngeMzMaWNNBkYkGeoBKg9SKitjyAd7AjnvbxGEZH7jh1FPduRTOWrOh22kQCo0Xg
	5rKo1W9jY0OL8c5bGS3vCWFovaDZjz+hfY4VHBdOMPurIbHwUy7QckqBt9Z1V3pPMWLedLqqDhMTe
	JbAXEXqDySSdX5xwxMquyuEBdKSTokedY0mCyp5CJLeVfJVQTXPlCzhzWoDmnLMePt9ndsxvozcJw
	pARWyftU8XpqN10sQOquE9tysTQnxEZKo4DUyLW4ldoyMN5lSmhp+z333xIK2gScAWVVpabjCMt9k
	4JKeuqnEyvOWEardNDsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvVP-0003ch-7F; Mon, 15 Jun 2020 20:14:55 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvVJ-0003Xt-4A
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 20:14:53 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BD750C0BB5;
 Mon, 15 Jun 2020 20:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592252088; bh=wyySPz96dp3kvpSSseWC3D86RcO35CI8fR4i5Oy8ZOI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W02mU/j/mJScAFwdvaHrjbxeRzMBHKVrFs1n/ztdiQoxXE9kT4CuDT3D9QAORNbLx
 IXZ4rZIMrCASJRGZ82urQ7jYilVByT9HrQdsJ83pyMtdeWVVSBFkgY7i0XcoMINhoA
 JjJLFfA3XH+zJVYTxQ8YkZErb4MUsCSjKcaMMGfiF2/Cq5FqMCPQfGYyVQhSd/onx4
 Xw1sWAiwmMnWXS4J83A1t7yzGTvSyE61Rivrlm6Pg4ZF4nP9vr3JKRL5pnPkoAWvPE
 IuMUIAyvHTh9KDyzWhQU94GWRHIeGkoo+WLPxB+azAqsZOaHwJTcL1HFOshCUqKLAP
 kddY0dHFuNfmw==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6F92DA00A2;
 Mon, 15 Jun 2020 20:14:48 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v7 11/13] ARC: Build Infrastructure
Date: Mon, 15 Jun 2020 13:14:39 -0700
Message-Id: <20200615201441.31820-12-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615201441.31820-1-vgupta@synopsys.com>
References: <20200615201441.31820-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_131449_227389_7798A84C 
X-CRM114-Status: GOOD (  18.25  )
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

---
 config.h.in                                |   3 +
 sysdeps/arc/Implies                        |   3 +
 sysdeps/arc/Makefile                       |  21 +++
 sysdeps/arc/Versions                       |   8 +
 sysdeps/arc/configure                      | 182 +++++++++++++++++++++
 sysdeps/arc/configure.ac                   |  26 +++
 sysdeps/arc/nptl/Makefile                  |  22 +++
 sysdeps/arc/preconfigure                   |  14 ++
 sysdeps/unix/sysv/linux/arc/Implies        |   3 +
 sysdeps/unix/sysv/linux/arc/Makefile       |  29 ++++
 sysdeps/unix/sysv/linux/arc/Versions       |  16 ++
 sysdeps/unix/sysv/linux/arc/configure      |   4 +
 sysdeps/unix/sysv/linux/arc/configure.ac   |   4 +
 sysdeps/unix/sysv/linux/arc/ldconfig.h     |  27 +++
 sysdeps/unix/sysv/linux/arc/shlib-versions |   7 +
 15 files changed, 369 insertions(+)
 create mode 100644 sysdeps/arc/Implies
 create mode 100644 sysdeps/arc/Makefile
 create mode 100644 sysdeps/arc/Versions
 create mode 100644 sysdeps/arc/configure
 create mode 100644 sysdeps/arc/configure.ac
 create mode 100644 sysdeps/arc/nptl/Makefile
 create mode 100644 sysdeps/arc/preconfigure
 create mode 100644 sysdeps/unix/sysv/linux/arc/Implies
 create mode 100644 sysdeps/unix/sysv/linux/arc/Makefile
 create mode 100644 sysdeps/unix/sysv/linux/arc/Versions
 create mode 100644 sysdeps/unix/sysv/linux/arc/configure
 create mode 100644 sysdeps/unix/sysv/linux/arc/configure.ac
 create mode 100644 sysdeps/unix/sysv/linux/arc/ldconfig.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/shlib-versions

diff --git a/config.h.in b/config.h.in
index 831eca2fe14e..2ed684b7d4e4 100644
--- a/config.h.in
+++ b/config.h.in
@@ -109,6 +109,9 @@
 /* AArch64 big endian ABI */
 #undef HAVE_AARCH64_BE
 
+/* ARC big endian ABI */
+#undef HAVE_ARC_BE
+
 /* C-SKY ABI version.  */
 #undef CSKYABI
 
diff --git a/sysdeps/arc/Implies b/sysdeps/arc/Implies
new file mode 100644
index 000000000000..780c4e246769
--- /dev/null
+++ b/sysdeps/arc/Implies
@@ -0,0 +1,3 @@
+wordsize-32
+ieee754/flt-32
+ieee754/dbl-64
diff --git a/sysdeps/arc/Makefile b/sysdeps/arc/Makefile
new file mode 100644
index 000000000000..d5a702e29e58
--- /dev/null
+++ b/sysdeps/arc/Makefile
@@ -0,0 +1,21 @@
+# ARC Makefile
+# Copyright (C) 2020 Free Software Foundation, Inc.
+# This file is part of the GNU C Library.
+
+# The GNU C Library is free software; you can redistribute it and/or
+# modify it under the terms of the GNU Lesser General Public
+# License as published by the Free Software Foundation; either
+# version 2.1 of the License, or (at your option) any later version.
+
+# The GNU C Library is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+# Lesser General Public License for more details.
+
+# You should have received a copy of the GNU Lesser General Public
+# License along with the GNU C Library.  If not, see
+# <https://www.gnu.org/licenses/>.
+
+# We don't support long doubles as a distinct type.  We don't need to set
+# this variable; it's here mostly for documentational purposes.
+long-double-fcts = no
diff --git a/sysdeps/arc/Versions b/sysdeps/arc/Versions
new file mode 100644
index 000000000000..6ac7b8e49505
--- /dev/null
+++ b/sysdeps/arc/Versions
@@ -0,0 +1,8 @@
+libc {
+  GLIBC_2.32 {
+    __mcount;
+  }
+  GLIBC_PRIVATE {
+    __syscall_error;
+  }
+}
diff --git a/sysdeps/arc/configure b/sysdeps/arc/configure
new file mode 100644
index 000000000000..bce7d3c3773d
--- /dev/null
+++ b/sysdeps/arc/configure
@@ -0,0 +1,182 @@
+# This file is generated from configure.ac by Autoconf.  DO NOT EDIT!
+ # Local configure fragment for sysdeps/arc.
+
+$as_echo "#define PI_STATIC_AND_HIDDEN 1" >>confdefs.h
+
+libc_cv_have_sdata_section=no
+
+# For ARC, historically ; was used for comments and not newline
+# Later # also got added to comment list, but ; couldn't be switched to
+# canonical newline as there's lots of code out there which will break
+libc_cv_asm_line_sep='`'
+cat >>confdefs.h <<_ACEOF
+#define ASM_LINE_SEP $libc_cv_asm_line_sep
+_ACEOF
+
+
+# For big endian ABI, generate a symbol for selecting right dynamic linker
+
+
+{ $as_echo "$as_me:${as_lineno-$LINENO}: checking for grep that handles long lines and -e" >&5
+$as_echo_n "checking for grep that handles long lines and -e... " >&6; }
+if ${ac_cv_path_GREP+:} false; then :
+  $as_echo_n "(cached) " >&6
+else
+  if test -z "$GREP"; then
+  ac_path_GREP_found=false
+  # Loop through the user's path and test for each of PROGNAME-LIST
+  as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
+for as_dir in $PATH$PATH_SEPARATOR/usr/xpg4/bin
+do
+  IFS=$as_save_IFS
+  test -z "$as_dir" && as_dir=.
+    for ac_prog in grep ggrep; do
+    for ac_exec_ext in '' $ac_executable_extensions; do
+      ac_path_GREP="$as_dir/$ac_prog$ac_exec_ext"
+      as_fn_executable_p "$ac_path_GREP" || continue
+# Check for GNU ac_path_GREP and select it if it is found.
+  # Check for GNU $ac_path_GREP
+case `"$ac_path_GREP" --version 2>&1` in
+*GNU*)
+  ac_cv_path_GREP="$ac_path_GREP" ac_path_GREP_found=:;;
+*)
+  ac_count=0
+  $as_echo_n 0123456789 >"conftest.in"
+  while :
+  do
+    cat "conftest.in" "conftest.in" >"conftest.tmp"
+    mv "conftest.tmp" "conftest.in"
+    cp "conftest.in" "conftest.nl"
+    $as_echo 'GREP' >> "conftest.nl"
+    "$ac_path_GREP" -e 'GREP$' -e '-(cannot match)-' < "conftest.nl" >"conftest.out" 2>/dev/null || break
+    diff "conftest.out" "conftest.nl" >/dev/null 2>&1 || break
+    as_fn_arith $ac_count + 1 && ac_count=$as_val
+    if test $ac_count -gt ${ac_path_GREP_max-0}; then
+      # Best one so far, save it but keep looking for a better one
+      ac_cv_path_GREP="$ac_path_GREP"
+      ac_path_GREP_max=$ac_count
+    fi
+    # 10*(2^10) chars as input seems more than enough
+    test $ac_count -gt 10 && break
+  done
+  rm -f conftest.in conftest.tmp conftest.nl conftest.out;;
+esac
+
+      $ac_path_GREP_found && break 3
+    done
+  done
+  done
+IFS=$as_save_IFS
+  if test -z "$ac_cv_path_GREP"; then
+    as_fn_error $? "no acceptable grep could be found in $PATH$PATH_SEPARATOR/usr/xpg4/bin" "$LINENO" 5
+  fi
+else
+  ac_cv_path_GREP=$GREP
+fi
+
+fi
+{ $as_echo "$as_me:${as_lineno-$LINENO}: result: $ac_cv_path_GREP" >&5
+$as_echo "$ac_cv_path_GREP" >&6; }
+ GREP="$ac_cv_path_GREP"
+
+
+{ $as_echo "$as_me:${as_lineno-$LINENO}: checking for egrep" >&5
+$as_echo_n "checking for egrep... " >&6; }
+if ${ac_cv_path_EGREP+:} false; then :
+  $as_echo_n "(cached) " >&6
+else
+  if echo a | $GREP -E '(a|b)' >/dev/null 2>&1
+   then ac_cv_path_EGREP="$GREP -E"
+   else
+     if test -z "$EGREP"; then
+  ac_path_EGREP_found=false
+  # Loop through the user's path and test for each of PROGNAME-LIST
+  as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
+for as_dir in $PATH$PATH_SEPARATOR/usr/xpg4/bin
+do
+  IFS=$as_save_IFS
+  test -z "$as_dir" && as_dir=.
+    for ac_prog in egrep; do
+    for ac_exec_ext in '' $ac_executable_extensions; do
+      ac_path_EGREP="$as_dir/$ac_prog$ac_exec_ext"
+      as_fn_executable_p "$ac_path_EGREP" || continue
+# Check for GNU ac_path_EGREP and select it if it is found.
+  # Check for GNU $ac_path_EGREP
+case `"$ac_path_EGREP" --version 2>&1` in
+*GNU*)
+  ac_cv_path_EGREP="$ac_path_EGREP" ac_path_EGREP_found=:;;
+*)
+  ac_count=0
+  $as_echo_n 0123456789 >"conftest.in"
+  while :
+  do
+    cat "conftest.in" "conftest.in" >"conftest.tmp"
+    mv "conftest.tmp" "conftest.in"
+    cp "conftest.in" "conftest.nl"
+    $as_echo 'EGREP' >> "conftest.nl"
+    "$ac_path_EGREP" 'EGREP$' < "conftest.nl" >"conftest.out" 2>/dev/null || break
+    diff "conftest.out" "conftest.nl" >/dev/null 2>&1 || break
+    as_fn_arith $ac_count + 1 && ac_count=$as_val
+    if test $ac_count -gt ${ac_path_EGREP_max-0}; then
+      # Best one so far, save it but keep looking for a better one
+      ac_cv_path_EGREP="$ac_path_EGREP"
+      ac_path_EGREP_max=$ac_count
+    fi
+    # 10*(2^10) chars as input seems more than enough
+    test $ac_count -gt 10 && break
+  done
+  rm -f conftest.in conftest.tmp conftest.nl conftest.out;;
+esac
+
+      $ac_path_EGREP_found && break 3
+    done
+  done
+  done
+IFS=$as_save_IFS
+  if test -z "$ac_cv_path_EGREP"; then
+    as_fn_error $? "no acceptable egrep could be found in $PATH$PATH_SEPARATOR/usr/xpg4/bin" "$LINENO" 5
+  fi
+else
+  ac_cv_path_EGREP=$EGREP
+fi
+
+   fi
+fi
+{ $as_echo "$as_me:${as_lineno-$LINENO}: result: $ac_cv_path_EGREP" >&5
+$as_echo "$ac_cv_path_EGREP" >&6; }
+ EGREP="$ac_cv_path_EGREP"
+
+
+{ $as_echo "$as_me:${as_lineno-$LINENO}: checking for big endian" >&5
+$as_echo_n "checking for big endian... " >&6; }
+if ${libc_cv_arc_be+:} false; then :
+  $as_echo_n "(cached) " >&6
+else
+  cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __BIG_ENDIAN__
+                      yes
+                     #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_be=yes
+else
+  libc_cv_arc_be=no
+fi
+rm -f conftest*
+
+fi
+{ $as_echo "$as_me:${as_lineno-$LINENO}: result: $libc_cv_arc_be" >&5
+$as_echo "$libc_cv_arc_be" >&6; }
+if test $libc_cv_arc_be = yes; then
+  # For shlib-versions.
+  $as_echo "#define HAVE_ARC_BE 1" >>confdefs.h
+
+  config_vars="$config_vars
+default-abi = arcbe"
+else
+  config_vars="$config_vars
+default-abi = arcle"
+fi
diff --git a/sysdeps/arc/configure.ac b/sysdeps/arc/configure.ac
new file mode 100644
index 000000000000..cb490e47b356
--- /dev/null
+++ b/sysdeps/arc/configure.ac
@@ -0,0 +1,26 @@
+GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
+# Local configure fragment for sysdeps/arc.
+
+AC_DEFINE(PI_STATIC_AND_HIDDEN)
+libc_cv_have_sdata_section=no
+
+# For ARC, historically ; was used for comments and not newline
+# Later # also got added to comment list, but ; couldn't be switched to
+# canonical newline as there's lots of code out there which will break
+libc_cv_asm_line_sep='`'
+AC_DEFINE_UNQUOTED(ASM_LINE_SEP, $libc_cv_asm_line_sep)
+
+# For big endian ABI, generate a symbol for selecting right dynamic linker
+AC_CACHE_CHECK([for big endian],
+  [libc_cv_arc_be],
+  [AC_EGREP_CPP(yes,[#ifdef __BIG_ENDIAN__
+                      yes
+                     #endif
+  ], libc_cv_arc_be=yes, libc_cv_arc_be=no)])
+if test $libc_cv_arc_be = yes; then
+  # For shlib-versions.
+  AC_DEFINE(HAVE_ARC_BE)
+  LIBC_CONFIG_VAR([default-abi], [arcbe])
+else
+  LIBC_CONFIG_VAR([default-abi], [arcle])
+fi
diff --git a/sysdeps/arc/nptl/Makefile b/sysdeps/arc/nptl/Makefile
new file mode 100644
index 000000000000..42be62451749
--- /dev/null
+++ b/sysdeps/arc/nptl/Makefile
@@ -0,0 +1,22 @@
+# NPTL makefile fragment for ARC.
+# Copyright (C) 2020 Free Software Foundation, Inc.
+#
+# This file is part of the GNU C Library.
+#
+# The GNU C Library is free software; you can redistribute it and/or
+# modify it under the terms of the GNU Lesser General Public
+# License as published by the Free Software Foundation; either
+# version 2.1 of the License, or (at your option) any later version.
+#
+# The GNU C Library is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+# Lesser General Public License for more details.
+#
+# You should have received a copy of the GNU Lesser General Public
+# License along with the GNU C Library.  If not, see
+# <https://www.gnu.org/licenses/>.
+
+ifeq ($(subdir),csu)
+gen-as-const-headers += tcb-offsets.sym
+endif
diff --git a/sysdeps/arc/preconfigure b/sysdeps/arc/preconfigure
new file mode 100644
index 000000000000..a79db0239ae6
--- /dev/null
+++ b/sysdeps/arc/preconfigure
@@ -0,0 +1,14 @@
+case "$machine" in
+arc*)
+  base_machine=arc
+  machine=arc
+
+  gccfloat=`$CC $CFLAGS $CPPFLAGS -E -dM -xc /dev/null | grep __ARC_FPU_| wc -l`
+  if test "$gccfloat" != "0"; then
+    with_fp_cond=1
+  else
+    with_fp_cond=0
+  fi
+  ;;
+
+esac
diff --git a/sysdeps/unix/sysv/linux/arc/Implies b/sysdeps/unix/sysv/linux/arc/Implies
new file mode 100644
index 000000000000..7f739a0340b6
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/Implies
@@ -0,0 +1,3 @@
+arc/nptl
+unix/sysv/linux/generic/wordsize-32
+unix/sysv/linux/generic
diff --git a/sysdeps/unix/sysv/linux/arc/Makefile b/sysdeps/unix/sysv/linux/arc/Makefile
new file mode 100644
index 000000000000..25d7bbecac07
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/Makefile
@@ -0,0 +1,29 @@
+ifeq ($(subdir),stdlib)
+gen-as-const-headers += ucontext_i.sym
+endif
+
+ifeq ($(subdir),signal)
+sysdep_routines += sigrestorer
+endif
+
+ifeq ($(subdir),misc)
+# MIPS/Tile-style cacheflush routine
+sysdep_headers += sys/cachectl.h
+sysdep_routines += cacheflush
+endif
+
+ifeq ($(subdir),elf)
+ifeq ($(build-shared),yes)
+# This is needed for DSO loading from static binaries.
+sysdep-dl-routines += dl-static
+endif
+endif
+
+abi-variants := arcle arcbe
+
+ifeq (,$(filter $(default-abi),$(abi-variants)))
+$(error Unknown ABI $(default-abi), must be one of $(abi-variants))
+endif
+
+abi-arcle-condition := !defined __BIG_ENDIAN__
+abi-arcbe-condition := defined __BIG_ENDIAN__
diff --git a/sysdeps/unix/sysv/linux/arc/Versions b/sysdeps/unix/sysv/linux/arc/Versions
new file mode 100644
index 000000000000..292f1974b02a
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/Versions
@@ -0,0 +1,16 @@
+ld {
+  GLIBC_PRIVATE {
+    # used for loading by static libraries
+    _dl_var_init;
+  }
+}
+libc {
+  GLIBC_2.32 {
+    _flush_cache;
+    cacheflush;
+  }
+  GLIBC_PRIVATE {
+    # A copy of sigaction lives in libpthread, and needs these.
+    __default_rt_sa_restorer;
+  }
+}
diff --git a/sysdeps/unix/sysv/linux/arc/configure b/sysdeps/unix/sysv/linux/arc/configure
new file mode 100644
index 000000000000..56ec14357507
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/configure
@@ -0,0 +1,4 @@
+# This file is generated from configure.in by Autoconf.  DO NOT EDIT!
+ # Local configure fragment for sysdeps/unix/sysv/linux/arc.
+
+arch_minimum_kernel=5.1.0
diff --git a/sysdeps/unix/sysv/linux/arc/configure.ac b/sysdeps/unix/sysv/linux/arc/configure.ac
new file mode 100644
index 000000000000..8af5a12cc248
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/configure.ac
@@ -0,0 +1,4 @@
+GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
+# Local configure fragment for sysdeps/unix/sysv/linux/arc.
+
+arch_minimum_kernel=5.1.0
diff --git a/sysdeps/unix/sysv/linux/arc/ldconfig.h b/sysdeps/unix/sysv/linux/arc/ldconfig.h
new file mode 100644
index 000000000000..0d6368e4df02
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/ldconfig.h
@@ -0,0 +1,27 @@
+/* ldconfig default paths and libraries.  Linux/RISC-V version.
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
+#include <sysdeps/generic/ldconfig.h>
+
+#define SYSDEP_KNOWN_INTERPRETER_NAMES 		\
+  { "/lib/ld-linux-arc.so.2", FLAG_ELF_LIBC6 },	\
+  { "/lib/ld-linux-arceb.so.2", FLAG_ELF_LIBC6 },
+
+#define SYSDEP_KNOWN_LIBRARY_NAMES 	\
+  { "libc.so.6", FLAG_ELF_LIBC6 },	\
+  { "libm.so.6", FLAG_ELF_LIBC6 },
diff --git a/sysdeps/unix/sysv/linux/arc/shlib-versions b/sysdeps/unix/sysv/linux/arc/shlib-versions
new file mode 100644
index 000000000000..343c0a04500e
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/shlib-versions
@@ -0,0 +1,7 @@
+DEFAULT                 GLIBC_2.32
+
+%ifdef HAVE_ARC_BE
+ld=ld-linux-arceb.so.2
+%else
+ld=ld-linux-arc.so.2
+%endif
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
