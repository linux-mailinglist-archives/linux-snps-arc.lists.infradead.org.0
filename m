Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E305EC8D2
	for <lists+linux-snps-arc@lfdr.de>; Fri,  1 Nov 2019 20:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VgWYV40kgfTgPReAl4omkgNOVdgNaUko15jTmIA4LGw=; b=V+45CWviRHJ57E
	fxuRFNGrFXGjMfGBCrzeQmR1yaWVokAyPbGEhCqk3BVrsftMC+D0LzKgJOxOFCnEuBt1lYJ6zjC2n
	VUHSHOXz2XK7L8Ak/pJcyq1OtoqTpx2ZNfS9bj1U9oLF8RNWmTaUZlSQUQaoILAEvY8EILj1yt7uF
	D+DmHane0urtWiPuJLhrI9BS+E3+yQb5gD9KoxNXcfX1f8x6HqCf33OJYAh0Y3VSQdrU/HtLXnbZq
	3DDdRcRXn/A4AfmGcV6G0db+8bP6zWPt9ZWz40eQUg2WI3HEcTnVP1HV/pc3e+0VZdM9+mttdm+mT
	9hJZXWK4dQHHpo7yKi1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcD4-0007w4-Rh; Fri, 01 Nov 2019 19:03:46 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcD2-0007vS-0m
 for linux-snps-arc@lists.infradead.org; Fri, 01 Nov 2019 19:03:45 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5978EC08C6;
 Fri,  1 Nov 2019 19:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572635021; bh=2D+wwMEtPUSg8iBjetNQh+Lg5gIhIVfW9hkGkRUHZBg=;
 h=From:To:Cc:Subject:Date:From;
 b=PptPqRVexoIcle017GLNjYWJLjeqtCXsY+aNUy2I9NE4LVwKL5x4UQTbvMKo8+tG6
 qbbfdhH4oiWA8hJWauuwoc3GbKW07ISJYNiAtiGV2iS25StIEc5vUNzhpPVwIwC3hs
 g27Wl2u5fjwqd3cdU7nSg4yiwDy70X54np0V3ZH+idBx06CS2EsKkZMRv2/1NzEGWe
 cub1Bp2uBVAt1M6D/phc4VqCieXZqKo9MykeP2x15g+kAQbyLinipJUMgAbAt5VJNE
 /HJ+LjwClg1Hoq1GkzraloFh2fwjBb//NuPDrooY6VZbLvcSlP2xjlttF97Te1njGw
 Dap/sTfaGI6Lg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.28])
 by mailhost.synopsys.com (Postfix) with ESMTP id 86CF0A0098;
 Fri,  1 Nov 2019 19:03:40 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH] toolchain,glibc: Allow ARC big endian glibc builds
Date: Fri,  1 Nov 2019 12:03:37 -0700
Message-Id: <20191101190337.13411-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_120344_103358_E1C24B1B 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-snps-arc@lists.infradead.org,
 Alexey.Brodkin@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Apparently big endian glibc builds just work, if we let the endian
header allow that (which prev was #error).

So this patch bumps glibc to version which fixes the header (this
hopefully will become arc-2019.09-release) and then enables arceb
in glibc toolchain builds

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 package/glibc/glibc.mk                  | 2 +-
 toolchain/toolchain-buildroot/Config.in | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/package/glibc/glibc.mk b/package/glibc/glibc.mk
index d46063c5d111..754408881397 100644
--- a/package/glibc/glibc.mk
+++ b/package/glibc/glibc.mk
@@ -5,7 +5,7 @@
 ################################################################################
 
 ifeq ($(BR2_arc),y)
-GLIBC_VERSION =  arc-2019.03-release
+GLIBC_VERSION = ec681dddfa99894513c85da7d5d257b60d04f915
 GLIBC_SITE = $(call github,foss-for-synopsys-dwc-arc-processors,glibc,$(GLIBC_VERSION))
 else ifeq ($(BR2_RISCV_32),y)
 GLIBC_VERSION = 06983fe52cfe8e4779035c27e8cc5d2caab31531
diff --git a/toolchain/toolchain-buildroot/Config.in b/toolchain/toolchain-buildroot/Config.in
index c0612bf04176..587e097a9c92 100644
--- a/toolchain/toolchain-buildroot/Config.in
+++ b/toolchain/toolchain-buildroot/Config.in
@@ -48,7 +48,8 @@ config BR2_TOOLCHAIN_BUILDROOT_GLIBC
 		   BR2_powerpc     || BR2_powerpc64  || BR2_powerpc64le || \
 		   BR2_riscv       || BR2_sh         || BR2_sparc64     || \
 		   BR2_x86_64      || BR2_microblaze || BR2_nios2       || \
-		   (BR2_arcle && BR2_ARC_ATOMIC_EXT) || BR2_csky
+		   ((BR2_arcle || BR2_arceb) && BR2_ARC_ATOMIC_EXT)     || \
+		   BR2_csky
 	depends on BR2_USE_MMU
 	depends on !BR2_STATIC_LIBS
 	depends on BR2_TOOLCHAIN_HEADERS_AT_LEAST_3_2
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
