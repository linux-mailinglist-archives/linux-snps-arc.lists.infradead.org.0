Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F0863F83
	for <lists+linux-snps-arc@lfdr.de>; Wed, 10 Jul 2019 05:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=neGuSC5+TpCSocwQYKFHXygXOr0WfnKaOyJCelAr518=; b=m6z
	Xq8pekZFQaqStP/M5Is/g4yO/ffZyjGkTX9hH29PnygfPkNG4vAcv3cyaSLkCUCPPNFpjSt8a5UmK
	CcehgBCzqAWnZnA4JXdZ4fceVK02Zu7vtDtOhoz4BAxbdzK+G2TzJAUKE4RTjXvuUnEjQ4s/4SOOM
	e9taK7xxppvpihQ6RMlGk3l91Uc0E5+l1M4/BI4/t8CiN27gqZHVnKI+fgyGaNZVZbt4G8auvPInM
	zCQSbNog1iVMvtFda2BgEqXx+Vlf1WWMAHgIgOmhtykIbNpdoNctvCg6/XyWq9nn2E+ztYl4Frmd1
	9p+WKt4IopDDfM6Fwnn/ctTB7S8Qqbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2z7-0004O2-Jj; Wed, 10 Jul 2019 03:09:33 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2z3-0004Ma-OW; Wed, 10 Jul 2019 03:09:31 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x6A3935O010665;
 Wed, 10 Jul 2019 12:09:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x6A3935O010665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562728145;
 bh=yg87jS3mBO0kAMfLp5u/C6DBa8X2nswxL+kGhWPzUOg=;
 h=From:To:Cc:Subject:Date:From;
 b=kpnGlFpcSMzIQYPbVT4k8yuJ0iK5u1Xg9yTm6oCbld3FupuP6S1wqN5m09yY16Vyb
 p+EZEWObjcPRUcC8ZNRgb78GdWU5X66K931RHTcFRL16pdIqZ5Pjo/PKVFRvuB9fc2
 efVrduI/879i8wwwbc+qLCRighS32P9dsqCdu4XldXOIR7VF+tbaOtFWEqn2YguYM/
 Krf8Q+srAdM4lvqQdcnow7zRJag2Q2PU6Lg/VCGhKov4gLwlYZwdYPDmrAqkL7ywp9
 sjC8PIcD/F1p72iaglATkm1moBq5mTFfN2Vak+n4h2JK0Ob0Di9NHMngtEtAg4d8ol
 d7L24k4mo7GDQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] fixup! kbuild: remove obj and src from the top Makefile
Date: Wed, 10 Jul 2019 12:09:01 +0900
Message-Id: <20190710030901.1836-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_200930_139816_7758D13B 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Helge Deller <deller@gmx.de>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, linux-snps-arc@lists.infradead.org,
 Jeff Dike <jdike@addtoit.com>, Anton Ivanov <anton.ivanov@cambridgegreys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Merging today's kbuild tree would break arc, um, parisc.
I just noticed it now. I will fix it soon for tomorrow's linux-next.

If needed, this might be useful for today's linux-next.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arc/Makefile    |  2 +-
 arch/parisc/Makefile | 12 ++++++------
 arch/um/Makefile     |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index 03a0b19c92cd..ee6d1184c2b1 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -19,7 +19,7 @@ ifdef CONFIG_ARC_CURR_IN_REG
 # any kernel headers, and missing the r25 global register
 # Can't do unconditionally because of recursive include issues
 # due to <linux/thread_info.h>
-LINUXINCLUDE	+=  -include ${src}/arch/arc/include/asm/current.h
+LINUXINCLUDE	+=  -include $(srctree)/arch/arc/include/asm/current.h
 endif
 
 cflags-y				+= -fsection-anchors
diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
index 58d46665cad9..8acb8fa1f8d6 100644
--- a/arch/parisc/Makefile
+++ b/arch/parisc/Makefile
@@ -120,8 +120,8 @@ PALO := $(shell if (which palo 2>&1); then : ; \
 	elif [ -x /sbin/palo ]; then echo /sbin/palo; \
 	fi)
 
-PALOCONF := $(shell if [ -f $(src)/palo.conf ]; then echo $(src)/palo.conf; \
-	else echo $(obj)/palo.conf; \
+PALOCONF := $(shell if [ -f $(srctree)/palo.conf ]; then echo $(srctree)/palo.conf; \
+	else echo $(objtree)/palo.conf; \
 	fi)
 
 palo lifimage: vmlinuz
@@ -131,8 +131,8 @@ palo lifimage: vmlinuz
 		false; \
 	fi
 	@if test ! -f "$(PALOCONF)"; then \
-		cp $(src)/arch/parisc/defpalo.conf $(obj)/palo.conf; \
-		echo 'A generic palo config file ($(obj)/palo.conf) has been created for you.'; \
+		cp $(srctree)/arch/parisc/defpalo.conf $(objtree)/palo.conf; \
+		echo 'A generic palo config file ($(objree)/palo.conf) has been created for you.'; \
 		echo 'You should check it and re-run "make palo".'; \
 		echo 'WARNING: the "lifimage" file is now placed in this directory by default!'; \
 		false; \
@@ -162,10 +162,10 @@ vmlinuz: vmlinux
 endif
 
 install:
-	$(CONFIG_SHELL) $(src)/arch/parisc/install.sh \
+	$(CONFIG_SHELL) $(srctree)/arch/parisc/install.sh \
 			$(KERNELRELEASE) vmlinux System.map "$(INSTALL_PATH)"
 zinstall:
-	$(CONFIG_SHELL) $(src)/arch/parisc/install.sh \
+	$(CONFIG_SHELL) $(srctree)/arch/parisc/install.sh \
 			$(KERNELRELEASE) vmlinuz System.map "$(INSTALL_PATH)"
 
 CLEAN_FILES	+= lifimage
diff --git a/arch/um/Makefile b/arch/um/Makefile
index 273130cf91d1..d2daa206872d 100644
--- a/arch/um/Makefile
+++ b/arch/um/Makefile
@@ -73,7 +73,7 @@ KBUILD_AFLAGS += $(ARCH_INCLUDE)
 USER_CFLAGS = $(patsubst $(KERNEL_DEFINES),,$(patsubst -I%,,$(KBUILD_CFLAGS))) \
 		$(ARCH_INCLUDE) $(MODE_INCLUDE) $(filter -I%,$(CFLAGS)) \
 		-D_FILE_OFFSET_BITS=64 -idirafter $(srctree)/include \
-		-idirafter $(obj)/include -D__KERNEL__ -D__UM_HOST__
+		-idirafter $(objtree)/include -D__KERNEL__ -D__UM_HOST__
 
 #This will adjust *FLAGS accordingly to the platform.
 include $(ARCH_DIR)/Makefile-os-$(OS)
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
