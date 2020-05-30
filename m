Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281331E8CFB
	for <lists+linux-snps-arc@lfdr.de>; Sat, 30 May 2020 04:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VidgSl8mFECSxrTysGHj8dYkIXRrM4KPm5mzBTBt90=; b=JsL3NA3uxGOQkS
	1ww10AKsI5qrxYmcocznPeeqbi+AR8y6TP+GZQour7NfJvTVkjiOzLIttTxW1+BSaaN8+Mgyo0sV0
	naE4Z0ISCpcHASNUH8pqkr2lrIiTVEvQixVIYtemCHbnobhONVZxksq69OdrOvIisw82BtTXSEPOb
	qum6Tdn2xtfXua2OFt7DFDCsinuGO1eUqNKApE9emtNhlCfFT/HzulBNdmyJa3818wEOUUOwHRpF1
	TA79iopKN+j/WcoO30xbXfAuK3GP91eEHhcOH4gaNYtreTnaVHVbcNItjLS3mULHRQUH4sfijyKEd
	VV3O/RptLRbvbuFNlp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeqnv-0004so-TX; Sat, 30 May 2020 02:00:55 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeqnt-0004r9-Lv
 for linux-snps-arc@lists.infradead.org; Sat, 30 May 2020 02:00:55 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0E96240954;
 Sat, 30 May 2020 02:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1590804051; bh=CWf2gh7qVhq3qsEH/Qma4cOg7mf//LN+HM3x3iEE1fE=;
 h=From:To:Cc:Subject:Date:From;
 b=K/jHEDEQ1l+PfH/VdqDTHEPupI6f56sgjkIM9+sbK8zWoiPD3uX0fIm1NdL4HnrJI
 CbQk1EDbfrtiYXVIBt5NCK2ylQ8dAprRoEyIVaElNu13fbI1jHaFSZx6Pzou+XTp99
 n+jaGFGHlDPojkTim1Sw+iIb6osrmystRvVXo+S4sr7YyRzfxoz/rP5FdrNrkkFGDR
 yQH+EPKGRwogL5ll1paOBSiE1CLharexus4IDjB21wFpVv/6RPIJpVyVgux62lWRJR
 nPi1aT1q0oh0XLJyVcA2aL9WZIh+73+vDq0zFYEKHtf5wAQYcSZiDcUpnFZpXae+8W
 ExYoRZ4o2nquA==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 826D7A006F;
 Sat, 30 May 2020 02:00:50 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH 0/5] use gcc builtins for sqrt and fma functions
Date: Fri, 29 May 2020 19:00:42 -0700
Message-Id: <20200530020047.5490-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_190053_726467_B7018BD8 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
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

This was suggested as part of ARC port review.

Build tested for following targets:

aarch64-linux-gnu arm-linux-gnueabi hppa-linux-gnu x86_64-linux-gnu arm-linux-gnueabihf riscv64-linux-gnu-rv64imac-lp64 riscv64-linux-gnu-rv64imafdc-lp64 powerpc-linux-gnu microblaze-linux-gnu nios2-linux-gnu hppa-linux-gnu

Thx,
-Vineet

Vineet Gupta (5):
  ARC/dl-runtime helper macros
  iee754: prvoide gcc builtins based generic sqrt functions
  iee754: prvoide gcc builtins based generic fma functions
  aarch/fpu: use generic sqrt, fma functions
  powerpc/fpu: use generic fma functions

 sysdeps/aarch64/fpu/e_sqrt.c                | 27 --------
 sysdeps/aarch64/fpu/e_sqrtf.c               | 27 --------
 sysdeps/aarch64/fpu/math-use-builtins.h     | 70 +++++++++++++++++++++
 sysdeps/aarch64/fpu/s_fma.c                 | 28 ---------
 sysdeps/aarch64/fpu/s_fmaf.c                | 28 ---------
 sysdeps/arc/dl-runtime.h                    | 42 +++++++++++++
 sysdeps/generic/math-use-builtins.h         |  7 +++
 sysdeps/ieee754/dbl-64/e_sqrt.c             |  6 ++
 sysdeps/ieee754/dbl-64/s_fma.c              |  6 ++
 sysdeps/ieee754/dbl-64/s_fmaf.c             |  6 ++
 sysdeps/ieee754/float128/float128_private.h |  2 +
 sysdeps/ieee754/flt-32/e_sqrtf.c            |  6 ++
 sysdeps/ieee754/ldbl-128/s_fmal.c           |  5 ++
 sysdeps/powerpc/fpu/math-use-builtins.h     | 70 +++++++++++++++++++++
 sysdeps/powerpc/fpu/s_fma.c                 | 27 --------
 sysdeps/powerpc/fpu/s_fmaf.c                | 27 --------
 16 files changed, 220 insertions(+), 164 deletions(-)
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrt.c
 delete mode 100644 sysdeps/aarch64/fpu/e_sqrtf.c
 create mode 100644 sysdeps/aarch64/fpu/math-use-builtins.h
 delete mode 100644 sysdeps/aarch64/fpu/s_fma.c
 delete mode 100644 sysdeps/aarch64/fpu/s_fmaf.c
 create mode 100644 sysdeps/arc/dl-runtime.h
 create mode 100644 sysdeps/powerpc/fpu/math-use-builtins.h
 delete mode 100644 sysdeps/powerpc/fpu/s_fma.c
 delete mode 100644 sysdeps/powerpc/fpu/s_fmaf.c

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
