Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFD315AEF6
	for <lists+linux-snps-arc@lfdr.de>; Wed, 12 Feb 2020 18:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J3eu877a+zK/rZaxbiTBiy7HRGS7j6/JXF3eWkqpcaA=; b=Eil6I33CJc2vol+zWotaWJUa7+
	Q97LXyAMiJPjJCD2DA8o3HRVwJq9fryKDF+FaSs6gtdQpNL9KPTv65hHej3vqqaRNmJ7mEEm5sw7D
	SV5Z/e8gfH2/HaA782vlozBVt29lxbKbexo7ypAuDZVA6i+cJ2TGTZhe6jVSnUUP1IcCwoY8ptJfb
	QklmN87NVg2yAWnHbZsRqVkG9cwr4ZytdTCsYhSNPwlHKzoN9CW6A+qGeYcNb7adK0/EKwVmukMsV
	u4w1irh6cr6ZOsobpdsifLndtcS1bOZv4EYYuwNPPNnXyXTblyMzSwAFCN9Nu9DfOw9V3ESYP393o
	43PXU+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1w4C-0008EA-4h; Wed, 12 Feb 2020 17:44:52 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1w49-0008DH-FA
 for linux-snps-arc@lists.infradead.org; Wed, 12 Feb 2020 17:44:50 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2FD86C0633;
 Wed, 12 Feb 2020 17:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1581529488; bh=eiY1ruU2g+KMtLVcZXgw8f3BWpGFypV1B6nLZhurYks=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UWn4LiVV/NWXmlEWDy1i3gWjvKvrsmxxUlZ0KkgkT/uX5/mckg6N7HmJUhQqC3EE8
 c6N60WRjIqpHyL0P5fTCNjM3PxNw+EBqzsJmsidgfEzos7iMyuH9tv91aRDIRYQcKy
 SM+IsOegUIpzBRUp09SnKVJES9n6UPnJuYOZPDgiL4gtggse3/3t0PFV1lLIf5MCDm
 U7DRZgzRPBb8nh/vp2IpYqfbFQJlbkMTqICeZGq+2zxcO7JXp/2q8K1CFA649HPDJ2
 FRJdkf3ee70QTZSztBpJh4GAA2hgB9eCTbq1Ezwrp7cvoPXsqo7YCrwUHG2Yz2HO5S
 avZU+aUAB3EWw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0E292A0073;
 Wed, 12 Feb 2020 17:44:45 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH 2/3 v2] ARC: nsim_{700|700be|hs38be}_defconfigs: Disable
 networking
Date: Wed, 12 Feb 2020 20:44:42 +0300
Message-Id: <20200212174443.37707-2-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200212174443.37707-1-abrodkin@synopsys.com>
References: <20200212174443.37707-1-abrodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_094449_571331_CF7AD686 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

We don't have yet any brc700 or big-enadian platforms with networking
support to run this particular configuration.

Whenever QEMU for ARC supports arc700 or big-endian targets we may revisit
this one.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---

No changes v1 -> v2.

 configs/nsim_700_defconfig    | 1 +
 configs/nsim_700be_defconfig  | 1 +
 configs/nsim_hs38be_defconfig | 1 +
 3 files changed, 3 insertions(+)

diff --git a/configs/nsim_700_defconfig b/configs/nsim_700_defconfig
index 2d4a58b178..6a38e2c246 100644
--- a/configs/nsim_700_defconfig
+++ b/configs/nsim_700_defconfig
@@ -14,6 +14,7 @@ CONFIG_OF_CONTROL=y
 CONFIG_OF_EMBED=y
 CONFIG_DEFAULT_DEVICE_TREE="nsim"
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+# CONFIG_NET is not set
 CONFIG_DM=y
 CONFIG_DM_SERIAL=y
 CONFIG_DEBUG_UART_SHIFT=2
diff --git a/configs/nsim_700be_defconfig b/configs/nsim_700be_defconfig
index 61eea91449..d3ed84a415 100644
--- a/configs/nsim_700be_defconfig
+++ b/configs/nsim_700be_defconfig
@@ -15,6 +15,7 @@ CONFIG_OF_CONTROL=y
 CONFIG_OF_EMBED=y
 CONFIG_DEFAULT_DEVICE_TREE="nsim"
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+# CONFIG_NET is not set
 CONFIG_DM=y
 CONFIG_DM_SERIAL=y
 CONFIG_DEBUG_UART_SHIFT=2
diff --git a/configs/nsim_hs38be_defconfig b/configs/nsim_hs38be_defconfig
index 5d2ea59d52..b074b4ca98 100644
--- a/configs/nsim_hs38be_defconfig
+++ b/configs/nsim_hs38be_defconfig
@@ -16,6 +16,7 @@ CONFIG_OF_CONTROL=y
 CONFIG_OF_EMBED=y
 CONFIG_DEFAULT_DEVICE_TREE="nsim"
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+# CONFIG_NET is not set
 CONFIG_DM=y
 CONFIG_DM_SERIAL=y
 CONFIG_DEBUG_UART_SHIFT=2
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
