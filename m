Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F6E12DBA3
	for <lists+linux-snps-arc@lfdr.de>; Tue, 31 Dec 2019 20:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hcw5JmEwFkIv/EVVEQkEUjPnuFK6adMh1ghOCAZDVnE=; b=L4K
	DjW7lebAtC2NkoCAi7iNPKqqF/kisQWClsuD6/l4iyXx74d0uJIAocydUq/rQW9sJUqTJnOzF6/a7
	qxinXKv3+G8Fu0WMBIXb1YLEjP5t5jdttJRDIBJS5v86H34yfVvSl1OUnPNek062c6zx3zShWLZw+
	kGQwVJUDVe7bTsBsAsS2zJ1MoaUngDsR9oq/sHF19maqzPS9FON/iZAhRyhSggRd2wBCXZ6Ohz7BY
	5TlvoznerqHo5Uh58rtcZ9SGnKzhum4tlfX0gt3NBOYxzC9ywjEXrNxVsSXX1asKb6e3806jCQcqU
	0ZpIsMu8A4hkHCculi0/K21LrIS0/XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imNeA-0007ZI-7s; Tue, 31 Dec 2019 19:57:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imNe7-0007Yh-O2
 for linux-snps-arc@lists.infradead.org; Tue, 31 Dec 2019 19:57:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so2497158wmj.5
 for <linux-snps-arc@lists.infradead.org>; Tue, 31 Dec 2019 11:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CsU1YPkDyWBaNW9/0vlGQy7znmLLiuhBVSrYueAradc=;
 b=FxjQFh36axpDJGsW4aYnia11mXI7/TpaVw3Gb5v7dqoalYBw0RGP9TVCpJHwmWCBZC
 cy2Pflp8YA+u9Y8Ph8O7dh/ot2UqQpxPpmAcgWa+0NyYR8YSY6u1lOhPpPjaVq+lt3Td
 lf/NrsQVR0XI1b/0PeD+5Vm9GEdrRNl7MDC2IRhO/802djs+MAMezDULypjQ4zvpHTcv
 /DflrTnkyucc8ZXlVcy6FwGq1XqwZBqiJbSwNOlh8hKq/EJo7ufpJpnN5CBTuS4MfXTZ
 33IDsVRhvmyJUduMZrfOuY19ESCtC1XBYXYW0o1YGKsbE+BXJ6I48CFNYVZQxer+JLoH
 ycCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CsU1YPkDyWBaNW9/0vlGQy7znmLLiuhBVSrYueAradc=;
 b=cXnO93+e54quJ/guDIA7rU0FllIFCnu6Tr/NWWFAouk0j/1e/bS5if6F4cIHwqOp/k
 nFD7Ih34CzqpyWnXsWHT8yQkyT8p2JHNSOlW/mdZdswImEYCFK9pU147f5fjECqMFgyU
 ZF+zIVJoVM9ULBpNldGQDNFoBrSQg7FzSegJsEgy1wzM/rtm9LXFvEpXm6api5ZLZfzq
 4svWYpzos6uFb9YN6iCBVvmkLJ7WUQTiZrVMRl1qi0C0Z82C1hxeijFMAGreh4w1Pc5T
 4QkFLB15bRFEOUCMKOrte5a9rPqxNPzrgmCcGdMe0vWUrqUZ4TF8ZtvizDDnscRiHVFr
 LE1w==
X-Gm-Message-State: APjAAAWcfUf1WA/gK2r9ElCUPx6ECRCoCSo2+cUuR/4FHszdvBt9jyRe
 SvneZFwpWZu0NcZM6KmbGw8=
X-Google-Smtp-Source: APXvYqx2NEAB3NMhC7wZ8inzFPyzFcxEskKjvfDe1exbGCNjUr8AL271HjxGRZnhu3BBR4eZw9UI1Q==
X-Received: by 2002:a1c:a982:: with SMTP id s124mr5532358wme.132.1577822258515; 
 Tue, 31 Dec 2019 11:57:38 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b16sm51590572wrj.23.2019.12.31.11.57.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Dec 2019 11:57:38 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH] ARC: [plat-hsdk]: remove num-slots from mmc node
Date: Tue, 31 Dec 2019 20:57:31 +0100
Message-Id: <20191231195731.6037-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_115739_810111_A0BE38C6 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
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
Cc: mark.rutland@arm.com, vgupta@synopsys.com,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The option "num-slots" was deprecated long time ago, so remove it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arc/boot/dts/hsdk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 9acbeba83..1d12808a1 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -251,7 +251,6 @@
 		mmc@a000 {
 			compatible = "altr,socfpga-dw-mshc";
 			reg = <0xa000 0x400>;
-			num-slots = <1>;
 			fifo-depth = <16>;
 			card-detect-delay = <200>;
 			clocks = <&mmcclk_biu>, <&mmcclk_ciu>;
-- 
2.11.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
