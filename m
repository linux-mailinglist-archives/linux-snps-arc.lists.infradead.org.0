Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C811AE84F
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 00:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLMfosQWVa9Hx/N9SMttxOQok5uydYWKhE3SdEafT24=; b=EU3G8gPz7XA2v7
	S1vwHNOC7StNzeiQtdKgPgbK9g1zfsafmdOqGzh3U+aNtm2Gp3GLahrm9WugMGNxed4rO0Ug4uNgD
	sbsyJTmYX8GAHF3dnGxZPScxzesHL7wiIYygc/rTrfI1rw6NLH/pnV3+Ms+lLbb7eU4JZGBRSRvTM
	GLbLPfuepR9b3zEGv+9oRPjYgxThWZxNvOSU2Ehcv1XrqNWbQzML2OygbphInRQD0JiXYKAT1uCk5
	Z4qptXjZpCl6YJFrZoMbBo7XLBWg7ZOoHep7fP6LJZOTIyBWheHRhQdVbHoA+te3ISxRGo8hofUkq
	8vE8qAGCx19xmyeMCb1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZgr-0000GO-IY; Fri, 17 Apr 2020 22:42:29 +0000
Received: from esa3.mentor.iphmx.com ([68.232.137.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZgo-0000G7-Tj
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 22:42:28 +0000
IronPort-SDR: NhZ1N53ii0jaTWwSmndJbIMJ1wd53oqJ8FOZP6AF6NfiqlP3Tbg7y4CP/tSWn7N+NkahK/ObIV
 i8jZtHRqHwbUA/otQpXuynQBmoGXHMHLudsu0ICDjPQHRKaHlVgJwHM+m7aGfdNpu6+V216sm1
 H2/ZT5WbgbKjcZilmS9oUpP1VSy02y3Buw+jkIOOBu9uYjwQ+DgfMGw7kbxTz2tf7DNt2fbvpR
 d35Sx6kfoF/7g18RQZ4psTPe9TDzb//+xJtE7xHPJnYgaWBGrWNyuhfE0VX3fke+luM6XgWFhG
 fec=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="47929494"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa3.mentor.iphmx.com with ESMTP; 17 Apr 2020 14:42:26 -0800
IronPort-SDR: ttPJ8Grd1YHdyL7ZLQnyselq50OQ/Rl/23LVAzdoHgth6q4ZHMVbgwnBRhHKbjt1NLoidBqUnt
 2/rMn0NVXmgi/uNJYnTjI/JhT6IWGsudRtVSs8lv6yomWcsV8zGJie+kx/V4E4pBDKCTJZl1oi
 nv9Q8FSPsg1S9DPyl4Xy+7RiQ27OcLAV7vddUUML/JlLVqn0fmeAJy75FWqr5EGQBhvciVh8S9
 JKluK0RdI49fqAs+o41K/X+hvjq0DGHNkUorVdMu+eDYK9ilinom/R1nQj6/sXWhXedhWvl6ey
 9v8=
Date: Fri, 17 Apr 2020 22:42:20 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 02/14] ARC: startup and dynamic linking code
In-Reply-To: <20200409025615.27003-3-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172239120.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-3-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_154227_039847_90AB7436 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 8 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> +/* What this code does:
> +    -ldso starts execution here when kernel returns from execve()
> +    -calls into generic ldso entry point _dl_start( )

Avoid use of parentheses to indicate that a name is a function.

> +auto inline void
> +__attribute__ ((always_inline))
> +elf_machine_rela_relative (ElfW(Addr) l_addr, const ElfW(Rela) *reloc,
> +			   void *const reloc_addr_arg)
> +{
> +  ElfW(Addr) *const reloc_addr = reloc_addr_arg;
> +  *reloc_addr += l_addr; // + reloc->r_addend;

This comment seems unhelpful.  If you want to comment on the addend not 
being added, write a comment that says *why* it's not being added, not 
just a commented-out addition.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
