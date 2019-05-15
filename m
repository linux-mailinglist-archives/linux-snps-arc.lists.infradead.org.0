Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA311E61F
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oMhryI44lSSPpo1YxMM2ZiaSkD0k5aGQ8J/Y7tefgGs=; b=XkpzRKbgGB8jlc
	FDJ1jB+3YQ75+5wiYn5N2UN5ZAUMyF3ubyCstn5ALmz93X4/equgIiLHMlMH1C4WmU1TJQI3edGmP
	+oxIck11gQ4h537d9pk6yV8eLnRC4Vs/YIsoAAH6cr84cjJBc+HxcOApVKl9BEcayBTXeRqXoH27a
	lgRbNfpwl7CLdxF7UEtRg1e2xnjGCDtn/ir6waMoTLAZ7Fg2E4G3rVlkOW+xeKzmy9Le+fzqhQFhz
	mPoeP77gdF0bj0qMYNiuPkxOPsXD4iCudc8BFxVGFzj6S24rUwvOFNYekk9RKRO1I+4rmSWZ5BJmG
	DoWgSqTrcNml4meHhyZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhnz-0002gm-Lg; Wed, 15 May 2019 00:29:59 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhnw-0002gF-Kq
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:29:57 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F1AE8C125A;
 Wed, 15 May 2019 00:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880200; bh=ttubcOyDHXHRg/8lR8MMWbv3JXxGF5+A18qKO7mrXcU=;
 h=From:To:CC:Subject:Date:From;
 b=LeCQCmQOrVbiDkKATUytS/bNqgblVr+C8prM38lmtf3oDKZQWqYv2zFOiSzX1gLJ+
 wrses5UYFDSyTMnewoDTq8j79xAgl7CDOs86ZVkQZXT7Q7Sl/r2x9qTFb6UYViM+LT
 /+rZAkM7V57JJrgFNDbhQYqE/NBP1JgRD5AiSI4xCKIPcAB1AEQ6XxG25bo6q/YfqF
 4ej9nWFl9nIipAsiY9w3S+d9CjVsgDHqBXkdDC/06O8D5U2PYwHMrAL5y9CrZDmQcc
 PJXoH3mwatA1n12KxDtx/azkIAMCG3u91pvdujPIaA7wWAKTzjorGQKYMXmFftbK3i
 GBmSJJ5FvBOMA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 35C1FA005A;
 Wed, 15 May 2019 00:29:52 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:29:52 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 05:59:49 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:00 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 0/9] ARC do_page_fault rework
Date: Tue, 14 May 2019 17:29:27 -0700
Message-ID: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_172956_692330_72B80739 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: paltsev@snyopsys.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This was on my todo list and Eugeniy's patch in this area pestered me to
finish it finally.

The ideas it to cleanup/tidyup ancient do_page_fault() code and make
it more readable and hopefully better generated code. There are only
a few/subtle functional changes
 - Eugeniy's fix to prevent user space looping
 - reduction in mmap_sem hold times

Also this could have been 1 single patch but this is tricky part of mm
handling so better done as bite sized pieces to track down any regressions

Eugeniy Paltsev (1):
  ARC: mm: SIGSEGV userspace trying to access kernel virtual memory

Vineet Gupta (8):
  ARC: mm: do_page_fault refactor #1: remove label @good_area
  ARC: mm: do_page_fault refactor #2: remove short lived variable
  ARC: mm: do_page_fault refactor #3: tidyup vma access permission code
  ARC: mm: do_page_fault refactor #4: consolidate retry related logic
  ARC: mm: do_page_fault refactor #5: scoot no_context to end
  ARC: mm: do_page_fault refactor #6: error handlers to use same pattern
  ARC: mm: do_page_fault refactor #7: fold the various error handling
  ARC: mm: do_page_fault refactor #8: release mmap_sem sooner

 arch/arc/mm/fault.c | 192 +++++++++++++++++++++-------------------------------
 1 file changed, 79 insertions(+), 113 deletions(-)

-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
