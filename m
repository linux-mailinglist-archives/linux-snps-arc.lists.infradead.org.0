Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2285FB431B
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nK6r1/YgL3GsrUFfanAbHsHo3w9LpaSr9Bm6514F0Sk=; b=svRDh9Tb/CselX
	HDnOqnzmBi3hRVLEAWXaUOFEcepUb7B0fDpaqKB/O1NAz+kWnWCmaoRCMkI98OhlTOUQd6k41O9O+
	p42gZpDLjj93zPuyoHE8YtQn2f54vkzEPLE2mQu/x28p1SdvBG9oNfP1QBY5vl8Vm4RaBvbbZJtMj
	9+uPXbHO6okFGQkOjXDeU/TaCbZBljR3dnJcZYmpiTMV0eGatzOBX8X/qp40vFkkYoWbPiNk4JnmV
	qpersFcTzZjruEOR/RzlsqllbdOMfZqmoIhzKjS3CqjQXSV/r9q4GDwn5YI+eDQC7Ac1VdjgDmM81
	k95c9eaHpRkqJ/9Gr4ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ybT-0003kH-SL; Mon, 16 Sep 2019 21:32:11 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ybR-0003iZ-DD
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:32:10 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3B2C6C0399
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669529; bh=+AJ9YjPEpNJxNnLB5WX5Hr+S3T8RPsvKwC4EIUy299g=;
 h=From:To:Cc:Subject:Date:From;
 b=UkC+q8TOnqleZTjhgCyIyt73Oxy+Vs/qXzFJJXATvt1VmRnEM+z7Q4yLZueskyKRQ
 UgmIKHvNejrvOm1rbsGeis0mDy5acSiU45/9NW+dRwWX/abaeBxwl46lLu1y2QVm1o
 YA8vDf6S5d0FrToJfTopAn8WAVf2P4kjA7BctXcfPyKPuJ6XECfgkwX/8WJy/vsNit
 xX4OOgAjQRpEyjqK9WebTuC1aoU2k+7gTMHCvXv0/rF/slxxlcn2n0dROW6QOdW/7C
 IKTKXbmHzKtk7gVi1wPnJZdBYllv9f4nHEBoOeMzf1Eil+G95st21FCuAxnAGGNja+
 jEcjp93onkPbA==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 1FDBFA0095;
 Mon, 16 Sep 2019 21:32:09 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 0/6] ARC MMU code updates
Date: Mon, 16 Sep 2019 14:32:01 -0700
Message-Id: <20190916213207.12792-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143209_455052_30D76AA9 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

This is set of patches almost lost in one of my older branches. I decided to
clean them and post given the work on newer MMU.

Thx,
-Vineet

Vineet Gupta (6):
  ARCv2: mm: TLB Miss optim: SMP builds can cache pgd pointer in mmu
    scratch reg
  ARCv2: mm: TLB Miss optim: Use double world load/stores LDD/STD
  ARC: mm: TLB Miss optim: avoid re-reading ECR
  ARC: mm: tlb flush optim: Make TLBWriteNI fallback to TLBWrite if not
    available
  ARC: mm: tlb flush optim: elide repeated uTLB invalidate in loop
  ARC: mm: tlb flush optim: elide redundant uTLB invalidates for MMUv3

 arch/arc/include/asm/entry-compact.h |  4 +-
 arch/arc/include/asm/mmu.h           |  6 +++
 arch/arc/include/asm/mmu_context.h   |  2 +-
 arch/arc/include/asm/pgtable.h       |  2 +-
 arch/arc/mm/tlb.c                    | 81 +++++++++++-----------------
 arch/arc/mm/tlbex.S                  | 18 ++++---
 6 files changed, 51 insertions(+), 62 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
