Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC212AC65
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Dec 2019 14:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=51xq4bgHI14s9QM8XC37c5XzSugmqyG2tszgms3POc0=; b=Lw+SWuAy/mnkYPAKhGz6PWDtmi
	e80IpMdAdhtwkltbSiwgI0siu/TBYt/ShZGwd6LA5fec7tSeflCjff9MRSbeF81RJRO+IQTZPnnLi
	Y07tS9cp7FwS6M4UqKWsWE87+odtxr8ng75tYrBV7Q4ogbs9CDFsfU5BSIlcxnW9LoooMMZQpAtzO
	hPz91N5SEcWNt2Jkaaf4T4NbQ6+sOYkMD4FiZQmgndIPBOuMleghYrE6nSxF0zdX75ri/rzj4rBXK
	K/V60R0SOfbgRUFZJJOsP8i4IW0UVUmzfJ7WW9xp5Ah+NNImRjY1FdaJbyx+cXTHFUdDxKloDef4n
	FUri5ibw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikTEp-0006eB-5a; Thu, 26 Dec 2019 13:31:39 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTEn-0006d9-49
 for linux-snps-arc@lists.infradead.org; Thu, 26 Dec 2019 13:31:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E6BA44266F;
 Thu, 26 Dec 2019 13:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577367096; bh=q8VjuuCK95PHz68NYZhkjHEIrxv1ORP0AB/mKEGgQds=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cBdsdeOhi+NUSpWWMhdqaCXIzL6ypluN/MrGRbDdXJsHY3H35I3mwTeBHWaZdaHYx
 eVn5+iWXJDbDJ4L0suDE/KdpbPwigLNvWuK0ePuSDhssbRJ9CJSuWLZvUif9pKzCTl
 XU5E77gnqqRZsX71WgO6WS+vjDlGQbGRZR2b6UKGj6wBf8tISa+5COfs5YaVLmXOSC
 sD6dvhZkqeFxDOmux+Zk8N/R/SpyjlFO5rXJNGMf/UCjifP3HzAodohndCf6dbBMzj
 czkmwfPstGoqigdhZgnZ1MxUdy8Fzty/+41Nz1f9dwZhl5wS6rHbD6/n6dh6TcEZT+
 0jMLGTk4mDibQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id C316AA005C;
 Thu, 26 Dec 2019 13:31:33 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH 2/3] ARC: nsim_{700|700be|hs38be}_defconfigs: Disable
 networking
Date: Thu, 26 Dec 2019 16:31:24 +0300
Message-Id: <20191226133125.47973-3-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20191226133125.47973-1-abrodkin@synopsys.com>
References: <20191226133125.47973-1-abrodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_053137_166299_8E1DF5D9 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
