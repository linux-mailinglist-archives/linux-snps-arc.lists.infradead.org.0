Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCC310254C
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 Nov 2019 14:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+B9siFHVZPiBYoIqvGQOeEASgNf8FURQxRPUtZIvSt4=; b=E7DrR2iaAJeBuv
	A5cOl/dtw7LaG5vVd+oZaQpMo7P3crSMC3Xwul1BLAvLPyawNVqdCPAWHzrnphAtFz6/8rI9fyD0G
	A0RdJ9N6JruAyI60OgHQUl4IvqZq8lKs28UZ/jO2tq1rlsgKfdOWF2eZIcfAbyzdNwetvUjE1y5yI
	DS9/5AKz8I8DAPNDy4nYIp2hhfa2rc1g+0VVDJEWkeBPnqZhQIYbARhZKTPJaTWWY/DNv3cO0JRJ2
	1+yxBIANWvAtppdO6nR5mVa3EC83djlXuzNc+HQtWTkylsXNIiuP5dDoFFgug9OrkL/FWZtV+ABN5
	DXk8boaML6obeVm//IiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3Sb-0002jw-I4; Tue, 19 Nov 2019 13:22:25 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3SY-0002iJ-Qi
 for linux-snps-arc@lists.infradead.org; Tue, 19 Nov 2019 13:22:24 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D70FDC04B6;
 Tue, 19 Nov 2019 13:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574169740; bh=+ZcJkALLJwz4SzeqhuvNOMnau0HVKFnDkEnmF7nKBqw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jXAj/eLsK8CZ9Ad0KXHmIGy49Enn17m+Zz5xI23GEIvZFADYhDuIoROVOQOeNqbG6
 ++1moBOqaaQXxf/Q9PWHK2OhB2f54M1OmrD+wyb1a2DyLqKPJzVLCV0fIwy8edCtYc
 Q67N2QJugQEBACa5WoAQfGcknKknJFQiTcU5iferUHEZa4t940fPc84285nxF92/Ik
 McriLAfadXU6SEBQ/nue88jmfjHosqDF9Pje65Ty+CGC4euWzZivRRfYpQfBjgp7gA
 5H1h0Tv1kFw647SYX1ehcaZ+B6wz+ZvEYwT6Si7kEsJ+ie8FGki5RwgZDozDdFSQsp
 nbYMs2wRGzKAw==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.76])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3F3FCA0062;
 Tue, 19 Nov 2019 13:22:18 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 2/2] ARC: [plat-axs10x]: remove hardcoded video mode from
 bootargs
Date: Tue, 19 Nov 2019 16:22:15 +0300
Message-Id: <20191119132215.3011-2-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191119132215.3011-1-Eugeniy.Paltsev@synopsys.com>
References: <20191119132215.3011-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_052222_906413_4A1FEA8E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Now have pixel clock PLL driver and we can change pixel clock rate
so we don't need to enforce one exact video mode. Moreover enforcing
video mode is harmful in case of we enforce mode which isn't
supported by the monitor we are using.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/axs101.dts     | 2 +-
 arch/arc/boot/dts/axs103_idu.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arc/boot/dts/axs101.dts b/arch/arc/boot/dts/axs101.dts
index 305a7f9658e0..c4cfc5f4f427 100644
--- a/arch/arc/boot/dts/axs101.dts
+++ b/arch/arc/boot/dts/axs101.dts
@@ -14,6 +14,6 @@
 	compatible = "snps,axs101", "snps,arc-sdp";
 
 	chosen {
-		bootargs = "earlycon=uart8250,mmio32,0xe0022000,115200n8 console=tty0 console=ttyS3,115200n8 consoleblank=0 video=1280x720@60 print-fatal-signals=1";
+		bootargs = "earlycon=uart8250,mmio32,0xe0022000,115200n8 console=tty0 console=ttyS3,115200n8 consoleblank=0 print-fatal-signals=1";
 	};
 };
diff --git a/arch/arc/boot/dts/axs103_idu.dts b/arch/arc/boot/dts/axs103_idu.dts
index 46c9136cbf2b..a934b92a8c30 100644
--- a/arch/arc/boot/dts/axs103_idu.dts
+++ b/arch/arc/boot/dts/axs103_idu.dts
@@ -17,6 +17,6 @@
 	compatible = "snps,axs103", "snps,arc-sdp";
 
 	chosen {
-		bootargs = "earlycon=uart8250,mmio32,0xe0022000,115200n8 console=tty0 console=ttyS3,115200n8 print-fatal-signals=1 consoleblank=0 video=1280x720@60";
+		bootargs = "earlycon=uart8250,mmio32,0xe0022000,115200n8 console=tty0 console=ttyS3,115200n8 print-fatal-signals=1 consoleblank=0";
 	};
 };
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
