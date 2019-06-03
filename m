Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7775432DEC
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 12:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RtNFjXCXr+DcHWzhKcrRoers39DfU88c1b5t78owoXA=; b=XMe
	q9gJss5s/qIkKlaS15VD3CSTLfK8d4w2Z44Km62MrvrgOuGxOHjpaFbnTybqQIB1t6kvd3/VOjFlQ
	QJy18x0znA282tHCMR9EupvNaK98CbZ/hPaUo8vG1qgn65c/hpN75RiccF8nTXPSZUBLQC6FxeAHG
	CvCMF7Bo/rjw1NRsEwGUSxp3/3udm4aXUJCnvTWEEgB96Uj4IZVGEgyBI1dyNLKDsY0mJ/tGGoYc9
	/w3SaOvHbnILcx76LmCkF1CTUAxAv0F1ApfJjCXBEHy9xfHDoz3BJWptRICOxXsrHxTrVSCu54IXQ
	RkoQfp7L3GrwmbRNkbEEIFwIriPFE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkXP-0006db-6o; Mon, 03 Jun 2019 10:49:59 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkXL-0006dA-8Y
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 10:49:57 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x53AnJe0018248;
 Mon, 3 Jun 2019 19:49:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x53AnJe0018248
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559558959;
 bh=U9C22jde5JklsjyeLz2bIr4QBwf6zeC1rcRG3MNS4Qc=;
 h=From:To:Cc:Subject:Date:From;
 b=T2W7Ca/xX9afgbYoXk6eXa5kZgtefNVw1E9U0oz3JYfXYSj43ZSWOpZjxgkTfVveT
 3ZQoDh+n9QHxvQQ2denGght3i0ULkxDuPcQxSJXV8EIzYrMc2hCJn0oZspDSfexSgq
 GrNRpF4T9rBdhs1RlQ59oNWUNVmpq3QHZGTXOdP1ks/GiwlplyFHb6zBs49PGtxbwG
 saMvObKJfwxq+o6MRjsXarArnDPZb8+h0J40Lzfe3HIeQmUW6jsH/Ldyj0igmlRUAd
 Nl0jGSD89W9QmdW2Fn7Nf2cgIMVkvzeM6ytQA5rAL3O+rndNCElzpbhklgDxxiLI2R
 ZYWyzTFLh4hTQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Date: Mon,  3 Jun 2019 19:49:02 +0900
Message-Id: <20190603104902.23799-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_034955_635345_DEC2B5B8 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Marek <michal.lkml@markovi.net>, Vineet Gupta <vgupta@synopsys.com>,
 Alexey Brodkin <abrodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-stable <stable@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-snps-arc@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

To print the pathname that will be used by shell in the current
environment, 'command -v' is a standardized way. [1]

'which' is also often used in scripting, but it is not portable.

When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
implementation"), I was eager to use 'command -v' but it did not work.
(The reason is explained below.)

I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
thought it was no longer needed. Sorry, I was wrong.

It works well on my Ubuntu machine, but Alexey Brodkin reports annoying
warnings from the 'which' on CentOS 7 when the given command is not
found in the PATH environment.

  $ which foo
  which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)

Given that behavior of 'which' is different on environment, I want
to try 'command -v' again.

The specification [1] clearly describes the behavior of 'command -v'
when the given command is not found:

  Otherwise, no output shall be written and the exit status shall reflect
  that the name was not found.

However, we need a little magic to use 'command -v' from Make.

$(shell ...) passes the argument to a subshell for execution, and
returns the standard output of the command.

Here is a trick. GNU Make may optimize this by executing the command
directly instead of forking a subshell, if no shell special characters
are found in the command line and omitting the subshell will not
change the behavior.

In this case, no shell special character is used. So, Make will try
to run the command directly. However, 'command' is a shell-builtin
command. In fact, Make has a table of shell-builtin commands because
it must spawn a subshell to execute them.

Until recently, 'command' was missing in the table.

This issue was fixed by the following commit:

| commit 1af314465e5dfe3e8baa839a32a72e83c04f26ef
| Author: Paul Smith <psmith@gnu.org>
| Date:   Sun Nov 12 18:10:28 2017 -0500
|
|     * job.c: Add "command" as a known shell built-in.
|
|     This is not a POSIX shell built-in but it's common in UNIX shells.
|     Reported by Nick Bowler <nbowler@draconx.ca>.

This is not included in any released versions of Make yet.
(But, some distributions may have back-ported the fix-up.)

To trick Make and let it fork the subshell, I added a shell special
character '~'. We may be able to get rid of this workaround someday,
but it is very far into the future.

[1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html

Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
Cc: linux-stable <stable@vger.kernel.org> # 5.1
Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Kbuild.include | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 85d758233483..5a32ca80c3f6 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -74,8 +74,11 @@ endef
 # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
 # Return first <prefix> where a <prefix>gcc is found in PATH.
 # If no gcc found in PATH with listed prefixes return nothing
+#
+# Note: the special character '~' forces Make to invoke a shell. This workaround
+# is needed because this issue was only fixed after GNU Make 4.2.1 release.
 cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
-					$(if $(shell which $(c)gcc), $(c))))
+				$(if $(shell command -v $(c)gcc ~), $(c))))
 
 # output directory for tests below
 TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
