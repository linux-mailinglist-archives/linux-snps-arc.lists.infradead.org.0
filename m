Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43F633D8A
	for <lists+linux-snps-arc@lfdr.de>; Tue,  4 Jun 2019 05:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5AsjlmhJkj4qvBQKZa0gDWWasVJ2z3z3lacg9f/7Jc=; b=YZHpEY6kOdh2mO
	zNCBqxHNh9s4GUV32aNzO09ksmAorbEKNnmwNLfDhTt7zOcn/ZVv6iAP6RDOuaJmj9dMugcjO6Nep
	hV8iPiuLQ4QTgXN39KC2bzTTM0ISoQWFxwLSucFb69dwl362y+4PiUW9DeKqMJ0hIaM2F5xLgr+jP
	yptPJdxgLEHLxYLxItrq7KbHTnMdjI176g34LjynPiScvJd+QrdOZGtyEfToICZMTRSKvz+NCmDdJ
	646GkD6X92Dk29E3rAdVa5iqbWmQNdwnEU9Wi9ePxPTl3mamH+MEBNe1uzHoyLaJB7YA64jSWSixl
	IskzCrVq9uQfMCxlqCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0Am-000391-FK; Tue, 04 Jun 2019 03:31:40 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0Ai-00038i-Ol
 for linux-snps-arc@lists.infradead.org; Tue, 04 Jun 2019 03:31:39 +0000
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x543VDPU007059
 for <linux-snps-arc@lists.infradead.org>; Tue, 4 Jun 2019 12:31:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x543VDPU007059
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559619074;
 bh=p3DMRDqjvLfleLEkftYAKoqonxYhzBlfQ7q3kX1yABI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bYi7+isCKertT00fRULzrd7n1xy2ijri8jBhF4Nuyl7kUpCw/8ZnRRUgX0tExvhTo
 E4HYK5tj6gUIHISOWfCqnjXxMVE9iiN86tnB6+3p6O84sZC9+z4HGKF90/d9a40mPl
 xAw7v7op9drM7cioGdp91l3WH5pTtCABr9eo/NhqFCPOsVVaoQIS4BX5z40hsuXr69
 fxi3NAqIb9RX/P+inYWpxCoRMYE353+QoUWxmLWzYTCHHVoJck4SyoM4yIwthQ14tr
 2RAtKg6dn6Invm5UosRZaD5bAeAee5YjWfpth1jb7U3ij7sy772vHBkeShMilmL0RV
 6zh/xd9lrEEAQ==
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id l3so7160426uad.4
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 20:31:14 -0700 (PDT)
X-Gm-Message-State: APjAAAWAkE1OpbchCRM2iKRzzUuR32h+d0mXHFq5UdsBt6Hk7PBc9phA
 g1wDz/80JAHeO8GSHsOJR1ZlkEPYWuX7imdbOqI=
X-Google-Smtp-Source: APXvYqwLg5oKMCsYL63EZGBs62A+uvaH0VNBtZ1VJCZHVnUEm+GXeBoaQbuuPkFiapfGEwirzIOWICLibChewL6wlx8=
X-Received: by 2002:ab0:234d:: with SMTP id h13mr6406182uao.95.1559619073065; 
 Mon, 03 Jun 2019 20:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
 <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
 <810dd6ae018b4a31b70d26fb6b29e48d@AcuMS.aculab.com>
In-Reply-To: <810dd6ae018b4a31b70d26fb6b29e48d@AcuMS.aculab.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 4 Jun 2019 12:30:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR_A1d5keiCRthNioW3nqkNadJkaCyMR3a5S8WS0jhgNQ@mail.gmail.com>
Message-ID: <CAK7LNAR_A1d5keiCRthNioW3nqkNadJkaCyMR3a5S8WS0jhgNQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_203137_023941_19BF9235 
X-CRM114-Status: GOOD (  35.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
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

On Mon, Jun 3, 2019 at 10:09 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Masahiro Yamada
> > Sent: 03 June 2019 12:38
> > Hi David,
> >
> > On Mon, Jun 3, 2019 at 8:14 PM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Masahiro Yamada
> > > > Sent: 03 June 2019 11:49
> > > >
> > > > To print the pathname that will be used by shell in the current
> > > > environment, 'command -v' is a standardized way. [1]
> > > >
> > > > 'which' is also often used in scripting, but it is not portable.
> > > >
> > > > When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
> > > > implementation"), I was eager to use 'command -v' but it did not work.
> > > > (The reason is explained below.)
> > > >
> > > > I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
> > > > thought it was no longer needed. Sorry, I was wrong.
> > > >
> > > > It works well on my Ubuntu machine, but Alexey Brodkin reports annoying
> > > > warnings from the 'which' on CentOS 7 when the given command is not
> > > > found in the PATH environment.
> > > >
> > > >   $ which foo
> > > >   which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)
> > > >
> > > > Given that behavior of 'which' is different on environment, I want
> > > > to try 'command -v' again.
> > > >
> > > > The specification [1] clearly describes the behavior of 'command -v'
> > > > when the given command is not found:
> > > >
> > > >   Otherwise, no output shall be written and the exit status shall reflect
> > > >   that the name was not found.
> > > >
> > > > However, we need a little magic to use 'command -v' from Make.
> > > >
> > > > $(shell ...) passes the argument to a subshell for execution, and
> > > > returns the standard output of the command.
> > > >
> > > > Here is a trick. GNU Make may optimize this by executing the command
> > > > directly instead of forking a subshell, if no shell special characters
> > > > are found in the command line and omitting the subshell will not
> > > > change the behavior.
> > > >
> > > > In this case, no shell special character is used. So, Make will try
> > > > to run the command directly. However, 'command' is a shell-builtin
> > > > command. In fact, Make has a table of shell-builtin commands because
> > > > it must spawn a subshell to execute them.
> > > >
> > > > Until recently, 'command' was missing in the table.
> > > >
> > > > This issue was fixed by the following commit:
> > > >
> > > > | commit 1af314465e5dfe3e8baa839a32a72e83c04f26ef
> > > > | Author: Paul Smith <psmith@gnu.org>
> > > > | Date:   Sun Nov 12 18:10:28 2017 -0500
> > > > |
> > > > |     * job.c: Add "command" as a known shell built-in.
> > > > |
> > > > |     This is not a POSIX shell built-in but it's common in UNIX shells.
> > > > |     Reported by Nick Bowler <nbowler@draconx.ca>.
> > > >
> > > > This is not included in any released versions of Make yet.
> > > > (But, some distributions may have back-ported the fix-up.)
> > > >
> > > > To trick Make and let it fork the subshell, I added a shell special
> > > > character '~'. We may be able to get rid of this workaround someday,
> > > > but it is very far into the future.
> > > >
> > > > [1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
> > > >
> > > > Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
> > > > Cc: linux-stable <stable@vger.kernel.org> # 5.1
> > > > Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
> > > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > ---
> > > >
> > > >  scripts/Kbuild.include | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> > > > index 85d758233483..5a32ca80c3f6 100644
> > > > --- a/scripts/Kbuild.include
> > > > +++ b/scripts/Kbuild.include
> > > > @@ -74,8 +74,11 @@ endef
> > > >  # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
> > > >  # Return first <prefix> where a <prefix>gcc is found in PATH.
> > > >  # If no gcc found in PATH with listed prefixes return nothing
> > > > +#
> > > > +# Note: the special character '~' forces Make to invoke a shell. This workaround
> > > > +# is needed because this issue was only fixed after GNU Make 4.2.1 release.
> > > >  cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
> > > > -                                     $(if $(shell which $(c)gcc), $(c))))
> > > > +                             $(if $(shell command -v $(c)gcc ~), $(c))))
> > >
> > > I see a problem here:
> > >         command -v foo bar
> > > could be deemed to be an error (extra argument).
> >
> > OK, the specification does not allow to pass arguments
> > with -v.
> >
> >
> > > You could use:
> > >         $(shell sh -c "command -v $(c)gcc")
> > > or maybe:
> > >         $(shell command$${x:+} -v $(c)gcc)
> >
> >
> > How about this?
> >
> >           $(shell : ~; command -v $(c)gcc)
>
> Overcomplicated ....
>
> I've not looked at the list of 'special characters' in make,
> but I suspect any variable expansion is enough.
> Since ${x:+} always expands to the empty string (whether or
> not 'x' is defined) it can't have any unfortunate side effects.


Probably, my eyes are used to Makefile.
":" is a no-op command, and it is used everywhere in kernel Makefiles
in the form of "@:'

It depends on people which solution seems simpler.
So, this argument tends to end up with bikesheding.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
