Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD81D044A
	for <lists+linux-snps-arc@lfdr.de>; Wed,  9 Oct 2019 01:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkioYw2+b/ImtONw1JBgsRXOloFlRwPef2WK2upI79c=; b=OEoVlfOPqM/+5D
	YYqzjX/0xF6AoIP0KsYGGkH7GEHCZfy5oP/dB817DZ6kThc4cB8/wECKKl9y/HFdEp/fVClzR7EVR
	AVNK0Zw7/NcxItlWmIzxE3Rah1RGjYNA8Km+bWixKWjvgEPfJpUvG3DDYKlI4UyX5b1mkRxAMzcup
	bHuW6JwK45MszKYoNcQjlRZwTRL7IjU+mOHNzbH5nrO4LLSJi8RnD5lVni7zj31MatIJtYUSz1ZsC
	9iZaiVOMC9b3l+/BwWR/gHY8tAEaUvdONBUqjMG7x8bVuaX6M5BCMz+EL2b/8aol6ViRsHM6/GSEx
	MNYfkIenQQmn8n/gT07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHz7e-0002Yw-0X; Tue, 08 Oct 2019 23:42:30 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHz7b-0002YI-9m
 for linux-snps-arc@lists.infradead.org; Tue, 08 Oct 2019 23:42:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 16:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="199961741"
Received: from black.fi.intel.com ([10.237.72.28])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 16:42:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1000)
 id 83A05F9; Wed,  9 Oct 2019 02:42:23 +0300 (EEST)
Date: Wed, 9 Oct 2019 02:42:23 +0300
From: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: mm: remove __ARCH_USE_5LEVEL_HACK
Message-ID: <20191008234223.wycjktby2t5gwz3o@black.fi.intel.com>
References: <20191008213836.19266-1-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008213836.19266-1-vgupta@synopsys.com>
User-Agent: NeoMutt/20170714-126-deb55f (1.8.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_164227_357674_AF5EE2C8 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mm@kvack.org, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 09:38:36PM +0000, Vineet Gupta wrote:
> Add the intermediate p4d accessors to make it 5 level compliant.
> 
> Thi sis non-functional change anyways since ARC has software page walker
     ^
     Typo.
> with 2 lookup levels (pgd -> pte)
> 
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  arch/arc/include/asm/pgtable.h |  1 -
>  arch/arc/mm/fault.c            | 10 ++++++++--
>  2 files changed, 8 insertions(+), 3 deletions(-)

Have you tested it with CONFIG_HIGHMEM=y? alloc_kmap_pgtable() has to be
converted too.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
