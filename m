Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1D17D1E
	for <lists+linux-snps-arc@lfdr.de>; Wed,  8 May 2019 17:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NyFbdKHKK3rKWmgalFomzkpTfyAuOpL+eKT2ef83vKg=; b=lhF
	wLgoi1D66yGYqn3aaWPHGP1L429Z7SuWXMomjTo6pKokXrvZm10L+uRhSRgNxJAp1IG0nQjGdFxHO
	DZmP7UmZ9sCmlKONcGzszMUYuCdB17OnPF6e4Pj6ujgHsNOFkal7v1KN0AVqoecq179Z9doqsAktU
	jTisVSx/P71nmT2aFE5gebH0CSQDl6gJzZb1YlzIjkPPdTf0AzhOOi3sWDCxQdbCc2NOWOdlxI04H
	sbMy05q86gnQ3Sxi56liks4B3xuT3fH8Kx5jmKmWFI/hor7L8W09eaqQCTf8N//6F05Pz5+gP0OZ0
	ClcEX+Bu5rUuZtv8a9YHtGfRDWoReNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOQB-00038C-Vr; Wed, 08 May 2019 15:23:51 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOQ6-00037D-Ez
 for linux-snps-arc@lists.infradead.org; Wed, 08 May 2019 15:23:49 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 14F19C010C
 for <linux-snps-arc@lists.infradead.org>; Wed,  8 May 2019 15:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557329019; bh=bc6O9o97ktKWeoLEt485nhyVdgGFwoTBqFf3qyMaO34=;
 h=From:To:Cc:Subject:Date:From;
 b=HljciRY2Vyal+97zNgepo+P4LPcbX/FfC3ZrHZkPazLD9sCU1KFMATWOWi9L8nan1
 zo2SlsTE3W6CKzAbs6o4cPPctrAQPDUW/uMBLQcWYfI4WJmZwLrpQtq+zDBPP9swKN
 So6Q+bjWblixRbFdejg9lvD5xY44DfSmL+uUL9ZrgeOQDLdw0WZ/KMXneGduNtDXNK
 PLJoSbngpi6is+HBqRbQcerXxGmzrk7Hc313HQEEKsWWSQgmWcvPQezYCbfVvTi1On
 g2qUS4ZfOxYQMoJdPSOrG/QeZbUO3xnglvV38r0EXpJSHJTnOJUipX1KQcRa1tjuHi
 OLQWuHo1vzRxw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7C6B9A008D;
 Wed,  8 May 2019 15:23:38 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [GLIBC] ARC: Add multilib support
Date: Wed,  8 May 2019 18:23:33 +0300
Message-Id: <20190508152333.2949-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_082346_523109_46C0E339 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Based on preprocessor defines we determine which type of ARC core
we're targeting and set slibdir accordingly so that on installation
of libraries to sysroot libs for different ARC cores end up in different
locations which match ARC Linux multilib spec.

Note though it all only happens if 2 conditions happen simultaneously:
 1. Glibc configured with "--prefix=/usr"
 2. "-mcpu=xxx" exists in CC passed to Glibc's configure script

I.e. when we build Glibc for default CPU libs are installed in default
location.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 sysdeps/unix/sysv/linux/arc/configure    | 329 ++++++++++++++++++++++++++++++-
 sysdeps/unix/sysv/linux/arc/configure.ac |  70 +++++++
 2 files changed, 398 insertions(+), 1 deletion(-)
 mode change 100644 => 100755 sysdeps/unix/sysv/linux/arc/configure

diff --git a/sysdeps/unix/sysv/linux/arc/configure b/sysdeps/unix/sysv/linux/arc/configure
old mode 100644
new mode 100755
index f74fa7cb025..2173bd45484
--- a/sysdeps/unix/sysv/linux/arc/configure
+++ b/sysdeps/unix/sysv/linux/arc/configure
@@ -1,4 +1,331 @@
-# This file is generated from configure.in by Autoconf.  DO NOT EDIT!
+# This file is generated from configure.ac by Autoconf.  DO NOT EDIT!
  # Local configure fragment for sysdeps/unix/sysv/linux/arc.
 
 arch_minimum_kernel=3.9.0
+
+# If "-mcpu=xxx" found in passed CC assume we're building for
+# non-default CPU and thus we need to install libs in non-default location.
+if { ac_try='echo $CC | grep -F "mcpu" > /dev/null'
+  { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
+  (eval $ac_try) 2>&5
+  ac_status=$?
+  $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
+  test $ac_status = 0; }; };
+then
+	libc_cv_arc_arch=no
+
+	# If this is ARCompact-based core
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
+cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __ARC700__
+			   yes
+			   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=arc700
+fi
+rm -f conftest*
+
+
+	# If this is ARCv2-based core
+	cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __ARCHS__
+			   yes
+			   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=hs
+fi
+rm -f conftest*
+
+
+	if test $libc_cv_arc_arch = no; then
+	  as_fn_error $? "Unable to determine ARC architecture" "$LINENO" 5
+	fi
+
+	if test $libc_cv_arc_arch = arc700; then
+		# NPS400
+		cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __NPS400__
+				   yes
+				   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=nps400
+fi
+rm -f conftest*
+
+	else
+		# Base-line HS38 + HW multiplier
+		cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __ARC_MPY__
+				   yes
+				   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=archs
+fi
+rm -f conftest*
+
+
+		# Base-line HS38 + HW quad-multiplier
+		cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __ARC_MPY_QMACW__
+				   yes
+				   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=hs38
+fi
+rm -f conftest*
+
+
+		# Base-line HS38 + HW quad-multiplier + FPU
+		cat confdefs.h - <<_ACEOF >conftest.$ac_ext
+/* end confdefs.h.  */
+#ifdef __ARC_FPU_DP__
+				   yes
+				   #endif
+
+_ACEOF
+if (eval "$ac_cpp conftest.$ac_ext") 2>&5 |
+  $EGREP "yes" >/dev/null 2>&1; then :
+  libc_cv_arc_arch=hs38_linux
+fi
+rm -f conftest*
+
+	fi
+
+	case $libc_cv_arc_arch in
+	arc700)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/arc700'
+  libc_cv_rtlddir='/lib/arc700'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/arc700';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	nps400)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/nps400'
+  libc_cv_rtlddir='/lib/nps400'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/nps400';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	hs)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/hs'
+  libc_cv_rtlddir='/lib/hs'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/hs';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	archs)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/archs'
+  libc_cv_rtlddir='/lib/archs'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/archs';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	hs38)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/hs38'
+  libc_cv_rtlddir='/lib/hs38'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/hs38';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	hs38_linux)
+	  test -n "$libc_cv_slibdir" ||
+case "$prefix" in
+/usr | /usr/)
+  libc_cv_slibdir='/lib/hs38_linux'
+  libc_cv_rtlddir='/lib/hs38_linux'
+  if test "$libdir" = '${exec_prefix}/lib'; then
+    libdir='${exec_prefix}/lib/hs38_linux';
+    # Locale data can be shared between 32-bit and 64-bit libraries.
+    libc_cv_complocaledir='${exec_prefix}/lib/locale'
+  fi
+  ;;
+esac
+	  ;;
+	esac
+fi
diff --git a/sysdeps/unix/sysv/linux/arc/configure.ac b/sysdeps/unix/sysv/linux/arc/configure.ac
index a9528032d32..3615db8eabc 100644
--- a/sysdeps/unix/sysv/linux/arc/configure.ac
+++ b/sysdeps/unix/sysv/linux/arc/configure.ac
@@ -2,3 +2,73 @@ GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
 # Local configure fragment for sysdeps/unix/sysv/linux/arc.
 
 arch_minimum_kernel=3.9.0
+
+# If "-mcpu=xxx" found in passed CC assume we're building for
+# non-default CPU and thus we need to install libs in non-default location.
+if AC_TRY_COMMAND([echo $CC | grep -F "mcpu" > /dev/null]);
+then
+	libc_cv_arc_arch=no
+
+	# If this is ARCompact-based core
+	AC_EGREP_CPP(yes, [#ifdef __ARC700__
+			   yes
+			   #endif
+	],libc_cv_arc_arch=arc700)
+
+	# If this is ARCv2-based core
+	AC_EGREP_CPP(yes, [#ifdef __ARCHS__
+			   yes
+			   #endif
+	],libc_cv_arc_arch=hs)
+
+	if test $libc_cv_arc_arch = no; then
+	  AC_MSG_ERROR([Unable to determine ARC architecture])
+	fi
+
+	if test $libc_cv_arc_arch = arc700; then
+		# NPS400
+		AC_EGREP_CPP(yes, [#ifdef __NPS400__
+				   yes
+				   #endif
+		],libc_cv_arc_arch=nps400)
+	else
+		# Base-line HS38 + HW multiplier
+		AC_EGREP_CPP(yes, [#ifdef __ARC_MPY__
+				   yes
+				   #endif
+		],libc_cv_arc_arch=archs)
+
+		# Base-line HS38 + HW quad-multiplier
+		AC_EGREP_CPP(yes, [#ifdef __ARC_MPY_QMACW__
+				   yes
+				   #endif
+		],libc_cv_arc_arch=hs38)
+
+		# Base-line HS38 + HW quad-multiplier + FPU
+		AC_EGREP_CPP(yes, [#ifdef __ARC_FPU_DP__
+				   yes
+				   #endif
+		],libc_cv_arc_arch=hs38_linux)
+	fi
+
+	case $libc_cv_arc_arch in
+	arc700)
+	  LIBC_SLIBDIR_RTLDDIR([lib/arc700], [lib/arc700])
+	  ;;
+	nps400)
+	  LIBC_SLIBDIR_RTLDDIR([lib/nps400], [lib/nps400])
+	  ;;
+	hs)
+	  LIBC_SLIBDIR_RTLDDIR([lib/hs], [lib/hs])
+	  ;;
+	archs)
+	  LIBC_SLIBDIR_RTLDDIR([lib/archs], [lib/archs])
+	  ;;
+	hs38)
+	  LIBC_SLIBDIR_RTLDDIR([lib/hs38], [lib/hs38])
+	  ;;
+	hs38_linux)
+	  LIBC_SLIBDIR_RTLDDIR([lib/hs38_linux], [lib/hs38_linux])
+	  ;;
+	esac
+fi
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
