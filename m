Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A26181DC2
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 17:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iNHN21BO+z3tPY9fkTTyHuxZjKY9CkLgNnn6h6ISOZQ=; b=gOw/z8NJsFaqU2
	HKBJ8aN7/B//7DAax3XMToFiZUCB0DpdC6r7AfZJo3hEfOz3ba07gadWcg31iZvqyjZmldbF0jdb8
	bMHQWuQDcbaNlKv3pyXNssi+KpvSiJYk9oGO7GGzeL+oBwn9VGpkX6IZ4lxaz6QhGCptqsTQ7xVa5
	bVTTRjq4CnHNPQpwT65lG4tDcbHiwhxylZZtw295byxySKiv700Ust5Rvy7VmTOg/mZ43sUGAULyZ
	62foRGlaRcNE7GmIjKdTTcU2vTPp/LUgAJRMlhcr8ZKUX00p7a4kbyOfhuhbrC+J/JfILpUDeH5ae
	ltGyfDwgqLa4FUutkwgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4C4-0007f6-VL; Wed, 11 Mar 2020 16:26:52 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4C2-0007eC-OT
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 16:26:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 775DC43B53;
 Wed, 11 Mar 2020 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583944009; bh=TE+IAvbPEgErIcY/ikdZRwowkE45jGIxYuY0PKfZBXE=;
 h=From:To:Cc:Subject:Date:From;
 b=JkjDt5/nNFkbxizkqoe8is0bnVuy8LjJ3Xa9wWqXrNqmQMJKmglp5mybjlW1ofttv
 +z0pwktLzv4zMZRnLSShKdAmBx0l7IkhAhiQdpTPw4pN3ppHhSSXdjjhv0Tmd/m3dP
 2NKAIeYY9BWNA/0CvWEWO7rFEXEF5Yr9JR/qr3LdG2OYR1a4BSmsflb2hd1TX7Bv5m
 ssh9IbqPws0Yu0bP78EQkJufnq131i6hA5k4zReE4zssQ9DBlm18rRYCyD/wHaH+9K
 KTGFC13GZbxknFOtqzBbXBypb4+llJKL3IW7NHsg6Ecdp7fMMoSW3fV8+qeYnkuokw
 iGm6AdwyaiD5Q==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6A831A005C;
 Wed, 11 Mar 2020 16:26:47 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 1/2] ARC: define __ALIGN_STR and __ALIGN symbols for ARC
Date: Wed, 11 Mar 2020 19:26:43 +0300
Message-Id: <20200311162644.7667-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092650_803874_CEB4F2D2 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

As of today ARC uses generic __ALIGN_STR and __ALIGN symbol
definitions from "include/linux/linkage.h"
They are defined to ".align 4,0x90" which instructed the assembler
to use `0x90` as a fill byte when aligning functions declared with
ENTRY or similar macroses. This leads to generated weird instructions
in code (when alignment is used) like "ldh_s r12,[r0,0x20]" which is
encoded as 0x9090 for ARCv2.

Let's use ".align 4" which insert a "nop_s" instruction instead.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/include/asm/linkage.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arc/include/asm/linkage.h b/arch/arc/include/asm/linkage.h
index d9ee43c6b7db..fe19f1d412e7 100644
--- a/arch/arc/include/asm/linkage.h
+++ b/arch/arc/include/asm/linkage.h
@@ -29,6 +29,8 @@
 .endm
 
 #define ASM_NL		 `	/* use '`' to mark new line in macro */
+#define __ALIGN		.align 4
+#define __ALIGN_STR	__stringify(__ALIGN)
 
 /* annotation for data we want in DCCM - if enabled in .config */
 .macro ARCFP_DATA nm
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
