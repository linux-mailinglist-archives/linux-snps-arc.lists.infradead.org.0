Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F76F18D49F
	for <lists+linux-snps-arc@lfdr.de>; Fri, 20 Mar 2020 17:38:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=axk7HbIA0ZwqKrhLCdCi4py73qA9GnrCFlOTQqJHIlU=; b=YvLp387x3wNfvV
	Vx1RwnjS9bw5xkKQa6crRQ5k43fbLrtujmei7pikVrV3VX1NPqnxf1Cg3aTrX3oLh4tfymcK//RnP
	YuZ+33Jq6J+HLpLjzhFzlovtQoovINIez7HmhtmYgU1pHKYHweUAfqr1BfD6pSJOynO6Voz7CC1VY
	61vWNlLpIPIVCJB+4EprimI8qIEOAt5nmWrYRnHorBXpEZ/F8fr14M1smJ3k5gmcKrGFiSwWqnTXc
	ueJYe/Y8ZrOLmlbTT9vnDtsjpkGzRi/Wpg7oPHfj97MQ14YFbdTq1LwEHdt4wnCd9NxlC+Io8t6+X
	5J/eKsv2EDtgukvhlC/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKfQ-0006JK-8N; Fri, 20 Mar 2020 16:38:40 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKfL-0006EQ-GC
 for linux-snps-arc@lists.infradead.org; Fri, 20 Mar 2020 16:38:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 52670C0F9A;
 Fri, 20 Mar 2020 16:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584722313; bh=10wN9a/vbwkP9MYpMvBYvkmljEVONcmw91uzR0wyj/M=;
 h=From:To:Cc:Subject:Date:From;
 b=VpIfv+BAWMtFx93ncYHA+vqxtTMSfgcadnIw3g1kDWEZKpVbNcgUdA7vCUQ4x83mG
 kVyZyONds3g3N9xwrkfQRxwlzPk8yQbcEqZZ1SZzEZkcYX7mcKQL7wYdsCbPAZFiaa
 bnSNDzGtLRwmzxG00/JKL6MBtuhVE9rsMJakq+vx575Ak/WUCoEcp92Hn+FZ6vE2aL
 5ToaHRwtXyyc6LeHH41MvQng6+y570GNDIQk+1m65+YdNU9dCHG4pvqFe+1KgQEqX6
 JbicR6+mvAnQVX1Ofcfp4ebtWhVvbviGEYASfO8AOCE5VGNTF4NXqMSz2tW6jLRrwl
 RmA0MUwCCahYQ==
Received: from paltsev-e7480.internal.synopsys.com
 (ru20-e7250.internal.synopsys.com [10.225.48.220])
 by mailhost.synopsys.com (Postfix) with ESMTP id BB583A0065;
 Fri, 20 Mar 2020 16:38:19 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Tom Rini <trini@konsulko.com>
Subject: [PATCH] CMD: random: fix return code
Date: Fri, 20 Mar 2020 19:38:17 +0300
Message-Id: <20200320163817.8628-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_093835_600167_DA669624 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Simon Glass <sjg@chromium.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com,
 u-boot@lists.denx.de, linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As of today 'random' command return 1 (CMD_RET_FAILURE) in case
of successful execution and 0 (CMD_RET_SUCCESS) in case of bad
arguments. Fix that.

NOTE: we remove printing usage information from command body
so it won't print twice.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 cmd/mem.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/cmd/mem.c b/cmd/mem.c
index 6d54f195272..6b4897dfd94 100644
--- a/cmd/mem.c
+++ b/cmd/mem.c
@@ -1102,10 +1102,8 @@ static int do_random(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
 	unsigned char *buf8;
 	unsigned int i;
 
-	if (argc < 3 || argc > 4) {
-		printf("usage: %s <addr> <len> [<seed>]\n", argv[0]);
-		return 0;
-	}
+	if (argc < 3 || argc > 4)
+		return CMD_RET_USAGE;
 
 	len = simple_strtoul(argv[2], NULL, 16);
 	addr = simple_strtoul(argv[1], NULL, 16);
@@ -1132,7 +1130,8 @@ static int do_random(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
 
 	unmap_sysmem(start);
 	printf("%lu bytes filled with random data\n", len);
-	return 1;
+
+	return CMD_RET_SUCCESS;
 }
 #endif
 
-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
