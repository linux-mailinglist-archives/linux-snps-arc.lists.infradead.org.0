Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567411EB2BE
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 02:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzqZ37V3lX2t49uKgKGqpc5RdmIIBw5PKekUIH/62to=; b=csvWR9tWOMG8GN
	5JAu9TZLDGg75iyV5aKj25uN19fTAAE48HLzLNVYb/NAncLP6W8Q/Z80ITQBGdCvadV4uouknRnsI
	gZG4YoOe1ci6WWi+Bl8ciYxuatkWX3VHzBmrubKH+r1oMaMCq2+xINF0pNerG8gEYnHqSKQc4ZTb4
	TuPzHm1sCsIgfk+8kUvIzhV/SAE5u+vpzjEaeMrnXGsUCBWSptYBzxRinSxQraWyoqoKpxN63fvwL
	XgTL7uZJpBoufJFN13ejP1MCVT9lzJO5rfTKnLatexxuBbmBSAc4fAxlmqEozl6UxrCX1VdX0OpQX
	N73WfCYdnmniyF76DiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfuuH-00075D-75; Tue, 02 Jun 2020 00:35:53 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfuuE-00073r-2g
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jun 2020 00:35:51 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AA8CF40184;
 Tue,  2 Jun 2020 00:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591058149; bh=w/mUGJ7MjDhKUbRckPZG1W1CIY4EZWK6CACmIJx7864=;
 h=From:To:Cc:Subject:Date:From;
 b=Fz9oXsA2bmeKWe+LeQMF1q2D/oAARUfPkZj08raVYaYYc7tD7vLujNnwjXyv+RFs1
 aZZnxk4fDR4AALS9EWR55LLz+dbFlE2vV+JT96Vyfd3VCNNosD7cagN04GrrCSWDJg
 jzsJb9lkMSLm3geBlxX/BjxmvBQuQ4eOLQJ8LXRSzj8/DFCYgFdRNHtuLAhwROU7zs
 SgBqG7XsDHvjwwRg4sVm6XWWGlOJ86HOi6S7hmajPt481M+onp64nsCAnEAH6AuZLy
 wFZseZ+GS60iDcdD/HeY2Flsx4GlbbLr3zxSDluelj4PsobJwCz/te6ShYsIdJ/xzi
 XL2A5UKwjo8vg==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id DCFFAA009C;
 Tue,  2 Jun 2020 00:35:43 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v2 0/4] Enable generic math code for more arches
Date: Mon,  1 Jun 2020 17:35:37 -0700
Message-Id: <20200602003541.21005-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_173550_133042_8EB36B0A 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

This was suggested by Adhemerval Zanella as part of ARC hard float
review.

There was testing snafu last time around (wrong branch on build server).
Although only relevant configs are aarch64 and PPC, the series passes
build-many-glibcs for following:

ARCH="aarch64-linux-gnu arm-linux-gnueabi arm-linux-gnueabihf hppa-linux-gnu x86_64-linux-gnu arm-linux-gnueabihf riscv64-linux-gnu-rv64imac-lp64 riscv64-linux-gnu-rv64imafdc-lp64 powerpc-linux-gnu microblaze-linux-gnu nios2-linux-gnu hppa-linux-gnu"

Thx,
-Vineet

Vineet Gupta (4):
  iee754: provide gcc builtins based generic sqrt functions
  iee754: provide gcc builtins based generic fma functions
  aarch/fpu: use generic sqrt{,f}, fma{,f}, nearbyint{,f} functions
  powerpc/fpu: use generic fma functions

 sysdeps/aarch64/fpu/e_sqrt.c                | 27 --------
 sysdeps/aarch64/fpu/e_sqrtf.c               | 27 --------
 sysdeps/aarch64/fpu/math-use-builtins.h     | 71 +++++++++++++++++++++
 sysdeps/aarch64/fpu/s_floor.c               | 29 ---------
 sysdeps/aarch64/fpu/s_floorf.c              | 29 ---------
 sysdeps/aarch64/fpu/s_fma.c                 | 28 --------
 sysdeps/aarch64/fpu/s_fmaf.c                | 28 --------
 sysdeps/aarch64/fpu/s_nearbyint.c           | 28 --------
 sysdeps/aarch64/fpu/s_nearbyintf.c          | 28 --------
 sysdeps/aarch64/fpu/s_rint.c                | 29 ---------
 sysdeps/aarch64/fpu/s_rintf.c               | 29 ---------
 sysdeps/aarch64/fpu/s_round.c               | 29 ---------
 sysdeps/aarch64/fpu/s_roundf.c              | 29 ---------
 sysdeps/aarch64/fpu/s_trunc.c               | 29 ---------
 sysdeps/aarch64/fpu/s_truncf.c              | 29 ---------
 sysdeps/generic/math-use-builtins.h         |  8 +++
 sysdeps/ieee754/dbl-64/e_sqrt.c             |  6 ++
 sysdeps/ieee754/dbl-64/s_fma.c              |  6 ++
 sysdeps/ieee754/dbl-64/s_fmaf.c             |  6 ++
 sysdeps/ieee754/float128/float128_private.h |  2 +
 sysdeps/ieee754/flt-32/e_sqrtf.c            | 16 +++--
 sysdeps/ieee754/ldbl-128/s_fmal.c           |  5 ++
 sysdeps/powerpc/fpu/math-use-builtins.h     | 69 ++++++++++++++++++++
 sysdeps/powerpc/fpu/s_fma.c                 | 27 --------
 sysdeps/powerpc/fpu/s_fmaf.c                | 27 --------
 25 files changed, 183 insertions(+), 458 deletions(-)
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrt.c
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrtf.c
 create mode 100644 sysdeps/aarch64/fpu/math-use-builtins.h
 delete mode 100644 sysdeps/aarch64/fpu/s_floor.c
 delete mode 100644 sysdeps/aarch64/fpu/s_floorf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_fma.c
 delete mode 100644 sysdeps/aarch64/fpu/s_fmaf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_nearbyint.c
 delete mode 100644 sysdeps/aarch64/fpu/s_nearbyintf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_rint.c
 delete mode 100644 sysdeps/aarch64/fpu/s_rintf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_round.c
 delete mode 100644 sysdeps/aarch64/fpu/s_roundf.c
 delete mode 100644 sysdeps/aarch64/fpu/s_trunc.c
 delete mode 100644 sysdeps/aarch64/fpu/s_truncf.c
 create mode 100644 sysdeps/powerpc/fpu/math-use-builtins.h
 delete mode 100644 sysdeps/powerpc/fpu/s_fma.c
 delete mode 100644 sysdeps/powerpc/fpu/s_fmaf.c

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
