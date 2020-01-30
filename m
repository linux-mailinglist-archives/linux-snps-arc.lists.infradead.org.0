Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D814E31E
	for <lists+linux-snps-arc@lfdr.de>; Thu, 30 Jan 2020 20:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Eey4UApx7bGFuabLJ95+kSOLa34mpGBuI/2cIRE+f70=; b=b1z
	HIXvNgvzIU/95UQ/OFzKNlQAS7KVDF8xfkz8huC+DMzkmFGhev08yUv91IVfxFI2VzjPtDnIHFxDk
	roxPlfb+RksvyznxlJH2w9k1WixzCIGVqUdgipdgrEIH4gKJysCj1+C7FfzBVcNcrQEiCMP4gzu4D
	rJYNgfRvyPd83UavwWRuOyyARGVIp2fqDk5WvBhq9Rmm+0AGB9vBgYmphDlxPsnh6N0VKCcycVRvG
	9LCaGFJ5bPYzosN/K9VbLHkK7CvOIyr9KpOAmkeKQF9PSeDzgWkaAxgOmawFYe7YKioWLx1zLYf/S
	IXZWEMCwGJOGZJZEA+L46USi5THxFbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFQS-0003Jr-BD; Thu, 30 Jan 2020 19:24:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFQQ-0003JW-2K
 for linux-snps-arc@lists.infradead.org; Thu, 30 Jan 2020 19:24:27 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0FC2205F4;
 Thu, 30 Jan 2020 19:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580412265;
 bh=TrRaQthK8m6BtxdyCaj4wWJC5pDJNP5lkAkWdi0Y8WI=;
 h=From:To:Cc:Subject:Date:From;
 b=CCTtQpjfPQYptKjS06ibuc8TgZgCC3OAT/n1+qVF4PQldzKUye/mcIm7/I4zuadMk
 lykAWk5JhvzxmJd1ti8DEgNuCoRNwLDQzBJDfUp80+uTfUYGZRng7Qo6lFD8PlEz/v
 ccN6MAI3a1dd7yytzg2LSIMKwymsA6nxHBSae1EA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARC: Cleanup old Kconfig IO scheduler options
Date: Thu, 30 Jan 2020 20:24:03 +0100
Message-Id: <20200130192403.2982-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_112426_127984_37338BE7 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CONFIG_IOSCHED_DEADLINE and CONFIG_IOSCHED_CFQ are gone since
commit f382fb0bcef4 ("block: remove legacy IO schedulers").

The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
now enabled by default (along with MQ_IOSCHED_KYBER).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arc/configs/nps_defconfig             | 2 --
 arch/arc/configs/nsimosci_defconfig        | 2 --
 arch/arc/configs/nsimosci_hs_defconfig     | 2 --
 arch/arc/configs/nsimosci_hs_smp_defconfig | 2 --
 4 files changed, 8 deletions(-)

diff --git a/arch/arc/configs/nps_defconfig b/arch/arc/configs/nps_defconfig
index 07f26ed39f02..f7a978dfdf1d 100644
--- a/arch/arc/configs/nps_defconfig
+++ b/arch/arc/configs/nps_defconfig
@@ -21,8 +21,6 @@ CONFIG_MODULES=y
 CONFIG_MODULE_FORCE_LOAD=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ARC_PLAT_EZNPS=y
 CONFIG_SMP=y
 CONFIG_NR_CPUS=4096
diff --git a/arch/arc/configs/nsimosci_defconfig b/arch/arc/configs/nsimosci_defconfig
index 5dd470b6609e..bf39a0091679 100644
--- a/arch/arc/configs/nsimosci_defconfig
+++ b/arch/arc/configs/nsimosci_defconfig
@@ -20,8 +20,6 @@ CONFIG_ISA_ARCOMPACT=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ARC_BUILTIN_DTB_NAME="nsimosci"
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/nsimosci_hs_defconfig b/arch/arc/configs/nsimosci_hs_defconfig
index 3532e86f7bff..7121bd71c543 100644
--- a/arch/arc/configs/nsimosci_hs_defconfig
+++ b/arch/arc/configs/nsimosci_hs_defconfig
@@ -19,8 +19,6 @@ CONFIG_PERF_EVENTS=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ISA_ARCV2=y
 CONFIG_ARC_BUILTIN_DTB_NAME="nsimosci_hs"
 # CONFIG_COMPACTION is not set
diff --git a/arch/arc/configs/nsimosci_hs_smp_defconfig b/arch/arc/configs/nsimosci_hs_smp_defconfig
index d90448bee064..f9863b294a70 100644
--- a/arch/arc/configs/nsimosci_hs_smp_defconfig
+++ b/arch/arc/configs/nsimosci_hs_smp_defconfig
@@ -14,8 +14,6 @@ CONFIG_PERF_EVENTS=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
 # CONFIG_ARC_TIMERS_64BIT is not set
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
