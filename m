Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4077636AA6
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 06:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=viXCHOc6YTIQnlf1MlmStimlal569LVwc8Kpd8ND2Sw=; b=ZmD
	51EEwwF/mIqTqvLiPpiERaofxwEimTM5ReVT3Kq0FTthI7fC1n5i4gnj6RKIFg+W7F6rROniSEf8J
	oNM7XkH1+UQnUrB+z45q8PST48NNUJR+463PBsjKiOpcbY5BbPDcEdthaXZNRFx6Iy6hYPpGMa4c6
	Y5Y3BT8c+QEZ6zjFx3pH8Giy0b+Fd57ZlgeVBQmgLqh4NG0EITufOeq6amK3jNDC+TnfPTMZz2ipX
	Zgt9gOiad0qSlDZuyq/ris9APEtmwokl5wFHgl+6LSq6N66gdZxWhZEZq6/Wm5EomPVrvbOZOk0QY
	zk8vZX4c6984pBGhRjpl0S3N2BLJLHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYjnN-0004h6-PR; Thu, 06 Jun 2019 04:14:33 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYjnJ-0004gl-La
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 04:14:32 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x564E4Qs005398;
 Thu, 6 Jun 2019 13:14:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x564E4Qs005398
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559794445;
 bh=eOW16+d0QVQdHAamLUOsKECw5DUQ5PBLfUUOO0b6ZzQ=;
 h=From:To:Cc:Subject:Date:From;
 b=reAxSQwSioU2yzfjgnrkOgsrJeRIs7XXXhszdvHGP2vZG+gttaqbwOqUbb2zJF/ow
 VuDDIO0dy6qTjfd2vBOiewvimiYDF/7M9sZ5TTo/ihk9/Fs+gxpk6sGyC88WLqMN/X
 VImXUPh20VpzfnqyBMWGmEU9RqBA8Tj34liKmpJjkL5nfV4aLnxH2kIbU5ASs6uGau
 relTlvYRPIT6LHOwJ+crhgDsxhYtwjexB54qt59zFn9INGigelRlxprIh89Z0VwZRr
 gw57c9u1v1PQwFbxf+A4RLg4jVKAnFJIG00ft5TTxfitr6N0t2lVvX3zFYV8gGcK6u
 t5rfS+Jzt33yw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH v2] kbuild: use more portable 'command -v' for cc-cross-prefix
Date: Thu,  6 Jun 2019 13:13:58 +0900
Message-Id: <20190606041358.22757-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_211430_034777_41783095 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 David Laight <David.Laight@aculab.com>, linux-snps-arc@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

To print the pathname that will be used by shell in the current
environment, 'command -v' is a standardized way. [1]

'which' is also often used in scripts, but it is less portable.

When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
implementation"), I was eager to use 'command -v' but it did not work.
(The reason is explained below.)

I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
thought it was no longer needed. Sorry, I was wrong.

It works well on my Ubuntu machine, but Alexey Brodkin reports noisy
warnings on CentOS7 when 'which' fails to find the given command in
the PATH environment.

  $ which foo
  which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)

Given that behavior of 'which' depends on system (and it may not be
installed by default), I want to try 'command -v' once again.

The specification [1] clearly describes the behavior of 'command -v'
when the given command is not found:

  Otherwise, no output shall be written and the exit status shall reflect
  that the name was not found.

However, we need a little magic to use 'command -v' from Make.

$(shell ...) passes the argument to a subshell for execution, and
returns the standard output of the command.

Here is a trick. GNU Make may optimize this by executing the command
directly instead of forking a subshell, if no shell special characters
are found in the command and omitting the subshell will not change the
behavior.

In this case, no shell special character is used. So, Make will try
to run it directly. However, 'command' is a shell-builtin command,
then Make would fail to find it in the PATH environment:

  $ make ARCH=m68k defconfig
  make: command: Command not found
  make: command: Command not found
  make: command: Command not found

In fact, Make has a table of shell-builtin commands because it must
ask the shell to execute them.

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

Because the latest release is GNU Make 4.2.1 in 2016, this commit is
not included in any released versions. (But some distributions may
have back-ported it.)

We need to trick Make to spawn a subshell. There are various ways to
do so:

 1) Use a shell special character '~' as dummy

    $(shell : ~; command -v $(c)gcc)

 2) Use a variable reference, which always expands to the empty string
    (suggested by David Laight)

    $(shell command$${x:+} -v $(c)gcc)

 3) Use redirect

    $(shell command -v $(c)gcc 2>/dev/null)

I chose 3) to not confuse people. The stderr would not be polluted
anyway, but it will provide extra safety, and is easy to understand.

Tested on Make 3.81, 3.82, 4.0, 4.1, 4.2, 4.2.1

[1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html

Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
Cc: linux-stable <stable@vger.kernel.org> # 5.1
Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Tested-by: Alexey Brodkin <abrodkin@synopsys.com>
---

Changes in v2:
  - Use dummy redirect

 scripts/Kbuild.include | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 85d758233483..fd8aa314c156 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -74,8 +74,11 @@ endef
 # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
 # Return first <prefix> where a <prefix>gcc is found in PATH.
 # If no gcc found in PATH with listed prefixes return nothing
+#
+# Note: 2>/dev/null is here to force Make to invoke a shell. This workaround
+# is needed because this issue was only fixed after GNU Make 4.2.1 release.
 cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
-					$(if $(shell which $(c)gcc), $(c))))
+			$(if $(shell command -v $(c)gcc 2>/dev/null), $(c))))
 
 # output directory for tests below
 TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
-- 
2.17.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
