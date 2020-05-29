Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81371E7C60
	for <lists+linux-snps-arc@lfdr.de>; Fri, 29 May 2020 13:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+sJs6m2fhcogI5jW3RE/hSZRWhPAV/dtus+u5Qo+yo=; b=ozQDDUWFmJMAXF
	Unb0wcQC4dKXefPBxR7O9e2PNyOYgqETRompQFBwdWvlvDIDJffNWMjNqaa9o9+BEYTLMUfI7RAYs
	fLDfB1WmyPwuCsuEKKn9vt8Uv8aWqHrt+MSgESSsKEabZqA3xJzSurLZLpksnVC4nP4MnPyAWK+tU
	oF2g/fJ6hsqUVTT0nRwbbltmEg241pWBtbODLMPhB5Ryas5xR+RrbKPiRxqbZJiWoTxsfBsukiTKx
	IxNwHWncN5SvBfxYwUXpAB2ATIUOgNl1c8czGMubFmw1zAPkcMeMpJ+hAHUNyeJzUvbDlm2/K6vM+
	E60EDpAK+hWnupXTDbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedcF-0007ny-4X; Fri, 29 May 2020 11:55:59 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedcC-0007m6-Jw
 for linux-snps-arc@lists.infradead.org; Fri, 29 May 2020 11:55:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 92F7BC041D;
 Fri, 29 May 2020 11:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1590753354; bh=HAPFFec+/Hlkj9FbESiTvhmKn3vHH0RVoyQrcedk9fo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MEFuw0nbGW0bAmc5/Hos7ILiqxxnJEY+vhe1axOXnlgQyGDazgaR84W08G0lVFCIr
 Sl4hSMx0j1f6q7aCg4CQghjkAcQ7krLFPl45yC8U7rtcWIJCxpCDXG5DX3G62CbE1b
 xcr2giTwD52KF8gW7sP1T7zTOCphe1y4uBgcgKSLHp9KDseHXGrxonnLwdqfpVPUQR
 4WrmNMXi6/HE7q+9sBzlcV0D8C2A0ALZ1FHweAooQIrmaeylEdGO3eBj46WUbovDGc
 IqLA4mGIT3RTp4O3FQpX0BUk8LMZM4Gipytkq1pVoI+0UahJve3XgQ1HJZ2NVI+JWg
 rXItvqPrOoRRA==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.50.16])
 by mailhost.synopsys.com (Postfix) with ESMTP id 13778A0067;
 Fri, 29 May 2020 11:55:53 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH private 1/3] ARC: allow to overwrite default mcpu compiler flag
Date: Fri, 29 May 2020 14:55:32 +0300
Message-Id: <20200529115534.22883-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200529115534.22883-1-Eugeniy.Paltsev@synopsys.com>
References: <20200529115534.22883-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_045556_695368_316A0670 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

By default we set -mcpu=xxx compiler flag depending on the CPU ISA
version. It's good starting point, however that may be not enough
as for some platforms we may want to use some specific 'mcpu'
options for better optimization or to workaround HW issues.

We are going to use this option for HSDK-4xD board support.
In addition it also allows to awoid patching 'mcpu' in ARC Makefile
when we building Linux for some non-standard simulation or FPGA-based
platforms.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/Kconfig  | 7 +++++++
 arch/arc/Makefile | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index ff306246d0f8..e7805db10f7a 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -377,6 +377,13 @@ config ARC_HAS_SWAPE
 	bool "Insn: SWAPE (endian-swap)"
 	default y
 
+config ARC_MCPU_OVERWRITE
+	string "Overwrite default -mcpu compiler flag"
+	default ""
+	help
+	  Overwrite default -mcpu=xxx compiler flag (which is set depending on
+	  the ISA version) with the specified value.
+
 if ISA_ARCV2
 
 config ARC_USE_UNALIGNED_MEM_ACCESS
diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index 20e9ab6cc521..1b37e44d9b57 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -10,8 +10,12 @@ CROSS_COMPILE := $(call cc-cross-prefix, arc-linux- arceb-linux-)
 endif
 
 cflags-y	+= -fno-common -pipe -fno-builtin -mmedium-calls -D__linux__
+ifeq ($(CONFIG_ARC_MCPU_OVERWRITE),"")
 cflags-$(CONFIG_ISA_ARCOMPACT)	+= -mA7
 cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38
+else
+cflags-y			+= $(shell echo $(CONFIG_ARC_MCPU_OVERWRITE))
+endif
 
 ifdef CONFIG_ARC_CURR_IN_REG
 # For a global register defintion, make sure it gets passed to every file
-- 
2.21.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
