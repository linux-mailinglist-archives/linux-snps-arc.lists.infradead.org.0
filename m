Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD8EF042B
	for <lists+linux-snps-arc@lfdr.de>; Tue,  5 Nov 2019 18:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NR346qEL0nayJLIelCm7iHHjIfyHUajgJAgHdFzdKbc=; b=dJDAZlBS+2Fkhy
	i44IeDZc9JPAhcKjmbyjrXc1LKz2z9cvQm1DbJcx9Lz5kVABUWKpQEMmQuxYlV6yhB/NByrOnGTU+
	xKU3/Y2LBDDc6a0yqauycDcaWNW+vrFkKtTPjIj97iISo+i3/Nian1E+5VP7nYCm5Qa24I8XKWBXH
	bdX/qxvBy/9pFfZEirebcaobTnMv86wHRyzymSGShCp/P2EVbqrAu2tVtZ7PQonrUKKlAmvlbCJ1k
	yotWNcBPmulSxDTGKC9e7ulBuTxds0jB4HbvWUUB/VCyBQ2qBKaQpqNaRs+9/K0pygaR9celA8gMm
	YcG/h+b6FSv7qIBKeLZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2jb-0005Rw-4U; Tue, 05 Nov 2019 17:35:15 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2jY-0005RW-8d
 for linux-snps-arc@lists.infradead.org; Tue, 05 Nov 2019 17:35:13 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4ADD0C0E90;
 Tue,  5 Nov 2019 17:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572975310; bh=5fXwBQTHby96rknGo0kEseCbI2fu4YjQHt22vPhP8co=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iezVdG47El1hCOuRXq/bSDokL+HbDfXUHat/bm4xZ/lSeEGy5qBDLwuYA13oFNHV3
 t6i5wmd4E/j8JBBwkEJ5l9/5gU7sB+hLOP/By4o6KuLnmj6TPIznlaJSUcJr2SCTZf
 N4tPJXtKTH5BJ3LPX4v8X0XNBUlrk0JeCJnYVsBQKAgc9B+1t5cCWM61ItHU+OybL8
 tugkezONtFwg21UqPBO9biYiYT7wCfrSLrEQ4pqN0nd/jtQAVDbG79yShjvqAMyHD+
 QVR/q4/fqVCUw1kKn1rn+/dlACg8N9ZlyLxnBGxltt9cl/KEbXK7TVD6OQMywsaKC4
 o+kD5KmZqu+KQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id A642AA00C6;
 Tue,  5 Nov 2019 17:35:04 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH v2] toolchain,glibc: Allow ARC big endian glibc builds
Date: Tue,  5 Nov 2019 09:35:02 -0800
Message-Id: <20191105173502.11553-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <CY4PR1201MB0120ABDDCAB8033A0268CDC1A17E0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <CY4PR1201MB0120ABDDCAB8033A0268CDC1A17E0@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_093512_318389_2F7FCA14 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Alexey.Brodkin@synopsys.com
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
Changes since v1
  - Use BR2_arc iso BR2_arcle && BR2_arcbe
---
 package/glibc/glibc.mk                  | 2 +-
 toolchain/toolchain-buildroot/Config.in | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
index c0612bf04176..327314585b8e 100644
--- a/toolchain/toolchain-buildroot/Config.in
+++ b/toolchain/toolchain-buildroot/Config.in
@@ -48,7 +48,7 @@ config BR2_TOOLCHAIN_BUILDROOT_GLIBC
 		   BR2_powerpc     || BR2_powerpc64  || BR2_powerpc64le || \
 		   BR2_riscv       || BR2_sh         || BR2_sparc64     || \
 		   BR2_x86_64      || BR2_microblaze || BR2_nios2       || \
-		   (BR2_arcle && BR2_ARC_ATOMIC_EXT) || BR2_csky
+		   (BR2_arc && BR2_ARC_ATOMIC_EXT)   || BR2_csky
 	depends on BR2_USE_MMU
 	depends on !BR2_STATIC_LIBS
 	depends on BR2_TOOLCHAIN_HEADERS_AT_LEAST_3_2
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
