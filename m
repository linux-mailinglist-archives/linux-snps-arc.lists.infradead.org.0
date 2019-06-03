Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F49330A7
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 15:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/dayxtgwt3zu3aL/A/BYvpZfAjN4lQWLZVyq8xL65Y=; b=U8UYBp6Ck1whD8
	dWllLHuMbvrUpZCIpcoOs5C4q9BaSJy082LZS73zfrk8LdaMK8YQrGeVFWwiiwLzZnWAJkxOLJgYj
	3PP9MHyJGcfiLtaJZmE0EsU4XR6h23iUFqfOOsqnHfFvBaBox3XmpfdIFIArCyfatW3ACLgisv1q4
	rHAO2emxAGWEDB13/sdGU+eFH3NUvBNhb+GuXlkThGxW7xd2tXEMZMw6hGcBBh5RC6yZD3KJ4Hp0i
	eq3yBfjH0qxqySp9V4EJd965YH0yXjRJT8n/Qel0+zaOxJ9Wh1IhBpK2VNkSSL9+3oIOT/dSDDUbS
	wUcKMS6vn6Bdk0qNqG/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmi6-0000Kz-I5; Mon, 03 Jun 2019 13:09:10 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmi1-0000K2-HI
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 13:09:08 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-144-DmL0yzerNDm5Z6l8YvJ_GQ-1; Mon, 03 Jun 2019 14:09:02 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon,
 3 Jun 2019 14:09:02 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 3 Jun 2019 14:09:02 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Masahiro Yamada' <yamada.masahiro@socionext.com>
Subject: RE: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Thread-Topic: [PATCH] kbuild: use more portable 'command -v' for
 cc-cross-prefix
Thread-Index: AQHVGfoc7Nk6FX5Ty02s910sxgLWxaaJxI+g///4bICAACdTsA==
Date: Mon, 3 Jun 2019 13:09:02 +0000
Message-ID: <810dd6ae018b4a31b70d26fb6b29e48d@AcuMS.aculab.com>
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
 <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
In-Reply-To: <CAK7LNARHR=xv_YxQCkCM7PtW3vpNfXOgZrez0c4HbMX6C-8-uA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: DmL0yzerNDm5Z6l8YvJ_GQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_060905_947160_DD6BFD4E 
X-CRM114-Status: GOOD (  34.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>, Vineet
 Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Masahiro Yamada
> Sent: 03 June 2019 12:38
> Hi David,
> 
> On Mon, Jun 3, 2019 at 8:14 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Masahiro Yamada
> > > Sent: 03 June 2019 11:49
> > >
> > > To print the pathname that will be used by shell in the current
> > > environment, 'command -v' is a standardized way. [1]
> > >
> > > 'which' is also often used in scripting, but it is not portable.
> > >
> > > When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
> > > implementation"), I was eager to use 'command -v' but it did not work.
> > > (The reason is explained below.)
> > >
> > > I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
> > > thought it was no longer needed. Sorry, I was wrong.
> > >
> > > It works well on my Ubuntu machine, but Alexey Brodkin reports annoying
> > > warnings from the 'which' on CentOS 7 when the given command is not
> > > found in the PATH environment.
> > >
> > >   $ which foo
> > >   which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)
> > >
> > > Given that behavior of 'which' is different on environment, I want
> > > to try 'command -v' again.
> > >
> > > The specification [1] clearly describes the behavior of 'command -v'
> > > when the given command is not found:
> > >
> > >   Otherwise, no output shall be written and the exit status shall reflect
> > >   that the name was not found.
> > >
> > > However, we need a little magic to use 'command -v' from Make.
> > >
> > > $(shell ...) passes the argument to a subshell for execution, and
> > > returns the standard output of the command.
> > >
> > > Here is a trick. GNU Make may optimize this by executing the command
> > > directly instead of forking a subshell, if no shell special characters
> > > are found in the command line and omitting the subshell will not
> > > change the behavior.
> > >
> > > In this case, no shell special character is used. So, Make will try
> > > to run the command directly. However, 'command' is a shell-builtin
> > > command. In fact, Make has a table of shell-builtin commands because
> > > it must spawn a subshell to execute them.
> > >
> > > Until recently, 'command' was missing in the table.
> > >
> > > This issue was fixed by the following commit:
> > >
> > > | commit 1af314465e5dfe3e8baa839a32a72e83c04f26ef
> > > | Author: Paul Smith <psmith@gnu.org>
> > > | Date:   Sun Nov 12 18:10:28 2017 -0500
> > > |
> > > |     * job.c: Add "command" as a known shell built-in.
> > > |
> > > |     This is not a POSIX shell built-in but it's common in UNIX shells.
> > > |     Reported by Nick Bowler <nbowler@draconx.ca>.
> > >
> > > This is not included in any released versions of Make yet.
> > > (But, some distributions may have back-ported the fix-up.)
> > >
> > > To trick Make and let it fork the subshell, I added a shell special
> > > character '~'. We may be able to get rid of this workaround someday,
> > > but it is very far into the future.
> > >
> > > [1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
> > >
> > > Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
> > > Cc: linux-stable <stable@vger.kernel.org> # 5.1
> > > Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > ---
> > >
> > >  scripts/Kbuild.include | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> > > index 85d758233483..5a32ca80c3f6 100644
> > > --- a/scripts/Kbuild.include
> > > +++ b/scripts/Kbuild.include
> > > @@ -74,8 +74,11 @@ endef
> > >  # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
> > >  # Return first <prefix> where a <prefix>gcc is found in PATH.
> > >  # If no gcc found in PATH with listed prefixes return nothing
> > > +#
> > > +# Note: the special character '~' forces Make to invoke a shell. This workaround
> > > +# is needed because this issue was only fixed after GNU Make 4.2.1 release.
> > >  cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
> > > -                                     $(if $(shell which $(c)gcc), $(c))))
> > > +                             $(if $(shell command -v $(c)gcc ~), $(c))))
> >
> > I see a problem here:
> >         command -v foo bar
> > could be deemed to be an error (extra argument).
> 
> OK, the specification does not allow to pass arguments
> with -v.
> 
> 
> > You could use:
> >         $(shell sh -c "command -v $(c)gcc")
> > or maybe:
> >         $(shell command$${x:+} -v $(c)gcc)
> 
> 
> How about this?
> 
>           $(shell : ~; command -v $(c)gcc)

Overcomplicated ....

I've not looked at the list of 'special characters' in make,
but I suspect any variable expansion is enough.
Since ${x:+} always expands to the empty string (whether or
not 'x' is defined) it can't have any unfortunate side effects.

I'd comment as:
# Note: ${x:+} always expands to the empty string and forces all
# versions of make to actually exec $SHELL rather than try to
# directly execute the shell builtin 'command'.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
