Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDFA6B0A5
	for <lists+linux-snps-arc@lfdr.de>; Tue, 16 Jul 2019 22:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MMuTCFO1ZxJkhlSHd9wueXGarRUqnV00FLU+dbADFZA=; b=QXk
	5LokLn6wr+4ZdvQ8ZS8TVB2IokFC88Fky35yEIM3wdnudP5DhCGLXXn1q3/hrwJRDFedDUEkD4zXU
	kEuyhmgKWb0iweTyysHqD4QzcwrgboJnkknYG1i4fpIkDyAB6joj1yK36R9WrqsnZnnkB3zsTjUX0
	QXndCP9ZkwBae/sk/30JUuGAVfNAYxq5Xg5hoXLowjS0pchHDhOsmtGQ+EGn6HW2LjbJ22nhDTq8e
	rjXUdpyic3rqRXhs2fEJZL3WvQuzDv1OEB7UM8+eueK9tDH6Ul3NxsaugHzPNuZB/dSINq9v18Fmn
	1GyTAbFzhS9bx0g+uJ/1j90FCB3B6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUPN-0005e6-MX; Tue, 16 Jul 2019 20:50:45 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUPL-0005dM-JK
 for linux-snps-arc@lists.infradead.org; Tue, 16 Jul 2019 20:50:44 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CBB4AC1BCE;
 Tue, 16 Jul 2019 20:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563310239; bh=Xd83pvvL6NxmddJj03K0woFOzaR2CHGlGI+s16rvEvE=;
 h=From:To:Cc:Subject:Date:From;
 b=k0PnxTcQErzLC7klEjemFCHSyDoskZUR7M5STFOQ0B/JvpsAw4QrHUX6HqGP8dsQz
 cQhD0cQii+FiO0GM1CCRDuAhHiAiGyy8VrNHf2sBM/kuwb/rXseY1uUzyBvJOxu4Sh
 23HE5qHx/nGzHzfG9729cTyZUQ5ekwzvTmvH8VUypkKi6UrLLvH8YT0XRotdYSnKnQ
 08tOmdTN5OGQp/AKojnFs8rEov0/ghikyKKMRuZ0mTku4ZtNS/lwf4V1u6nbn9MVda
 97XBJsvOGND5/WgPCw2kWK/85vDmAgxh84crHlxzCiHg0RcLZulicny849Y/gnTVbU
 bQfH1nT5QLohA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 49766A0057;
 Tue, 16 Jul 2019 20:50:37 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARCv2: Don't pretend we may set U & DE bits in STATUS32 with
 kflag
Date: Tue, 16 Jul 2019 23:50:34 +0300
Message-Id: <20190716205034.42466-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_135043_642504_C32EE6F2 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As per PRM "kflag" instruction doesn't change state of
DE-flag ("Delayed branch is pending") and U-flag ("User mode")
in STATUS32 register so let's not act as if we can affect those bits.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/include/asm/entry-arcv2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arc/include/asm/entry-arcv2.h b/arch/arc/include/asm/entry-arcv2.h
index 225e7df2d8ed..6558e2edb583 100644
--- a/arch/arc/include/asm/entry-arcv2.h
+++ b/arch/arc/include/asm/entry-arcv2.h
@@ -237,7 +237,7 @@
 
 .macro FAKE_RET_FROM_EXCPN
 	lr      r9, [status32]
-	bic     r9, r9, (STATUS_U_MASK|STATUS_DE_MASK|STATUS_AE_MASK)
+	bic     r9, r9, STATUS_AE_MASK
 	or      r9, r9, STATUS_IE_MASK
 	kflag   r9
 .endm
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
