Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DD9F52B3
	for <lists+linux-snps-arc@lfdr.de>; Fri,  8 Nov 2019 18:41:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8EIUAh5X8srVvKX79ezySJXF+HnatwCslgvDK7vAv4=; b=lkBeTRAsK/eRHm
	RSgdXCm2HqupBO78ctw6vWKQg/s2ds99N8+uNaAiHeSrTUQoln/BbkAPz/Wba9WYSAqaYmYpt+D4M
	6d1aLMM27/Nzb/QS9WZowZ+QiZnT7iwwa5YqsnT9Fuz+xiCDdmKFIX5xJ2MhOijR5MOIpGYBWoOwS
	YKtPn7Xyy4TRKagR3SxPcx/s0YIrKoONCzfHboAh+nSVEvSnoZI1qPBNv1Z/E0P3I8ZSUWHSS+7Cs
	TBxBaqwkz8jNRK8EsX9RdE5joPnbIUYNRClNir5I0I5L3xyymzhYhJwzDgCZczxt4YjW/ZsjDORDk
	zoiKF3VGvbahVjyCHngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8GA-0007hx-29; Fri, 08 Nov 2019 17:41:22 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8G7-0007gy-Mc
 for linux-snps-arc@lists.infradead.org; Fri, 08 Nov 2019 17:41:20 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 014D9C0DF1;
 Fri,  8 Nov 2019 17:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573234879; bh=ZW7ClywPQ5mavJ/X95T8QJUJqFbD05UvbL6E/HUfpbw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g7CdmijAg4p6o9yskfaeAHACr65uquXuLIxB+ghK6zUzQtcgahSNPOkLKKfIWc1ie
 Pv1jn+LXkNg0LjmG6JTCAOjVAvVS0FaifijGmv04F9NdkJf0LpE4CsqfRdByd+BWYM
 oCtSuHPkg2tv9kBkPv/pIdIqUbbeKhlzRoJS5wOpTAW5fOORz9KnEbS8DOrNGqoISy
 W4nX1zK/byrQG/8vFp9IvHjsyt/vmXnPgSK4dY6aPSp6EGgyvo63WSQUVN2ScTwcOq
 vo9lMW/GSmMtyEzEB9kypSYyvA/xWrMBxTGutLRzDfShKe/lavaqJgPurW1y28bWQt
 RqGisCqfkOHpg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.28])
 by mailhost.synopsys.com (Postfix) with ESMTP id D5C49A00A8;
 Fri,  8 Nov 2019 17:41:18 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH 2/3] arch/config.in.arc: Introduce ARC ISA toggle to ease
 downstream toggles
Date: Fri,  8 Nov 2019 09:41:11 -0800
Message-Id: <20191108174112.28183-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108174112.28183-1-vgupta@synopsys.com>
References: <20191108174112.28183-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_094119_755919_893DB684 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Evgeniy.Didin@synopsys.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org, Alexey.Brodkin@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/Config.in.arc | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/Config.in.arc b/arch/Config.in.arc
index 284951b82cee..dbc608db39c6 100644
--- a/arch/Config.in.arc
+++ b/arch/Config.in.arc
@@ -1,3 +1,18 @@
+choice
+	prompt "Target ISA"
+	default BR2_arcompact
+	depends on BR2_arc
+	help
+	    Specific ARC ISA to use
+
+config BR2_arcompact
+	bool "ARCompact ISA"
+
+config BR2_arcv2
+	bool "ARCv2 ISA"
+
+endchoice
+
 choice
 	prompt "Target CPU"
 	default BR2_arc770d
@@ -7,12 +22,15 @@ choice
 
 config BR2_arc750d
 	bool "ARC 750D"
+	depends on BR2_arcompact
 
 config BR2_arc770d
 	bool "ARC 770D"
+	depends on BR2_arcompact
 
 config BR2_archs
 	bool "ARC HS38"
+	depends on BR2_arcv2
 	help
 	  Generic ARC HS capable of running Linux, i.e. with MMU,
 	  caches and 32-bit multiplier. Also it corresponds to the default
@@ -20,6 +38,7 @@ config BR2_archs
 
 config BR2_archs38
 	bool "ARC HS38 with 64-bit mpy"
+	depends on BR2_arcv2
 	help
 	  Fully featured ARC HS capable of running Linux, i.e. with MMU,
 	  caches and 64-bit multiplier.
@@ -29,6 +48,7 @@ config BR2_archs38
 
 config BR2_archs38_full
 	bool "ARC HS38 with Quad MAC & FPU"
+	depends on BR2_arcv2
 	help
 	  Fully featured ARC HS with additional support for
 	   - Dual- and quad multiply and MC oprations
@@ -39,6 +59,7 @@ config BR2_archs38_full
 
 config BR2_archs4x_rel31
 	bool "ARC HS48 rel 31"
+	depends on BR2_arcv2
 	help
 	   Latest release of HS48 processor
 	   - Dual- and quad multiply and MC oprations
@@ -72,8 +93,8 @@ config BR2_GCC_TARGET_CPU
 	default "hs4x_rel31"	 if BR2_archs4x_rel31
 
 config BR2_READELF_ARCH_NAME
-	default "ARCompact"	if BR2_arc750d || BR2_arc770d
-	default "ARCv2"		if BR2_archs || BR2_archs38 || BR2_archs38_full || BR2_archs4x_rel31
+	default "ARCompact"	if BR2_arcompact
+	default "ARCv2"		if BR2_arcv2
 
 choice
 	prompt "MMU Page Size"
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
