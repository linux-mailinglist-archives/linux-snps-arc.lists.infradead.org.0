Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FE99F268
	for <lists+linux-snps-arc@lfdr.de>; Tue, 27 Aug 2019 20:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htra2rjh6aoLdtdG7/YiY6eVFWCnDOenhXzreIi8Czc=; b=Aj9/aVnMKRbHZG
	iz9L6vlBuRd5XzUHG4nOc+dMTnKg/6YnT1XNpsGf4NnVdVH7X1gvdJxZoNNvbyGu8WAHCBEdjYquY
	PRKrtZqFqoYnVIfKHBjEkjG6abRGFtxGhJ4OUN01IarMfL7PoaPvJzf/m1z22IDaUak+FUZAoA4Er
	w4p7z8wUEjepwfeBmcZVWhaal8Fadd0LzEDa6LpipGesqRK1HjECgUbUkRwQ2kVfcuaZdi56kV4uP
	krBZYdVXzE3326oeSJpZ36HwUR1mLO7VUTPbL8HJedK5zOxeGaf22MhgMsXmfWadTmC1XD3fQ9wrT
	Dz/oP/JEZVdIKDqmTh/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gJF-0004Ac-Hs; Tue, 27 Aug 2019 18:35:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gJD-00049d-32
 for linux-snps-arc@lists.infradead.org; Tue, 27 Aug 2019 18:35:12 +0000
Subject: Re: [GIT PULL] ARC fixes for 5.3-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566930910;
 bh=lnng0ErQ0Vj2WeYUmOA8NWym6fPIS/zzRsHQdehqq30=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=yegMfFvAlKoHphl/OqMSQz0OGEy1r94Wm6F1wt9aVx0QGSNvUXuQ0HdfHJuP5DFfo
 ASD3ANJ8fE0cDTunqXSz6n8LZlqKg8qPBWOujI+DJ4CBqzThvrBQwu63+E54HZg6qv
 IzFF46v4a/88sQCO7FtgwN6CkrVNF/NRZEnNkUmE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <41adb7d8-dcf5-3ee9-0ae8-53fe0d614de9@gmail.com>
References: <41adb7d8-dcf5-3ee9-0ae8-53fe0d614de9@gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <41adb7d8-dcf5-3ee9-0ae8-53fe0d614de9@gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.3-rc7
X-PR-Tracked-Commit-Id: 2f029413cbfbfe519d294c6ac83a0c00e2a48a97
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6525771f58cbc6ab97b5cff9069865cde8283346
Message-Id: <156693091045.10894.5285009931367772272.pr-tracker-bot@kernel.org>
Date: Tue, 27 Aug 2019 18:35:10 +0000
To: Vineet Gupta <vineetg76@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_113511_157042_3BED88EE 
X-CRM114-Status: UNSURE (   1.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Mischa Jonker <mjonker@synopsys.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <abrodkin@synopsys.COM>, lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 27 Aug 2019 10:07:47 -0700:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.3-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6525771f58cbc6ab97b5cff9069865cde8283346

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
