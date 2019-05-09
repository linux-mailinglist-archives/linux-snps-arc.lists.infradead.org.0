Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4901E1937C
	for <lists+linux-snps-arc@lfdr.de>; Thu,  9 May 2019 22:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uP71SHiR1oR8594/aHJCm1y4U3CMBYjAtFtCxtktn6Y=; b=cG1ekpwYtY93au
	+8AHnhQ+F0Tq4Sr9BJceigDGzuuNIbMfi082U7auW1jOepZm6bMc/WICBB4ucmgXXyhHmV1bMotci
	T+7eHlgVWTao5bC+98H0b0TLow6Uxru6SknQ5YL3AfyRPIwZaqbU0zvZ6CRYStmf/iLPlyOoE9rpa
	zZRO4vZ0TXDjsw6wj1mB1bxM0sNNCAi4WtAG3Eb87r7XT1jc2wXCErag7iUu3PByV5SOyXhETFd1a
	rLszLn4HNNytSWAm3aRvxKB9B1HVQhGgnPkW87Dgymv66N4LU/CH9r0+4Nh7MtqVDfk791GRP0ceR
	8SXpw0rMG7pnjUQo0KkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpmH-0002Jq-Ql; Thu, 09 May 2019 20:36:29 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpmC-0002E0-Q4
 for linux-snps-arc@lists.infradead.org; Thu, 09 May 2019 20:36:27 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 213D3C003A
 for <linux-snps-arc@lists.infradead.org>; Thu,  9 May 2019 20:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557434187; bh=y02kD0y3RdfGKT+ygRWj2DQ47UHx9CxWuKMpH+oy6ts=;
 h=From:To:Subject:Date:References:From;
 b=GclsBX4l+llZa93DFKb24epOmcrvLz9JwQ/AG0Lwqkkqz/Ygk9I4fE876WS4N6q9s
 iE2TmC/yFSpXCGOA4bihtybTnpDhU/g/y5z7pibgPtpp7DWqlh+Hh6kzPIlA5d4j5f
 Bfwva/DSy/FXP3GHjvfcfKOki2MnVpqCZtiPVROZFB+gZrmaRX/L2LbtEjAyj3rd9U
 POdodG5oYIEQN6QGdtQeNKnaRB6xdkY28ZlUtB+tCnlLlDWiT66pS9fyH92Z+gL+Yi
 zcyTyC5SM+LV/pWbB1s5ptPA4J3p92uQQ466HhPl2NfweY0bqYAf6cumX1EFzcomra
 LTxggzlz8p/3g==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1A882A0095
 for <linux-snps-arc@lists.infradead.org>; Thu,  9 May 2019 20:36:21 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WXQAHTC1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Thu,
 9 May 2019 13:36:21 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [GLIBC] ARC: Add multilib support
Thread-Topic: [GLIBC] ARC: Add multilib support
Thread-Index: AQHVBbIGeypuugOC0kifIwBKf7EjMg==
Date: Thu, 9 May 2019 20:36:21 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A250BAAE@us01wembx1.internal.synopsys.com>
References: <20190508152333.2949-1-abrodkin@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_133624_892999_4D84BD42 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/8/19 8:23 AM, Alexey Brodkin wrote:
> Based on preprocessor defines we determine which type of ARC core
> we're targeting and set slibdir accordingly so that on installation
> of libraries to sysroot libs for different ARC cores end up in different
> locations which match ARC Linux multilib spec.
>
> Note though it all only happens if 2 conditions happen simultaneously:
>  1. Glibc configured with "--prefix=/usr"

So how can we do this in a typical cross compile setup.

>  2. "-mcpu=xxx" exists in CC passed to Glibc's configure script
>
> I.e. when we build Glibc for default CPU libs are installed in default
> location.
>
> Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> ---
>  sysdeps/unix/sysv/linux/arc/configure    | 329 ++++++++++++++++++++++++++++++-
>  sysdeps/unix/sysv/linux/arc/configure.ac |  70 +++++++
>  2 files changed, 398 insertions(+), 1 deletion(-)
>  mode change 100644 => 100755 sysdeps/unix/sysv/linux/arc/configure

skipping generated file
 
> diff --git a/sysdeps/unix/sysv/linux/arc/configure.ac b/sysdeps/unix/sysv/linux/arc/configure.ac
> index a9528032d32..3615db8eabc 100644
> --- a/sysdeps/unix/sysv/linux/arc/configure.ac
> +++ b/sysdeps/unix/sysv/linux/arc/configure.ac
> @@ -2,3 +2,73 @@ GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
>  # Local configure fragment for sysdeps/unix/sysv/linux/arc.
>  
>  arch_minimum_kernel=3.9.0
> +
> +# If "-mcpu=xxx" found in passed CC assume we're building for
> +# non-default CPU and thus we need to install libs in non-default location.
> +if AC_TRY_COMMAND([echo $CC | grep -F "mcpu" > /dev/null]);
> +then
> +	libc_cv_arc_arch=no
> +
> +	# If this is ARCompact-based core
> +	AC_EGREP_CPP(yes, [#ifdef __ARC700__
> +			   yes
> +			   #endif
> +	],libc_cv_arc_arch=arc700)
> +
> +	# If this is ARCv2-based core
> +	AC_EGREP_CPP(yes, [#ifdef __ARCHS__
> +			   yes
> +			   #endif
> +	],libc_cv_arc_arch=hs)
> +
> +	if test $libc_cv_arc_arch = no; then
> +	  AC_MSG_ERROR([Unable to determine ARC architecture])
> +	fi
> +
> +	if test $libc_cv_arc_arch = arc700; then
> +		# NPS400
> +		AC_EGREP_CPP(yes, [#ifdef __NPS400__
> +				   yes
> +				   #endif
> +		],libc_cv_arc_arch=nps400)

I don't see any activity on NPS front so best to skip that in new code for now.


> +	else
> +		# Base-line HS38 + HW multiplier
> +		AC_EGREP_CPP(yes, [#ifdef __ARC_MPY__
> +				   yes
> +				   #endif
> +		],libc_cv_arc_arch=archs)
> +
> +		# Base-line HS38 + HW quad-multiplier
> +		AC_EGREP_CPP(yes, [#ifdef __ARC_MPY_QMACW__
> +				   yes
> +				   #endif
> +		],libc_cv_arc_arch=hs38)
> +
> +		# Base-line HS38 + HW quad-multiplier + FPU
> +		AC_EGREP_CPP(yes, [#ifdef __ARC_FPU_DP__
> +				   yes
> +				   #endif
> +		],libc_cv_arc_arch=hs38_linux)
> +	fi
> +

This zoo makes sense for gcc - for say baremetal stuff, but we don't want to spend
time (even machine time) building glibc for those.
You can assume MPY to be always present when running linux/glibc.

> +	case $libc_cv_arc_arch in
> +	arc700)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/arc700], [lib/arc700])
> +	  ;;
> +	nps400)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/nps400], [lib/nps400])


> +	  ;;
> +	hs)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/hs], [lib/hs])

Looking at
https://github.com/foss-for-synopsys-dwc-arc-processors/toolchain/wiki/Understanding-GCC-mcpu-optio

I'd recommend drop above


> +	  ;;
> +	archs)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/archs], [lib/archs])
> +	  ;;

ditto

> +	hs38)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/hs38], [lib/hs38])
> +	  ;;
> +	hs38_linux)
> +	  LIBC_SLIBDIR_RTLDDIR([lib/hs38_linux], [lib/hs38_linux])
> +	  ;;
> +	esac
> +fi

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
