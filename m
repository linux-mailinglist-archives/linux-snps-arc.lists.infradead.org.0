Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294C719E11D
	for <lists+linux-snps-arc@lfdr.de>; Sat,  4 Apr 2020 00:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhuXC/X7JGx6pnaMSiR2GkahyfNS8D5SqoGQYXlyGpk=; b=ZX0KTPIbf8NTsm
	q0to/DtQ3LWyjd0ce1GpYlrsNZnkFBvWFNS4TC47J1ZYPVCOmcA7EzmYJ02op0JMJdQgY+eyo374l
	EKo0stf0u/BQILS5YV2HFixxJsk2UaN3JUYM2NOolQy1OgLv9IBW3jGG37uy4zrdNzF3HmP6ar9Lu
	UKQNdHS2FnUZ6PmX05mksZNH2sF93Cm3ZOpEC20WvE5jLE9cEMPp/8lidsFdWw2MxqO52mDzp9t0e
	Z3cGHIIZGXgcZZkacBoe3Aktn+MnuDe2b5pUFwaJcEUoU0lI4olVOScwiGlgM80duz/ueWv79s9cY
	hpw8sMVqc/KBojTjrouw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUuL-0003Z0-Op; Fri, 03 Apr 2020 22:35:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUuJ-0003Yb-Ga
 for linux-snps-arc@lists.infradead.org; Fri, 03 Apr 2020 22:35:24 +0000
Subject: Re: [GIT PULL] ARC updates for 5.7-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585953323;
 bh=v+le28gRLVWY6lPssJBpFW6VcLI4Pu4cjJLU3vSr/uc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Qg85EO8Dx75TjEQpKPOyh/IU7UFa+jV2BPwlfBuhtl3Pz1wvzWN236MRiZU6vKqeu
 Fx8ZUjmIgmFEV+83ikwuf28nTq/IhEf21vI43EWf7K4IfpgZ0ebG4tdCT907Z9b0Le
 8/jh7lIPg68eDQCvNG2YZXKz/rwNWiz5i4lqMsaI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <5b7afdcd-48dc-dc90-d7c0-53559a3ca3b8@synopsys.com>
References: <5b7afdcd-48dc-dc90-d7c0-53559a3ca3b8@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <5b7afdcd-48dc-dc90-d7c0-53559a3ca3b8@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.7-rc1
X-PR-Tracked-Commit-Id: f09d3174f002ee2cf15623d5a0f68f7393536ce7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5364abc57993b3bf60c41923cb98a8f1a594e749
Message-Id: <158595332318.22488.8622901512202674698.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 22:35:23 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_153523_571256_CF9B7BC4 
X-CRM114-Status: UNSURE (   0.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 lkml <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 3 Apr 2020 21:57:33 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.7-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5364abc57993b3bf60c41923cb98a8f1a594e749

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
