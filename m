Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CD511707D
	for <lists+linux-snps-arc@lfdr.de>; Mon,  9 Dec 2019 16:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d4lFYNlHwmUDQz/KEZRhBDifSaorxAnLwHAcboXHpXg=; b=COMKENBLNVxFfG
	dirlRkKhvjG6y3bDntbPm55UJKMx8x0thKx1GC9dvlp/M5tIDJOFVNZ4rkYP8Vnx9OZcJ3ZlWSR2F
	Lle+2EGvRI99sMYKClcjLML18Gsxxm65jmrEsI55eh7K48EMfOcHPpFfEBdwJqi+qlSXwmOTzXEVG
	esz9NrJH42gCEzq51dwdAMzTN7NBnXrUgOPlgQdoj+T2U9TF/MT2sjHMFJvuOuuZI41JV6lxovKJP
	15KKXdsUnq+Y2RxPBQbgn6D0uaj4XNRIkyePCVgUZKwKOAM2YOvrnsIdXXeMEtZkB2qzMDk3893we
	SNzuhlwHedMd20bQtQag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieL0g-00082i-VX; Mon, 09 Dec 2019 15:31:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieL0f-00082F-34
 for linux-snps-arc@lists.infradead.org; Mon, 09 Dec 2019 15:31:42 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94E552068E;
 Mon,  9 Dec 2019 15:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575905500;
 bh=uBbljxlnOsISZjmm7To1ryWgpDjQAcMD05X26vwmrac=;
 h=From:To:Cc:Subject:Date:From;
 b=qJLP9NHyDdEhNvGzgfjwQxhXKeXn6lW2J5jdge6fhuHoaY4A4jizURhn5wru6lusT
 ciE9P3kW8cWrSpf54lCYbAM/S3EZGc2Ph/9cEdHzxMsaCAku0mebXaWeCKJhtabkpT
 3S76DgbQSnYZlu20VC3ClvnlesZkRI5JYL21zn/k=
From: Mike Rapoport <rppt@kernel.org>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH] ARC: mm: drop stale define of __ARCH_USE_5LEVEL_HACK
Date: Mon,  9 Dec 2019 17:31:35 +0200
Message-Id: <20191209153135.22475-1-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_073141_153174_6542593F 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Commit 6aae3425aa9c ("ARC: mm: remove __ARCH_USE_5LEVEL_HACK") make ARC
paging code 5-level compliant but left behind a stale define of
__ARCH_USE_5LEVEL_HACK in arch/arc/include/asm/hugepage.h.

Remove it.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arc/include/asm/hugepage.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arc/include/asm/hugepage.h b/arch/arc/include/asm/hugepage.h
index 9a74ce71a767..30ac40fed2c5 100644
--- a/arch/arc/include/asm/hugepage.h
+++ b/arch/arc/include/asm/hugepage.h
@@ -8,7 +8,6 @@
 #define _ASM_ARC_HUGEPAGE_H
 
 #include <linux/types.h>
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 
 static inline pte_t pmd_pte(pmd_t pmd)
-- 
2.24.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
