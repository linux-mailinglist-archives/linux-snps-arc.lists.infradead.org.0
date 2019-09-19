Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199FBB8327
	for <lists+linux-snps-arc@lfdr.de>; Thu, 19 Sep 2019 23:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=U4cf37FOzZj72kL89GK5+7BylcvvVgpVHvb6+rae8Zc=; b=Fp+GSzzmNhcg8r
	LlDGK77OoiAjI1cPVbnhQj1SCxoDX2tbE90gjDxL5dSANLstaheHn87WJBVAVaOACG2f6qVz3CKVB
	9IIEN4NmzNWvY9/tdYvqckqgoZY2bSHN5WiasYniqUOYsnyS+El6cgGTy1/GZzHwPK5X/m2QRlujz
	wuoUopRZZElQHqF26PURuWlVq4FuuvUktrihJtmHaXudnF2mYU9Z4bz4ArH00tBOJW6Oe3KmhsOmS
	FTKSHdzGdcysZHoqERSOdhIfEz9P6GLfnYUSe5WeJwp4tkkZlRHKKc7y8lpAT20s63cExAF+EutML
	eljKXI3Ech3H3PJqNUbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB3i6-0002xz-O6; Thu, 19 Sep 2019 21:11:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB3i3-0002xJ-GB
 for linux-snps-arc@lists.infradead.org; Thu, 19 Sep 2019 21:11:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFBC721907;
 Thu, 19 Sep 2019 21:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568927487;
 bh=UiTvu1equd6b8MM2LjPvVrIV5EUlxuvBz3GzNz4XgSU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=axwKyRGgsRCQhfH37uqPG8p/oZdBBBAv5+/A75/GSyLd1mU0LaB3FK/KNoaI8k0Mu
 yWO6H6hTshKIVZ+lNZ7qP4+/l5L+2ISrPYGVDGtE2/dWBf45CzmTuAriPkmdxM9n/G
 dsAE8qbCZvHHQMEZLo1OyiF0DO9OWtGHR+L5KER4=
Subject: Patch "ARC: export "abort" for modules" has been added to the
 4.9-stable tree
To: Vineet.Gupta1@synopsys.com, gregkh@linuxfoundation.org,
 linux-snps-arc@lists.infradead.org, lkp@intel.com, vgupta@synopsys.com
From: <gregkh@linuxfoundation.org>
Date: Thu, 19 Sep 2019 23:11:15 +0200
In-Reply-To: <20190919205847.4806-1-vgupta@synopsys.com>
Message-ID: <156892747510640@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_141127_558285_98577572 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    ARC: export "abort" for modules

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arc-export-abort-for-modules.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From Vineet.Gupta1@synopsys.com  Thu Sep 19 23:10:40 2019
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Date: Thu, 19 Sep 2019 13:58:47 -0700
Subject: ARC: export "abort" for modules
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-snps-arc@lists.infradead.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>, kbuild test robot <lkp@intel.com>, stable@vger.kernel.org
Message-ID: <20190919205847.4806-1-vgupta@synopsys.com>

From: Vineet Gupta <Vineet.Gupta1@synopsys.com>

This is a custom patch (no mainline equivalent) for stable backport only
to address 0-Day kernel test infra ARC 4.x.y builds errors.

The reason for this custom patch as that it is a single patch, touches
only ARC, vs. atleast two 7c2c11b208be09c1, dc8635b78cd8669 which touch
atleast 3 other arches (one long removed) and could potentially have a
fallout.

Reported-by: kbuild test robot <lkp@intel.com>
CC: stable@vger.kernel.org	# 4.4, 4.9
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arc/kernel/traps.c |    1 +
 1 file changed, 1 insertion(+)

--- a/arch/arc/kernel/traps.c
+++ b/arch/arc/kernel/traps.c
@@ -163,3 +163,4 @@ void abort(void)
 {
 	__asm__ __volatile__("trap_s  5\n");
 }
+EXPORT_SYMBOL(abort);


Patches currently in stable-queue which might be from Vineet.Gupta1@synopsys.com are

queue-4.9/arc-export-abort-for-modules.patch

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
