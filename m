Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5E6181755
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 13:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly//pic6eaqRkw6HU5R7DkznWPowRC95AMSh3Uk0buo=; b=tCFmK8uO+KcbBP
	axprfI82GTfvbaWvugOtnqAmd9bO2JF2uyjHjWk1QXKwV6OElWpq0mSKXq4SFcUMou2R8Y8xEoEXW
	u5cP+CrdGLwVP2ixUI5r2oEUPC1gVTocSR9PFdNmPGWOVtdRwv5IOpzEPr0P74wMVJWNmz69cvqGN
	MI+zNSmBJbof6i4nW4XPHn10xqi4nyVzgEc1ONvQP+eMSAqQbVlHFkL9xN4C3sz4NsdvA04bhAJ1I
	/09NtRwTP7eo8YucFx7rHQIKw0Y6WAVsmcMhG5kgEc5XCTBzxxwBrVftVojzO3SZxund7F5fh3Rc5
	cUjrHuB7ZCeSMalMprLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC02j-0006Hu-CM; Wed, 11 Mar 2020 12:00:57 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC02g-0006GC-7C
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 12:00:56 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A0EF2C0F5D;
 Wed, 11 Mar 2020 12:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583928052; bh=6bXkxMhEKkVUrWcjNKfV2NynMKvAcjMSxka86IiT1qc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j1UKSWoJeFtFnOJMTP4XV9AJJHwc3F7Gcmf3ltGg6CnHN5yiQ0SheF1VzUj3N/oCE
 GyZ0zzlMOUsQoeKi8UZYqB5ewRivV6vP5wypVBwMRk6fWrWFOw4WsnCMNKLb0XGexg
 FyqhulZBo8EJ2srr1xL3jfIe2HGYaGSxb1p3MQ/6RduX8Ejlj5GWC9yqPAdXdfMfVY
 NZ1FTuKGSI4fGxUMyc2CoghiB7Lg5brNvWuPW9ujuhcS+lo2vcsZvnaGDpEQYO69nO
 +v4b+K5kpwDdNbNFie2BhLfH8tuJN5/fpDBQ61EPeObTom7jsSAm86IbE2YDYBnIvd
 fxyz4m/GndPbg==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7B7FAA0063;
 Wed, 11 Mar 2020 12:00:49 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: uboot-snps-arc@synopsys.com, Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: [PATCH 2/2] ARC: CACHE: mark IOC helper functions as inlined_cachefunc
Date: Wed, 11 Mar 2020 15:00:44 +0300
Message-Id: <20200311120044.10061-3-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200311120044.10061-1-Eugeniy.Paltsev@synopsys.com>
References: <20200311120044.10061-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_050054_296338_24805A8E 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Force inlining of IOC related functions used in other cache
functions. This is preventive change.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/lib/cache.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arc/lib/cache.c b/arch/arc/lib/cache.c
index c42723daeb2..8a1d67870a8 100644
--- a/arch/arc/lib/cache.c
+++ b/arch/arc/lib/cache.c
@@ -179,7 +179,7 @@ DECLARE_GLOBAL_DATA_PTR;
 static inlined_cachefunc void __ic_entire_invalidate(void);
 static inlined_cachefunc void __dc_entire_op(const int cacheop);
 static inlined_cachefunc void __slc_entire_op(const int op);
-static inline bool ioc_enabled(void);
+static inlined_cachefunc bool ioc_enabled(void);
 
 static inline bool pae_exists(void)
 {
@@ -346,7 +346,7 @@ void slc_disable(void)
 	__slc_disable();
 }
 
-static inline bool ioc_exists(void)
+static inlined_cachefunc bool ioc_exists(void)
 {
 	if (is_isa_arcv2()) {
 		union bcr_clust_cfg cbcr;
@@ -358,7 +358,7 @@ static inline bool ioc_exists(void)
 	return false;
 }
 
-static inline bool ioc_enabled(void)
+static inlined_cachefunc bool ioc_enabled(void)
 {
 	/*
 	 * We check only CONFIG option instead of IOC HW state check as IOC
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
