Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C724B1157D7
	for <lists+linux-snps-arc@lfdr.de>; Fri,  6 Dec 2019 20:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30FwEmlcCpkNCH/HNKSgpBIsvp+ODfMsj00qNcnMOJ4=; b=rbSabe++aaPjLO
	qHdmVCm9aybjC/+hUcOJeJL7ztD3mLHYzDmEdiuV09GHqwbWZR/Hsn/Y4lzctz/itobFqIBLXWSAL
	hvKQJV2gI59GqDAxN6jspLNU3TOm27BvvO04Z/DY7bmVKlert/T7zkvsUEZwNnKROGo/xG6LAzbWi
	ERZdmUkB2wBejihUJodlN6TZBdA0jqYsof37CFoCCNFQwJBryndq7uQPN46bYb5ZzyviaQUjEEIVu
	LUtEWAnw3kC3zOb4KmfKTcXkuWI2ORKl99uF2IDyE7/FvFXt5VHN/UIjfHYdSP6sMv+VIttXjzYuJ
	5HRkh/y8WVECm5LP1IlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJRt-0005S8-Jz; Fri, 06 Dec 2019 19:39:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJRq-0005Qi-CV
 for linux-snps-arc@lists.infradead.org; Fri, 06 Dec 2019 19:39:31 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5A84CC0AFE;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1575661167; bh=kZTnp8R/G5HTV66uh/TSXv1F7Q437TgVxKIvuTqZr00=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hp/4VqshzAjB7AzSKuuJnXXb79qzaFCcHi+3jAvOSdujxGj69nPepjmncmOlJL723
 mLtyBRt7wkKO901HePwxLIdt05Zvs3I2ER+TGRzK+4XtCwyHMhAQE+SeCYAsKRnNC/
 JzyXocZoFk7X6WQqgznekqEUZ0xMMPyl4dHiO0V/MjE9rvYaJIqYfRpoi3BJDG3KQO
 62pFSatweZTLOyOrI7am29OiVeBAaYyPKX/0tBDH40m3yMGgAgJqs/DL597i8amaHj
 jGWnAv6UnYS5+6P9mYNd7O6W52C/kExa895A6fw1rZrmD+aTzKW5yPVSwFIX3pIf2C
 Zt7vRu+ue9vPQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0EB3BA0064;
 Fri,  6 Dec 2019 19:39:27 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH 2/3] binutils/ARC: move ARC specific code together
Date: Fri,  6 Dec 2019 11:39:23 -0800
Message-Id: <20191206193924.18777-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191206193924.18777-1-vgupta@synopsys.com>
References: <20191206193924.18777-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_113930_472338_673ACA1A 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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

That way ARC specific version update needs to be done in 1 place only

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 package/binutils/binutils.mk | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/package/binutils/binutils.mk b/package/binutils/binutils.mk
index a19d6940f7c1..ecc78b81e59f 100644
--- a/package/binutils/binutils.mk
+++ b/package/binutils/binutils.mk
@@ -8,14 +8,11 @@
 # If not, we do like other packages
 BINUTILS_VERSION = $(call qstrip,$(BR2_BINUTILS_VERSION))
 ifeq ($(BINUTILS_VERSION),)
-ifeq ($(BR2_arc),y)
-BINUTILS_VERSION = arc-2019.09-rc1
-else
 BINUTILS_VERSION = 2.32
 endif
-endif # BINUTILS_VERSION
 
-ifeq ($(BINUTILS_VERSION),arc-2019.09-rc1)
+ifeq ($(BR2_arc),y)
+BINUTILS_VERSION = arc-2019.09-rc1
 BINUTILS_SITE = $(call github,foss-for-synopsys-dwc-arc-processors,binutils-gdb,$(BINUTILS_VERSION))
 BINUTILS_SOURCE = binutils-gdb-$(BINUTILS_VERSION).tar.gz
 BINUTILS_FROM_GIT = y
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
