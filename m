Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94031131A04
	for <lists+linux-snps-arc@lfdr.de>; Mon,  6 Jan 2020 22:05:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BqqJC6bcJwnkDf0rjCgpJWfST+0nf4y5c4tLc5zXAs=; b=akzov+OldZc98G
	DFpssssk7ShMU4x2g7Z2JvKXdwW32YIkqIMZ9hFbkGu5KXz5fdkqfoL3wbiKjHY2g+gUUqFTdmEMF
	27vOTSEoaAPzC/bvlWSe6DFZ3AizSzLofQaRr0JBqbICWja3cjzr3Qh86cAk1qJx8GB+ocg0O7QxN
	GBnl6K7r/Y64KTK3k5JlEzzoGlwYflHc4MEuQQPDjoL8t4+QwVqQRppPGzFa1xNnUDSroyijlg9FT
	llwLSmxOcwdvfWYPhubGSwmtbzD7hFnzjZ6ADtMkhAt1SSVXsQ+pkMgm7YlaeHZJjJtnGrcgAmI+c
	hJQoNsBW6W81G1Jjom+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZYn-0003qO-9y; Mon, 06 Jan 2020 21:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZYk-0003pb-H7
 for linux-snps-arc@lists.infradead.org; Mon, 06 Jan 2020 21:05:11 +0000
Subject: Re: [GIT PULL] ARC updates for 5.5-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578344709;
 bh=0fNJ5qQlETQMY/5Xq2rKQw1/igcwoYeCEEp5ih/L4no=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=XH9JURchKXYJt6gi5iQo0osF+bZbCmrC/62hA61gl3qVYVBIBK3sFwd3UY7K9QKOK
 LITyGF7qNHarb9B3qAppp5KsgSByaxaM9znlHn0mUNAyeIPdqfxgLHcW6/qwetO3I/
 vVAVEsqEyNc50PKBkWsLKb5NJAeloOhHBYH+NZV8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <9907df0c-6996-1a6b-0cf1-0dbfcb8ea414@synopsys.com>
References: <9907df0c-6996-1a6b-0cf1-0dbfcb8ea414@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <9907df0c-6996-1a6b-0cf1-0dbfcb8ea414@synopsys.com>
X-PR-Tracked-Remote: (unable to parse the git remote)
X-PR-Tracked-Commit-Id: 7ecc6c1d5c8dbc713c647512a5267ca0eafe3e1c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8f8b69aa501e84a0043428467a5a22b55e937cbd
Message-Id: <157834470973.27503.1119136242800719665.pr-tracker-bot@kernel.org>
Date: Mon, 06 Jan 2020 21:05:09 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_130510_591266_94CC15CC 
X-CRM114-Status: UNSURE (   1.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 6 Jan 2020 18:09:39 +0000:

> (unable to parse the git remote)

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8f8b69aa501e84a0043428467a5a22b55e937cbd

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
