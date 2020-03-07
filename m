Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBBB17CA27
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 02:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNuB+le2HZ8mKS55o7/1Hfq7yroCnCJSADxQetFQVVA=; b=dI0/92/YUmYz5W
	MkDD7E/eMZ+X8bN/SctWWeJVl+mLntILD/u8XemQ/WXdz2qrdm/tkCgW/LxDNbG1BlU/RJXiPOQcI
	ukMk9JJgueAZPsC56AoLvRJP5YSiuvCJlMxUBAaoIVmDg1uxN3I0MOe0KYXYfVRhZ+4ZyvP8RgEyw
	y3sTnUTfXVcfvNX+8KcUjsVvrhKapfS9+f6clNQhu68WtUyk5IhGXCuyqa2x7t6C+GjQHcgolSWFm
	wMavVsogLnQXk+4yZ7pnsKzLH9AoahScb8fLyn5JjWo0kZX0IXUkjWbkLkNHbIRx06sgk+dsQIOTj
	6KgUopuGsmztLHuMSoaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANxi-0008Br-IV; Sat, 07 Mar 2020 01:09:06 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANxe-00085D-Kx
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 01:09:04 +0000
IronPort-SDR: GGxu9yijFkHOKfuHmx19FHYIbax/rbFlr0xAjcZ/AU1+rB5uWbH1+xWk72mfMWU9QfrZfZDiQ8
 RY/yMO/veNkEg6lanmTCnlhy/zZrczZjgxSEv8N/DNc/OyoD0pSR6wgfxBkx2ywykhB7JAr53w
 2MYwJzUHJZsjBNmtD+MZ1BdUnJLNy5c7R+J+qmQsCId4ovTFnq7u+oerBxQr3majI3aqVk5ZQr
 JvOw46JpIhQBCxB2uCmRR5h0vXwOBu4S8uZXfYM62Rqzx24NS2yWW+hhKza6+OHuwwkqgarn5m
 K+o=
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="46436781"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa2.mentor.iphmx.com with ESMTP; 06 Mar 2020 17:09:00 -0800
IronPort-SDR: 6OSULIIpDkKTHUY84bH54Pw6IOJv+6iPTe1qaZmsKYplmua30ZZ4KZlItAD0yedQvH28t3aBMS
 NnML7nFmNB/CBkRmk7/IhlXfMW5pcZCP/Vr0Qa4Fp9b5WddCdvPOWgv+d7P9DV+xuBNJkcNk0R
 7KSj7fQOaLsITFp6DHJu/0WJ7C7eFR3fOJsT0tMTQ0wweYxmSKtclrJB+IN6NLgsZzw+ArY53E
 +3Wq+fleXtUMoyV/EkUVS7DqP/Qd0XX6thh2+mNLYz2j6JXcGTEVThvxuB05bZurl/UrVH5HJJ
 a2w=
Date: Sat, 7 Mar 2020 01:08:54 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 16/17] NEWS: mention ARC port
In-Reply-To: <8eb3acaa-3d83-a6f9-cf2c-7355b1a83410@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070104380.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <20200306182419.13945-17-vgupta@synopsys.com>
 <alpine.DEB.2.21.2003070013170.26274@digraph.polyomino.org.uk>
 <8eb3acaa-3d83-a6f9-cf2c-7355b1a83410@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_170902_711818_AA961537 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sat, 7 Mar 2020, Vineet Gupta wrote:

> On 3/6/20 4:14 PM, Joseph Myers wrote:
> > On Fri, 6 Mar 2020, Vineet Gupta wrote:
> > 
> >> +* Support for ARC HS cores running Linux has been contributed by Synopsys.
> >> +  Port requires atleast
> >> +    - binutils-2.31 (binutils-2_31-branch: commit 6ce881c15fc4, 2018-10-04)
> >> +    - gcc 8.2 (gcc-8-stable: commit 0d5ba57508c5, 2019-01-29)
> >> +    - Linux kernel 5.1+
> > 
> > You need to update the list of supported configurations in README.
> 
> Ok did that now. Is it not supposed to also cover the hf (hard-float) 
> configs for architectures in general ?

README has a high-level summary, not full details of every supported ABI 
variant.

> > Any architecture with a higher minimum compiler / binutils version than 
> > normal needs it documented in install.texi, with the INSTALL file 
> > regenerated.
> 
> "normal" would the ones mentioned in build-many-glibcs ? The min versions for ARC
> are over year old already so I don't think it needs mentioning.

"normal" means "the versions documented in install.texi, node Tools for 
Compilation, as the minimum for building glibc on most architectures".

That node should give comprehensive information on what tool versions are 
needed to build glibc.  If an architecture requires GCC more recent than 
6.2, or binutils more recent than 2.25, that needs to be documented there 
(unless the minimum versions for that architecture are the minimum 
binutils / GCC versions that supported that architecture at all).

An alternative in some cases is increasing the global minimum.  Typically 
the global minimum is a version from a few years ago; if it's been a year 
since the minimum major GCC version for building glibc was last updated, 
it may well be reasonable to propose an architecture-independent increase 
of that version to the next major GCC release, for example.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
