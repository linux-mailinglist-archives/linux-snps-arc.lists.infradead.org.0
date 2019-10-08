Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896C6CFDFF
	for <lists+linux-snps-arc@lfdr.de>; Tue,  8 Oct 2019 17:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7z5XRuppEspxIntll8PLEYVLx/6Wfs4JaQm+tJcezrs=; b=n91
	ZdvXRodg6XCBRkB0e8EteuuHitp6C/mmL+CE8/peHaMIjzKb6+vlnrSDMWTtXpLdt1VjQTP4/3iQA
	hpLs25CGLDEJvgW+RSW3VIgWMHrpdlPS7HJGpSGuDPIzCSIBFAszsjuGeO/v6BGxZc+Rf+ngeXMe2
	DLFFgdKbyl3M8laFR2+ZlER8wJ5Caq9tbKTMFDNeJKjB1df0osduOC6+agbnNVOrI97qRqCby4JvO
	wlM8jNQ0QbhQETYuLjuNCd4tQOmTbm/DVg14S33nU4gORQxgQdixM0/duKryGkD1dCY6Y1Wvy9W+I
	HBnK0Jao68usDsXrUQxxpFFQjwOBRog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfn-0003wr-7e; Tue, 08 Oct 2019 15:45:15 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrc9-0007wR-KJ
 for linux-snps-arc@lists.infradead.org; Tue, 08 Oct 2019 15:41:31 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0CB6BC0505;
 Tue,  8 Oct 2019 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570549288; bh=6iiENU870Ja1DZyM+6NuBqIx3vNZU/R3+7Bt0Xqs+Zk=;
 h=From:To:Cc:Subject:Date:From;
 b=N8MEFSWXEokOvBAaG+Scge3Zkg96Y4rSW5dOyU3hPTEGxXthEySvQ36Zhao0pL22B
 ebm4fxwD8Kfxwd7dq/+wUSKFA/OH2U6aNE+n15OomYQcSEb9cke/qzL4v6WVO+5qjE
 +3TtjCXsRVMcMHIAWfFP4Vqs9idKjVYAupQei9FdeN/JVsokciDiXdNclB+MMAhSTa
 bcW1dD3boitRvkzC6MlEq1Bc3xHhxnwCgMY9f9GfrPnqI7WibkrG+No5dr9jcASgnq
 VwdJ1/cUAOhIIH1IX+hs3SLHjQe1FEwnQcjo9XFeTG0Rzh5KDgTdc31CzIt/Mxkfyt
 zMkHI/igz9fqw==
Received: from abrodkin-e7480.internal.synopsys.com
 (abrodkin-e7480.internal.synopsys.com [10.121.8.24])
 by mailhost.synopsys.com (Postfix) with ESMTP id A1A8CA005B;
 Tue,  8 Oct 2019 15:41:24 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] arc: emsdp: Increase max FAT cluster size
Date: Tue,  8 Oct 2019 18:41:22 +0300
Message-Id: <20191008154122.19972-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084129_718721_8A6EEA8F 
X-CRM114-Status: UNSURE (   8.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Some especially large SD-cards come from stock formatted with
larger FAT cluster size so to accommodate those we just increase
what we expect to have here in U-Boot given we have a plenty of
space on EM SDP (16 MiB).

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 configs/emsdp_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/configs/emsdp_defconfig b/configs/emsdp_defconfig
index 42415ea713..09fe388e58 100644
--- a/configs/emsdp_defconfig
+++ b/configs/emsdp_defconfig
@@ -29,6 +29,6 @@ CONFIG_MMC_DW=y
 CONFIG_MMC_DW_SNPS=y
 CONFIG_DM_SERIAL=y
 CONFIG_SYS_NS16550=y
-CONFIG_FS_FAT_MAX_CLUSTSIZE=4096
+CONFIG_FS_FAT_MAX_CLUSTSIZE=32768
 CONFIG_USE_PRIVATE_LIBGCC=y
 CONFIG_PANIC_HANG=y
-- 
2.17.1



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
