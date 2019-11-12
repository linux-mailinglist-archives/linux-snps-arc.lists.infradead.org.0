Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBC7F9463
	for <lists+linux-snps-arc@lfdr.de>; Tue, 12 Nov 2019 16:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRIcYck+4rtFva5Mkt8t+dE9tPcWJYbWgPCu1tGdtd4=; b=AO8NCO2fNPL77W
	IaypHkYdxUp0urnrg8Uvuh1MjU69lkZyiArzdvqf89K7Lfe6BTjCye81YjJccXfpVVY3lZ0FUYt4x
	x26oBb0QQuHIF79tn4qKsf65x+fUUzJlKQUzY6CJdVCjzFM2U9qvhekzXpy7ocrYRTIcgi2afgeHR
	heWuQP7RpRzAFvFLy83sgapGnu6P4t/llRcWCgPiqKWUNWfFgq+8TC4MIiu792p5xDz6QuO0AEccR
	h06mFo1vkcoFwhNsIafe6PaSfQfTwf+ADErOCSDl1rFKnCoLtPcB/Eq+u7Lxr/UtvjKDHISYn2zJm
	BLXKV1Wve+aygVHjCDaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYC0-0002vw-Ia; Tue, 12 Nov 2019 15:34:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYBx-0002q2-Fg
 for linux-snps-arc@lists.infradead.org; Tue, 12 Nov 2019 15:34:55 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CE2DBC08E1;
 Tue, 12 Nov 2019 15:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573572886; bh=IXnAsb9XDlC775TaGfOMWgOzuzS5jV+yuZReRpGVk1c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dauw8Z56zTQO2sSXSK2hje7DfdxNUXOFvzEAckFRBnzqa3o58U+RNsGbrAVW03zdu
 vmfmlZt7ofUE8+mmta1fYIG/o92BuZ6IMRduRWEs4FM3DSudullWtYX1UBY/o75d2p
 6ZO5cXMayibDpdlkY/6AF2YGMq8z8hAtWybc46W06METHrdW6+Ku2OMGYBenBLarG5
 jBmRROxKD0e+q0liC/h0kaGCyhWiL5Egu2Br6SuuKiKT4v3VTBHgs0E9CaacN60JFk
 qPXUNayOuX9bboL9lnkkY7NeaiBHEIUv1kSJR/XaDb1J4X8aU7xDFP9n18rhe7lbhy
 HP5RxbSZmNviw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 84120A006B;
 Tue, 12 Nov 2019 15:34:45 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH v2 1/1] arch/config.in.arc: Introduce the ARC optimized hs38
 config
Date: Tue, 12 Nov 2019 07:34:43 -0800
Message-Id: <20191112153443.15715-2-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191112153443.15715-1-vgupta@synopsys.com>
References: <20191112153443.15715-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073453_584262_C2A3CD45 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This corresponds to -mcu=hs38 with mpy-option=9 (64-bit multiplier)

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
Changes since v1
 - Retained BR2_hs38 build semantics (dropped BR2_archs)
 - Introduced BR2_hs38_64mpy for generating double multiply instructions
---
 arch/Config.in.arc | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/Config.in.arc b/arch/Config.in.arc
index c65bb01f1f4f..3f272bc2be00 100644
--- a/arch/Config.in.arc
+++ b/arch/Config.in.arc
@@ -15,9 +15,15 @@ config BR2_archs38
 	bool "ARC HS38"
 	help
 	  Generic ARC HS capable of running Linux, i.e. with MMU,
-	  caches and multiplier. Also it corresponds to the default
+	  caches and 32-bit multiplier. Also it corresponds to the default
 	  configuration in older GNU toolchain versions.
 
+config BR2_archs38_64mpy
+	bool "ARC HS38 with 64-bit mpy"
+	help
+	  Fully featured ARC HS capable of running Linux, i.e. with MMU,
+	  caches and 64-bit multiplier.
+
 	  If you're not sure which version of ARC HS core you  build for
 	  keep this one.
 
@@ -43,7 +49,7 @@ endchoice
 # Choice of atomic instructions presence
 config BR2_ARC_ATOMIC_EXT
 	bool "Atomic extension (LLOCK/SCOND instructions)"
-	default y if BR2_arc770d || BR2_archs38 || BR2_archs38_full || BR2_archs4x_rel31
+	default y if BR2_arc770d || BR2_archs38 || BR2_archs38_64mpy || BR2_archs38_full || BR2_archs4x_rel31
 
 config BR2_ARCH
 	default "arc"	if BR2_arcle
@@ -61,12 +67,13 @@ config BR2_GCC_TARGET_CPU
 	default "arc700" if BR2_arc750d
 	default "arc700" if BR2_arc770d
 	default "archs"	 if BR2_archs38
+	default "hs38"	 if BR2_archs38_64mpy
 	default "hs38_linux"	 if BR2_archs38_full
 	default "hs4x_rel31"	 if BR2_archs4x_rel31
 
 config BR2_READELF_ARCH_NAME
 	default "ARCompact"	if BR2_arc750d || BR2_arc770d
-	default "ARCv2"		if BR2_archs38 || BR2_archs38_full || BR2_archs4x_rel31
+	default "ARCv2"		if BR2_archs38 || BR2_archs38_64mpy || BR2_archs38_full || BR2_archs4x_rel31
 
 choice
 	prompt "MMU Page Size"
@@ -86,7 +93,7 @@ choice
 
 config BR2_ARC_PAGE_SIZE_4K
 	bool "4KB"
-	depends on BR2_arc770d || BR2_archs38 || BR2_archs38_full || BR2_archs4x_rel31
+	depends on BR2_arc770d || BR2_archs38 || BR2_archs38_64mpy || BR2_archs38_full || BR2_archs4x_rel31
 
 config BR2_ARC_PAGE_SIZE_8K
 	bool "8KB"
@@ -96,7 +103,7 @@ config BR2_ARC_PAGE_SIZE_8K
 
 config BR2_ARC_PAGE_SIZE_16K
 	bool "16KB"
-	depends on BR2_arc770d || BR2_archs38 || BR2_archs38_full || BR2_archs4x_rel31
+	depends on BR2_arc770d || BR2_archs38 || BR2_archs38_64mpy || BR2_archs38_full || BR2_archs4x_rel31
 
 endchoice
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
