Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5CC23872
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 May 2019 15:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VoWPY3Avh8OmBU8pSGfM1yi4Q3w58TTeYoyZXEcqobc=; b=K3S
	CjqEdN7gkwfpKSmcmAw5O7K1gjey1mWwtcCTIaoKOGAM3n7LkFbLJpF9zGY7POaeefVeVUoGgowtL
	uBgXwituAsW9BF+s3M0wK+b41z0zo+4jSvPjc+BYFq7yYZlEjH/bVnG/u+GlLYCpNvrFH+FReaxg7
	MqOU0/7L8uYfIklAm6KtJTf86by7mdh5rxACTQ328IA3V39fB5e3HnLm7cDnnISxqhnzefvGNmmNu
	punJEqhKE+7OsZZCBAgtNPRA1dSDGVhsch3k0133HPUe18jKTL8uQzNRccn8OFyWZxXtSQBmUuuRB
	uymG9Uk6jw0lxn0+0vfm3dq/CX3r73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiZV-0007AX-Kf; Mon, 20 May 2019 13:43:21 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiZS-00079O-UJ
 for linux-snps-arc@lists.infradead.org; Mon, 20 May 2019 13:43:20 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D263DC0185;
 Mon, 20 May 2019 13:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558359784; bh=fehVZmzAKfTYKXby0hwi6xFx6X2hjj3eoZIKDWG+gOs=;
 h=From:To:Cc:Subject:Date:From;
 b=DUISUlCcve8zdBfHCMRbWWbnYxWGCx0WXBRnv4jeTPRwV5pCO6EiV7PQ9PHXfBPBp
 MEtEzn7wk1q0gQj9OWKQlyv2VYZRugK3a6cKWlEHhjRK0o9deJyC+yqPP3HoXMqX1N
 lnxbGzPaJ4puCIxjSIY5AjcwbYZ2wxCIcwVJbvpUbbMytwenDomHUo49vAp2KPg8+S
 ItV4O3WSosinSv47Yp/zC2JqBG4mnLWpZSksFxKPZJubNJuUIBb+11nr4MYwSGodXk
 OniW/HIqNsYdYwBKDfGcj4lEVsJXB0U3q1MD0BlrPv4ITuz4ZXDJ8Qfdx6hZwMu6A7
 CQxhpROlHLDRA==
Received: from de02.synopsys.com (de02.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id 98C05A009B;
 Mon, 20 May 2019 13:43:15 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id C61163CE81;
 Mon, 20 May 2019 15:43:14 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: devicetree@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] ARC: [plat-hsdk]: GMAC DT Bindings Improvements
Date: Mon, 20 May 2019 15:43:11 +0200
Message-Id: <cover.1558359611.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064318_980646_66829930 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Mark Rutland <mark.rutland@arm.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, Rob Herring <robh+dt@kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Add two missing bindings.

Cc: Joao Pinto <jpinto@synopsys.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>

Jose Abreu (2):
  ARC: [plat-hsdk]: Add missing multicast filter bins number to GMAC
    node
  ARC: [plat-hsdk]: Add missing FIFO size entry in GMAC node

 arch/arc/boot/dts/hsdk.dts | 4 ++++
 1 file changed, 4 insertions(+)

-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
