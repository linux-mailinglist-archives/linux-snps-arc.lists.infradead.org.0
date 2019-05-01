Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE5B10F65
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 00:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4HteuWeB8pxQNpWzSHMUbNVoygw7AsbvJnwJkInHMO8=; b=MPWW/ON7eUaM30
	2EcAHkMAAGd6SZXlHAeG824/JGloxMSCsqEacJl+1xVCFrh+Q/SOYlI2r1UBwR5O9Ed2XrCudYxqm
	6JWnhcrVSiczOS8HO+xfNzsEHVzuKTHbfUhzjJ7h0cR4JQhwiV19Rs/Pl0FRIdxhPh8AXF74TaF0R
	gsynZ2V90p8dHHsYZrjWziX8GttGuaBhsSOdZGmCtGlGIAw6O05LmhZNhOKV5cutvDKOQ+s2tnkXY
	DiBAkzIZb/U/DY7ZJSldCGHadIyeJOE4ywETh0bRPESFckzFAjjwvzXncNfFI62bJX4WbyoDDqdow
	7ynvMhWhcnDYQbaS9pCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLy6t-0002rM-Rg; Wed, 01 May 2019 22:53:55 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLy6r-0002qi-29
 for linux-snps-arc@lists.infradead.org; Wed, 01 May 2019 22:53:54 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2829AC0169;
 Wed,  1 May 2019 22:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556751232; bh=MBk03IEPACXRS9nF/u/+JCyk6lPEN0xQOcBI/LToqls=;
 h=From:To:CC:Subject:Date:From;
 b=W0tsRNLMk9Zplp79naCLyBUECO+G1OCcPZpjnbHDQ0j4JJ21+GEc7qw+IUL4t4eRr
 1+yJGuMtYGdk/UfpAxSIB4E3abWSMgWhwO9Aph8PFCieVnhxfEj3gdJPjOP8Z2ZcXN
 8wJnI2j9ugEr/wzchzwc77NkVhRq2viN3muklkKavGwU4Kts6zN2vKzRqfsLh/OS+s
 6bOH+l2mhF6Wu608/zXnG2OgPEPxiRQ+3BDZX/SDvj64DDnUduGXik2ckguV2N35ZY
 zIqSKEjmUbxa0d8mI9A0GwJ6OEk5QM7aISq4zMtNCnqNOA2pqMHBVp1xhuWK0cBIqH
 H/kaQMXlAt33g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 03127A0071;
 Wed,  1 May 2019 22:53:50 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 1 May 2019 15:53:49 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 2 May 2019 04:23:58 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Thu, 2 May 2019 04:23:57 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>
Subject: [PATCH] tools/bpf: fix perf build error with uClibc (seen on ARC)
Date: Wed, 1 May 2019 15:53:29 -0700
Message-ID: <1556751209-4778-1-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_155353_111841_1AB12EB5 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 netdev@vger.kernel.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org, arnaldo.melo@gmail.com,
 linux-perf-users@vger.kernel.org, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

When build perf for ARC recently, there was a build failure due to lack
of __NR_bpf.

| Auto-detecting system features:
|
| ...                     get_cpuid: [ OFF ]
| ...                           bpf: [ on  ]
|
| #  error __NR_bpf not defined. libbpf does not support your arch.
    ^~~~~
| bpf.c: In function 'sys_bpf':
| bpf.c:66:17: error: '__NR_bpf' undeclared (first use in this function)
|  return syscall(__NR_bpf, cmd, attr, size);
|                 ^~~~~~~~
|                 sys_bpf

The fix is to define a fallbak __NR_bpf.

The obvious fix with be __arc__ specific value, but i think a better fix
is to use the asm-generic uapi value applicable to ARC as well as any new
arch (hopefully we don't add an old existing arch here). Otherwise I can
just add __arc__

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 tools/lib/bpf/bpf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/lib/bpf/bpf.c b/tools/lib/bpf/bpf.c
index 9cd015574e83..2c5eb7928400 100644
--- a/tools/lib/bpf/bpf.c
+++ b/tools/lib/bpf/bpf.c
@@ -47,7 +47,10 @@
 # elif defined(__s390__)
 #  define __NR_bpf 351
 # else
-#  error __NR_bpf not defined. libbpf does not support your arch.
+/*
+ * Any non listed arch (new) will have to asm-generic uapi complient
+ */
+#  define __NR_bpf 280
 # endif
 #endif
 
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
