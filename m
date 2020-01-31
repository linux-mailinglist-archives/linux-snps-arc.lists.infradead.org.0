Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AB014F2CE
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 Jan 2020 20:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfZq2fLXYW7tmN8RpzWZ1zEcQxtRpWC4MfcNn9Bkmxo=; b=P4G/9Tw72wkbRO
	8a+Rj2OEYo2MpCMrYljlOoPyYI4n+27u1FBzjcPw9oMOUIRiYQMKvgApbK8wcPLLzZlXyNm97hPeq
	PLAdXHOuUiT/QOLJBigBvZVCTGqEn5pPGllfbuUCeZOW6rMFhTAMOGiN7mgCZcTSk0wSPl39UR0eW
	APCGel7XyQlur6+Dfq8NBgeWGcH9zDvrPF/kOqiA1dlXaHh1Yj8NLSJNObc+QHz1aOEPIwDibHV+r
	X+LKsFSfCaetINaNYAGHRxBdAjQRekve1ThemdWlU7jnYh8GjGtT0i+32syQNOwy8R/g7qrzyF7j4
	lHTW0ZeQpVGXC8Nmr12g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixc4Y-0007VS-N5; Fri, 31 Jan 2020 19:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixc4V-0007TS-0H
 for linux-snps-arc@lists.infradead.org; Fri, 31 Jan 2020 19:35:20 +0000
Subject: Re: [GIT PULL] ARC updates for 5.6-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580499316;
 bh=IUMbiycIe1bt0rX1nc5L5vMe8l9p7Q4JvNaX6pAiDyc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=HaGm7W2VBveiKRW9vCudVOvyVIpSHtI79LARltdq3D+bcbxV92qUNh0IqRyD2go5o
 24cKK9HnfNl8cUMdQT+gRh/aDZlWEb015z+S7AxZWiJggcetVCn3vFlasFHGoOiNBo
 G8S3E6xA5uxRPCDD0bsP5O+fcE2fjWrmn2yDcb7w=
From: pr-tracker-bot@kernel.org
In-Reply-To: <d709d1dc-69e8-3fcd-f790-8699ca6a4e04@synopsys.com>
References: <d709d1dc-69e8-3fcd-f790-8699ca6a4e04@synopsys.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <d709d1dc-69e8-3fcd-f790-8699ca6a4e04@synopsys.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/
 tags/arc-5.6-rc1
X-PR-Tracked-Commit-Id: f45ba2bd6da0dc8000aa7ea7a3858fb51608f766
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b7e573bb4a7a511741f8942b1fb03cfe602ee57f
Message-Id: <158049931650.14867.17056834872077409001.pr-tracker-bot@kernel.org>
Date: Fri, 31 Jan 2020 19:35:16 +0000
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_113519_069563_4EEDCDFF 
X-CRM114-Status: UNSURE (   0.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 lkml <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 31 Jan 2020 17:43:34 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.6-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b7e573bb4a7a511741f8942b1fb03cfe602ee57f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
