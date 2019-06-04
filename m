Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBA3445E
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 12:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f0IgMIrm9imdFHg2TDNLr+1OLYKQN6m2GKLXnWlGvHg=; b=rkDxOYbjCg5PvReFmyCaQy45Lm
	T5yJVK17x7X8f9/9RRZYgRc/X79i+6l6zAmriBmZh4KMJcY3N7x5yGNw4UPrDOll8iiIPntswK5NA
	NPzIEKhbu+pfWV86XtIHC/MetC9jivPL7s/t2lrmpo3Ku8KsyEIkAjbRRKCXWUQvuc0QJovWK6iuB
	Jbwu5B70eBhXETgl7wP7zP0zJyRvGsY+Jd8+zc85PRKfwVk6XFv7m2ST17vW1hajJPOG/9CvcwUiH
	H0Hc1PgR1LjVvTu9vRz/hUS7j1z1L53IjNVSy7iy/Czn6LHtjHziCdBg4uV5Y/XRXiVuq73sSCNAV
	F7Yw2ZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6h1-0001oi-1Z; Tue, 04 Jun 2019 10:29:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6gy-0001RB-Sn
 for linux-snps-arc@bombadil.infradead.org; Tue, 04 Jun 2019 10:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oka5YpAg+k5l88SL/bB7/ELT3B4mHTq93jBuR0XeVDU=; b=foQHf7x0cTNogtQIVMFZgsDUV
 pzZq1OPNIHMwjDsGH4cLhKfLW0Y0ZMSWenLAfIJvOEFUnalaWRTAlf3M1y9MS030ANgN+O8WIXUKY
 FQz1b8wIsrExuX0dgSxKDYJZvgT6xmki+US0d2rpUqJK8C4VghHGX5vIwY+do39ENUizbBCjmaC7h
 /3vpqAHEw2fhszGY/gQnxLOnE19Ira7JlkTBeuKC1jdiG2E1FDiK2wAy9a3E+tei+QGkzlvLMfbD8
 gxJni9Bn4gmV50Z+W5MrUB4dsmmHx50NGu/Bt+YO3eWKs+zPk5Ms3yPLFZ0bZIHQ2faAuPgWnV0uz
 BrhEvbVSA==;
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Sz-0005m5-UP
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 10:14:56 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x54AEC7B032511;
 Tue, 4 Jun 2019 19:14:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x54AEC7B032511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559643259;
 bh=Oka5YpAg+k5l88SL/bB7/ELT3B4mHTq93jBuR0XeVDU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J+lYbqkDyx5TCbBD+Dn9u83I3HtBZWpgzIStSV9W5m8Vm7NsIAtCgZTTnviNOz2/k
 OIa3qQLjn3LJ7SFdO7cx4WcnlaqSOAOAOumyzJ/LJRtUiJsfCSRsZYwrzkeOJHFloh
 5StGJrqnxtUoL1ZJgKMKnW+FVSO1PQZGYbOztFRAmSmiiFVQv6vKdRLA4xCR4r48yn
 wXht5Fpzui7RHx47kKqdrv4g+1N3wRkcfOsMq3aPvHHshb53vEmzlWyFS9ffiyfLYg
 ENAWvph9pzP8vXv0G83Xee/xAieRnQjeb2MJfRFGjniA0vGhfY5j4gVUCvNpi8ZGY8
 i977mhymYRHng==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 05/15] kbuild: add CONFIG_HEADERS_INSTALL and loosen the
 dependency of samples
Date: Tue,  4 Jun 2019 19:13:59 +0900
Message-Id: <20190604101409.2078-6-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604101409.2078-1-yamada.masahiro@socionext.com>
References: <20190604101409.2078-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_111454_481478_F50854F1 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, Vincent Chen <deanbo422@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-s390@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Jani Nikula <jani.nikula@intel.com>, Greentime Hu <green.hu@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Commit 5318321d367c ("samples: disable CONFIG_SAMPLES for UML") used
a big hammer to fix the build errors under the samples/ directory,
while only some samples actually include uapi headers from usr/include.

Introduce CONFIG_HEADERS_INSTALL since 'depends on HEADERS_INSTALL' is
clearer than 'depends on !UML'. If this option is enabled, uapi headers
are installed before starting directory descending.

I added 'depends on HEADERS_INSTALL' to per-sample CONFIG options.
This allows UML to compile some samples.

$ make ARCH=um allmodconfig samples/
  [ snip ]
  CC [M]  samples/configfs/configfs_sample.o
  CC [M]  samples/kfifo/bytestream-example.o
  CC [M]  samples/kfifo/dma-example.o
  CC [M]  samples/kfifo/inttype-example.o
  CC [M]  samples/kfifo/record-example.o
  CC [M]  samples/kobject/kobject-example.o
  CC [M]  samples/kobject/kset-example.o
  CC [M]  samples/trace_events/trace-events-sample.o
  CC [M]  samples/trace_printk/trace-printk.o
  AR      samples/vfio-mdev/built-in.a
  AR      samples/built-in.a

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile                              |  8 ++++----
 arch/arc/configs/tb10x_defconfig      |  1 +
 arch/nds32/configs/defconfig          |  1 +
 arch/parisc/configs/a500_defconfig    |  1 +
 arch/parisc/configs/b180_defconfig    |  1 +
 arch/parisc/configs/c3000_defconfig   |  1 +
 arch/parisc/configs/default_defconfig |  1 +
 arch/powerpc/configs/ppc6xx_defconfig |  1 +
 arch/s390/configs/debug_defconfig     |  1 +
 lib/Kconfig.debug                     | 19 ++++++++++++++-----
 samples/Kconfig                       | 14 +++++++++++---
 samples/Makefile                      |  4 ++--
 12 files changed, 39 insertions(+), 14 deletions(-)

diff --git a/Makefile b/Makefile
index 8348939765d3..ce5a9551860d 100644
--- a/Makefile
+++ b/Makefile
@@ -1053,9 +1053,6 @@ vmlinux: scripts/link-vmlinux.sh autoksyms_recursive $(vmlinux-deps) FORCE
 
 targets := vmlinux
 
-# Some samples need headers_install.
-samples: headers_install
-
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
 $(sort $(vmlinux-deps)): $(vmlinux-dirs) ;
@@ -1199,6 +1196,10 @@ headers_check: headers_install
 	$(Q)$(MAKE) $(hdr-inst)=include/uapi dst=include HDRCHECK=1
 	$(Q)$(MAKE) $(hdr-inst)=arch/$(SRCARCH)/include/uapi dst=include HDRCHECK=1
 
+ifdef CONFIG_HEADERS_INSTALL
+prepare: headers_install
+endif
+
 ifdef CONFIG_HEADERS_CHECK
 all: headers_check
 endif
@@ -1745,7 +1746,6 @@ build-dir = $(patsubst %/,%,$(dir $(build-target)))
 PHONY += /
 /: ./
 
-samples/: headers_install
 %/: prepare FORCE
 	$(Q)$(MAKE) KBUILD_MODULES=1 $(build)=$(build-dir)
 
diff --git a/arch/arc/configs/tb10x_defconfig b/arch/arc/configs/tb10x_defconfig
index 5b5119d2b5d5..dc739bd093e3 100644
--- a/arch/arc/configs/tb10x_defconfig
+++ b/arch/arc/configs/tb10x_defconfig
@@ -94,6 +94,7 @@ CONFIG_CONFIGFS_FS=y
 CONFIG_DEBUG_INFO=y
 CONFIG_STRIP_ASM_SYMS=y
 CONFIG_DEBUG_FS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_DEBUG_SECTION_MISMATCH=y
 CONFIG_MAGIC_SYSRQ=y
diff --git a/arch/nds32/configs/defconfig b/arch/nds32/configs/defconfig
index 65ce9259081b..40313a635075 100644
--- a/arch/nds32/configs/defconfig
+++ b/arch/nds32/configs/defconfig
@@ -92,6 +92,7 @@ CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_INFO_DWARF4=y
 CONFIG_GDB_SCRIPTS=y
 CONFIG_READABLE_ASM=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_DEBUG_SECTION_MISMATCH=y
 CONFIG_MAGIC_SYSRQ=y
diff --git a/arch/parisc/configs/a500_defconfig b/arch/parisc/configs/a500_defconfig
index 5acb93dcaabf..390c0bc09179 100644
--- a/arch/parisc/configs/a500_defconfig
+++ b/arch/parisc/configs/a500_defconfig
@@ -167,6 +167,7 @@ CONFIG_NLS_ISO8859_1=m
 CONFIG_NLS_ISO8859_15=m
 CONFIG_NLS_UTF8=m
 CONFIG_DEBUG_FS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_MAGIC_SYSRQ=y
 # CONFIG_DEBUG_BUGVERBOSE is not set
diff --git a/arch/parisc/configs/b180_defconfig b/arch/parisc/configs/b180_defconfig
index 83ffd161aec5..bdf1fe2b217f 100644
--- a/arch/parisc/configs/b180_defconfig
+++ b/arch/parisc/configs/b180_defconfig
@@ -91,6 +91,7 @@ CONFIG_NLS_ASCII=m
 CONFIG_NLS_ISO8859_1=m
 CONFIG_NLS_ISO8859_15=m
 CONFIG_NLS_UTF8=m
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
diff --git a/arch/parisc/configs/c3000_defconfig b/arch/parisc/configs/c3000_defconfig
index 8d41a73bd71b..ed4d49575b38 100644
--- a/arch/parisc/configs/c3000_defconfig
+++ b/arch/parisc/configs/c3000_defconfig
@@ -140,6 +140,7 @@ CONFIG_NLS_ISO8859_1=m
 CONFIG_NLS_ISO8859_15=m
 CONFIG_NLS_UTF8=m
 CONFIG_DEBUG_FS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_MUTEXES=y
diff --git a/arch/parisc/configs/default_defconfig b/arch/parisc/configs/default_defconfig
index 52c9050a7c5c..fcfd9eaadf9b 100644
--- a/arch/parisc/configs/default_defconfig
+++ b/arch/parisc/configs/default_defconfig
@@ -184,6 +184,7 @@ CONFIG_NLS_KOI8_R=m
 CONFIG_NLS_KOI8_U=m
 CONFIG_NLS_UTF8=y
 CONFIG_DEBUG_FS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
diff --git a/arch/powerpc/configs/ppc6xx_defconfig b/arch/powerpc/configs/ppc6xx_defconfig
index 7c6baf6df139..463aa3e53084 100644
--- a/arch/powerpc/configs/ppc6xx_defconfig
+++ b/arch/powerpc/configs/ppc6xx_defconfig
@@ -1124,6 +1124,7 @@ CONFIG_NLS_KOI8_R=m
 CONFIG_NLS_KOI8_U=m
 CONFIG_DEBUG_INFO=y
 CONFIG_UNUSED_SYMBOLS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
diff --git a/arch/s390/configs/debug_defconfig b/arch/s390/configs/debug_defconfig
index b0920b35f87b..994e03fad424 100644
--- a/arch/s390/configs/debug_defconfig
+++ b/arch/s390/configs/debug_defconfig
@@ -586,6 +586,7 @@ CONFIG_GDB_SCRIPTS=y
 CONFIG_FRAME_WARN=1024
 CONFIG_READABLE_ASM=y
 CONFIG_UNUSED_SYMBOLS=y
+CONFIG_HEADERS_INSTALL=y
 CONFIG_HEADERS_CHECK=y
 CONFIG_DEBUG_SECTION_MISMATCH=y
 CONFIG_MAGIC_SYSRQ=y
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 7cdcb962358c..6a6ea4219d1e 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -305,14 +305,23 @@ config DEBUG_FS
 
 	  If unsure, say N.
 
+config HEADERS_INSTALL
+	bool "Install uapi headers to usr/include"
+	depends on !UML
+	help
+	  This option will install uapi headers (headers exported to user-space)
+	  into the usr/include directory for use during the kernel build.
+	  This is unneeded for building the kernel itself, but needed for some
+	  user-space program samples. It is also needed by some features such
+	  as uapi header sanity checks.
+
 config HEADERS_CHECK
 	bool "Run sanity checks on uapi headers when building 'all'"
-	depends on !UML
+	depends on HEADERS_INSTALL
 	help
-	  This option will extract the user-visible kernel headers when
-	  building the 'all' target, and will run basic sanity checks on them to
-	  ensure that exported files do not attempt to include files which
-	  were not exported, etc.
+	  This option will run basic sanity checks on uapi headers when
+	  building the 'all' target, for example, ensure that they do not
+	  attempt to include files which were not exported, etc.
 
 	  If you're making modifications to header files which are
 	  relevant for userspace, say 'Y', and check the headers
diff --git a/samples/Kconfig b/samples/Kconfig
index d63cc8a3e0df..71b5e833dd9e 100644
--- a/samples/Kconfig
+++ b/samples/Kconfig
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig SAMPLES
 	bool "Sample kernel code"
-	depends on !UML
 	help
 	  You can build and test sample kernel code here.
 
@@ -95,16 +94,24 @@ config SAMPLE_CONFIGFS
 
 config SAMPLE_CONNECTOR
 	tristate "Build connector sample -- loadable modules only"
-	depends on CONNECTOR && m
+	depends on CONNECTOR && HEADERS_INSTALL && m
 	help
 	  When enabled, this builds both a sample kernel module for
 	  the connector interface and a user space tool to communicate
 	  with it.
 	  See also Documentation/connector/connector.txt
 
+config SAMPLE_HIDRAW
+	bool "hidraw sample"
+	depends on HEADERS_INSTALL
+
+config SAMPLE_PIDFD
+	bool "pidfd sample"
+	depends on HEADERS_INSTALL
+
 config SAMPLE_SECCOMP
 	bool "Build seccomp sample code"
-	depends on SECCOMP_FILTER
+	depends on SECCOMP_FILTER && HEADERS_INSTALL
 	help
 	  Build samples of seccomp filters using various methods of
 	  BPF filter construction.
@@ -156,6 +163,7 @@ config SAMPLE_ANDROID_BINDERFS
 
 config SAMPLE_VFS
 	bool "Build example programs that use new VFS system calls"
+	depends on HEADERS_INSTALL
 	help
 	  Build example userspace programs that use new VFS system calls such
 	  as mount API and statx().  Note that this is restricted to the x86
diff --git a/samples/Makefile b/samples/Makefile
index debf8925f06f..7d6e4ca28d69 100644
--- a/samples/Makefile
+++ b/samples/Makefile
@@ -4,14 +4,14 @@
 obj-$(CONFIG_SAMPLE_ANDROID_BINDERFS)	+= binderfs/
 obj-$(CONFIG_SAMPLE_CONFIGFS)		+= configfs/
 obj-$(CONFIG_SAMPLE_CONNECTOR)		+= connector/
-subdir-y				+= hidraw
+subdir-$(CONFIG_SAMPLE_HIDRAW)		+= hidraw
 obj-$(CONFIG_SAMPLE_HW_BREAKPOINT)	+= hw_breakpoint/
 obj-$(CONFIG_SAMPLE_KDB)		+= kdb/
 obj-$(CONFIG_SAMPLE_KFIFO)		+= kfifo/
 obj-$(CONFIG_SAMPLE_KOBJECT)		+= kobject/
 obj-$(CONFIG_SAMPLE_KPROBES)		+= kprobes/
 obj-$(CONFIG_SAMPLE_LIVEPATCH)		+= livepatch/
-subdir-y				+= pidfd
+subdir-$(CONFIG_SAMPLE_PIDFD)		+= pidfd
 obj-$(CONFIG_SAMPLE_QMI_CLIENT)		+= qmi/
 obj-$(CONFIG_SAMPLE_RPMSG_CLIENT)	+= rpmsg/
 subdir-$(CONFIG_SAMPLE_SECCOMP)		+= seccomp
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
