Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E499356C9A
	for <lists+linux-snps-arc@lfdr.de>; Wed, 26 Jun 2019 16:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DQCQJf5gaBXlMezOIiUvMR2IEMi9PE17AKKbIRZQ2uk=; b=mQzFHMFYC85RijL1o0QdP/bP0G
	5DLT+OM7VShbHmESZTNNUH6cqf00q5Pn1Ga9dhxDHEvHOky6DSeRFAu4VVtDIjH89Q52tAiyFD2l4
	+fFbVja9MRz+n5pzyP6r5Oeyuylk0skwlWJnLFzEfqLa9RhF50F93Pre8YnV+ENDCSujd8vt0RUYQ
	Nj42O/n9jYNK4WP3AxABAh+A+OLzRglO6sfp4r5Zu5KNH5AByp9nS1lgOm9LG9bX6JgJrsej2YoiV
	DzRuR5h2zHc/F7+mi8oDW5MqCJzzGWIVdGDShtRpKChFtIdhx16fHh7sddag7Y92tJPmNU+kmmsQ5
	QSCr74Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9DS-0002kN-6z; Wed, 26 Jun 2019 14:48:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Cf-00026p-LS
 for linux-snps-arc@lists.infradead.org; Wed, 26 Jun 2019 14:47:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so2406349wme.2
 for <linux-snps-arc@lists.infradead.org>; Wed, 26 Jun 2019 07:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fNYOymAKKEH/tI650TaMtzoROF9PuK3S14KyC5Y7dck=;
 b=h2BSh+mBbKB/aAzQ/gQlS+Wj5rwnDzY9BvtREtVrYXOVriKwhIKpHmd+rJkVSbmG+7
 leuCcbHhQpcbswklQB9CS5AFvmAK3Q0l2OJQtqmvEdPvYb+CaC/+FpLEqsB0CvfU5HtF
 x2gP4Z8dfJEIDFqZr7kggg+1ZO6Edh/MzRyPFaps22Ey8JWbglZHGoV3505OjL9D2c3q
 yrrbJcAxDIjQkN5JvsrMw/qvtZkH0JZZWEIfjiz9/U3M3NAogydbjEc5OxSU8KRCEzKU
 iBnLuanOJQETHsnRwmp4BiPnYRnbMRXwgArRpKaMSOKwM4mFB7yDl5EJ8rGO9jdxCWWE
 F5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fNYOymAKKEH/tI650TaMtzoROF9PuK3S14KyC5Y7dck=;
 b=QWW9JrfU0/Z80kEfguX+oNZybSJyUf8jI4If1rNDKx6eAfX/6VLaF+K7Xgxy0k2Y9X
 ptPdqI7gdB0E8w6Zrx2xLTf55XxAfGGJdTSTH5XNUI0HjVwDWGMAMmIK/IGHZg8G7sJO
 j7J57XKLMk9qqoPJuum42OG9AdiCa4nPBYl6IDB32d940eyp/lGnjDqQnM76RLhgtUML
 nX3ikaAMUF14YX3mBJQpTt19H9sV4SO8DJ2ZUVvPp9pWWO/ccKBg+rKwbmTSyMBknJhj
 moyL7R6IOuD1g8GSQbo0SwG7u0bVXu013PHRRL12zao3uIdes/6Vsh1nXikYQlkcpqNE
 SQEg==
X-Gm-Message-State: APjAAAVTbbEP3LQ9QCwBe/InY+Vqlj5Tn1N7g8E3gdKhPx0uskkPRpG5
 g0XemZWX5/sv2HY4Yb05kXTBIg==
X-Google-Smtp-Source: APXvYqwhOresNDpLpLvnoNXvBnluPEveGjhRuYSXOWXlyJsI+E7rzWIim7HNPzw2lJ/GRgxl5Eho1A==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr2932893wmj.2.1561560435122;
 Wed, 26 Jun 2019 07:47:15 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:14 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 03/25] clocksource/drivers/arc_timer: Use BIT() instead of
 _BITUL()
Date: Wed, 26 Jun 2019 16:46:29 +0200
Message-Id: <20190626144651.16742-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626144651.16742-1-daniel.lezcano@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
 <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074717_760871_F79D0A8B 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-kernel@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Masahiro Yamada <yamada.masahiro@socionext.com>

This is in-kernel C code, so there is no reason to use _BITUL().
Replace it with equivalent BIT().

I added #include <linux/bits.h> explicitly although it has been included
by other headers eventually.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
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
