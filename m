Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC78F4E5DB
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 12:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15dzN59Q33GkmGthzoFLLlIB8BHj32Yh004y9ys7fMQ=; b=YW9s/wo3HGYSQl
	BD+rQzev0EmZUKWkErL0EeH41PkPU+QG/OQ4PPO7RZIIoQrUO7Ym2kmemsd3lPYeBiVmW3BF8R+Po
	DGfoT95vxacMcSxn9dxzE8w6a8q2/g3of2vYbS69oUTQgj/rmYVZPSjrVdw7x50pNl7sJCWypoxAY
	i1VWcnBYaHh1OreBAOE929nj6Q71AxDlbv4Gv8jBnp44Pg+5VkL27aKTYbf//8ukOygJ4yTaw0ywL
	mOvwlud8VBEVuKpMhwqFju2/O1+Es00OFVi3SEdmp5FWymBnFNQTamRphMRYI9rBkijXXJG8vTPR9
	tmSjW1XJ03LToTDJ/MoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGjs-0005aE-Fc; Fri, 21 Jun 2019 10:25:48 +0000
Received: from helium.openadk.org ([89.238.66.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGjo-0005Z5-U9
 for linux-snps-arc@lists.infradead.org; Fri, 21 Jun 2019 10:25:46 +0000
Received: by helium.openadk.org (Postfix, from userid 1000)
 id 8E1C3100A0; Fri, 21 Jun 2019 12:25:38 +0200 (CEST)
Date: Fri, 21 Jun 2019 12:25:38 +0200
From: Waldemar Brodkorb <wbx@uclibc-ng.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [uclibc-ng-devel] state of uClibc ARC soft-float support
Message-ID: <20190621102538.GZ29045@waldemar-brodkorb.de>
References: <8544debf-dfb6-ebb5-a80e-aa9f860949ff@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8544debf-dfb6-ebb5-a80e-aa9f860949ff@synopsys.com>
X-Operating-System: Linux 3.16.0-5-amd64 x86_64
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_032545_123658_B1553A0C 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.238.66.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Waldemar Brodkorb <mail@waldemar-brodkorb.de>
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

I tried to sync the libm tests from glibc to uClibc-ng, but I think
I broke it. May be we should revert the commit?
3384c45e66ddf18f235654b67ae34ac7dcb07534

best regards
 Waldemar

Vineet Gupta wrote,

> Hi Waldemar,
> 
> After test-suite commit 9f079b6353 "(disable complex math)" the math tests build
> and I see lot of failures (for the default soft float builds)
> 
> 	.... test-float-finiteFAIL test-float-finite got 1 expected 0
> 	.... test-floatFAIL test-float got 1 expected 0
> 	.... test-idoubleFAIL test-idouble got 1 expected 0
> 	.... test-ifloatFAIL test-ifloat got 1 expected 0
> 	.... test-matherrFAIL test-matherr got 1 expected 0
> 	.... test-nan-overflowFAIL test-nan-overflow got 1 expected 0
> 	.... test-nan-payloadFAIL test-nan-payload got 1 expected 0
> 
> 
> Interestingly in ARC glibc port, soft float builds, all flaot tests pass (so
> atleast gcc/libgcc foo seem to be fine I think).
> 
> I noticed a few things:
> 
> 1. ulps for ARC was removed from test-sute last year - so I copied over the
> version from ARC glibc port [1]
> 
> 2. I suppose these don't depend on UCLIBC_HAS_FENV. Anyhow It seems uClibc
> __UCLIBC_HAS_FENV__ implies hardware float as it expects all FE_*
> exceptions/rounding modes to be defined in ARCH specific file.
> 
> Anyhow I tried creating an ARC specific fenv to support soft float with no
> exceptions and only single rounding mode but that doesn't seem to help. Any idea
> what I'm missing or if it is worth pursuing at all.
> 
> Thx,
> -Vineet
> 
> 
> [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-January/005347.html
> 
> _______________________________________________
> devel mailing list
> devel@uclibc-ng.org
> https://mailman.uclibc-ng.org/cgi-bin/mailman/listinfo/devel

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
