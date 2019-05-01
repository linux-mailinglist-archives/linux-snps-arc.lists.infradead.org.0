Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEB210E34
	for <lists+linux-snps-arc@lfdr.de>; Wed,  1 May 2019 22:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ip+qtcBNvaohnZyx67TNaK3MNZIzBXAhpeui46nqMw=; b=n+lVEXamvD8wlf
	AkiDZLZ5VDvbuu7EsoH6q9f0jfvSaY2HoDSiYqyIzVDgMIKMbi2SH/vjm2XCwuItomxHcZdP2O+Vh
	7LHOVr8mva0w8+YBIPU02Hijtac//3wJrqh0h5bbNf36VTBtSI3n/CwK8yy9cLFgoroItg1Krbxp4
	pmBNLLEeKsrFXXfykp0wQtw0jwVi2ucjj2TAsQX0h4pCliwlvnEQSocOx96yosbqp2bf3bJjvlGfN
	IPzaqpgZ94tsE112YjM4VYI5sg+nO927CmqnC5nsoWqnK7AA4GtTe1n9IbW8RlMvs3nf8WepHkhwv
	GW7crl+8JwNJUJh1+x2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLw6F-0001yB-Bf; Wed, 01 May 2019 20:45:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLw6C-0001Tj-NI
 for linux-snps-arc@lists.infradead.org; Wed, 01 May 2019 20:45:05 +0000
Subject: Re: [GIT PULL] ARC updates for 5.1 final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556743504;
 bh=5pgg8fJghgmAbVKUgViGhwp2W0Iw3pFuUL8623j/+G4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=RfQZF0j82xXCLTeS+xWKQRBLtxURGEUp7QN9jvZqGwdiDdKrd3SwcaOFg8DxOk6yB
 Q2h7qjOHUuiozCBzJ+NaiyUT9QOiZoP7SNV0abs+CerUGkdJ/vKbyKEefXvgyR4dus
 jdk8dnMYBlUuV4eSS9hFChkrHPmDITTi2q3Dml5A=
From: pr-tracker-bot@kernel.org
In-Reply-To: <ab49ac97-deee-e2db-71c7-5544b09aca4f@synopsys.com>
References: <ab49ac97-deee-e2db-71c7-5544b09aca4f@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ab49ac97-deee-e2db-71c7-5544b09aca4f@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.1-final
X-PR-Tracked-Commit-Id: 55c0c4c793b538fb438bcc72481b9dc2f79fe5a9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 65beea4c3a526320b019ca5c010da41533dafaf5
Message-Id: <155674350397.10978.6664250901055231758.pr-tracker-bot@kernel.org>
Date: Wed, 01 May 2019 20:45:03 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_134504_788616_EEEB9E90 
X-CRM114-Status: UNSURE (   1.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 lkml <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 1 May 2019 09:09:56 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.1-final

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/65beea4c3a526320b019ca5c010da41533dafaf5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
