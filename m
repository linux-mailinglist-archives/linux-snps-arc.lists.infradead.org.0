Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A447513D106
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 Jan 2020 01:21:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kj8ORj1ZnZqGWY7neJtSf8pbBQf2C/kjO+G+TU28klI=; b=ptgWjBQqEU+ZQc
	Kl3o0JsQk2Yq3Wg2wQGHek8aKi7xpBJBaPSvIyNz7wmR8IaltxmApLxYT49RqUnh1EZNP+85qBtYR
	mncovXMyrmB+3qoofuucMOGWItHVx3oZM8Jk7LRv5pk1cFaEnIFSf7cQekPu5NsIBjny/36Ot9GS1
	kUgKafxn5wK/v3rG0dgkYlouH/P9NK8KbpKcg8qdmHp//plSul1IIITszgSYgZBptDlHZyTfZPcVL
	ye28xflDKGw4RaOCXHDDaZMNI9Aq8z1WQJym9mvqsTO1/msNuFUNzzFwTIHLQYnWN/eCW1hnin1tx
	xKVbzLrBo0M0nja2nEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsuh-0005RG-F0; Thu, 16 Jan 2020 00:21:31 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsue-0005QH-E6
 for linux-snps-arc@lists.infradead.org; Thu, 16 Jan 2020 00:21:29 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3B7524070C;
 Thu, 16 Jan 2020 00:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579134087; bh=E375DO0quFSrIv1CdiqxQgGba4e6GmHGHZzGNU4OBz0=;
 h=From:To:Cc:Subject:Date:From;
 b=ZV2dReEuBUqo57qsQPr8yINW2tS31kw2rQ3a8/xhShhS1yrXB+yypd605YsXaG1r2
 sddRnY3z5H0j+ycI+I5CG97D343ZJSoswuRr6PdmB7vG2aBs3wbhW2YHUegbe9NZY4
 ITyu+AGvXQ8+mUHDLSCpOsXGPrJoaEioBsS/yvabCsjShYKVmRVhO7tyrdYV4iqLO2
 uvEK1gDu4sX+zrwuCKxHziNapPlTIULQHF7YrZYKrQLD1d9uRcIpw8c+InD3MvWVRM
 4O/WH2ONzBXh4+m4wpkjyK5qbQVkidEy23J/fdK3ZetLSc/FP3R/Y7OFd1B6JeSEYR
 p08SYubtAPXCQ==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.20])
 by mailhost.synopsys.com (Postfix) with ESMTP id D3894A005F;
 Thu, 16 Jan 2020 00:21:25 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH v2 0/2] Switching ARC to optimized generic strncpy_from_user
Date: Wed, 15 Jan 2020 16:21:22 -0800
Message-Id: <20200116002124.17988-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_162128_484767_D2CD5276 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

This series switches ARC to generic word-at-a-time interface.

I understand that going fwd, we may drop the inline versions altogether but this
helps ARC code in the interim.

v2 <- v1
 - Moved __strnlen_user/__strncpy_from_user to under ifdef gaurd [Arnd]
 - Dropped the broken optimization patch [Linus]
 - Folded 2 ARC patches into 1

Thx,
-Vineet

Vineet Gupta (2):
  asm-generic/uaccess: don't define inline functions if noinline lib/*
    in use
  ARC: uaccess: use optimized generic __strnlen_user/__strncpy_from_user

 arch/arc/Kconfig               |  2 +
 arch/arc/include/asm/uaccess.h | 85 ++--------------------------------
 arch/arc/mm/extable.c          | 23 ---------
 include/asm-generic/uaccess.h  |  8 ++++
 4 files changed, 14 insertions(+), 104 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
