Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BEA1FA102
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 22:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqtfQF0aHfNdx2WDZ4SDuQ3d85TH1VB8k5cRcaCCQ2w=; b=D5ZeYc2ieJZhmb
	Oc0GKakWZzmIiSwn1RY4BgKoJm8P7weqomSaxZIUYZpLMD2vK3frgwiccAn6HWyZl9Do95HYvG4BI
	ous/kLdD9XFD/mkop/15AoJBBZ6YjBv4KTUcD+uETD7E6DfhJUQZnHGgIpwR1h6ttaUQkcDtfraJg
	nE8fs/RSK95VWFFjdz0Pg19VccN3A0EY/1vdf4c+auzerII1XD+HMGF2tm/k1kCzZ4MopfvPnoZJr
	3F6x3OH3GG+G/qHT3ngfLBR9GsD1BAGRxsleVWCot9qKXYARO6NCH4nlhS+0LX7vyGnqRSRu8IrQ8
	nswQdOUiygrveUw9YCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvVM-0003an-09; Mon, 15 Jun 2020 20:14:52 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvVJ-0003Xx-A6
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 20:14:51 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB483C0BB6;
 Mon, 15 Jun 2020 20:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592252089; bh=pRw6/zG0P3FAp19D8r8j4iRSjQ9rZLsBTrQ0P1F6FxY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aOPYcASoZs15m7GNUCkoGlrOIBaku9Hw7M0irLfU/gibFcom9JUo/xoM+skzpgxOK
 EquxzJh4ByHTs6FoKuxu9MUOKozog3tfDj1XilaV4jtLbRSc4Zs7uMPFARlsZj/hph
 p6xf/meCWTgrITlEuUXvA1lZIsGVJnLBeeUeuvk5D+tg3OU/emDTCyhXMhCZGrzadP
 /zwCJPJUzpe6t/kcq5WORn4XVymHoArA2Rl+IXO8FQkSB7Zl5DevMLgqUW+M4UqGBY
 yt5L6j7/7mSfNfmNDMTTteg9VZe+OL9bMJMXgxi80IZxy2bsC0Ynv/iMDcyBjv652I
 GaefOGE3w1auQ==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id A1E8AA00AA;
 Mon, 15 Jun 2020 20:14:48 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v7 12/13] build-many-glibcs.py: Enable ARC builds
Date: Mon, 15 Jun 2020 13:14:40 -0700
Message-Id: <20200615201441.31820-13-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615201441.31820-1-vgupta@synopsys.com>
References: <20200615201441.31820-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_131449_379889_B29AF1C1 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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
 scripts/build-many-glibcs.py | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/scripts/build-many-glibcs.py b/scripts/build-many-glibcs.py
index 6c6615b200d9..64f5713530bd 100755
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
