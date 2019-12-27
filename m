Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843212B939
	for <lists+linux-snps-arc@lfdr.de>; Fri, 27 Dec 2019 19:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9bhdsyvJv697/e8X9rcLyBhugRPC5P+S54N+YcA9QDc=; b=oOm4hhCPloU+5g
	6r5AAuVEgGglcFSF+bOhybe+qwu++pKDymoqOxtHh+9nGlGBXsEBZVyWrTGhKPSRIU2PALG7pZmNN
	ICW0boyFvu5txw1QNidnelRMlCz8apZBWEiuTdAdjRZghv5mtx6QDct7dxTLKwjvXKs8cHhqPEQiB
	Oefhp1B4kJx8ob5BH/TilE306Wr06mbHTpCF3tQyou5ZMIzH2hE+Pi2gC01Ib/uPhHlOIpaUUVZV5
	OVe4kCps8TYHlhV8Y5pBRQN1l8llFm5QPphj/g9kLmCrwG7Vh3bApILkc/8HHX/LZN5Dl86OVhSe7
	9FZqnTjK6h1kSOYhmjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikty1-0005Ys-3l; Fri, 27 Dec 2019 18:04:05 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktxw-0005V9-Ew
 for linux-snps-arc@lists.infradead.org; Fri, 27 Dec 2019 18:04:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 05D27C09A8;
 Fri, 27 Dec 2019 18:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577469838; bh=gracVR8grdfKa4Mu3uHEMLQb3guva6KDpPC9UDLgqHs=;
 h=From:To:Cc:Subject:Date:From;
 b=HYgNBWujgmoxrs3Z3IaqKCE2LThkjEjOTPjbLrpLlzdRXN1MdODUxYHkBUqVaDFJC
 7+3u+Sus10E6pyHoz5djN9kJX4ms6k8XdM6x1uoeh9V6jJv7WuTGF16SuZrKHdyc0z
 ODjLODi6Ikfe21Qz/B2xWrIT55kmSDBZsD+7n+HZDr2qu2D1HrA1YsnCkLNONOqEiG
 pGMB9Qq3GvSTl91m3VVBdydHYV42MCyTd1Ce0JH3ZDqsO538x/Oz4Cnus80i7iVMRH
 hVzL7oDVdoU0zUp92DnUS8TdFc3ywnQi6FT1R+HFCeBG++I4pl50IcU8/QOx6oHdnK
 RlledONAiWvXw==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.65])
 by mailhost.synopsys.com (Postfix) with ESMTP id 51207A005D;
 Fri, 27 Dec 2019 18:03:54 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [RFC 0/5] ARC: handle DSP presence in HW
Date: Fri, 27 Dec 2019 21:03:42 +0300
Message-Id: <20191227180347.3579-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_100400_535458_C5E0217B 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
* Do minor cleanups

Eugeniy Paltsev (5):
  ARC: pt_regs: remove hardcoded registers offset
  ARC: add helpers to sanitize config options
  ARC: handle DSP presence in HW
  ARC: add support for DSP-enabled userspace applications
  ARC: allow userspace DSP applications to use AGU extensions

 arch/arc/Kconfig                   |  39 +++++++-
 arch/arc/include/asm/arcregs.h     |  26 ++++++
 arch/arc/include/asm/dsp-impl.h    | 141 +++++++++++++++++++++++++++++
 arch/arc/include/asm/dsp.h         |  50 ++++++++++
 arch/arc/include/asm/entry-arcv2.h |  14 ++-
 arch/arc/include/asm/processor.h   |   4 +
 arch/arc/include/asm/ptrace.h      |   4 +
 arch/arc/include/asm/switch_to.h   |   2 +
 arch/arc/kernel/asm-offsets.c      |  16 ++++
 arch/arc/kernel/head.S             |   4 +
 arch/arc/kernel/setup.c            |  47 +++++++---
 11 files changed, 329 insertions(+), 18 deletions(-)
 create mode 100644 arch/arc/include/asm/dsp-impl.h
 create mode 100644 arch/arc/include/asm/dsp.h

-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
