Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCE91EC456
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 23:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4D11spgxi2PedGFkC41970SGcUGJ92lKS3BROqbdhbw=; b=Z4pW4opxo6TNmD
	YMfyH7qZxfuYhfsWfLtvSG6HrIBhE3fpM4AfVESS1GkS8aGL+OQFTou2cPwcVxZx3ekasAT+//aA8
	S6hLGrtWcrKzuSnueYW/NYsSsd6CkMFRmKSQdNxa4n6Pa8x7e5xdam49KBmLe0jgSV6EC5HCbF2T4
	fbLJfJRnciaZxxOzYJvooGy3Gi7WE4GWJBxW79UaHzEiUYWyuamxHbWXMzIYP1ZHmzKxeLhDh18vI
	q6fXuGJx16u2LcI/xb3F+R2l2okn1Xl5MBGIfgPiw4viemoyf59EeoxWZtBNdsOvU8p8tOqkb9HpK
	/d5MCrdJVyA1ZOxxr6Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEWP-0005qH-JR; Tue, 02 Jun 2020 21:32:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEWK-0005ny-FD
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jun 2020 21:32:31 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E41BC40648;
 Tue,  2 Jun 2020 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591133543; bh=z0njbagkkRnfipVXkU5UNMyzMnmrcIk6bC0rETcNwpk=;
 h=From:To:Cc:Subject:Date:From;
 b=VVhgeqQaqY3A6LWvQI1k1P51F12yAPgRb9ZyBwenbU6Tn/djMsyu4s6wDOlLzjLZE
 L1h7ULWQU7uOe0/VNEPlotxFERtibDIrVZX02D/y758REedIWqcgaxuoyr7MIC+zsG
 qudyDSozM+kq2zjKiPAn2N3DTBHS2qVxV80Xsz4cEL88oTLqVi21wN/ViIQWOTK25q
 0IzMdnOSm5SW0ztq8UN5xyt4OlLcR+OQ5m81sm1TPx2JHFBEdnggWbqO9V+97wFgP6
 ilvxBxnktn6nyBecL1daWDu5G9CjVB8Dxrs6WXC2EXtMtzKGJMM9pI9biXzVQAHH+g
 eo6IL1u3zq1ww==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 94860A009C;
 Tue,  2 Jun 2020 21:32:21 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v3 0/4]  Enable generic math code for more arches
Date: Tue,  2 Jun 2020 14:32:16 -0700
Message-Id: <20200602213220.6201-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_143228_526454_3E92548D 
X-CRM114-Status: UNSURE (   7.98  )
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

changes since v2:
  - Add new defines (0) to s390 too as suggested by Stephan
  - Handle USE_FMA_BUILTIN in both sysdeps/ieee754/{dbl-64,ldbl-128}/s_fma.c
  - Add diff output for all arches build tested

build-glibc-many tested for following
  aarch64-linux-gnu
  arm-linux-gnueabi
  arm-linux-gnueabihf
  hppa-linux-gnu
  x86_64-linux-gnu
  riscv64-linux-gnu-rv64imac-lp64
  riscv64-linux-gnu-rv64imafdc-lp64
  powerpc-linux-gnu
  microblaze-linux-gnu
  nios2-linux-gnu
  hppa-linux-gnu
  s390x-linux-gnu"

Thx,
-Vineet

Vineet Gupta (4):
  iee754: provide gcc builtins based generic sqrt functions
  iee754: provide gcc builtins based generic fma functions
  aarch/fpu: use generic builtins based math functions
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
 sysdeps/ieee754/ldbl-128/s_fma.c            |  5 ++
 sysdeps/ieee754/ldbl-128/s_fmal.c           |  5 ++
 sysdeps/powerpc/fpu/math-use-builtins.h     | 69 ++++++++++++++++++++
 sysdeps/powerpc/fpu/s_fma.c                 | 27 --------
 sysdeps/powerpc/fpu/s_fmaf.c                | 27 --------
 sysdeps/s390/fpu/math-use-builtins.h        |  8 +++
 27 files changed, 196 insertions(+), 458 deletions(-)
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
