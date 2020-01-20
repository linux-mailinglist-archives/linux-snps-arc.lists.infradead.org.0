Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE83142865
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Jan 2020 11:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZdqDaLUuYqiDcOF/P3lcEASLPQma3MteYFNr8wGDyVA=; b=HdK
	7rjOun1YK8XowNMy2Ntb4gIh7Ih260uNCA1563QMtkGkKsWZ/IJik2JhWI08/24Oqg+nl3sUleIsw
	Qp5uQrgZyExtw5ltIwLtARyGWSvLqFjY3LthUpQmjnIU2CD8xpcER4NzAnhxtwWlya4J2zIPgyciG
	Du7wBORXeIFKlyXsSbL0yAzidfKpgNOOhmn7aHn5ADBqcIoYkCDewENGCVUdTilFFClnVoRVgu5BK
	AvUuW5Nh1NQE5WJ6V4WNSR+L9COfsiIJxYFuz0ZuEc0zJXVya5wLU1fCz+6tozT7QnqXfqh4OKFRt
	Fduwai2UKiWNb3czo13P7OzaMzs4zww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUa0-0004Ho-Jh; Mon, 20 Jan 2020 10:46:48 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUZy-0004GM-99
 for linux-snps-arc@lists.infradead.org; Mon, 20 Jan 2020 10:46:47 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E3228C045C;
 Mon, 20 Jan 2020 10:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579517202; bh=en/AoZ7PCl0Qd33vzULW7jNlmSaJ+4wugMPBj2QNQhA=;
 h=From:To:Cc:Subject:Date:From;
 b=BVwfbCgpZxAKDCIh6D5wuPVZjux9C4L2KYL09vjqBBnBgKEcAuXEU791bw48bYoHF
 /ijb8GuKaPEZRB2jhf0SYNn/e2yy1E/H/iJL0L0Y9CzPp7lVu7rpByjXaWMdnDQTLk
 LSoF+5ETQsrQtIYKOYuYc3L/sSVtOIRSAwBdbSxtGaT8PSGGs2Vb6Vdh8dY4CKNIEh
 nEgZvtD6I4ciK4RznfIZPP4jc+hhJ4hLIkIYf0r5aB2bXdPXwMWKrFmPF+/pFeWTL+
 rh3XF3NTXlRyeaxqL6ozT9l07NA32fR8QIZqQiXB8T+ML7X9+icz6LNFQJ46iJKg/y
 5NYZ5MD4nPhKA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id A63D1A005E;
 Mon, 20 Jan 2020 10:46:38 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [PATCH 0/3] Improvements for ARC simulation platform
Date: Mon, 20 Jan 2020 13:46:32 +0300
Message-Id: <20200120104635.33290-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_024646_381494_DDF940C5 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Along with some clean-up we make 2 important changes:
 1. Switch to more standard 16550 UART instead of our custom "ARC UART".
    This paves the way for using this board in QEMU.

 2. Now when nSIM virtual board is usable in QEMU we add support of Virtio
    NIC & block device similarly as we did that in the Linux kernel [1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=94b8beb972c524f42078281c9950ed3a946455fa

Alexey Brodkin (3):
  ARC: nSIM: switch from ARC UART to DW UART
  ARC: nsim_{700|700be|hs38be}_defconfigs: Disable networking
  ARC: nsim_hs38: Add support of Virtio NET & BLK

 arch/arc/Kconfig                  |  4 ++--
 arch/arc/dts/nsim.dts             | 48 +++++++++++++++++++++++++++++++++++----
 board/synopsys/{ => nsim}/Kconfig |  3 +++
 board/synopsys/nsim/MAINTAINERS   |  6 +++++
 board/synopsys/nsim/Makefile      |  7 ++++++
 board/synopsys/nsim/nsim.c        | 26 +++++++++++++++++++++
 configs/nsim_700_defconfig        |  9 ++++----
 configs/nsim_700be_defconfig      |  9 ++++----
 configs/nsim_hs38_defconfig       | 17 ++++++++++----
 configs/nsim_hs38be_defconfig     |  9 ++++----
 10 files changed, 115 insertions(+), 23 deletions(-)
 rename board/synopsys/{ => nsim}/Kconfig (74%)
 create mode 100644 board/synopsys/nsim/MAINTAINERS
 create mode 100644 board/synopsys/nsim/Makefile
 create mode 100644 board/synopsys/nsim/nsim.c

-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
