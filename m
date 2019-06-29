Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650F75A9D3
	for <lists+linux-snps-arc@lfdr.de>; Sat, 29 Jun 2019 11:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfMQnB1aF8FnebZYrh+tJlar3nVLpUkikaps/fRIAz8=; b=QcukmECo3U/zSL
	EOyq5k+UTrEFfW7n1/VutuAdHN0sKhiArPX3WZqe2p8GRptVMAeJb8dLApy8fzOjykxI00Gh0xB3r
	AHgys7+NfVeaGN7bCbaybzxxe2yb4mbGJJEL37czM/9EymcOrgHFYCXO/0DEkdklQdhRrE1bRPtpE
	5a5It/zII6RUG9vXK2J9W2sB6JFxsbCVza8VidvEpvRqr0vL5j1BtQOu2RC/9L51nyhmG3DkAic3O
	2kH6UU0MLvyXGZgNqb4B+Hxi7oMuG5vWKq4UGhZWb/RkSH4yNv/NfisGJvLwdtXuFRTF3qI7LoRWD
	8bZm2cqlBAeuWySVu4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh9gU-0006nR-I3; Sat, 29 Jun 2019 09:30:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh9gM-0006GE-Fx
 for linux-snps-arc@lists.infradead.org; Sat, 29 Jun 2019 09:30:10 +0000
Subject: Re: [GIT PULL] ARC fixes for 5.2-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561800606;
 bh=r24RVyVNU63oHseAg7oNfQeo4PfQI//arxmz7S3gLaw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Rg5PTXMWSVGlrywbFCLaPEogPnOxARjfVvctWWJdnT9gM+BbstEjPW7Q0wLr1aNJz
 /zpMc3lVpMaXW/OC9qbQREJ9qx8ohkKItdzOzcTG9VS6WNcDsSrn1Yfe0n0mtnnl7D
 cVL6EsplOj4DYwMrfOT31d0QWDjTJMuquCaHhiE0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <b799ad4e-cafb-bf1f-3d92-34a5035ea7b5@synopsys.com>
References: <b799ad4e-cafb-bf1f-3d92-34a5035ea7b5@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <b799ad4e-cafb-bf1f-3d92-34a5035ea7b5@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.2-rc7
X-PR-Tracked-Commit-Id: ec9b4feb1e41587c15d43d237844193318389dc3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f8b5c72227618780f49e53fb77b0e7ddb2996552
Message-Id: <156180060623.8003.8022382941002971289.pr-tracker-bot@kernel.org>
Date: Sat, 29 Jun 2019 09:30:06 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_023007_433503_D013F495 
X-CRM114-Status: UNSURE (   1.10  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 lkml <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 29 Jun 2019 00:12:09 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.2-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f8b5c72227618780f49e53fb77b0e7ddb2996552

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
