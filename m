Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3288D196A24
	for <lists+linux-snps-arc@lfdr.de>; Sun, 29 Mar 2020 01:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9c+wiATY7nn19BGa3uLf4v9rV9trOYYEZkdDa91tB9c=; b=UJUu1NGY6xpaP0
	GnvLCePvKtHLzOKZYN32IiiIBda4TcIWL8b9S2omMtLUsXSheIhAsmsVXYx6vKcXu1c4Go9OXJHRa
	6aX0ssS3Va12bnQ6Q6NX86dSJ2qYK4WAekGhRN++aICuFlr0aervNkpF3EQri+ZM4LlegJsXBLrcA
	treje+GjXS4/LWsQMYgZixg5zt6+eSDjSta8HimAcyzbSTOZLUHAwsSvbWwihwopWd0IYf4muRbW0
	ksoCCYfbtt2CjlVB2JE9kAs+5BHG2WrOwY/8rHoj4Z3YVCjw6DXL2OtIoFinYUupUHt6GEqgpTRKZ
	estg8RGhprkJjUP7WmPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jILRy-0001RO-S5; Sun, 29 Mar 2020 00:05:14 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jILRv-0001R4-SR
 for linux-snps-arc@lists.infradead.org; Sun, 29 Mar 2020 00:05:13 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7EE4D426A8;
 Sun, 29 Mar 2020 00:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585440311; bh=APZkSypiiGEccWyXyP/nbJuIrVqJBrhvxngr5DzP900=;
 h=From:To:Cc:Subject:Date:From;
 b=YEc79yVd4I0Xye5TAsTVsALshWbkeu03lVnx1aAnLzQxrGsjMc9GdoXzUejF1TbSb
 GnpMsu6cRWpzWNscPlG/EDzYS556p71pwkzqBuC176YnF+K0F2wBIvlnMHLrkWB/S5
 yAToAfy7Oz9S+eWdD7JE8zj0t9qK3/2x8v62ZwtD8pZIxbZhMEX/JYp4GE3PLZTmTr
 JEu7lAIrkVCOZI3dTJGFew6Q2InJS471js3EwPXjRJgs5iAnXtsDO37TiAzKRDWKAv
 iM4i3b1NGjDr+H1OYYmt0HO5jA9KTgB5PLnCgHeIISm6r8yEsFJNyNg47LeVMolhuV
 +2UHGpPwS8lOg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 9E706A00B3;
 Sun, 29 Mar 2020 00:05:04 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: gcc-patches@gcc.gnu.org
Subject: [PATCH] [ARC] Allow more ABIs in GLIBC_DYNAMIC_LINKER
Date: Sat, 28 Mar 2020 17:05:03 -0700
Message-Id: <20200329000503.27897-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_170511_929946_B31293CD 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org, andrew.burgess@embecosm.com,
 Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Enable big-endian suffixed dynamic linker per glibc multi-abi support.

And to avoid a future churn and version pairingi hassles, also allow
arc700 although glibc for ARC currently doesn't support it.

gcc/
xxxx-xx-xx  Vineet Gupta <vgupta@synopsys.com>
+
+       * config/arc/linux.h: GLIBC_DYNAMIC_LINKER support BE/arc700

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 gcc/ChangeLog          | 4 ++++
 gcc/config/arc/linux.h | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/gcc/ChangeLog b/gcc/ChangeLog
index 86ad683a6cb0..c26a748fd51b 100644
--- a/gcc/ChangeLog
+++ b/gcc/ChangeLog
@@ -1,3 +1,7 @@
+2020-03-28  Vineet Gupta <vgupta@synopsys.com>
+
+	* config/arc/linux.h: GLIBC_DYNAMIC_LINKER support BE/arc700
+
 2020-03-28  Jakub Jelinek  <jakub@redhat.com>
 
 	PR c/93573
diff --git a/gcc/config/arc/linux.h b/gcc/config/arc/linux.h
index 0b99da3fcdaf..1bbeccee7115 100644
--- a/gcc/config/arc/linux.h
+++ b/gcc/config/arc/linux.h
@@ -29,7 +29,7 @@ along with GCC; see the file COPYING3.  If not see
     }						\
   while (0)
 
-#define GLIBC_DYNAMIC_LINKER   "/lib/ld-linux-arc.so.2"
+#define GLIBC_DYNAMIC_LINKER   "/lib/ld-linux-arc%{mbig-endian:eb}%{mcpu=arc700:700}.so.2"
 #define UCLIBC_DYNAMIC_LINKER  "/lib/ld-uClibc.so.0"
 
 /* Note that the default is to link against dynamic libraries, if they are
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
