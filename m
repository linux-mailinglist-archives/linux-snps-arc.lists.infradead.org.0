Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795F8E1B0A
	for <lists+linux-snps-arc@lfdr.de>; Wed, 23 Oct 2019 14:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Skh4skbVbV5WOgfNGfE6Ri/DjKoY2L11GArYPwB/byE=; b=TPeELJQeNk8/MO
	V/OVqidJqFu5Nt5GXp9gC4nypAUGd0Xjg/Z8zAJWUmvvBDyMoIpaMjjBLhyr0ANLqFIjM2oLceYJ0
	yUIUWr4eUZUZJn6du7r0YL1LAGidYndiXk3fVxJPBQTiip3JiTDmvD6QcAqYLjed6S0A1t5YBME19
	M7WLEBJQANGn7nsxft5kELp/L3ECcPVL4NdoRBryjQzuNHWlRbBfCDjpWGvH/CpXco80GANcNteaR
	lRAZ8P9MFMEbOcJtHYmqQLCE45k6TLB+X5YZMlKfQsfkj6A17O07uApxlXBikqZZRxSRLT2ldHAjK
	6/MhBr5c+F64k64bqsFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG03-0008Gv-2z; Wed, 23 Oct 2019 12:44:27 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG00-0008Em-Eo
 for linux-snps-arc@lists.infradead.org; Wed, 23 Oct 2019 12:44:25 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 64735C0DD6;
 Wed, 23 Oct 2019 12:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571834663; bh=aXrQqzbVm4I5+qHlUf7maqgUqLYuJAqo/qBpRrPFRz0=;
 h=From:To:Cc:Subject:Date:From;
 b=Bsg6Jw/zAIzcB8ZsPsuB1WTp14Cted3p0mmnYx1fbDk7TltotUXCa/BPdMrzT9bi2
 CtO/mQkXnG17i+zpKtW1i8NLlYrqsoDtIp78aQJZFc+MxWuXT4IdQz5fZdw2ZN9yXa
 kM6JO/2kCWTYY1g49D8q+QycTPaNkdSuBpoUUhMCUn2gwLUnx7eBSEFyymk5gfu1ED
 pobxNeBaYM722mFaQAoEPAyb1fZAAARNdp/bciMfA0ubismBSF2vBHcuIf0XCj0UEC
 ILCQiTZjthDC+8FHUJl9XRzE1/kKFmKKIzFxuibVx2GD1nk7VPwOoqg/QdNQzqeF61
 ItgKj4pYlyYaA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id A035BA0057;
 Wed, 23 Oct 2019 12:44:20 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 0/8] ARC: merge HAPS-HS with nSIM-HS configs
Date: Wed, 23 Oct 2019 15:44:09 +0300
Message-Id: <20191023124417.5770-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054424_535719_DB10B93B 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Starting from nSIM 2019.06 is possible to use DW UART
instead of ARC UART. That allows us to merge
"nsim_hs" with "haps_hs" and "nsim_hs_smp" with "haps_hs_smp"
with some minor changes.

We eliminate nsim_hs_defconfig and nsim_hs_smp_defconfig
and leave haps_hs_defconfig and haps_hs_smp_defconfig
which can be used on HAPS / nSIM / ZEBU / QEMU platforms
without additional changes in Linux kernel.

Also while I'm at it cleanup both HAPS and nSIM configurations
from obsolete/unused options.

Changes:
RFC -> v1:
 * update KBUILD_DEFCONFIG to use the haps defconfig instead of
   nSIM one
 * switch nsim_700 to dwuart

Eugeniy Paltsev (8):
  ARC: regenerate nSIM and HAPS defconfigs
  ARC: HAPS: cleanup defconfigs from unused IO-related options
  ARC: HAPS: use same UART configuration everywhere
  ARC: HAPS: add HIGHMEM memory zone to DTS
  ARC: HAPS: cleanup defconfigs from unused ETH drivers
  ARC: merge HAPS-HS with nSIM-HS configs
  ARC: nSIM_700: switch to DW UART usage
  ARC: nSIM_700: remove unused network options

 arch/arc/Makefile                      |  2 +-
 arch/arc/boot/dts/haps_hs.dts          | 15 +++---
 arch/arc/boot/dts/haps_hs_idu.dts      |  1 -
 arch/arc/boot/dts/nsim_700.dts         | 36 +++++---------
 arch/arc/boot/dts/nsim_hs.dts          | 67 --------------------------
 arch/arc/boot/dts/nsim_hs_idu.dts      | 65 -------------------------
 arch/arc/configs/haps_hs_defconfig     | 30 +++---------
 arch/arc/configs/haps_hs_smp_defconfig | 32 +++---------
 arch/arc/configs/nsim_700_defconfig    | 19 ++++----
 arch/arc/configs/nsim_hs_defconfig     | 60 -----------------------
 arch/arc/configs/nsim_hs_smp_defconfig | 58 ----------------------
 arch/arc/plat-sim/platform.c           |  1 -
 12 files changed, 44 insertions(+), 342 deletions(-)
 delete mode 100644 arch/arc/boot/dts/nsim_hs.dts
 delete mode 100644 arch/arc/boot/dts/nsim_hs_idu.dts
 delete mode 100644 arch/arc/configs/nsim_hs_defconfig
 delete mode 100644 arch/arc/configs/nsim_hs_smp_defconfig

-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
