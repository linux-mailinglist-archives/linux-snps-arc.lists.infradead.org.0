Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D163D082F
	for <lists+linux-snps-arc@lfdr.de>; Wed,  9 Oct 2019 09:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eMj3IAqWjJgXyh9qrdxQ6N9iN15pd8i7FmF6hbWp/Sw=; b=erD
	Mm0/nb1gaVKXGj8uNxqi3v2bRIWI0Q+yNIVSZFSWGuP1fCIPHKGoetYCNOfeG9BcTtkA/y9eL2DaH
	JdZMpXWowVr/2wO4mpx0cmrgXSa/9t5VA5JD1y7LAtjSGxL0jKi+SvfagBVbTGCasZIKnsmI3YgUp
	tc6Jpz5gx7XuQO7qabcmP3n6EeBdMpwbqPoso8itwOLmg0FzwNLpMJRM06ADjQlgs+n343FyNJO0H
	mrOmqF76cPw8hnyTWywFornA4xYHSjqmMYdvs9ck1Eu69UY79BSpWWns/7DF0hl8nAEKMOmRSY+Td
	mUXtboF8ZyQiKmvWpHCc10sdSY4X6tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6Hx-0007eH-5L; Wed, 09 Oct 2019 07:21:37 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6Hu-0007dx-Tk
 for linux-snps-arc@lists.infradead.org; Wed, 09 Oct 2019 07:21:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5DE3CC037B;
 Wed,  9 Oct 2019 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570605694; bh=lhLgqETuEy0L7sYLexphtKI06cWCnStEdd1vPsNjGz0=;
 h=From:To:Cc:Subject:Date:From;
 b=Qstvy9UEffLbNY59G4RkPPpbNwDcxbZKyD+1cSrbMv3kJUj4c845IDPj5saGtcwF4
 s3DppiwZ/V1I6s5N7JE0geY9u9hNxtX3n6JWpb7Xkv3byCGbzHoH0pDqfsnJ1rejuI
 Wk+P6xhrUkSvOWCjKkbyEsrP7yj8vpAeroVm+3kq9hIm/BTUCJnr5TNginkmr3GPPM
 A41UY7wGOzf7acuF/8c8483T++ZYb0yVpoiZpKkqF5RyLdpxHZhr0hW7L80tZ7K0+I
 6IB6KUv49GReYxY9UBCsewqDcTW3t5Dkumm8MzhZFOgFs8kWqNTJtLLTUr9HiHTm0u
 MfoWl/qLNam9Q==
Received: from abrodkin-e7480.internal.synopsys.com
 (abrodkin-e7480.internal.synopsys.com [10.121.8.24])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3E5A2A005B;
 Wed,  9 Oct 2019 07:21:31 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH] arc: emsdp: docs: Prefer Degilent over Opella-XD
Date: Wed,  9 Oct 2019 10:21:28 +0300
Message-Id: <20191009072128.2851-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_002134_970311_2DF9C071 
X-CRM114-Status: UNSURE (   9.59  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Back in the day on early board samples built-in Digilent JTAG probe
was not functional so we used externally attached Ashling Opella-XD
probe. But now with production units everything works as expected and
so we anybody may enjoy readily avaialble built-in JTAG probe so
we specify Digilent oprion on MDB's command line example.

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 board/synopsys/emsdp/README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/board/synopsys/emsdp/README b/board/synopsys/emsdp/README
index 034062e397..036554c4d5 100644
--- a/board/synopsys/emsdp/README
+++ b/board/synopsys/emsdp/README
@@ -79,5 +79,5 @@ ARC EM Software Development Platform (AKA EMSDP)
 
       2.1. In case of proprietary MetaWare debugger run:
       ------------------------->8----------------------
-      mdb -dll=opxdarc.so -OK -preloadexec="eval *(int*)0xf0001000=0" u-boot
+      mdb -digilent -OK -preloadexec="eval *(int*)0xf0001000=0" u-boot
       ------------------------->8----------------------
-- 
2.17.1



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
