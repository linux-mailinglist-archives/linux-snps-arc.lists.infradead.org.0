Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6240333C7
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 17:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZg0xjZRgA6g1skokczFpaGxxG0BPLI9UtVkutHez8s=; b=Mji4rol8LMY8+u
	8zFv/NpkyqBP0zOuAuBqEokZSpTEGsp7vkEvqEXDtLpNDfAUK3LJi+AUKWVe7aRorQhg/WQVWoQT+
	XA/YZd/qb+uatf1hbSwWITFgWiiiwGiH2eHaA+mI8W77WlK010dgik//5YIAIfrJeW9B927V6I8/Y
	JXiafhqsWUWhqbQKB6v0UFBl7X5O2qiLNpIdGE1GPs8OZRit2siooGwqQDEjoBXBvLuXt4kd4koBF
	elYfixmF7jHNroH9uUcaozNzcC/+b4Xpbc4hR7nwCjkyIyJQIAfn3CZLDN9yvgJcqzQMUdV/Nv2mp
	gq3V7gwN7d3yFSbOCrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXp5c-0003Mr-G9; Mon, 03 Jun 2019 15:41:36 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXp5Z-0003MG-JW
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 15:41:35 +0000
Received: from nat-ies.mentorg.com ([192.94.31.2]
 helo=svr-ies-mbx-01.mgc.mentorg.com)
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hXp5T-0002ZY-2j from joseph_myers@mentor.com ;
 Mon, 03 Jun 2019 08:41:27 -0700
Received: from digraph.polyomino.org.uk (137.202.0.90) by
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP Server
 (TLS) id 15.0.1320.4; Mon, 3 Jun 2019 16:41:23 +0100
Received: from jsm28 (helo=localhost)
 by digraph.polyomino.org.uk with local-esmtp (Exim 4.90_1)
 (envelope-from <joseph@codesourcery.com>)
 id 1hXp5O-00047S-UJ; Mon, 03 Jun 2019 15:41:22 +0000
Date: Mon, 3 Jun 2019 15:41:22 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
In-Reply-To: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1906031528200.14124@digraph.polyomino.org.uk>
References: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_084133_642387_58ABFF82 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andreas Schwab <schwab@suse.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 31 May 2019, Alexey Brodkin wrote:

> Hi Andreas,
> 
> I'm trying to implement multilib support for ARC port of Glibc
> and for that we seem to need to have unique slibdir/rtlddir pair per
> each machine flavor. In our case these are at least:
>  - ARC700 (legacy ARCompact architecture)
>  - ARC HS38 (new gen ARCv2 architecture)
>  - ARC HS38 with hardware floating-point
>  - ARC HS48 (binary-compatible with HS38 but with different pipeline so
>              compiler schedules instructions differently)

If two processors are binary-compatible, in general you wouldn't have 
different library directories.  (The HWCAP mechanism can be used to have a 
single dynamic linker search different directories for optimized libraries 
depending on the processor; put the relevant HWCAP bits in 
HWCAP_IMPORTANT.  And of course you can just install different library 
builds depending on the processor you'll be running the resulting OS on.)

Different library directories are intended for the case where binaries for 
different ABIs can be executed on the same system (e.g. 32-bit and 64-bit; 
<https://sourceware.org/ml/libc-alpha/2018-01/msg00008.html> gives more 
details of the various places that need updating to support such a 
configuration in glibc).  For other cases of different ABIs, there should 
be different dynamic linker names, to support multiarch configurations 
that might run different-architecture binaries under emulation, but 
different library directories are not required.

> Given we have in GCC a dedicated "-mcpu" value for each of items above
> my first thought was to "automatically" setup slibdir/rtlddir
> based on "-mcpu" value passed in CC during configuration.

Checking -mcpu in CC is a bad idea, given that the compiler might have 
been configured with a default CPU rather than passing it on the command 
line.

Rather, you should test how the compiler behaves: either run $CC $CFLAGS 
$CPPFLAGS -E -dM -xc /dev/null and extract and examine predefined macros, 
or use AC_EGREP_CPP or AC_COMPILE_IFELSE for the same purpose.  (If you 
don't have predefined macros that make all the required ABI distinctions, 
obviously you need to add them.)  There are various examples of this in 
existing configure / preconfigure fragments.

Since there should be a finite list of known ABIs (which would be listed 
on <https://sourceware.org/glibc/wiki/ABIList> for a port included in 
glibc), you can then have a finite number of LIBC_SLIBDIR_RTLDDIR calls in 
a case statement.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
