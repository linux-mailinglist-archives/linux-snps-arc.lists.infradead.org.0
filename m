Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A5DE1B11
	for <lists+linux-snps-arc@lfdr.de>; Wed, 23 Oct 2019 14:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g62kXo+EVoyGhnIQ8tc57SDngeb/aINd7MGpqDpjVFA=; b=Lz21AwbM81TMDZ
	c5mWPa8AnRIqyx0frYB8cdjTEsZ03Lj0l/+uAT/wpXkB9bs7lYmvEJLB+y9VWjg0YdfWefnoxNyl3
	Ao5P3q0JyJAVYtC2OmhARpHhgMyLRnouiOKMJNgIMb2eUuuoU9mhFecpJ2I/JjjG65hwb79FkKgam
	lJ8Ohkw0L1vkpRF0bsQ3Wf92LFzV8EjIk69j9hCfNIH0twxTJO3FrWpY/G/aORPe7K/sWb6sO64Gi
	5ZlvnKn2CPkJRXASqrIK7dUb7zGMBI5+MR2VeS4JidhsE2HmGy4spzVDk/YgCsQkkaLam6+8rbNcI
	+lg2yEZxWK5V/+n6mh9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG09-0008MZ-0r; Wed, 23 Oct 2019 12:44:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG03-0008H2-QV
 for linux-snps-arc@lists.infradead.org; Wed, 23 Oct 2019 12:44:29 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 29740C08D5;
 Wed, 23 Oct 2019 12:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571834666; bh=jLkKy2hks3L8ylKTsganMXawjwSgKe7zOimqAAm3Gn0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bD1GsQ+wY2iv72FZ+pFo8Up6RmzhCj9bBLVn2qGXFJMABAwV/iVvWAIlJmzmOSUdh
 DiH8MAZh02E/txR2nzbuNROaiIjLZCymSd5upbhi2e0AZn/jka/tp8EVcX4mEaEvIg
 9eu7VAFGmCh3CYngdIlq2yv9AeL/Rd5OOSukA5ksQhpSliI6pBDdr8yravuLN3u5rB
 YjDQjm0lsSAFHJUx5oY4YnpEpNvdV3Ta6gYqMDHRpD1y2ugWE/k0vGgk8IBvY+voPN
 43bpl4Waq8ycprgq2jrEbSl9AQJc0jBlJ3rZqk9RbDVR07PZ2wwyN7sEYNS8NstLqd
 dFbvaLCCb1/UA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4B758A006F;
 Wed, 23 Oct 2019 12:44:24 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 5/8] ARC: HAPS: cleanup defconfigs from unused ETH drivers
Date: Wed, 23 Oct 2019 15:44:14 +0300
Message-Id: <20191023124417.5770-6-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023124417.5770-1-Eugeniy.Paltsev@synopsys.com>
References: <20191023124417.5770-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054427_935549_8D3A5EDD 
X-CRM114-Status: UNSURE (   7.86  )
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

We have multiple vendors ethernet drivers enabled in haps_hs and
haps_hs_smp defconfig. The only one we possibly require is
VIRTIO_NET. So disable unused ones via disabling entire
CONFIG_ETHERNET which controls all vendor-specific ethernet
drivers.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/configs/haps_hs_defconfig     | 11 +----------
 arch/arc/configs/haps_hs_smp_defconfig | 11 +----------
 2 files changed, 2 insertions(+), 20 deletions(-)

diff --git a/arch/arc/configs/haps_hs_defconfig b/arch/arc/configs/haps_hs_defconfig
index 33b7a402b6bd..7337cdf4ffdd 100644
--- a/arch/arc/configs/haps_hs_defconfig
+++ b/arch/arc/configs/haps_hs_defconfig
@@ -36,16 +36,7 @@ CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_NETDEVICES=y
 CONFIG_VIRTIO_NET=y
-# CONFIG_NET_VENDOR_ARC is not set
-# CONFIG_NET_VENDOR_BROADCOM is not set
-# CONFIG_NET_VENDOR_INTEL is not set
-# CONFIG_NET_VENDOR_MARVELL is not set
-# CONFIG_NET_VENDOR_MICREL is not set
-# CONFIG_NET_VENDOR_NATSEMI is not set
-# CONFIG_NET_VENDOR_SEEQ is not set
-# CONFIG_NET_VENDOR_STMICRO is not set
-# CONFIG_NET_VENDOR_VIA is not set
-# CONFIG_NET_VENDOR_WIZNET is not set
+# CONFIG_ETHERNET is not set
 # CONFIG_WLAN is not set
 CONFIG_INPUT_EVDEV=y
 # CONFIG_INPUT_KEYBOARD is not set
diff --git a/arch/arc/configs/haps_hs_smp_defconfig b/arch/arc/configs/haps_hs_smp_defconfig
index 5586511a00bf..bc927221afc0 100644
--- a/arch/arc/configs/haps_hs_smp_defconfig
+++ b/arch/arc/configs/haps_hs_smp_defconfig
@@ -37,16 +37,7 @@ CONFIG_DEVTMPFS=y
 # CONFIG_PREVENT_FIRMWARE_BUILD is not set
 # CONFIG_BLK_DEV is not set
 CONFIG_NETDEVICES=y
-# CONFIG_NET_VENDOR_ARC is not set
-# CONFIG_NET_VENDOR_BROADCOM is not set
-# CONFIG_NET_VENDOR_INTEL is not set
-# CONFIG_NET_VENDOR_MARVELL is not set
-# CONFIG_NET_VENDOR_MICREL is not set
-# CONFIG_NET_VENDOR_NATSEMI is not set
-# CONFIG_NET_VENDOR_SEEQ is not set
-# CONFIG_NET_VENDOR_STMICRO is not set
-# CONFIG_NET_VENDOR_VIA is not set
-# CONFIG_NET_VENDOR_WIZNET is not set
+# CONFIG_ETHERNET is not set
 # CONFIG_WLAN is not set
 CONFIG_INPUT_EVDEV=y
 # CONFIG_INPUT_KEYBOARD is not set
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
