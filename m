Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2A1DA4E6
	for <lists+linux-snps-arc@lfdr.de>; Wed, 20 May 2020 00:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZP3s669L/4R00/9ZNyBFf78FR86oeXB81DHU8dBnwM=; b=mM1sHg2aa/TBnO
	nBMzyoHWt69AFnyF1nPcr1Py0DS9YEfVzZGtL0uuJSR1xP6H51K9e732fAVVpVfHY/MA8I9CBxD0x
	VTRTtgXjCugXDkt3wPqNzZiXDVjy8JwGCltCecpDn47IVT4S0OFtggBeVJy74Wd7vKZ2QsCuPYpKJ
	p+OT9JjNVU4cJprpSSL1VCivkrQDmgfM4qUpZNJ+r5vo9qkxhbz8QQuWfeCQv9jlcQxpZxnfeI28m
	PKR5agICJkh3iSq/fY4VsptIPrzqHU/N8BYh1UpiLRZoT99tZNIUMmBqq973bGj456tnko4bD8pGe
	nkIhyxoqTPm+vxvjNqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAyx-0003c0-QX; Tue, 19 May 2020 22:45:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAyu-0002VM-9L
 for linux-snps-arc@lists.infradead.org; Tue, 19 May 2020 22:45:05 +0000
Subject: Re: [GIT PULL] ARC fixes for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589928303;
 bh=1rEwKeAHu0x2w87U6rsILzo3vjbxhpKzOkOF66tLHwc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=b+SDd8jiKlAflj0dwyI5hGmba9jxbcvLTba58hPz4JEmCrUZi4SpnrWi1n+0fLewg
 RduzXAPqloq51MHXJXTBOvKEKpHjFjkTNsj9hMeT1blTJXsYFtD01BjDEvc7vPhe+H
 Jgj2Gm64JoXjgfIvC7ZMb/yC28GbSQf4LZ8Vkcz4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <249e6795-1eef-60b8-807c-e2385a62818a@synopsys.com>
References: <249e6795-1eef-60b8-807c-e2385a62818a@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <249e6795-1eef-60b8-807c-e2385a62818a@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.7-rc7
X-PR-Tracked-Commit-Id: 7915502377c54c9f58f6ac537bde0c2c342a6742
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3c9e66568ad40dc17518fa00e2b28c3b450040d4
Message-Id: <158992830327.1177.8316319357981803847.pr-tracker-bot@kernel.org>
Date: Tue, 19 May 2020 22:45:03 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_154504_377108_D8EE587B 
X-CRM114-Status: UNSURE (   1.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 lkml <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 19 May 2020 21:36:13 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.7-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3c9e66568ad40dc17518fa00e2b28c3b450040d4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
