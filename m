Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BB7A55D0
	for <lists+linux-snps-arc@lfdr.de>; Mon,  2 Sep 2019 14:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vYo20uxwZlikqAGc2jCPT8Vjhe5XzfHzMyfIdrcoxMo=; b=qPm
	XZJ+LfYN6Ez1/NDSWoIYE0lqSisGlo+XT0eLgdv8UMlmOxmgYT/RCb6KdAEhc04T6vLIi53zKfoBP
	YboMLjo+IBEMGp6GGHBgF9HK642dQhMqjl4MzhN0FTO1EeRyOKxKedjMALdaPUrA26Br7sBJ848nH
	Lz08bawNOXrpy2+lRuGkV0dL8jgPuHPTk+5caDHDiBk0mv7IU03Z3B37hf++WQeq8Xx6rNWWU+SJs
	BJ85TdQFoSZeL1aYHHXhmOdmNyl1L2g+vzA+wxdnFMKww6qklspeThfoH7NbZ/YLj8SqV8uwnJvQT
	MJBcTAvdCx5lBxWLH/IkGIih7+3flDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lLN-00026E-3E; Mon, 02 Sep 2019 12:22:01 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lLK-00025t-I8
 for linux-snps-arc@lists.infradead.org; Mon, 02 Sep 2019 12:21:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2AF74C020D;
 Mon,  2 Sep 2019 12:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567426916; bh=vL0gSE8HJwwF+DQbjps/Eu7QT2PDEy62FfisWhq7nBY=;
 h=From:To:Cc:Subject:Date:From;
 b=gM8zVwTfIsGRYxVi6F38Fni2VGs9Dpj8kLATk0FqBGAmXgR0OMN8dhDazUSypULN0
 OOFXjLy298f1zYTqJZNiDwrYE1mfMajjrjBUxfFii8gYKIeyBuyZOM831EBDCLpC4C
 ES9UPWQ6ym9sW1cIwVOTEFDzCz+FZ+EW6P95wuziQUfzeihfMlCAuWNgzoEUzK2vIt
 oP8QsvwXMYxyM2IHbMiHy61KrNjLqsyiIos6GyXyscKrEEYU2CxGLCyXsUi4UcFaq1
 cp5F8g/apqOdf6ofFR3Ri9ZqykjsYYrDxN1uYEtBmmZstJZ1HKpG4Q2kRFZHoGVDRq
 VhIjp4NmKVaaw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 989A7A005E;
 Mon,  2 Sep 2019 12:21:53 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] arc: emsdp: Add more platform-specific compiler options
Date: Mon,  2 Sep 2019 15:21:51 +0300
Message-Id: <20190902122151.39637-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_052158_604491_E77D7354 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Kever Yang <kever.yang@rock-chips.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Even though EM SDP is FPGA-based board and different FPGA
images (known as .bit-files) are awailable for the board still
there's a common subset of options we may rely on for all configs.

These are:
 * Normalizer
 * Swap instructions
 * Simple multiplier
 * Barrel-shifter
 * Floating-point unit
 * Shorter instructions (code density)

This among other improvements allows to compile code with
64-bit divisions, see [1].

[1] https://patchwork.ozlabs.org/patch/1156541/

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Kever Yang <kever.yang@rock-chips.com>
---
 board/synopsys/emsdp/config.mk | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 board/synopsys/emsdp/config.mk

diff --git a/board/synopsys/emsdp/config.mk b/board/synopsys/emsdp/config.mk
new file mode 100644
index 0000000000..67fd7bf82a
--- /dev/null
+++ b/board/synopsys/emsdp/config.mk
@@ -0,0 +1,2 @@
+PLATFORM_CPPFLAGS += -mlittle-endian -mnorm -mswap -mmpy-option=3 \
+                     -mbarrel-shifter -mfpu=fpuda_all -mcode-density
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
