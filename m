Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677951B520F
	for <lists+linux-snps-arc@lfdr.de>; Thu, 23 Apr 2020 03:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Egiy2crPyJElKw0Dqs18r6v/LUg7qTbYWUlNH9woKC8=; b=k+1t33xnGmvSjs
	BxbZ6dh3lzWApBmRn5lbpJt4nlQTUadZxPn2G2R2U7u0zACJKI2C71ono/hAANbTmD8JyhWRxjvGI
	s4qi0MGlwb5hHNbrntXjlRpgXDeIHB7MMFf5YCPqvmFLg5yFGDDcmFLNpuJYzmsk7pzKhDSeFttKG
	0449vTt8ilYlmjuBuhGRLx7MuGxOSjGZzzaSBW4tvqfnaft5ShTd7Ht7B5AgjU5HiSBgi80UIDGV9
	Jng7fcVb5xzW7JdN5v3SxzQYJenAoblefIE+2YkSXVO/5X4YS18Ch3pAcosXVy5RXdjYgvf4TxvR2
	7HpiNz6BenH6pcXti8Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQs4-0004rc-VM; Thu, 23 Apr 2020 01:41:44 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQrt-0004k0-UV
 for linux-snps-arc@lists.infradead.org; Thu, 23 Apr 2020 01:41:41 +0000
Received: from mailhost.synopsys.com (sv2-mailhost2.synopsys.com
 [10.205.2.134])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CCEDA4016E;
 Thu, 23 Apr 2020 01:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1587606093; bh=uVw+mUc/q6hJBD19HdXYxghwS4dnMpjI0QooiKPBY/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jfm149340Kbxb9MOa92E5GeDVzHOp9BnjkSxnPgNczQZZOR+DRaXVOdkLC2PC0gSh
 aFF+GpwNua6VHxXWq4v5NTMz3TMkL6J9AfbghMXQ8DCmaKf51DagJNMEt52WtLNctb
 ggyC0rm/M6f0kJIOdT90G8PIaEESjGaS6gty3Mbxk4KLv3XQMKiDKnFW3ahD0Egw/n
 uRUIMRfKLG3kiju6o6F3demZcXgoHpq5tfi3wJNwlBqn7kygcMIRJq5nOJMIm9Dq1q
 r0oh+BdAAFZT7m4p/P7mGFJv8jAkbYFYokoAYNupJX6xZ9QnVDKVWB9D9F2gn38AxS
 sxJhN/tXyz8JA==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 95323A009D;
 Thu, 23 Apr 2020 01:41:33 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v6 12/13] build-many-glibcs.py: Enable ARC builds
Date: Wed, 22 Apr 2020 18:41:25 -0700
Message-Id: <20200423014126.10417-13-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423014126.10417-1-vgupta@synopsys.com>
References: <20200423014126.10417-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_184133_980014_E116C5FD 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 scripts/build-many-glibcs.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/build-many-glibcs.py b/scripts/build-many-glibcs.py
index 4832912b28b9..752da3657a01 100755
--- a/scripts/build-many-glibcs.py
+++ b/scripts/build-many-glibcs.py
@@ -162,6 +162,15 @@ class Context(object):
                                        'cfg': ['--disable-multi-arch']}])
         self.add_config(arch='aarch64_be',
                         os_name='linux-gnu')
+        self.add_config(arch='arc',
+                        os_name='linux-gnu',
+                        gcc_cfg=['--disable-multilib', '--with-cpu=hs38'])
+        self.add_config(arch='arc',
+                        os_name='linux-gnuhf',
+                        gcc_cfg=['--disable-multilib', '--with-cpu=hs38_linux'])
+        self.add_config(arch='arceb',
+                        os_name='linux-gnu',
+                        gcc_cfg=['--disable-multilib', '--with-cpu=hs38'])
         self.add_config(arch='alpha',
                         os_name='linux-gnu')
         self.add_config(arch='arm',
@@ -1224,6 +1233,7 @@ def install_linux_headers(policy, cmdlist):
     """Install Linux kernel headers."""
     arch_map = {'aarch64': 'arm64',
                 'alpha': 'alpha',
+                'arc': 'arc',
                 'arm': 'arm',
                 'csky': 'csky',
                 'hppa': 'parisc',
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
