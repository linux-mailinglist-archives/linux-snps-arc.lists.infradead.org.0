Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6838519C865
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 Apr 2020 19:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FoEPr/PjjxvzmwTp7I+93ubgrCwaK4L2ifJ22GDUYi4=; b=XJ70kBKikYqbSz
	eXiWMc9Wr5XqKYm+zN2TLCorALcwxkwRc8E92mgE/h/MrcYW6rRQ6xUyWhVeF9AywakB6+k89ECzW
	frF4WXnsMGiwPEJWN0/nMWJL5yEt2YSYK6pf4mYtMHF3vl2ytLMlxG+oSY0pJx1wrD92zyUFx9LfY
	ArI0XLj/nmh41OCMsrHUifHELz83H8ffG1zzVpspr3YTA5G+qxxPiSIYbeBwtn8loEALlShYER32l
	uwklHpjmcQ0nfJp35zMcXptDfX6oKMNz7gjUDnL29N3ysV9MMuFeCPA/I+/bL13684f2qnD+Dj3db
	eLLmzGUFUmo3J02xkL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK436-0002wM-5L; Thu, 02 Apr 2020 17:54:40 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK433-0002v9-3R
 for linux-snps-arc@lists.infradead.org; Thu, 02 Apr 2020 17:54:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6C68DC1019;
 Thu,  2 Apr 2020 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585850073; bh=A6dv7G90AhKWjf3KYGvIpGmSKXRCP5AsEJzU1ocQAr0=;
 h=From:To:Cc:Subject:Date:From;
 b=iAI14Xp7CVsv8UiCjv7hmFQeL/cgN74d88K+zZ62nL/dCg3abStvz+23MzKa/oJdC
 T2BsFTGFEx2oCEtKJK55ACJnzpXzx+gdHWA3WJR43h8+NNbDR63CmWuC9NU3T43kxY
 WZs2E0v8g7AnstXzWQWtpOOPOLSAWd0sY+wwXuqPiU8mujCHyxIrhsGZIkNUqO6Opy
 y5N7eq0vrcPkh29vnzosB598D7CNKk8KLti4THiZY6GXR+O+KPI3XKhnvinA6EHAlJ
 9np7ZBXohxoGnQIKxzfW0CdN8ccfPgfMryUZ3I9T5Fik2im0/v2O9GPhjP2SN9zLkn
 WVe1acC4kOgiw==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.50.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id F26EAA005C;
 Thu,  2 Apr 2020 17:54:30 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH] ARC: Fix ICCM & DCCM runtime size checks
Date: Thu,  2 Apr 2020 20:54:28 +0300
Message-Id: <20200402175428.18823-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_105437_176250_A80A7B82 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As of today the ICCM and DCCM size checks are incorrectly using
mismatched units (KiB checked against bytes). The CONFIG_ARC_DCCM_SZ
and CONFIG_ARC_ICCM_SZ are in KiB, but the size calculated in
runtime and stored in cpu->dccm.sz and cpu->iccm.sz is in bytes.

Fix that.

Reported-by: Paul Greco <pmgreco@us.ibm.com>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/kernel/setup.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arc/kernel/setup.c b/arch/arc/kernel/setup.c
index aa41af6ef4ac..efdedf83b954 100644
--- a/arch/arc/kernel/setup.c
+++ b/arch/arc/kernel/setup.c
@@ -11,6 +11,7 @@
 #include <linux/clocksource.h>
 #include <linux/console.h>
 #include <linux/module.h>
+#include <linux/sizes.h>
 #include <linux/cpu.h>
 #include <linux/of_clk.h>
 #include <linux/of_fdt.h>
@@ -409,12 +410,12 @@ static void arc_chk_core_config(void)
 	if ((unsigned int)__arc_dccm_base != cpu->dccm.base_addr)
 		panic("Linux built with incorrect DCCM Base address\n");
 
-	if (CONFIG_ARC_DCCM_SZ != cpu->dccm.sz)
+	if (CONFIG_ARC_DCCM_SZ * SZ_1K != cpu->dccm.sz)
 		panic("Linux built with incorrect DCCM Size\n");
 #endif
 
 #ifdef CONFIG_ARC_HAS_ICCM
-	if (CONFIG_ARC_ICCM_SZ != cpu->iccm.sz)
+	if (CONFIG_ARC_ICCM_SZ * SZ_1K != cpu->iccm.sz)
 		panic("Linux built with incorrect ICCM Size\n");
 #endif
 
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
