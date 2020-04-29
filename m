Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEDC1BE24A
	for <lists+linux-snps-arc@lfdr.de>; Wed, 29 Apr 2020 17:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7Edyk+2bzf/76Imun746ncxTcYOul58tjS2b6KZOvs=; b=rgUznyroXVVHQB
	xRX31w42x9c4i7fVFpWTysKVV7KE3taI25x/4tcMNo3bKV/Ut6D74UzJTBfuYkM+ZyEvFVvIvyCVM
	KcZjqmQq273zdbkvjiwMDRtd+waJex/1LY65WpFpelWIO3fJSszQmBhK4u2WjvskrBG9T1gaJRsmA
	ssoS6lnGO0TfwfsWqHQvADEUJi7LxP9EaLB5G6kkC5PsKhFU/X/d9obkTOHNulOYopnHcQ3kssL/Z
	wjRbuaqhK44vF0qkECUcxp2NKhWMwSiP6xEmu6NpMDYR8P/yJeKV1b3sujDLYHbqE5/l1DFCN8nMd
	l0RPK2JiRGVILlUeQA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToO8-0004ks-2G; Wed, 29 Apr 2020 15:12:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToO3-0004ex-2v
 for linux-snps-arc@lists.infradead.org; Wed, 29 Apr 2020 15:12:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so1223486pfc.0
 for <linux-snps-arc@lists.infradead.org>; Wed, 29 Apr 2020 08:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZtfxcAdJgvL3rHPILIPyvwSO0rRyZfKUkMWQ4mNPZT4=;
 b=IXA/vaMtixRg5KryB8HwKetJjz1dHyfr7hkD2KT2Lq+cGEbZpYyAkjmwGHsC5/AplN
 iY4noe7J6oEhFmhssZgyIou2PLm9jHrc8o2bNAPs2IMf6yZH36kzEM55OKXDxyv3XfDS
 xVp9WS4J0BMoH5gQG9PYdDhcXymiefnDCnKcn13fqbJdgN3u6vI+eF/Jv1yhU1iP7JAr
 iWbnrzWimQbxSikcM62nTQAJbibNwshiKXqQwNTCgKwbrZN+fpejcydB/hoMCK2yqxTo
 XVbcUljz9PW5AAgKSnQ7DjRNT6qYX+LBUVDCJMs3Fkjwjzpy3helPEiNtCyXEsx1QLc8
 dkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZtfxcAdJgvL3rHPILIPyvwSO0rRyZfKUkMWQ4mNPZT4=;
 b=SFnbKDRIyIW4iaGU8e1pklk5a1uRAlQ0Mw95MZ2ASw0L2Tp285S5DsPt6lbtPtIw/n
 GInem3G+9UsBotF63zQUqZM6sPsppbL5EJ5Lntlzd0EriCd54MZmSersu4eSj/5lyU0B
 6Mj2gIpGBksS1NFTFG25CVpeYLbsdfldOVjRdFXomgbdEuQyAb4xsX15XJsPEQQuXV4d
 G9dVHpNP2l+mCa8uA51ZpULH2Jp9llFryyIa2SO02gtC/dnqqtYZu2tV2drdG5Bs2YwL
 8aMcftYNwM4+j3jw/5sI3sXmyaAljfvizszfrkiweg/HVunHD19YeUPemDkTuPBlzOux
 4EHQ==
X-Gm-Message-State: AGi0PuaJBroK9eDtYRsqN5LY+OaAM8WTHH60SxhzZ66/yvl8Yzdmn9hR
 DV5HNw1icORYA+GS/7+/uAY=
X-Google-Smtp-Source: APiQypJ9KD3omt64yeDmK+4veD1+/ihs8MYf083XhRt4rgQNF1xaAZTkjvYoCOeSW/uoRsmyklXOow==
X-Received: by 2002:aa7:82d4:: with SMTP id f20mr36338827pfn.253.1588173153248; 
 Wed, 29 Apr 2020 08:12:33 -0700 (PDT)
Received: from localhost ([89.208.244.169])
 by smtp.gmail.com with ESMTPSA id q97sm5305049pjb.7.2020.04.29.08.12.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 08:12:32 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: vgupta@synopsys.com, daniel.lezcano@linaro.org, tglx@linutronix.de,
 linux-snps-arc@lists.infradead.org
Subject: [PATCH v1] clocksource: arc_timer: remove duplicate error message
Date: Wed, 29 Apr 2020 23:12:23 +0800
Message-Id: <20200429151223.3120-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_081235_194890_9FCC68B8 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

it will print an error message by itself when arc_get_timer_clk()
goes wrong. so remove the duplicate error message.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/clocksource/arc_timer.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clocksource/arc_timer.c b/drivers/clocksource/arc_timer.c
index b29b5a75333e..de93dd1a8c7b 100644
--- a/drivers/clocksource/arc_timer.c
+++ b/drivers/clocksource/arc_timer.c
@@ -334,10 +334,8 @@ static int __init arc_clockevent_setup(struct device_node *node)
 	}
 
 	ret = arc_get_timer_clk(node);
-	if (ret) {
-		pr_err("clockevent: missing clk\n");
+	if (ret)
 		return ret;
-	}
 
 	/* Needs apriori irq_set_percpu_devid() done in intc map function */
 	ret = request_percpu_irq(arc_timer_irq, timer_irq_handler,
-- 
2.25.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
