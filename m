Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403F41FA104
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 22:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtFs0IYGaDOfFme88wUhbaAmRIjpCLXMbXm1TKsqNZ8=; b=s/CuWenU7jn/Rb
	QfbL4VOsJyKPuXkWwC1TCTyDcZfE7yxb0FoglJNPZz2g9velPsxqS1Y+xjr/f97OVUkwoTFzN/4Ky
	o0+vp/azrBkBIaroR6u3NReRJEQpdH+T6TodCWTxsD3kudJJgYVoGaYudxnHPV+HPHPToeeTIDPdW
	9IS+EORGcy46tYRNueaoDtmdSHnl+gkehfWKJPTo0q8xVoGtK1S7Dj3ExrHFhY63yREu75gjyxKi7
	pjH3hPwE7RkD9Hv4skz6Y3lSbCXg07M62bJfYEtH5C9WSOK8TZOgvLUBVYW6Uziypx4IK7F8ILsLS
	P9DQRgwBFyWxrZiyqtLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvVO-0003cJ-JX; Mon, 15 Jun 2020 20:14:54 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvVJ-0003YH-Hy
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 20:14:52 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2DD33C0BB7;
 Mon, 15 Jun 2020 20:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592252089; bh=DUTY9CaNPuD1S0P7hddXHxm3szxZtnFeJ/tGCy+vSjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cs0AjRp1O3iYZQzY58LUKBG1dQ5vl8IED++xRjXqoFuV3ODl8AgJwMzGLAQcUCknR
 j64sUWhaBejqgehF8Ek8uY9YblI0+S1c8IV7wCqKIK7da4D1FM0wrt/HWD3VnoCx9/
 C36RPqHv7JoUvCCpZhLP5adVjetHNrJA6OZq6NQcqYNuEBS+g1LQaHKVsrVc4k/D79
 yLbOAp6QN9EOJhgm9VpUGUXXOpXpILFQ0Z+WL5LfPVFfotV+Kc3FooxwDdiVB0WRLt
 zkCb6EKs2i8yj5AfUbPdAztpO0OhhGS4R/iIeLITmlxJCE1TUxJdpuGWw1ay6kV5Ea
 L0lejqmgETnRw==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id D04BEA00A1;
 Mon, 15 Jun 2020 20:14:48 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v7 13/13] Documentation for ARC port
Date: Mon, 15 Jun 2020 13:14:41 -0700
Message-Id: <20200615201441.31820-14-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615201441.31820-1-vgupta@synopsys.com>
References: <20200615201441.31820-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_131449_627956_4B1E457C 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

---
 NEWS                | 11 +++++++++++
 README              |  1 +
 manual/install.texi |  4 ++++
 3 files changed, 16 insertions(+)

diff --git a/NEWS b/NEWS
index a660fc59a89e..db65fea8b6ec 100644
--- a/NEWS
+++ b/NEWS
@@ -15,6 +15,17 @@ Major new features:
 
 * New locale added: ckb_IQ (Kurdish/Sorani spoken in Iraq)
 
+* Support for Synopsys ARC HS cores (ARCv2 ISA) running Linux has been
+  added. This port requires at least binutils-2.32, gcc-8.3 and Linux-5.1.
+  Three ABIs are supported:
+
+     - arc-linux-gnu
+     - arc-linux-gnuhf
+     - arceb-linux-gnu
+
+  The arc* ABI is little-endian while arceb is big-endian. All ABIs use
+  64-bit time (y2038 safe) and 64-bit file offsets (LFS default).
+
 * The GNU C Library now loads audit modules listed in the DT_AUDIT and
   DT_DEPAUDIT dynamic section entries of the main executable.
 
diff --git a/README b/README
index 31c5da0405bd..903f07e4840a 100644
--- a/README
+++ b/README
@@ -24,6 +24,7 @@ The GNU C Library supports these configurations for using Linux kernels:
 
 	aarch64*-*-linux-gnu
 	alpha*-*-linux-gnu
+	arc*-*-linux-gnu
 	arm-*-linux-gnueabi
 	csky-*-linux-gnuabiv2
 	hppa-*-linux-gnu
diff --git a/manual/install.texi b/manual/install.texi
index c1e49a94fed3..74cb90a91331 100644
--- a/manual/install.texi
+++ b/manual/install.texi
@@ -522,6 +522,8 @@ Library with support for IEEE long double.
 @c powerpc64le performs an autoconf test to verify the compiler compiles with
 @c commands like "$CC -c foo.c -mabi=ibmlongdouble -mlong-double-128".
 
+For ARC architecture builds, GCC 8.3 or higher is needed.
+
 For multi-arch support it is recommended to use a GCC which has been built with
 support for GNU indirect functions.  This ensures that correct debugging
 information is generated for functions selected by IFUNC resolvers.  This
@@ -547,6 +549,8 @@ For PowerPC 64-bits little-endian (powerpc64le), @command{objcopy} is required
 to support @option{--update-section}.  This option requires binutils 2.26 or
 newer.
 
+ARC architecture needs @code{binutils} 2.32 or higher for TLS related fixes.
+
 @item
 GNU @code{texinfo} 4.7 or later
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
