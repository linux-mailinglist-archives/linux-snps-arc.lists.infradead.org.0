Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E970D32E58
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 13:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUv8dR9khaF19j+CzzkC6yeCFFMu4HRYj6q8kVZGm+0=; b=EMqu2Oj5viPgwi
	2Ky8x/PK42cqGXZhJLbUE7U9/32e3NdaR9vYkSs8lpY74g7TYq6sxpZsdc7REGz36S6WAK14jcAQ9
	voL8LL2tllNxIzA54Zn4WS8ePYDt1KH8pL0uQQc46Axkq7FfDA+vZ3DGpAAj9j5YNyuUtT0nara9t
	CbUqtB1Yh9UoImfbDNgq+mLzZ1k1vgKuvFsJD8UeLLytZXI7WfwTVNX668qEPvRzygcuhZRVk2Ih7
	/cvNGi7GyVIXLIWnMNtsgWVHAVgClAiEXtJ0YSoAqq4zUPwycRLUexP6l4nqIdJqUuv5Bab13MOON
	YGUBrs62Qwp0/EvMEVeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkus-0002fR-Lk; Mon, 03 Jun 2019 11:14:14 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkup-0002eb-NT
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 11:14:13 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-133-AcFCnqi1O-qRKgiauL-8lw-1; Mon, 03 Jun 2019 12:14:04 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon,
 3 Jun 2019 12:14:03 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 3 Jun 2019 12:14:03 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Masahiro Yamada' <yamada.masahiro@socionext.com>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>
Subject: RE: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
Thread-Topic: [PATCH] kbuild: use more portable 'command -v' for
 cc-cross-prefix
Thread-Index: AQHVGfoc7Nk6FX5Ty02s910sxgLWxaaJxI+g
Date: Mon, 3 Jun 2019 11:14:03 +0000
Message-ID: <863c29c5f0214c008fbcbb2aac517a5c@AcuMS.aculab.com>
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190603104902.23799-1-yamada.masahiro@socionext.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: AcFCnqi1O-qRKgiauL-8lw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041412_044034_F8534F59 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: Michal Marek <michal.lkml@markovi.net>, Vineet Gupta <vgupta@synopsys.com>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Masahiro Yamada
> Sent: 03 June 2019 11:49
> 
> To print the pathname that will be used by shell in the current
> environment, 'command -v' is a standardized way. [1]
> 
> 'which' is also often used in scripting, but it is not portable.
> 
> When I worked on commit bd55f96fa9fc ("kbuild: refactor cc-cross-prefix
> implementation"), I was eager to use 'command -v' but it did not work.
> (The reason is explained below.)
> 
> I kept 'which' as before but got rid of '> /dev/null 2>&1' as I
> thought it was no longer needed. Sorry, I was wrong.
> 
> It works well on my Ubuntu machine, but Alexey Brodkin reports annoying
> warnings from the 'which' on CentOS 7 when the given command is not
> found in the PATH environment.
> 
>   $ which foo
>   which: no foo in (/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)
> 
> Given that behavior of 'which' is different on environment, I want
> to try 'command -v' again.
> 
> The specification [1] clearly describes the behavior of 'command -v'
> when the given command is not found:
> 
>   Otherwise, no output shall be written and the exit status shall reflect
>   that the name was not found.
> 
> However, we need a little magic to use 'command -v' from Make.
> 
> $(shell ...) passes the argument to a subshell for execution, and
> returns the standard output of the command.
> 
> Here is a trick. GNU Make may optimize this by executing the command
> directly instead of forking a subshell, if no shell special characters
> are found in the command line and omitting the subshell will not
> change the behavior.
> 
> In this case, no shell special character is used. So, Make will try
> to run the command directly. However, 'command' is a shell-builtin
> command. In fact, Make has a table of shell-builtin commands because
> it must spawn a subshell to execute them.
> 
> Until recently, 'command' was missing in the table.
> 
> This issue was fixed by the following commit:
> 
> | commit 1af314465e5dfe3e8baa839a32a72e83c04f26ef
> | Author: Paul Smith <psmith@gnu.org>
> | Date:   Sun Nov 12 18:10:28 2017 -0500
> |
> |     * job.c: Add "command" as a known shell built-in.
> |
> |     This is not a POSIX shell built-in but it's common in UNIX shells.
> |     Reported by Nick Bowler <nbowler@draconx.ca>.
> 
> This is not included in any released versions of Make yet.
> (But, some distributions may have back-ported the fix-up.)
> 
> To trick Make and let it fork the subshell, I added a shell special
> character '~'. We may be able to get rid of this workaround someday,
> but it is very far into the future.
> 
> [1] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
> 
> Fixes: bd55f96fa9fc ("kbuild: refactor cc-cross-prefix implementation")
> Cc: linux-stable <stable@vger.kernel.org> # 5.1
> Reported-by: Alexey Brodkin <abrodkin@synopsys.com>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  scripts/Kbuild.include | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index 85d758233483..5a32ca80c3f6 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -74,8 +74,11 @@ endef
>  # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
>  # Return first <prefix> where a <prefix>gcc is found in PATH.
>  # If no gcc found in PATH with listed prefixes return nothing
> +#
> +# Note: the special character '~' forces Make to invoke a shell. This workaround
> +# is needed because this issue was only fixed after GNU Make 4.2.1 release.
>  cc-cross-prefix = $(firstword $(foreach c, $(filter-out -%, $(1)), \
> -					$(if $(shell which $(c)gcc), $(c))))
> +				$(if $(shell command -v $(c)gcc ~), $(c))))

I see a problem here:
	command -v foo bar
could be deemed to be an error (extra argument).

You could use:
	$(shell sh -c "command -v $(c)gcc")
or maybe:
	$(shell command$${x:+} -v $(c)gcc)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
