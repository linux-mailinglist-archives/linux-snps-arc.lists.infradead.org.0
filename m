Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2319671B
	for <lists+linux-snps-arc@lfdr.de>; Tue, 20 Aug 2019 19:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ckG23J0tITA+WWgtwZSTn0PSjPEQ4udfMiQR1y81nuk=; b=u/gdpnhtO1BfdJEDlNa8dbrTrf
	lG49JKB3DOjjmdQtQPWXMTXd0QxNv8BJqW6dvsbo4o4eb3FY8OUu6z4fR1lwIdePbJuHBRi4pdcv2
	WFZguAaC1WT88eVGJglMOaU4L6Fg2xdBzx2xRFVdOts7ihGVoVbvdWyO6DWqy3Lsnkxrjv5FKCD5j
	r+gwzEqBT2hXw+QcSKp3uRNHPDbUcQemkegcyvDja1jj2azdNC7Rav6HkAOi/10F6pVnn7w8Qr4/d
	7MXu+R0+pEVg0ud22Ic77amwIcNlc4YntrFE41V3yacVm1v/1jWe8nzp1DDdc3gFXmjQz5ESvr2ZG
	APntCWIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07eE-0007D7-GP; Tue, 20 Aug 2019 17:10:18 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07e9-000741-Q8
 for linux-snps-arc@lists.infradead.org; Tue, 20 Aug 2019 17:10:16 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x7KH9n4B020646;
 Wed, 21 Aug 2019 02:09:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7KH9n4B020646
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566320991;
 bh=35oiB6f8NsCtFMF7x1hxhc8poRW8t8acsr/yhS3f0ik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tMeVW1PC/8Tj879Rns8s6qCDOSlbv4RDlNSrW3j7HYZqJwf6dv3u3uIcY+gN7kLSn
 TCuar2EmcFm7NxZtsVg8mAa08vWK1p9XcwgFiNIt1EpkAAJYioVe7omBpue7SJQ8+9
 8txjR6zoN3buM/Scidy2yLWnxFBuafEm+Kopf+ABVHbOlF3w6okX2SF0sBByB8DV/y
 Y44FCITM9AjczWiTbYI3IVHnfaJ80BchCxWgPnsO+4huR5p5WXmfLpLZkUxV6V7IrE
 UcEvr/AfO3edtFi8A/Wafj9SJWN25LyRRTdavTp8artaPkppC4e71M/6KUa4CZLQqk
 1ewDxPAgaAOsA==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 3/3] kbuild: remove ARCH_{CPP,A,C}FLAGS
Date: Wed, 21 Aug 2019 02:09:41 +0900
Message-Id: <20190820170941.26193-3-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190820170941.26193-1-yamada.masahiro@socionext.com>
References: <20190820170941.26193-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_101014_149574_62592A66 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>, Vineet Gupta <vgupta@synopsys.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-snps-arc@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

These flags were added by commit 61754c18752f ("kbuild: Allow arch
Makefiles to override {cpp,ld,c}flags") to allow ARC to override -O2.

We did not see any other usage after all. Now that ARC switched to
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3, there is no more user of
these variables.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Documentation/kbuild/makefiles.rst |  7 -------
 Makefile                           | 14 ++++----------
 2 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
index 36ba92e199d2..712cdbcdbe91 100644
--- a/Documentation/kbuild/makefiles.rst
+++ b/Documentation/kbuild/makefiles.rst
@@ -988,13 +988,6 @@ When kbuild executes, the following steps are followed (roughly):
 	$(KBUILD_ARFLAGS) set by the top level Makefile to "D" (deterministic
 	mode) if this option is supported by $(AR).
 
-    ARCH_CPPFLAGS, ARCH_AFLAGS, ARCH_CFLAGS   Overrides the kbuild defaults
-
-	These variables are appended to the KBUILD_CPPFLAGS,
-	KBUILD_AFLAGS, and KBUILD_CFLAGS, respectively, after the
-	top-level Makefile has set any other flags. This provides a
-	means for an architecture to override the defaults.
-
     KBUILD_LDS
 
 	The linker script with full path. Assigned by the top-level Makefile.
diff --git a/Makefile b/Makefile
index 891e47da503f..6551f136afb0 100644
--- a/Makefile
+++ b/Makefile
@@ -661,11 +661,6 @@ RETPOLINE_VDSO_CFLAGS := $(call cc-option,$(RETPOLINE_VDSO_CFLAGS_GCC),$(call cc
 export RETPOLINE_CFLAGS
 export RETPOLINE_VDSO_CFLAGS
 
-# The arch Makefile can set ARCH_{CPP,A,C}FLAGS to override the default
-# values of the respective KBUILD_* variables
-ARCH_CPPFLAGS :=
-ARCH_AFLAGS :=
-ARCH_CFLAGS :=
 include arch/$(SRCARCH)/Makefile
 
 ifdef need-config
@@ -918,11 +913,10 @@ include scripts/Makefile.kasan
 include scripts/Makefile.extrawarn
 include scripts/Makefile.ubsan
 
-# Add any arch overrides and user supplied CPPFLAGS, AFLAGS and CFLAGS as the
-# last assignments
-KBUILD_CPPFLAGS += $(ARCH_CPPFLAGS) $(KCPPFLAGS)
-KBUILD_AFLAGS   += $(ARCH_AFLAGS)   $(KAFLAGS)
-KBUILD_CFLAGS   += $(ARCH_CFLAGS)   $(KCFLAGS)
+# Add user supplied CPPFLAGS, AFLAGS and CFLAGS as the last assignments
+KBUILD_CPPFLAGS += $(KCPPFLAGS)
+KBUILD_AFLAGS   += $(KAFLAGS)
+KBUILD_CFLAGS   += $(KCFLAGS)
 
 KBUILD_LDFLAGS_MODULE += --build-id
 LDFLAGS_vmlinux += --build-id
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
