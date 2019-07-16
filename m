Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367716B199
	for <lists+linux-snps-arc@lfdr.de>; Wed, 17 Jul 2019 00:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek3EAs+Tz6SG17iHd4UBrnYMZQpPeVVSO72bImRyFV8=; b=G3Xl9gKgdyTyFT
	N/a+V2fQWojinLVadi4HKzj/H0huP965Fb2cQvSvEQ9jAR+FXi6n5akKyv4AHyzVX7GAsMxYno5OQ
	Xw7O3ZuCvUaM+hnUuIgcSQosalfDES/3OHlbUfDQp2i5dpCszb0MOrvyLzmZvPI67thl3lIx7MbdJ
	qm8sk/4rPCzDZ4wppvEhnRK0u2PJH58qwmqURNyFYafH6wv+28uljw0vSBcXYb6YcRGkTNrB6u//V
	KTOETIKWOB5CUg7PLEdtq0tfC3ym3Nf5USZ8gZ00eLH4zvUx/YxMSHNqJI5baVhbif8gnKurX5mGm
	Ev53c7yUVjnarxV5iLBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnVeO-0003Wl-VF; Tue, 16 Jul 2019 22:10:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnVeM-0003Vy-7D
 for linux-snps-arc@lists.infradead.org; Tue, 16 Jul 2019 22:10:19 +0000
Subject: Re: [GIT PULL] ARC updates for 5.3-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563315017;
 bh=DZLMybQ+iQHK3bFHht3dTVWSxVGo6cHf+BYHkcrum8o=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=06iXnLrrz7PqEWH2+7kh33DFAXYaRJUPL0RALGyKOindTMvmNLpsoT9MO2hwKmVwK
 8j3FBeEdV7sHnID9D/UZxzxIZrta/fyPq7a0RyjSUMeAoSVPlQqbKtW5DM4A8IC7Ys
 GUgSB0j2uRhmjFGmzEkb8A0InMrssz8SjHS7XGWM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
References: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.3-rc1
X-PR-Tracked-Commit-Id: 24a20b0a443fd485852d51d08e98bbd9d212e0ec
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3eb514866f20c5eb74637279774b6d73b855480a
Message-Id: <156331501700.32356.12748239579521687506.pr-tracker-bot@kernel.org>
Date: Tue, 16 Jul 2019 22:10:17 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_151018_285821_47570A08 
X-CRM114-Status: UNSURE (   0.78  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 16 Jul 2019 20:22:58 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.3-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3eb514866f20c5eb74637279774b6d73b855480a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
