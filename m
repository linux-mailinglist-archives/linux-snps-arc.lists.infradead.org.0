Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63CE1EB19C
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 00:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NVEoVEYd/ZjbY21JDgdpmG+SATVhyikfsDvbpLXFSU=; b=Zwy+dlnfWhH0HM
	PPq7Vt3tgMWqnbI2U6yp4sg3crEXp2VFoy3ilVlfEsekY8EFSVNz0IG9wmxKg0zxHCNhlKBZ8rcBR
	ewo8BJMBSOdVqioz/i3msKmAuMyD+hD/I3kVt3LCox7FoXxwZQfIQm4oEmGrmK0YRS2VSMFsyDh7G
	36HNyNCheTrkdb/+0VV2NLSR+lj5t5SHDXlPFjaleS6OHHlY50xyA4KkkLDNCTwGKiDZE3Jt0fPvm
	7YiajJ7pD09XFg9yHakRgqOMhwS31sZS+4Rpu9sw9bRLseSzBWs0GP/WH8c1d7J03Agjf7E1ghNKM
	5etSeomzfagnYSNv5ZfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfslS-0004JP-DH; Mon, 01 Jun 2020 22:18:38 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfslP-0004Hw-PY
 for linux-snps-arc@lists.infradead.org; Mon, 01 Jun 2020 22:18:37 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 17760C008F;
 Mon,  1 Jun 2020 22:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591049914; bh=WLMDaLYk+VaGwQnVbai8+RKJhjtZBX5u/DprBnEp/6k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PVGJXWlDCpVVECQWRHnqCOEMxY8sINi1WdCH7VD5s1Oy4Ui4DucAb3OU/JwaHh/ih
 1NmtqVTByUbTZFJnqtHtsqX/vaE0hpdCUyJ/562ShzCmGOQfkgqp6bQFJ+PDZUz8MX
 51PQp7+FSsmlIzHmNbg4q+Z7K2Bb+oKMUF71qWpssGvCSBWbgXHHDEM9A1w682hHf4
 /1AKm7eTn0Za/0YdKiwTieFXCcP/lm6agtIR99KNVA6T4x2OvF7FEvWEyeqGjppnL7
 ucc9emrvelnokWBRBvxQSAjbO2ENFpIcAfrnjWoGG+a3NlCNcVT3MIOqOtZkuLUUvG
 U3Mmcxdp9HMkg==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 591F5A025E;
 Mon,  1 Jun 2020 22:18:33 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v2 2/2] ARC/dl-runtime helper macros
Date: Mon,  1 Jun 2020 15:18:23 -0700
Message-Id: <20200601221823.17861-3-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601221823.17861-1-vgupta@synopsys.com>
References: <20200601221823.17861-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_151835_863241_190C12DA 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
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

This is purely for review purposes to attest the interface defined
in prior patch
---
 sysdeps/arc/dl-runtime.h | 42 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 sysdeps/arc/dl-runtime.h

diff --git a/sysdeps/arc/dl-runtime.h b/sysdeps/arc/dl-runtime.h
new file mode 100644
index 000000000000..529d49f5d0a1
--- /dev/null
+++ b/sysdeps/arc/dl-runtime.h
@@ -0,0 +1,42 @@
+/* Helpers for On-demand PLT fixup for shared objects. ARC version.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public License as
+   published by the Free Software Foundation; either version 2.1 of the
+   License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+/* PLT jump into resolver passes PC of PLTn, while _dl_fixup expects the
+   address of corresponding .rela.plt entry.
+
+    - @plt0: runtime pc of first plt entry (DT_PLTGOT)
+    - @pltn: runtime pc of plt entry being resolved
+    - @size: size of .plt.rela entry (unused).  */
+static inline uintptr_t
+reloc_index (uintptr_t plt0, uintptr_t pltn, size_t size)
+{
+  unsigned long int idx = (unsigned long)pltn - (unsigned long)plt0;
+
+  /* PLT trampoline is 16 bytes. */
+  idx /= 16;
+
+  /* Exclude PLT0 and PLT1.  */
+  return idx - 2;
+}
+
+static inline uintptr_t
+reloc_offset (uintptr_t plt0, uintptr_t pltn)
+{
+  size_t sz = sizeof (ElfW(Rela));
+  return reloc_index(plt0, pltn, sz) * sz;
+}
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
