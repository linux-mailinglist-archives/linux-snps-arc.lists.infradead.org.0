Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AA721E51
	for <lists+linux-snps-arc@lfdr.de>; Fri, 17 May 2019 21:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vMx6fWhCIbRo7Ha20ukGtQM9VaDf+8sWq/idQ38w5HI=; b=Y953zfiGLSjcuR
	jRePnF+M0DZ7WXbGENLDtfaLT1UUUEMReeLk2IBQlJGsgAOnLAtNlyCHUEfkfCdx6U712UT8+qwL+
	ImGLOqhYi/5PJThaKbZjKOtEm65XYL2cCKkg9fZaHOzDy1YtDGvphQEj8wamARCHfTAq7+tBg4Fsr
	EKwZfRg3bO2PN/jPO9ScHhBpGG45TQAQUt9PFu3FXbUZDNAjCXSIYvoARfLUAjmhx/tHSgZw5Fs8V
	8eJ6rXQAHsBotN8XiYkAlpqNhfZQ5HRlgtz9qhVM/vrb0qNqMcvLwZAw/5XjWGMFVOevWycCRTBFm
	7hx35lI1oPQXcKw62Slw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRiam-0005Ou-7L; Fri, 17 May 2019 19:32:32 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRiaj-0005Nm-Qw
 for linux-snps-arc@lists.infradead.org; Fri, 17 May 2019 19:32:31 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5A997C00E5;
 Fri, 17 May 2019 19:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558121535; bh=j8O86pkhB/C8JdbxUYCEms78o2TDvjnHPnzfvRgCTBU=;
 h=From:To:CC:Subject:Date:From;
 b=bd0e7iEZBw/UgUZefEPip61U0Mf+y9nMaVcosE0jeKniy9v9fZApg2EWMvJgfOllG
 Y8Wt4hrz7ixqKdXIIQIoTgPCFDK2L6u13+/MMZxLQgMzLpHlvsms/ubBthw5oaTOd0
 6gMXCxjY5QjvU90xhyjAyptkfcyoyI6JobDgTdLb182mJIIM7zh8mJl1qeHcwjsU3W
 XOwryS4S5OrpCSuUUmJSKFizivb4YoD3UEQfpY/Lz38DvibpQVEOn2pbZdbSxIqn4c
 21pfIa5kueRS6X2s8u9600KohX5NtonMlM9DXYcmS3AB/Fvr59Bq7UPxyzidQPwJAD
 nxS7HN5FEBMTw==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7E3A5A0067;
 Fri, 17 May 2019 19:32:25 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 17 May 2019 12:32:25 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:34 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.10.161.89) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:21 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 0/5] Rewrite ARCv2 interrupt/expecption entry code
Date: Fri, 17 May 2019 12:32:03 -0700
Message-ID: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.10.161.89]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_123229_883367_90B502CC 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This was along pending todo item to remove the copy-paste from NO_AUTOSAVE
support as well use LDD/STD instructions for better generated code.

Thx,
-Vineet

Vineet Gupta (5):
  ARCv2: entry: comments about hardware auto-save on taken interrupts
  ARCv2: entry: push out the Z flag unclobber from common
    EXCEPTION_PROLOGUE
  ARCv2: entry: avoid a branch
  ARCv2: entry: rewrite to enable use of double load/stores LDD/STD
  ARC: entry: EV_Trap expects r10 (vs. r9) to have exception cause

 arch/arc/include/asm/entry-arcv2.h   | 361 ++++++++++++++++++-----------------
 arch/arc/include/asm/entry-compact.h |   4 +-
 arch/arc/include/asm/linkage.h       |  18 ++
 arch/arc/kernel/asm-offsets.c        |   7 +
 arch/arc/kernel/entry-arcv2.S        |   4 +-
 arch/arc/kernel/entry.S              |   4 +-
 arch/arc/mm/tlbex.S                  |  11 ++
 7 files changed, 232 insertions(+), 177 deletions(-)

-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
