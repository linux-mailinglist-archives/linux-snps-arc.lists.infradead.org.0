Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EFA29071
	for <lists+linux-snps-arc@lfdr.de>; Fri, 24 May 2019 07:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vqbOLvKEnYWyroO0xt3sQPFN35U3rqm/zG41XJYKoAk=; b=CtP
	PdxAddpSinejXOEPi9jJncPP+JHCo1GSshuOj79mXGCUO4oAyETkBux9EhMZ2Z9y9DwlweDUVm62k
	oj68NZz+kLtYNnhWfWPMnYEjsqRQ5F6KNA3thj0EpWfECuAQKc6sYupCFf4Mk2DELYBOu1YGfb/gg
	VrMlmdr0m3e8iM9FaEbR4jbrXynG1ilc33dEaAmp5TGupxZBjgjbmkrD/COegu68Z/KiCeU2yQcxt
	YdxPMN++q24nqc7h6aDk3JjzXfWxGpZ+5TZLlmyxUPM4/4yQf9rbYz0pIHxEWNEN6X2jkg3J7fagU
	dXE2PiwMCu13Wr6iYc0ypAzRRvPh/oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2wq-0000Kj-F3; Fri, 24 May 2019 05:40:56 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2wn-0000KK-NK
 for linux-snps-arc@lists.infradead.org; Fri, 24 May 2019 05:40:55 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x4O5eDEB025409;
 Fri, 24 May 2019 14:40:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x4O5eDEB025409
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558676415;
 bh=iN9az4yLq8H8s7g0mKC1/aWat7k8YMfbSGrf+YN/OP8=;
 h=From:To:Cc:Subject:Date:From;
 b=2jZOEwPt/oMl8dLaQxV1S+FMPlz/CpP9UQrNnUt8ovtrQgf0dAAhr3X5W5D6lVNeW
 Yu+JH/F/59av5IGQ0yP3Kk0BupUuthgNiwjhlyyXKJ73U2G4uF9FbtDt+rlorZ11BJ
 fbdRw0L5nht8Yk2uSDtIjDXZ+Tuq0Vy3J/i5+emzxRsavL4th0VEp3eakmKBsODkoQ
 R7273/Kda8aOtU4xZfO0zHnaN/WCZsPf1qwp8+SypnyLdarmQqhrfW/O0gcN4mjZ2u
 smH7NhM9o7DQLdWPl2NahHOrnOfjU5gEdmx/rWpPntDPgQv30z3eZJalTBpPocjXZ3
 L0aNnVoX0q8zQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org
Subject: [PATCH] clocksource: arc_timer: use BIT() instead of _BITUL()
Date: Fri, 24 May 2019 14:40:10 +0900
Message-Id: <20190524054010.19323-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_224053_973753_3245DE32 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This is in-kernel C code, so there is no reason to use _BITUL().
Replace it with equivalent BIT().

I added #include <linux/bits.h> explicitly although it has been included
by other headers eventually.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/clocksource/arc_timer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/arc_timer.c b/drivers/clocksource/arc_timer.c
index b28970ca4a7a..b1f21bf3b83c 100644
--- a/drivers/clocksource/arc_timer.c
+++ b/drivers/clocksource/arc_timer.c
@@ -16,6 +16,7 @@
  */
 
 #include <linux/interrupt.h>
+#include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/clocksource.h>
@@ -142,7 +143,7 @@ static u64 arc_read_rtc(struct clocksource *cs)
 		l = read_aux_reg(AUX_RTC_LOW);
 		h = read_aux_reg(AUX_RTC_HIGH);
 		status = read_aux_reg(AUX_RTC_CTRL);
-	} while (!(status & _BITUL(31)));
+	} while (!(status & BIT(31)));
 
 	return (((u64)h) << 32) | l;
 }
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
