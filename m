Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B6817AF4D
	for <lists+linux-snps-arc@lfdr.de>; Thu,  5 Mar 2020 21:03:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=39UKYoLrutA0FLk0do9HvlhRjwIYmQuZIBWu3WcUKgE=; b=ZlxfjBG3Qi28Y+
	pyqdN/eqko7/NyQ9a+u5WcebiGZX0evdLfnheZIiWRIKIk6/LaH36FU2juumLTUPBr/zBU7FXYGt6
	3j0Xm4mYskVmxNq9NJ5cu1/65ws4d7Mk9rcpBt5vZiEBRcnYFmuVNbWZI6toJdsqecqfF9s9h5wQs
	evmK9JTqTktf73zyuqVmfZSolq8ziISvEJGdTUj0W5HNOF+BppmBrX7bywXvxJ5jUd4Afd0MT/oH2
	NqEldyMV7psrakXoOMmrWtBOE2YwncFGodieOMMSyBaBw8DFVdXtUS9g/a5uheGkZrfUg+KtpJSHa
	kIQwirSbFNVRa2a57jRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wi6-0006lY-Ui; Thu, 05 Mar 2020 20:03:10 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wi2-0006iE-N7
 for linux-snps-arc@lists.infradead.org; Thu, 05 Mar 2020 20:03:08 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 12234C10DD;
 Thu,  5 Mar 2020 20:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583438586; bh=KxmfiRKc96Lw0HUN1flKo0En+90Ix6xmPDnhmOpmCYU=;
 h=From:To:Cc:Subject:Date:From;
 b=RUxeWUMRh/BaX0ePHWDbb+qAtJSk16MF80nfXBNyY9NIsRGbaNfQnEDp0O1Dt41Zs
 SSjm4S+WFKMGbxMw2Efo/u4Lq09Y/L659RZXh6FMfKTuwwcbstalog6UF01G3+JpFN
 RbHrcnupp285rzUM7yjJ7ecR2j6jW/YyqyPSVDaRGC9KhZf81U/7mUQfdgvKXnKZ7y
 bnO5j938rmbrkL665pB8DN9h5ljM5M5Erl/3tyJdskP0bq1mJIYlyBZvR10iYlDCyj
 NJYcLsYQeKmbt+A8GX6Gq22JPXS13rrbAl8iw3uVHslPd+HbT6dKx9JGVoKyS8Cko+
 s18puZuPKdojQ==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 58E0CA005B;
 Thu,  5 Mar 2020 20:02:58 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH v2 0/4] ARC: handle DSP presence in HW
Date: Thu,  5 Mar 2020 23:02:48 +0300
Message-Id: <20200305200252.14278-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_120306_789790_70463A66 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Arc processors may have DSP extension which is optional.
In this patch series we:
* Handle issues caused by DSP extension presence in HW
* Add optional support for DSP-enabled applications in
  userspace (with optional AGU extension support)

Changes v1->v2:
 * use r10:r11 register pair as a scratch for ASM code instead of
   r58:r59
 * reset DSP_CTRL to value suitable for kernel also in case of
   DSP for userspcae enabled
 * Use "Ir" instead of "I" parameter modifier to inline ASM
   to give compiler wiggle room.
 * Save / restore ACC0_GLO, ACC0_GHI only in case of context
   switch
 * Don't define additional options in headers to not introduce
   explicit include dependencies
 * Mode DSP config check to DSP code itself
 * Minor fixes

Eugeniy Paltsev (4):
  ARC: add helpers to sanitize config options
  ARC: handle DSP presence in HW
  ARC: add support for DSP-enabled userspace applications
  ARC: allow userspace DSP applications to use AGU extensions

 arch/arc/Kconfig                   |  50 +++++++++-
 arch/arc/include/asm/arcregs.h     |  26 +++++
 arch/arc/include/asm/asserts.h     |  34 +++++++
 arch/arc/include/asm/dsp-impl.h    | 150 +++++++++++++++++++++++++++++
 arch/arc/include/asm/dsp.h         |  29 ++++++
 arch/arc/include/asm/entry-arcv2.h |   6 ++
 arch/arc/include/asm/processor.h   |   4 +
 arch/arc/include/asm/ptrace.h      |   3 +
 arch/arc/include/asm/switch_to.h   |   2 +
 arch/arc/kernel/asm-offsets.c      |   4 +
 arch/arc/kernel/head.S             |   4 +
 arch/arc/kernel/setup.c            |  34 ++++---
 12 files changed, 332 insertions(+), 14 deletions(-)
 create mode 100644 arch/arc/include/asm/asserts.h
 create mode 100644 arch/arc/include/asm/dsp-impl.h
 create mode 100644 arch/arc/include/asm/dsp.h

-- 
2.21.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
