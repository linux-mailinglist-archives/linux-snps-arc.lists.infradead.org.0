Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16D1A2DC2
	for <lists+linux-snps-arc@lfdr.de>; Thu,  9 Apr 2020 04:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlaMQe8LGntulhsw6/oePGybj4G/vkJXCCeB/ej2aRY=; b=r0TaWx9/yWz3jr
	CVbL9ce39kzWcyFLj8ogEXq3ZfuK1AJ+0MhxHOQR9c5kdun5nXiwPR359fqohN+WZI3bxAe3UXV0i
	VMoscvIK1H31rdjf2lydSb+KYGlwSA+qm8kExRDYjg4U2ay5/kmTsRCzezwzXEPeR93Kr3ZC2+7Yg
	7ZWgMEO5Aff6VXbkSCV4ExjLgxpi5brwz+xqhTpu8ImJ9RrXtmR0NjwYg7UPEVDzSZ0qZln1gb8ih
	Q7uPV5lhgKzvUgyx9Zjvi3AfyznEfmpz1kp3UsRYNonHzrLUB2zAIa35klL0iJkqHkDGWB6utFzUH
	Pw/VRSUq46i79YEiVRDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMNN1-0005fo-6S; Thu, 09 Apr 2020 02:56:47 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMNMs-0005ah-Rg
 for linux-snps-arc@lists.infradead.org; Thu, 09 Apr 2020 02:56:43 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 61356C033A;
 Thu,  9 Apr 2020 02:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586400998; bh=suG7++ULhYbWo32rp7/PdPKe61AuMNz+ING7DthPshM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gxi7yXdOdkGoH0sOHl1iWmin15ux9sCGEHkOWzJdp6QeqqxVpvJMlk/Ro7w9K/79z
 t8p7QIOaOmWsR5QKrv4QQkdXOnrTE5dlLAQCnMf4inpCIGU9Mv1Jn301W8++gdydBj
 EsGdb93F6GxquHpSgpRk1dah2awz1uW5jehsHWmM0C+ZkhMwxW41+2HkQkJrencEXi
 AGNNTDqsx2JnUYX+pmrK1Oujxi92TnUAQ8MQTBkgap+7e8iHPZGJrIPAuT1r6JHaZi
 dTowhNpBmLhsZai6nd7GHAQIMR2BbAsql5clcJy26SmuIt7H+D9F6QtqzGLpgZ3K5u
 eXCUERAIX8xbg==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 94031A00BB;
 Thu,  9 Apr 2020 02:56:37 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v5 14/14] Documentation for ARC port
Date: Wed,  8 Apr 2020 19:56:15 -0700
Message-Id: <20200409025615.27003-15-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409025615.27003-1-vgupta@synopsys.com>
References: <20200409025615.27003-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_195638_933648_F965FD35 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 NEWS                | 9 +++++++++
 README              | 1 +
 manual/install.texi | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/NEWS b/NEWS
index 14fd59a16a2d..6d17b6a0a087 100644
--- a/NEWS
+++ b/NEWS
@@ -17,6 +17,15 @@ Major new features:
     - rv32imafdc ilp32
     - rv32imafdc ilp32d
 
+* Support for Synpsys ARC HS cores (ARCv2 ISA) running Linux.
+
+  Port requires atleast
+    - binutils-2.32 (binutils-2_31-branch: commit 6ce881c15fc4, 2018-10-04)
+    - gcc 8.3 (gcc-8-stable: commit 0d5ba57508c5, 2019-01-29)
+    - Linux kernel 5.1+ (64-bit time and offsets)
+
+  Both Little and Big-Endian supported
+
 Deprecated and removed features, and other changes affecting compatibility:
 
   [Add deprecations, removals and changes affecting compatibility here]
diff --git a/README b/README
index cee86ab178cf..d0f0edb3930a 100644
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
index 71bf47cac659..c4b11e4e7973 100644
--- a/manual/install.texi
+++ b/manual/install.texi
@@ -507,6 +507,9 @@ the newest version of the compiler that is known to work for building
 release time, GCC 9.2.1 is the newest compiler verified to work to build
 @theglibc{}.
 
+For ARC architecture builds, GCC 8.3 is needed which has the necessary
+fixes to support @theglibc{}.
+
 For multi-arch support it is recommended to use a GCC which has been built with
 support for GNU indirect functions.  This ensures that correct debugging
 information is generated for functions selected by IFUNC resolvers.  This
@@ -528,6 +531,8 @@ No other assembler or linker has the necessary functionality at the
 moment. As of release time, GNU @code{binutils} 2.32 is the newest
 verified to work to build @theglibc{}.
 
+ARC architecture needs @code{binutils} 2.32 for TLS related fixes.
+
 @item
 GNU @code{texinfo} 4.7 or later
 
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
