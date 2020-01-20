Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A6F1427E3
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Jan 2020 11:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1+uFOzSL6endnnhq1IryYpmWK26idA0WkmajxY5ALJE=; b=CTn
	RAqitZ0mlIkVhwr4JOd9HU4/GmWfdS5Hj4zlH+Bk+aawml7M8JFc49nh1pLHnw9kp8e/s40YrNKaq
	fRTfv2xtSdDjBcSulqBylSsgu7pzDyvQ6lkbU5YRmBXxE3JCF1bVZg/FoYzP3psHxwB0smTMqCES7
	fYf7pwcZr4Cf6lZy0foRuwEMTXwz86VIbcg+IDX+YmoF2D8RWAR0bZjTCNTVhRJB9N4KiCRy0kuPQ
	j06PsEnxGKznmpWkuDGLVRZycHAy/IDx6t9WgVPQmTT9cwYqNWxH+bW7s4c/8n7IQtAqjzDshVsiR
	gn5SxEXjJAEDddqLyzbIPV75x46fmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itU0O-0007DM-Ir; Mon, 20 Jan 2020 10:10:00 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itU0I-0007Cw-UL
 for linux-snps-arc@lists.infradead.org; Mon, 20 Jan 2020 10:09:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D41E94052A;
 Mon, 20 Jan 2020 10:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579514992; bh=xPaTWfePXY611wuEfKcw+1Ot1+JQuxG5IdJAmY64a6I=;
 h=From:To:Cc:Subject:Date:From;
 b=Q7WBqy+Ul+fau44a9ga918myLyaTGN9i1QtYD11Jz9Ucmip1191V+eX6CFw/Om+vB
 /ty/UeKIPTnRFFUDtCPnZVDOpjkfsoXXoh3KCqTp4IiisVLk13Lpujze8JN9jXFQy+
 SiuRJeu44g2OBxGfmbuMCE0QSmiVzXVrEJb2wXr9qGrnVTb96ZOQ7hNyhfW4xM/Uu7
 jG+s/t/da0Z0TvJW7rrWI4Vg1eM3KOKlXQh8rz0+at1ARr6h/YsOXOQc2cIw12+m1W
 cRJVTLtKCO87epUfRuS3G5rjy7KWfg0vJ6e7Lgz8ahcJ+NjyrheQzx4Pr4v1L2bfSg
 I7L3xPqBxeGzA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 785E1A005C;
 Mon, 20 Jan 2020 10:09:48 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] ARC: Don't mess with endianess settings
Date: Mon, 20 Jan 2020 13:09:40 +0300
Message-Id: <20200120100940.904-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_020954_984857_88E7C96A 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

There seem to be not that much sense in explicitly setting endianess
flags for the tools as we assume the tool with required endianess is
used. I.e. we use LE tools for building for LE targets and BE tools
for BE targets.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/config.mk | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arc/config.mk b/arch/arc/config.mk
index 18005d9993..4b8a0870eb 100644
--- a/arch/arc/config.mk
+++ b/arch/arc/config.mk
@@ -8,16 +8,6 @@ else
 CONFIG_SYS_BIG_ENDIAN = 1
 endif
 
-ifdef CONFIG_SYS_LITTLE_ENDIAN
-PLATFORM_LDFLAGS += -EL
-PLATFORM_CPPFLAGS += -mlittle-endian
-endif
-
-ifdef CONFIG_SYS_BIG_ENDIAN
-PLATFORM_LDFLAGS += -EB
-PLATFORM_CPPFLAGS += -mbig-endian
-endif
-
 ifdef CONFIG_ARC_MMU_VER
 CONFIG_MMU = 1
 endif
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
