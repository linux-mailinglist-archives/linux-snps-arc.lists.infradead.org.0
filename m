Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1285832ECD
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 13:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2k88Z/XIHtYMcnsVWVQmJuqgOwI/TxDoANatY9qVi8Y=; b=H37bmcSJSXuShQ
	R5pdI4PyzHmu8ir0EuO/vJMsEFzKaOu46G/iADG6tbbGbRDX5dFJm1ES9oV3cxhSbkfQyo0Ew/XtR
	IN2bDKBAtyFKLxlRq5YP8ZsSicVostc8IDPCj6WMnZXcwRNKIpuYwIZmhRp37PgEQVybj/gW7QtEP
	VkumEfCk46WWdRyo/rxf5KupaK9xZP8hitScGY6Il3xmjalVFVRQkqcqoQV3s5+gCmYfFhx3Pbrtc
	UVf4WYnrqfrt1D9f96wicD0chhXA9xxVTMJ/xuJnEvBbrLrou8kblHwScrTDdGIAaQ0ab0brHxe+H
	bMrFcPipPbvC9KRiPSYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlJH-00044O-Ms; Mon, 03 Jun 2019 11:39:27 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlJC-00042S-Lg
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 11:39:25 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x53BcxB5027701
 for <linux-snps-arc@lists.infradead.org>; Mon, 3 Jun 2019 20:39:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x53BcxB5027701
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559561940;
 bh=CBdWP6U5fS8ocJgm10xiO9eR7ixowyWCa6YOFPTndao=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xnJbx/M7MnkH1nXgVJ9kik2tKAAPChkBGFUbSjEkdoEUskVJS0AUuCn7fmZ3nNzwP
 Bbba3y+W2sFDOY8iy0fi4+PzI7GEGweS6F4z1TRoDqkjr26Fd/Jt9uvV7bqa+ioDNH
 15lhMPScK6UwcwI3ODwSyLdptxVR/fS6EZ/tWe7VxwdVjULZaaG9QlzNJdPIXWh7f2
 p+BK50wknjFHhEHLOlDGVGgvUwfrFy/+mhRKQGG6XnfnoX5w0EXOzt/3qPifB9Nmar
 aVqrErhWX0Pnt9jPo8ZzyC1COQJ1K8ru9NNWgnoui610MDdnv7hhFST1ZlncwjMqxB
 AknUTSJ+wJgrg==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id q64so1347303vsd.1
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 04:39:00 -0700 (PDT)
X-Gm-Message-State: APjAAAVNhtBIbXyZ2vMx03kHldgtnSQdA6TKKBceOgJMifIA4rJKEWxT
 dqW9wFvxhkCs2ahaxaXAJnW0KHcf2mF7pfbKnSM=
X-Google-Smtp-Source: APXvYqxc8Ii0MUr5JGLfu/eGUPS88exTq+Twca8+poIHObUT3eQXOK2MUh19AaVQFAaWUfAq3xUbsfTfogyqMxXwT6Q=
X-Received: by 2002:a67:b109:: with SMTP id w9mr1536213vsl.155.1559561939094; 
 Mon, 03 Jun 2019 04:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
In-Reply-To: <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 3 Jun 2019 20:38:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
Message-ID: <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_043922_925992_460AA949 
X-CRM114-Status: GOOD (  30.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi David,

On Mon, Jun 3, 2019 at 8:14 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Masahiro Yamada
> > Sent: 03 June 2019 11:49
> >
> > To print the pathname that will be used by shell in the current
> > environment, 'command -v' is a standardized way. [1]
> >
> > 'which' is also often used in scripting, but it is not portable.
> >
> > When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
> > implementation"), I was eager to use 'command -v' but it did not work.
> > (The reason is explained below.)
> >
> > I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
> > thought it was no longer needed. Sorry, I was wrong.
> >
> > It works well on my Ubuntu machine, but Alexey Brodkin reports annoying
> > warnings from the 'which' on CentOS 7 when the given command is not
> > found in the PATH environment.
> >
> >   $ which foo
> >   which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)
> >
> > Given that behavior of 'which' is different on environment, I want
> > to try 'command -v' again.
> >
> > The specification [1] clearly describes the behavior of 'command -v'
> > when the given command is not found:
> >
> >   Otherwise, no output shall be written and the exit status shall reflect
> >   that the name was not found.
> >
> > However, we need a little magic to use 'command -v' from Make.
> >
> > $(shell ...) passes the argument to a subshell for execution, and
> > returns the standard output of the command.
> >
> > Here is a trick. GNU Make may optimize this by executing the command
> > directly instead of forking a subshell, if no shell special characters
> > are found in the command line and omitting the subshell will not
> > change the behavior.
> >
> > In this case, no shell special character is used. So, Make will try
> > to run the command directly. However, 'command' is a shell-builtin
> > command. In fact, Make has a table of shell-builtin commands because
> > it must spawn a subshell to execute them.
> >
> > Until recently, 'command' was missing in the table.
> >
> > This issue was fixed by the following commit:
> >
> > | commit 1af314465e5dfe3e8baa839a32a72e83c04f26ef
> > | Author: Paul Smith <psmith@gnu.org>
> > | Date:   Sun Nov 12 18:10:28 2017 -0500
> > |
> > |     * job.c: Add "command" as a known shell built-in.
> > |
> > |     This is not a POSIX shell built-in but it's common in UNIX shells.
> > |     Reported by Nick Bowler <nbowler@draconx.ca>.
> >
> > This is not included in any released versions of Make yet.
> > (But, some distributions may have back-ported the fix-up.)
> >
> > To trick Make and let it fork the subshell, I added a shell special
> > character '~'. We may be able to get rid of this workaround someday,
> > but it is very far into the future.
> >
> > [1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
> >
> > Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
> > Cc: linux-stable <stable@vger.kernel.org> # 5.1
> > Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> >  scripts/Kbuild.include | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> > index 85d758233483..5a32ca80c3f6 100644
> > --- a/scripts/Kbuild.include
> > +++ b/scripts/Kbuild.include
> > @@ -74,8 +74,11 @@ endef
> >  # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
> >  # Return first <prefix> where a <prefix>gcc is found in PATH.
> >  # If no gcc found in PATH with listed prefixes return nothing
> > +#
> > +# Note: the special character '~' forces Make to invoke a shell. This workaround
> > +# is needed because this issue was only fixed after GNU Make 4.2.1 release.
> >  cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
> > -                                     $(if $(shell which $(c)gcc), $(c))))
> > +                             $(if $(shell command -v $(c)gcc ~), $(c))))
>
> I see a problem here:
>         command -v foo bar
> could be deemed to be an error (extra argument).

OK, the specification does not allow to pass arguments
with -v.


> You could use:
>         $(shell sh -c "command -v $(c)gcc")
> or maybe:
>         $(shell command$${x:+} -v $(c)gcc)


How about this?

          $(shell : ~; command -v $(c)gcc)



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
