Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505216B39E
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Feb 2020 23:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lyt9Xhycu+FB1x9QqjJ4bYLSsIrhLOLGd4Qm4xm+NlM=; b=Z4hUpgwQIQq5r3
	XVwi9r7a9Qb+EnNXqp4wIormDxqkEBW5cNaa43UzA2140gEZ9zugDB5byoNLf8w0vkbOKlSyb2VtD
	eMJ3XFFblWPDwmYZk4YWI6lqOUH2dxFuW01w0l5X45/jaA4PSigt+SzSm4XG3Thvj6XMLkODd9E8t
	s3Es2imMTQHuKgZ+xPbQjMCjNWRrR8E8s4TvOZDrICTleWISPzcM93a9JGzecsKHxMS/XC/Jl1rku
	9EcuA2ciWGP+EOZNRt7w4htds9Ecb3GwcHWkcCH0EpXm+nPTZX/rsakSrv1Q/cZseFH3bfwEnJ27i
	4mdlch7gbjNiwqXq7ryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6M0m-000779-PV; Mon, 24 Feb 2020 22:15:36 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6M0i-000766-NI
 for linux-snps-arc@lists.infradead.org; Mon, 24 Feb 2020 22:15:34 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7D469404FD;
 Mon, 24 Feb 2020 22:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582582531; bh=JK1cZr7ds3PnyNazziWs7i3chvu1HgqOIDoOezBTuP4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Yj0mxw5YT02SbW6l3F/381e4a+EkeFV5GcEkD/usOQnJpzmd4WABOT0L6Qi9GlmBP
 d2rskzq5sMYChYQiaIYiZG5PGZlTtaXh2H6qS8uMTRYdOA39HrTB9qBM0QG0yG/dOP
 wbC6f44nBLYfFCSKM3yReZ6Gff7zlPT5QcWECaba0O0oDjrSbmBvR3Ew+PnsD6bze6
 0OO2rABh3PPmXRMrLqB8WYHcBB7xdAoS9VHOMWGn6opkKe4ybgxOrvrLEPLEJz9KM2
 yA1XviUo72nzdow4slHmBnm5xPJspx69MwGaurYIVqBg8qViZccQEeyPJj98LqZlFr
 usdinVlvmFHcQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.26])
 by mailhost.synopsys.com (Postfix) with ESMTP id 22F67A005E;
 Mon, 24 Feb 2020 22:15:31 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v2] asm-generic ABI: Allow statx syscall despite fstatat64,
 fstat64
Date: Mon, 24 Feb 2020 14:15:30 -0800
Message-Id: <20200224221530.12928-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <87pne3lqrh.fsf@oldenburg2.str.redhat.com>
References: <87pne3lqrh.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_141532_772990_BFB2F06B 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alistair23@gmail.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org, alistair.francis@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

An old version of asm-generic syscall ABI (e.g. ARC 2013) provided
fstat[at]64 syscalls for implementing the stat family.

These sycalls are passthru (no interworking/itemized-copy needed
between kernel and user structs since they are binary comaptible).
However with switch to 64-bit time_t the compatibily goes away so we
need explicit interworking. Luckily such code already exists albeit it
uses the statx syscall.

So this patch reworks the asm-generic based stat functions to use the
statx code-path if the arch so desires. It essentially reworks the commit
6bbfc5c09fc5b5e3 ("Add statx conditionals for wordsize-32 *xstat.c")

This will be used by ARC port for 64-bit time_t. But it has no real
bearing on 64-bit and can just be independently opted-in by an arch port
provided the ABI supports it.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
Changes since v1
  * make the toggle #if style rather than #ifdef style
  * define to 0 in all arches which don't use it
---
 sysdeps/unix/sysv/linux/alpha/kernel_stat.h            |  1 +
 sysdeps/unix/sysv/linux/fxstat64.c                     |  8 ++++----
 sysdeps/unix/sysv/linux/fxstatat64.c                   |  6 +++---
 sysdeps/unix/sysv/linux/generic/kernel_stat.h          |  7 +++++++
 sysdeps/unix/sysv/linux/generic/wordsize-32/fxstat.c   |  6 +++---
 sysdeps/unix/sysv/linux/generic/wordsize-32/fxstatat.c |  6 +++---
 sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat.c   | 10 +++++-----
 sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat64.c |  8 ++++----
 sysdeps/unix/sysv/linux/generic/wordsize-32/xstat.c    |  6 +++---
 sysdeps/unix/sysv/linux/generic/wordsize-32/xstat64.c  |  6 +++---
 sysdeps/unix/sysv/linux/hppa/kernel_stat.h             |  1 +
 sysdeps/unix/sysv/linux/ia64/kernel_stat.h             |  1 +
 sysdeps/unix/sysv/linux/kernel_stat.h                  |  1 +
 sysdeps/unix/sysv/linux/microblaze/kernel_stat.h       |  1 +
 sysdeps/unix/sysv/linux/mips/kernel_stat.h             |  1 +
 .../unix/sysv/linux/powerpc/powerpc32/kernel_stat.h    |  1 +
 .../unix/sysv/linux/powerpc/powerpc64/kernel_stat.h    |  1 +
 sysdeps/unix/sysv/linux/s390/s390-64/kernel_stat.h     |  1 +
 sysdeps/unix/sysv/linux/sparc/sparc32/kernel_stat.h    |  1 +
 sysdeps/unix/sysv/linux/sparc/sparc64/kernel_stat.h    |  1 +
 sysdeps/unix/sysv/linux/statx_cp.c                     |  2 +-
 sysdeps/unix/sysv/linux/x86_64/kernel_stat.h           |  1 +
 22 files changed, 48 insertions(+), 29 deletions(-)

diff --git a/sysdeps/unix/sysv/linux/alpha/kernel_stat.h b/sysdeps/unix/sysv/linux/alpha/kernel_stat.h
index d637e099cfe4..437b56098ecd 100644
--- a/sysdeps/unix/sysv/linux/alpha/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/alpha/kernel_stat.h
@@ -87,3 +87,4 @@ struct glibc21_stat
 
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/fxstat64.c b/sysdeps/unix/sysv/linux/fxstat64.c
index 9133a0a29b8e..93394c450f1c 100644
--- a/sysdeps/unix/sysv/linux/fxstat64.c
+++ b/sysdeps/unix/sysv/linux/fxstat64.c
@@ -33,15 +33,15 @@ int
 ___fxstat64 (int vers, int fd, struct stat64 *buf)
 {
   int result;
-#ifdef __NR_fstat64
-  result = INLINE_SYSCALL (fstat64, 2, fd, buf);
-#else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
   struct statx tmp;
   result = INLINE_SYSCALL (statx, 5, fd, "", AT_EMPTY_PATH, STATX_BASIC_STATS,
                            &tmp);
   if (result == 0)
     __cp_stat64_statx (buf, &tmp);
-#endif
+# else
+  result = INLINE_SYSCALL (fstat64, 2, fd, buf);
+# endif
   return result;
 }
 
diff --git a/sysdeps/unix/sysv/linux/fxstatat64.c b/sysdeps/unix/sysv/linux/fxstatat64.c
index e24b456604ff..090d4af65988 100644
--- a/sysdeps/unix/sysv/linux/fxstatat64.c
+++ b/sysdeps/unix/sysv/linux/fxstatat64.c
@@ -38,15 +38,15 @@ __fxstatat64 (int vers, int fd, const char *file, struct stat64 *st, int flag)
 
   int result;
 
-#ifdef __NR_fstatat64
-  result = INTERNAL_SYSCALL_CALL (fstatat64, fd, file, st, flag);
-#else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstatat64)
   struct statx tmp;
 
   result = INTERNAL_SYSCALL_CALL (statx, fd, file, AT_NO_AUTOMOUNT | flag,
 				  STATX_BASIC_STATS, &tmp);
   if (result == 0)
     __cp_stat64_statx (st, &tmp);
+#else
+  result = INTERNAL_SYSCALL_CALL (fstatat64, fd, file, st, flag);
 #endif
   if (!__glibc_likely (INTERNAL_SYSCALL_ERROR_P (result)))
     return 0;
diff --git a/sysdeps/unix/sysv/linux/generic/kernel_stat.h b/sysdeps/unix/sysv/linux/generic/kernel_stat.h
index 2eed3596c0ed..fb97832f213f 100644
--- a/sysdeps/unix/sysv/linux/generic/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/generic/kernel_stat.h
@@ -28,3 +28,10 @@
 #endif
 
 #define STATFS_IS_STATFS64 0
+
+/* Allows asm-generic ABI ports with fstat64 syscall to use statx syscall for
+   implement stat* wrappers. This is needed when glibc stat64 is not compatible
+   with kernel stat64 (due to 64-bit time_t). By default it is off unless
+   arch opts-in.  */
+
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstat.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstat.c
index 850450e1e8a1..67194194b632 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstat.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstat.c
@@ -36,14 +36,14 @@ __fxstat (int vers, int fd, struct stat *buf)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-# ifdef __NR_fstat64
-      int rc = INLINE_SYSCALL (fstat64, 2, fd, buf);
-# else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, fd, "", AT_EMPTY_PATH,
                                STATX_BASIC_STATS, &tmp);
       if (rc == 0)
         __cp_stat64_statx ((struct stat64 *)buf, &tmp);
+# else
+      int rc = INLINE_SYSCALL (fstat64, 2, fd, buf);
 # endif
       return rc ?: stat_overflow (buf);
     }
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstatat.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstatat.c
index 8df65ebea084..38fd2b7791bc 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstatat.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/fxstatat.c
@@ -36,15 +36,15 @@ __fxstatat (int vers, int fd, const char *file, struct stat *buf, int flag)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-# ifdef __NR_fstatat64
-      int rc = INLINE_SYSCALL (fstatat64, 4, fd, file, buf, flag);
-# else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, fd, file,
                                AT_NO_AUTOMOUNT | flag,
                                STATX_BASIC_STATS, &tmp);
       if (rc == 0)
         __cp_stat64_statx ((struct stat64 *)buf, &tmp);
+# else
+      int rc = INLINE_SYSCALL (fstatat64, 4, fd, file, buf, flag);
 # endif
       return rc ?: stat_overflow (buf);
     }
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat.c
index bd02631d68cd..fc4998e75c36 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat.c
@@ -35,17 +35,17 @@ __lxstat (int vers, const char *name, struct stat *buf)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-#ifdef __NR_fstatat64
-      int rc = INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf,
-                               AT_SYMLINK_NOFOLLOW);
-#else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, AT_FDCWD, name,
                                AT_NO_AUTOMOUNT | AT_SYMLINK_NOFOLLOW,
                                STATX_BASIC_STATS, &tmp);
       if (rc == 0)
         __cp_stat64_statx ((struct stat64 *)buf, &tmp);
-#endif
+# else
+      int rc = INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf,
+                               AT_SYMLINK_NOFOLLOW);
+# endif
       return rc ?: stat_overflow (buf);
     }
   errno = EINVAL;
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat64.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat64.c
index 3eab0a184751..83ea74cd09ed 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat64.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/lxstat64.c
@@ -40,10 +40,7 @@ __lxstat64 (int vers, const char *name, struct stat64 *buf)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-#ifdef __NR_fstatat64
-      return INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf,
-                             AT_SYMLINK_NOFOLLOW);
-#else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, AT_FDCWD, name,
                                AT_NO_AUTOMOUNT | AT_SYMLINK_NOFOLLOW,
@@ -51,6 +48,9 @@ __lxstat64 (int vers, const char *name, struct stat64 *buf)
       if (rc == 0)
         __cp_stat64_statx (buf, &tmp);
       return rc;
+#else
+      return INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf,
+                             AT_SYMLINK_NOFOLLOW);
 #endif
     }
 
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat.c
index a4a921c1ea6c..9a155ee4a757 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat.c
@@ -35,14 +35,14 @@ __xstat (int vers, const char *name, struct stat *buf)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-# ifdef __NR_fstatat64
-      int rc = INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf, 0);
-# else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, AT_FDCWD, name, AT_NO_AUTOMOUNT,
                                STATX_BASIC_STATS, &tmp);
       if (rc == 0)
         __cp_stat64_statx ((struct stat64 *)buf, &tmp);
+# else
+      int rc = INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf, 0);
 # endif
       return rc ?: stat_overflow (buf);
     }
diff --git a/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat64.c b/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat64.c
index 0848b5a4b4b1..1bbcbeefc428 100644
--- a/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat64.c
+++ b/sysdeps/unix/sysv/linux/generic/wordsize-32/xstat64.c
@@ -40,15 +40,15 @@ __xstat64 (int vers, const char *name, struct stat64 *buf)
 {
   if (vers == _STAT_VER_KERNEL)
     {
-#ifdef __NR_fstatat64
-      return INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf, 0);
-#else
+# if STAT64_IS_NOT_KERNEL_STAT64 || !defined(__NR_fstat64)
       struct statx tmp;
       int rc = INLINE_SYSCALL (statx, 5, AT_FDCWD, name, AT_NO_AUTOMOUNT,
                                STATX_BASIC_STATS, &tmp);
       if (rc == 0)
         __cp_stat64_statx (buf, &tmp);
       return rc;
+#else
+      return INLINE_SYSCALL (fstatat64, 4, AT_FDCWD, name, buf, 0);
 #endif
     }
   errno = EINVAL;
diff --git a/sysdeps/unix/sysv/linux/hppa/kernel_stat.h b/sysdeps/unix/sysv/linux/hppa/kernel_stat.h
index a3ac53a1ef2f..93802c4257c0 100644
--- a/sysdeps/unix/sysv/linux/hppa/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/hppa/kernel_stat.h
@@ -32,3 +32,4 @@ struct kernel_stat {
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/ia64/kernel_stat.h b/sysdeps/unix/sysv/linux/ia64/kernel_stat.h
index b38bf741d37b..6965d95e9529 100644
--- a/sysdeps/unix/sysv/linux/ia64/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/ia64/kernel_stat.h
@@ -19,3 +19,4 @@
 #define STAT_IS_KERNEL_STAT 1
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/kernel_stat.h b/sysdeps/unix/sysv/linux/kernel_stat.h
index eecc962de390..3ff0882c51a2 100644
--- a/sysdeps/unix/sysv/linux/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/kernel_stat.h
@@ -36,3 +36,4 @@ struct kernel_stat
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/microblaze/kernel_stat.h b/sysdeps/unix/sysv/linux/microblaze/kernel_stat.h
index 765e0dca6763..64d4b11ee6da 100644
--- a/sysdeps/unix/sysv/linux/microblaze/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/microblaze/kernel_stat.h
@@ -50,3 +50,4 @@ struct kernel_stat
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/mips/kernel_stat.h b/sysdeps/unix/sysv/linux/mips/kernel_stat.h
index 388df1bfffec..fd221c632fac 100644
--- a/sysdeps/unix/sysv/linux/mips/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/mips/kernel_stat.h
@@ -58,3 +58,4 @@ struct kernel_stat
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc32/kernel_stat.h b/sysdeps/unix/sysv/linux/powerpc/powerpc32/kernel_stat.h
index c5948a4d3c1c..4e389cb2ff80 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc32/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc32/kernel_stat.h
@@ -49,3 +49,4 @@ struct kernel_stat
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/powerpc/powerpc64/kernel_stat.h b/sysdeps/unix/sysv/linux/powerpc/powerpc64/kernel_stat.h
index 5c10da3356f2..b48dbc15227d 100644
--- a/sysdeps/unix/sysv/linux/powerpc/powerpc64/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/powerpc/powerpc64/kernel_stat.h
@@ -19,3 +19,4 @@
 #define STAT_IS_KERNEL_STAT 1
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/s390/s390-64/kernel_stat.h b/sysdeps/unix/sysv/linux/s390/s390-64/kernel_stat.h
index b38bf741d37b..6965d95e9529 100644
--- a/sysdeps/unix/sysv/linux/s390/s390-64/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/s390/s390-64/kernel_stat.h
@@ -19,3 +19,4 @@
 #define STAT_IS_KERNEL_STAT 1
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/sparc/sparc32/kernel_stat.h b/sysdeps/unix/sysv/linux/sparc/sparc32/kernel_stat.h
index a4416009f1bc..17ac63b753e5 100644
--- a/sysdeps/unix/sysv/linux/sparc/sparc32/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/sparc/sparc32/kernel_stat.h
@@ -33,3 +33,4 @@ struct kernel_stat
 
 #define XSTAT_IS_XSTAT64 0
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/sparc/sparc64/kernel_stat.h b/sysdeps/unix/sysv/linux/sparc/sparc64/kernel_stat.h
index 30afb553b9b8..4912a98529a4 100644
--- a/sysdeps/unix/sysv/linux/sparc/sparc64/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/sparc/sparc64/kernel_stat.h
@@ -46,3 +46,4 @@ struct kernel_stat64
 
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
diff --git a/sysdeps/unix/sysv/linux/statx_cp.c b/sysdeps/unix/sysv/linux/statx_cp.c
index cc6e17929ea0..b68d233a2963 100644
--- a/sysdeps/unix/sysv/linux/statx_cp.c
+++ b/sysdeps/unix/sysv/linux/statx_cp.c
@@ -22,7 +22,7 @@
 
 #include <statx_cp.h>
 
-#if !defined(__NR_fstat64) || !defined(__NR_fstatat64)
+#if !defined(__NR_fstat64) || !defined(__NR_fstatat64) || STAT64_IS_NOT_KERNEL_STAT64
 void
 __cp_stat64_statx (struct stat64 *to, struct statx *from)
 {
diff --git a/sysdeps/unix/sysv/linux/x86_64/kernel_stat.h b/sysdeps/unix/sysv/linux/x86_64/kernel_stat.h
index b38bf741d37b..6965d95e9529 100644
--- a/sysdeps/unix/sysv/linux/x86_64/kernel_stat.h
+++ b/sysdeps/unix/sysv/linux/x86_64/kernel_stat.h
@@ -19,3 +19,4 @@
 #define STAT_IS_KERNEL_STAT 1
 #define XSTAT_IS_XSTAT64 1
 #define STATFS_IS_STATFS64 0
+#define STAT64_IS_NOT_KERNEL_STAT64 0
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
