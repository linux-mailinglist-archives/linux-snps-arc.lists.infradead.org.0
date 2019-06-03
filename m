Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8117533B28
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 00:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUBo0fP1mgEu4xO+3VGXVCDLuWsDzRUe1o+Ro0WxMe4=; b=tRlva1SaEqMaUM
	LCZgaAddWofkMwIB8XJDTo2SQqdGue/hgLLLGDjrU6R5rVdAM6wKMSrPk2HgJRExU3qOZJZdPCDen
	rrQ2Nf5yld35RJ/mli9f9u6yanoqrsrNm1b9EMl6qzggsQ9LlywKCxWlm6xyVhfXXnfPp93z3oIt6
	Pvwn1DmmC+bNPWWFNzovE2lXDcSk/KTNM03ApYlA/y9UciJ2f7HQBF2M9Ry8DOXC3BrK8w1i3GYU0
	R16isV9yQheQgxr8rECjGlx1eC6b72VAaGRkK2Jx9dvRhqlDiaDBj6QaCJXnXHbhRcyrZNMM3CkY5
	MubpPLYbzHQCRpcUYOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvOF-0003c6-8M; Mon, 03 Jun 2019 22:25:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvOC-0003bN-Gz
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 22:25:13 +0000
Subject: Re: [GIT PULL] ARC updates for 5.2-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559600711;
 bh=dTUGkJSVTozYywG98oQ7TpLBN1ASPRBmgOklgTgAJTU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=kSEFUShfyyjPX/f02IU8gtejvqzOoxtjQXZYuEy4L4x/PFyo4nxUAzRhTsP8oMbBY
 R6WcHkKZ/IC1cIaszzf5jWYoRp45FCOwONdQFpkSzJx6Kon2mGhxvKUgi8EfPuV9BF
 qM9KOmdEWd2lQTFR2HaF3RjmcSmkzobK5MV6/EKc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <e1a01d01-fccc-fab8-7022-9a18bb4d8f10@synopsys.com>
References: <e1a01d01-fccc-fab8-7022-9a18bb4d8f10@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <e1a01d01-fccc-fab8-7022-9a18bb4d8f10@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.2-rc4
X-PR-Tracked-Commit-Id: 46e04c25e72f002d0d14be072300c2dd827d99b6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 788a024921c48985939f8241c1ff862a7374d8f9
Message-Id: <155960071152.7954.12243155776656459408.pr-tracker-bot@kernel.org>
Date: Mon, 03 Jun 2019 22:25:11 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_152512_584981_65FF2D8D 
X-CRM114-Status: UNSURE (   0.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 3 Jun 2019 14:04:16 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.2-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/788a024921c48985939f8241c1ff862a7374d8f9

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
