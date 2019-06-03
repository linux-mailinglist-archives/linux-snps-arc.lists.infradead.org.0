Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8043373E
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 19:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFl1geMzXmXkEQtfBmLcWEkkEC8RMGrpLdmpJNaD80k=; b=rlVLlqMVl9vL+c
	ATLv8mhEBKn+iq3poEW2KutBWmArOeNZBmhIrG/gOT5oVZm4qQxhWnjsn5zr125TMhmgo422S5kkb
	C9J/U2C46PET3c9zWSTwcjvuwuN3SUoUOHbFHgXV/O48loCnVQ4dkxvAf0VeCy4JXXdDFyJi8lUdS
	BdSJlhGRu7lVYMRLRlQig2qSeQD1KzY5LPB3auaxd5Gwk2tNZQ/qS1qWXdD/x2T78e28s0XDgC7Lg
	sUYeABpAbPWWWX4AlJU7EAA5++pAHNvLoX0ZthCJzsHZBZYMjyeyUQDXBlmjmSscurK30/j2Vu1/A
	oZ6qj7zxZFMpM5XUOasw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr6P-0005fc-PP; Mon, 03 Jun 2019 17:50:33 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr6M-0005fJ-Nf
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 17:50:32 +0000
Received: from nat-ies.mentorg.com ([192.94.31.2]
 helo=svr-ies-mbx-01.mgc.mentorg.com)
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hXr6I-0006Rn-60 from joseph_myers@mentor.com ;
 Mon, 03 Jun 2019 10:50:26 -0700
Received: from digraph.polyomino.org.uk (137.202.0.90) by
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) with Microsoft SMTP Server
 (TLS) id 15.0.1320.4; Mon, 3 Jun 2019 18:50:22 +0100
Received: from jsm28 (helo=localhost)
 by digraph.polyomino.org.uk with local-esmtp (Exim 4.90_1)
 (envelope-from <joseph@codesourcery.com>)
 id 1hXr6E-0005oM-70; Mon, 03 Jun 2019 17:50:22 +0000
Date: Mon, 3 Jun 2019 17:50:22 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: RE: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
In-Reply-To: <CY4PR1201MB0120B0A953107C8047BCCDF1A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1906031745340.14124@digraph.polyomino.org.uk>
References: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <alpine.DEB.2.21.1906031528200.14124@digraph.polyomino.org.uk>
 <CY4PR1201MB0120B0A953107C8047BCCDF1A1140@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_105030_771311_2EBB3813 
X-CRM114-Status: GOOD (  13.26  )
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
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 Alexey Neyman <stilor@att.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019, Alexey Brodkin wrote:

> Well I'm trying to solve a little bit different problem - to build
> a universal multilib cross-toolchain which will be usable for building
> binaries optimized for different ARC cores. Different I mean:
>  - Binary-incompatible architecture generations: ARCv1/ARCv2 (both still 32-bit)
>  - Hard/soft floating-point
>  - etc.

That sort of thing generally uses a separate sysroot for each multilib.  
(Using GCC's t-sysroot-suffix avoids needing to define SYSROOT_SUFFIX_SPEC 
manually yourself.)

Then the libraries don't need to use separate library directories if only 
one ABI makes sense on a target at a time.  (But cases with different 
endianness / different function calling ABI / different struct layout etc. 
should still use different dynamic linker names.)

> > Checking -mcpu in CC is a bad idea, given that the compiler might have
> > been configured with a default CPU rather than passing it on the command
> > line.
> 
> Well this case (no "-mcpu" in CC) is handled - then we just installed
> libs in default non-multilib location, i.e. simple "/lib".

The locations should be a function of the ABI - *not* of whether the ABI 
is the default one for the compiler.  (For example, /lib64 is the 
directory for non-x32 x86_64 libraries - both in an x86_64-linux-gnu 
toolchain, and also for the -m64 multilib of an i686-linux-gnu toolchain 
configured --enable-targets=all.  If you use Debian-style multiarch 
layout, the locations are still a function of the ABI, just a different 
function.)

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
