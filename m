Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19871EC45B
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 23:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x18xf8utHdbBeNShLIZX9yCdVcZzvtfvMeRcklcIJYQ=; b=iPVWXaJMwrAUMa
	QZsBF61yLsuCUaCptUFyR+eLBmSKSwjDTOtbHz/I2Ayu8/V8Nkd2ZnPCGmrQVQhWd1mrs4aWWxInm
	FCG7ZlW4vQtTAS+ob7rJDM4GDTrcdZs5Z9ru4SxTItR93BAKAUNw/TlpfjLnqi+RO9yPi5LFh+slS
	rtwhMHlNFkrCUoY0vUdCZ1T8utAeUtJSXXuVILQR2iS+nWgDkE/wmyvrPSCAUMPBYmAQ/sBA4lIV1
	JLxIYxwlfdGek0HgXX+apDAz4F6sV6DPXKctE7t9lpp3rQNpOWd/XnKWYoZmsZU0Ec7UmR4En5gF6
	VnaAj1wmM6hbW74aK3sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEWS-0005sF-MI; Tue, 02 Jun 2020 21:32:36 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEWK-0005o0-ER
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jun 2020 21:32:35 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3EF73C0424;
 Tue,  2 Jun 2020 21:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591133544; bh=VYj6JM/+a5KqxRGF7UrWJEtkF5aex3DuldPkQAFUcKE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GcCdsqh8ELz+5Kez7mkzJwIhoraypnoPL886kTNH+fHR6/UGnQrNRDO8N9dHO337R
 DH3g0nzF8dzo3GHvLp2ueTf1j6WHiILLqM782H7DHD/NgbFe+gFyXWUTj3kiXzv5Xm
 qt8M3XcT8UEfN82Jhdg1wj3al/A9EmgEuqcZaxxYgseS4YFD2avhMeS2PrGWtlElx4
 uEdD766X28g3Z3ePP8zjvdk0H1/viURZqhg2KfCvn5xCgPWfu9N3RWv8O3ECXxN2X+
 x0d5YPiwpywQB1cUgXavPLtd3YeeRUffZSprJiSC8TvJpEMwdz+nB3KB82+IYayHzg
 i4MoCUypLLUAQ==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 87F9BA00A3;
 Tue,  2 Jun 2020 21:32:23 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v3 3/4] aarch/fpu: use generic builtins based math functions
Date: Tue,  2 Jun 2020 14:32:19 -0700
Message-Id: <20200602213220.6201-4-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200602213220.6201-1-vgupta@synopsys.com>
References: <20200602213220.6201-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_143228_570615_BC19C3E4 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-snps-arc@lists.infradead.org,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

introduce sysdep header math-use-builtins.h to replace aarch64
implementations with corresponding generic ones.

 - newly inroduced generic sqrt{,f}, fma{,f}
 - existing floor{,f}, nearbyint{,f}, rint{,f}, round{,f}, trunc{,f}
 - Note that generic copysign was already enabled (via generic
   math-use-builtins.h) now thru sysdep header

Tested with build-many-glibcs for aarch64-linux-gnu

This is a non functional change and aarch64 libm before/after was
byte invariant as compared below:

| cd /SCRATCH/vgupta/gnu/install-glibc-A-baseline
| for i in `find . -name libm-2.31.9000.so`; do
|   echo $i; diff $i /SCRATCH/vgupta/gnu/install-glibc-C-reduce-scope/$i ;
|   echo $?;
| done

| ./aarch64-linux-gnu/lib64/libm-2.31.9000.so
| 0
| ./arm-linux-gnueabi/lib/libm-2.31.9000.so
| 0
| ./x86_64-linux-gnu/lib64/libm-2.31.9000.so
| 0
| ./arm-linux-gnueabihf/lib/libm-2.31.9000.so
| 0
| ./riscv64-linux-gnu-rv64imac-lp64/lib64/lp64/libm-2.31.9000.so
| 0
| ./riscv64-linux-gnu-rv64imafdc-lp64/lib64/lp64/libm-2.31.9000.so
| 0
| ./powerpc-linux-gnu/lib/libm-2.31.9000.so
| 0
| ./microblaze-linux-gnu/lib/libm-2.31.9000.so
| 0
| ./nios2-linux-gnu/lib/libm-2.31.9000.so
| 0
| ./hppa-linux-gnu/lib/libm-2.31.9000.so
| 0
| ./s390x-linux-gnu/lib64/libm-2.31.9000.so
| 0

Reviewed-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 sysdeps/aarch64/fpu/e_sqrt.c            | 27 ----------
 sysdeps/aarch64/fpu/e_sqrtf.c           | 27 ----------
 sysdeps/aarch64/fpu/math-use-builtins.h | 71 +++++++++++++++++++++++++
 sysdeps/aarch64/fpu/s_floor.c           | 29 ----------
 sysdeps/aarch64/fpu/s_floorf.c          | 29 ----------
 sysdeps/aarch64/fpu/s_fma.c             | 28 ----------
 sysdeps/aarch64/fpu/s_fmaf.c            | 28 ----------
 sysdeps/aarch64/fpu/s_nearbyint.c       | 28 ----------
 sysdeps/aarch64/fpu/s_nearbyintf.c      | 28 ----------
 sysdeps/aarch64/fpu/s_rint.c            | 29 ----------
 sysdeps/aarch64/fpu/s_rintf.c           | 29 ----------
 sysdeps/aarch64/fpu/s_round.c           | 29 ----------
 sysdeps/aarch64/fpu/s_roundf.c          | 29 ----------
 sysdeps/aarch64/fpu/s_trunc.c           | 29 ----------
 sysdeps/aarch64/fpu/s_truncf.c          | 29 ----------
 15 files changed, 71 insertions(+), 398 deletions(-)
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrt.c
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrtf.c
 create mode 100644 sysdeps/aarch64/fpu/math-use-builtins.h
 delete mode 100644 sysdeps/aarch64/fpu/s_floor.c
 delete mode 100644 sysdeps/aarch64/fpu/s_floorf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_fma.c
 delete mode 100644 sysdeps/aarch64/fpu/s_fmaf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_nearbyint.c
 delete mode 100644 sysdeps/aarch64/fpu/s_nearbyintf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_rint.c
 delete mode 100644 sysdeps/aarch64/fpu/s_rintf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_round.c
 delete mode 100644 sysdeps/aarch64/fpu/s_roundf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_trunc.c
 delete mode 100644 sysdeps/aarch64/fpu/s_truncf.c

diff --git a/sysdeps/aarch64/fpu/e_sqrt.c b/sysdeps/aarch64/fpu/e_sqrt.c
deleted file mode 100644
index abb67ef7b061..000000000000
--- a/sysdeps/aarch64/fpu/e_sqrt.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/* Square root of floating point number.
-   Copyright (C) 2015-2020 Free Software Foundation, Inc.
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math_private.h>
-#include <libm-alias-finite.h>
-
-double
-__ieee754_sqrt (double d)
-{
-  return __builtin_sqrt (d);
-}
-libm_alias_finite (__ieee754_sqrt, __sqrt)
diff --git a/sysdeps/aarch64/fpu/e_sqrtf.c b/sysdeps/aarch64/fpu/e_sqrtf.c
deleted file mode 100644
index 13008a4f45d6..000000000000
--- a/sysdeps/aarch64/fpu/e_sqrtf.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/* Single-precision floating point square root.
-   Copyright (C) 2015-2020 Free Software Foundation, Inc.
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math_private.h>
-#include <libm-alias-finite.h>
-
-float
-__ieee754_sqrtf (float s)
-{
-  return __builtin_sqrtf (s);
-}
-libm_alias_finite (__ieee754_sqrtf, __sqrtf)
diff --git a/sysdeps/aarch64/fpu/math-use-builtins.h b/sysdeps/aarch64/fpu/math-use-builtins.h
new file mode 100644
index 000000000000..50a1ba0db5ea
--- /dev/null
+++ b/sysdeps/aarch64/fpu/math-use-builtins.h
@@ -0,0 +1,71 @@
+/* Using math gcc builtins instead of generic implementation.  aarch64 version.
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
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef MATH_USE_BUILTINS_H
+#define MATH_USE_BUILTINS_H	1
+
+#include <features.h> /* For __GNUC_PREREQ.  */
+
+/* Define these macros to 1 to use __builtin_xyz instead of the
+   generic implementation.  */
+#define USE_NEARBYINT_BUILTIN 1
+#define USE_NEARBYINTF_BUILTIN 1
+#define USE_NEARBYINTL_BUILTIN 0
+#define USE_NEARBYINTF128_BUILTIN 0
+
+#define USE_RINT_BUILTIN 1
+#define USE_RINTF_BUILTIN 1
+#define USE_RINTL_BUILTIN 0
+#define USE_RINTF128_BUILTIN 0
+
+#define USE_FLOOR_BUILTIN 1
+#define USE_FLOORF_BUILTIN 1
+#define USE_FLOORL_BUILTIN 0
+#define USE_FLOORF128_BUILTIN 0
+
+#define USE_CEIL_BUILTIN 1
+#define USE_CEILF_BUILTIN 1
+#define USE_CEILL_BUILTIN 0
+#define USE_CEILF128_BUILTIN 0
+
+#define USE_TRUNC_BUILTIN 1
+#define USE_TRUNCF_BUILTIN 1
+#define USE_TRUNCL_BUILTIN 0
+#define USE_TRUNCF128_BUILTIN 0
+
+#define USE_ROUND_BUILTIN 1
+#define USE_ROUNDF_BUILTIN 1
+#define USE_ROUNDL_BUILTIN 0
+#define USE_ROUNDF128_BUILTIN 0
+
+#define USE_COPYSIGNL_BUILTIN 1
+#if __GNUC_PREREQ (7, 0)
+# define USE_COPYSIGNF128_BUILTIN 1
+#else
+# define USE_COPYSIGNF128_BUILTIN 0
+#endif
+
+#define USE_SQRT_BUILTIN 1
+#define USE_SQRTF_BUILTIN 1
+
+#define USE_FMA_BUILTIN 1
+#define USE_FMAF_BUILTIN 1
+#define USE_FMAL_BUILTIN 0
+#define USE_FMAF128_BUILTIN 0
+
+#endif
diff --git a/sysdeps/aarch64/fpu/s_floor.c b/sysdeps/aarch64/fpu/s_floor.c
deleted file mode 100644
index d7d3e9336a6e..000000000000
--- a/sysdeps/aarch64/fpu/s_floor.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__floor (double x)
-{
-  return __builtin_floor (x);
-}
-
-libm_alias_double (__floor, floor)
diff --git a/sysdeps/aarch64/fpu/s_floorf.c b/sysdeps/aarch64/fpu/s_floorf.c
deleted file mode 100644
index 625ff4375702..000000000000
--- a/sysdeps/aarch64/fpu/s_floorf.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__floorf (float x)
-{
-  return __builtin_floorf (x);
-}
-
-libm_alias_float (__floor, floor)
diff --git a/sysdeps/aarch64/fpu/s_fma.c b/sysdeps/aarch64/fpu/s_fma.c
deleted file mode 100644
index 48bb40482dc9..000000000000
--- a/sysdeps/aarch64/fpu/s_fma.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/* Copyright (C) 1996-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__fma (double x, double y, double z)
-{
-  return __builtin_fma (x, y, z);
-}
-
-libm_alias_double (__fma, fma)
diff --git a/sysdeps/aarch64/fpu/s_fmaf.c b/sysdeps/aarch64/fpu/s_fmaf.c
deleted file mode 100644
index 544f32e27aec..000000000000
--- a/sysdeps/aarch64/fpu/s_fmaf.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__fmaf (float x, float y, float z)
-{
-  return __builtin_fmaf (x, y, z);
-}
-
-libm_alias_float (__fma, fma)
diff --git a/sysdeps/aarch64/fpu/s_nearbyint.c b/sysdeps/aarch64/fpu/s_nearbyint.c
deleted file mode 100644
index 59a57dd39ba1..000000000000
--- a/sysdeps/aarch64/fpu/s_nearbyint.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__nearbyint (double x)
-{
-  return __builtin_nearbyint (x);
-}
-
-libm_alias_double (__nearbyint, nearbyint)
diff --git a/sysdeps/aarch64/fpu/s_nearbyintf.c b/sysdeps/aarch64/fpu/s_nearbyintf.c
deleted file mode 100644
index f52968ae2bbd..000000000000
--- a/sysdeps/aarch64/fpu/s_nearbyintf.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__nearbyintf (float x)
-{
-  return __builtin_nearbyintf (x);
-}
-
-libm_alias_float (__nearbyint, nearbyint)
diff --git a/sysdeps/aarch64/fpu/s_rint.c b/sysdeps/aarch64/fpu/s_rint.c
deleted file mode 100644
index bdd757167e0c..000000000000
--- a/sysdeps/aarch64/fpu/s_rint.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__rint (double x)
-{
-  return __builtin_rint (x);
-}
-
-libm_alias_double (__rint, rint)
diff --git a/sysdeps/aarch64/fpu/s_rintf.c b/sysdeps/aarch64/fpu/s_rintf.c
deleted file mode 100644
index 8cf7c63d6dda..000000000000
--- a/sysdeps/aarch64/fpu/s_rintf.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__rintf (float x)
-{
-  return __builtin_rintf (x);
-}
-
-libm_alias_float (__rint, rint)
diff --git a/sysdeps/aarch64/fpu/s_round.c b/sysdeps/aarch64/fpu/s_round.c
deleted file mode 100644
index d2fd5f34117a..000000000000
--- a/sysdeps/aarch64/fpu/s_round.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__round (double x)
-{
-  return __builtin_round (x);
-}
-
-libm_alias_double (__round, round)
diff --git a/sysdeps/aarch64/fpu/s_roundf.c b/sysdeps/aarch64/fpu/s_roundf.c
deleted file mode 100644
index e51214e86cd2..000000000000
--- a/sysdeps/aarch64/fpu/s_roundf.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__roundf (float x)
-{
-  return __builtin_roundf (x);
-}
-
-libm_alias_float (__round, round)
diff --git a/sysdeps/aarch64/fpu/s_trunc.c b/sysdeps/aarch64/fpu/s_trunc.c
deleted file mode 100644
index bac23a5e269d..000000000000
--- a/sysdeps/aarch64/fpu/s_trunc.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-double.h>
-
-double
-__trunc (double x)
-{
-  return __builtin_trunc (x);
-}
-
-libm_alias_double (__trunc, trunc)
diff --git a/sysdeps/aarch64/fpu/s_truncf.c b/sysdeps/aarch64/fpu/s_truncf.c
deleted file mode 100644
index 6a025c084a5a..000000000000
--- a/sysdeps/aarch64/fpu/s_truncf.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/* Copyright (C) 2011-2020 Free Software Foundation, Inc.
-
-   This file is part of the GNU C Library.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public License as
-   published by the Free Software Foundation; either version 2.1 of the
-   License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <https://www.gnu.org/licenses/>.  */
-
-#define NO_MATH_REDIRECT
-#include <math.h>
-#include <libm-alias-float.h>
-
-float
-__truncf (float x)
-{
-  return __builtin_truncf (x);
-}
-
-libm_alias_float (__trunc, trunc)
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
