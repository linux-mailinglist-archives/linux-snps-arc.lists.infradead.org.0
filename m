Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF4C1157D8
	for <lists+linux-snps-arc@lfdr.de>; Fri,  6 Dec 2019 20:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kdovMMVuvz27Nr8NXMqOu8NwmXWuzTda52AKEFrjPA=; b=JpskdGhSRItcTD
	C72Rt1sDBdAldFBGu8mDE9fBMPen0oLAmyrtrITo+wWGQsueXyy548rXjnJmgzG/L5pMKLrUlaxgC
	3dT1hLInhftmWRWVlV+8r+xtRs0Yfkd6JSbKFDb9yAjWg3dBajorKMDqAmvSZ7szv8hj7UlRnfana
	Ltehqdkl+8vLw341LUqkssMx5d6WUzPrajqS89qTZ6FterRbdIEohsZnUrLnsaBS+sfdc6+uFb39g
	6Gu6tcUgtVhySXbZ8tV2rDownDCLAUDNPiHnsqdqzBxv1I9NYvtTQg0fnEvl+GWUHDF0W29PwA7OS
	7KCNzHct+8KhX69hTx8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJRt-0005SJ-OK; Fri, 06 Dec 2019 19:39:33 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJRq-0005Qg-CX
 for linux-snps-arc@lists.infradead.org; Fri, 06 Dec 2019 19:39:31 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 57A14C0AF8;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1575661167; bh=ORhOSdN87XTUXfG8MfDRSffSpoJITL/T0mXxiPKL4Zk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W0JjiazxEyDdH/jWzAUUmYgkFrcWFVtEBnyq1Q1desjDrYQruWXyxWKPpxPN0GiHZ
 +MffVvtQs7sQuOwanOg02XfYxboVh1aBVpbd7tixIU5zmGkXwfrL14dPZQq3zqRkpo
 sE7KAxlb9NVL7W8r0mD9GfXrH+PYY3Xn+t4TsnhlPE5FKdu62ThT1KQUdBCR8Ggh16
 vGh548FqaQHZHNUxB6Eu5zCXNzbT/RmOO9RWrk+l+5x8QJDlZLQlkhQA+qZ7Lvou17
 UJfXCEhG+fvMasNyJ/gRYQGtzOvcs7rt4PNk7VLCOV7iMMRaivypW7QNk8FVH4CcJF
 Sy0IELzYIi+kw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id ED64FA005E;
 Fri,  6 Dec 2019 19:39:26 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH 1/3] toolchain,glibc: Allow ARC big endian glibc builds
Date: Fri,  6 Dec 2019 11:39:22 -0800
Message-Id: <20191206193924.18777-2-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191206193924.18777-1-vgupta@synopsys.com>
References: <20191206193924.18777-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_113930_466526_9B194094 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: Evgeniy.Didin@synopsys.com, linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Alexey.Brodkin@synopsys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Vineet Gupta <Vineet.Gupta1@synopsys.com>

Apparently big endian glibc builds just work, if we let the endian
header allow that (which prev was #error).

The current ARC glibc version in buildroot arc-2019.09-rc1 already
contains that fix.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 toolchain/toolchain-buildroot/Config.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/toolchain/toolchain-buildroot/Config.in b/toolchain/toolchain-buildroot/Config.in
index 95d513004aa0..a980f766ac14 100644
--- a/toolchain/toolchain-buildroot/Config.in
+++ b/toolchain/toolchain-buildroot/Config.in
@@ -48,7 +48,7 @@ config BR2_TOOLCHAIN_BUILDROOT_GLIBC
 		   BR2_powerpc     || BR2_powerpc64  || BR2_powerpc64le || \
 		   BR2_riscv       || BR2_sh         || BR2_sparc64     || \
 		   BR2_x86_64      || BR2_microblaze || BR2_nios2       || \
-		   (BR2_arcle && BR2_ARC_ATOMIC_EXT) || BR2_csky
+		   (BR2_arc && BR2_ARC_ATOMIC_EXT)   || BR2_csky
 	depends on BR2_USE_MMU
 	depends on !BR2_STATIC_LIBS
 	depends on BR2_TOOLCHAIN_HEADERS_AT_LEAST_3_2
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
