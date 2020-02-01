Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152DF14F5C6
	for <lists+linux-snps-arc@lfdr.de>; Sat,  1 Feb 2020 02:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uE+JMKVeRWHKixaEKWMMdjoEjMs+6gBlMqqtR4fyZ6k=; b=MCqYxh4Uqf3Ieg
	LmusiyVgmUF12CiJtdKI+Pe2PO1t8j32nnSv9gCzMFrwnJrSw1R4h7hXK6D92YE55jwNn+KPxd1jf
	R5GnX51KZIVYAsG5k4OIMr3gElqI9LwBwje/oXRIVh/tWb7m5F7175Bu4/1o/bF/ygn5Ns5ye/IgX
	makuqqy77JTkMYTkEAGY21AWS9EQUVdakQujrpYWuVivcC08WWFuoVOdViNt5xl3DoO+DmuEfUgsG
	xDt+FBBIoVzNxlFiMu4rV031fL86+pQQOHECeJAYh/eYlKMozTXYZQVrpQxnIXX2shjRjjoh7uUAD
	bLpudCvvMpEJSHl0MczQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixhui-0004Gx-Rp; Sat, 01 Feb 2020 01:49:36 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixhuh-0004Go-8P; Sat, 01 Feb 2020 01:49:35 +0000
To: Vineet Gupta <vgupta@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] arch/arc: fix some Kconfig typos
Message-ID: <cbd02a9e-5529-1054-957f-766072496009@infradead.org>
Date: Fri, 31 Jan 2020 17:49:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Fix language typos in arch/arc/Kconfig.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: linux-snps-arc@lists.infradead.org
---
 arch/arc/Kconfig |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200131.orig/arch/arc/Kconfig
+++ linux-next-20200131/arch/arc/Kconfig
@@ -154,7 +154,7 @@ config ARC_CPU_HS
 	help
 	  Support for ARC HS38x Cores based on ARCv2 ISA
 	  The notable features are:
-	    - SMP configurations of upto 4 core with coherency
+	    - SMP configurations of up to 4 cores with coherency
 	    - Optional L2 Cache and IO-Coherency
 	    - Revised Interrupt Architecture (multiple priorites, reg banks,
 	        auto stack switch, auto regfile save/restore)
@@ -192,7 +192,7 @@ config ARC_SMP_HALT_ON_RESET
 	help
 	  In SMP configuration cores can be configured as Halt-on-reset
 	  or they could all start at same time. For Halt-on-reset, non
-	  masters are parked until Master kicks them so they can start of
+	  masters are parked until Master kicks them so they can start off
 	  at designated entry point. For other case, all jump to common
 	  entry point and spin wait for Master's signal.
 


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
