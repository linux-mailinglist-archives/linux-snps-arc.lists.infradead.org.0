Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC644D2450
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 10:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liWV3poSML4vVZfxL8xPZNVOI7v6F6KEbcBzP9ITld0=; b=sw0D6oGp1Pe8Eb
	bk1pY9+RteqXaJrHlAeYKYSVdygxdpyZxrqRSQkFt60BBD/TfE9IN4OhccsD2EQhu98K/uEj4ycf0
	s7gSyU7shmxp/i+ydV+96cueqcMoPtk69Vf7dZedhDKbE8LWQd5moeFSs6bVKZMOByzGDVNysGUYp
	vWNNyJhpqErNd92vNxGB5MezVJHiTy4+t0plVmOgjE7jeN8i2kelUdnU2rjkZy98PAgGL/SPq80c9
	FVCFHo4gulEzv0k1lTT80/wgdFSh+0lBjwhRXlmE13DatZIQjUu0GkaPW+Hgc2+ZormQfdbO9bYre
	rDAX5yeJG3URq00sNnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUF6-0003ED-Lf; Thu, 10 Oct 2019 08:56:16 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUF3-0003Cg-Ki
 for linux-snps-arc@lists.infradead.org; Thu, 10 Oct 2019 08:56:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 01:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="207147582"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2019 01:56:10 -0700
Received: by black.fi.intel.com (Postfix, from userid 1000)
 id BC1D322C; Thu, 10 Oct 2019 11:56:09 +0300 (EEST)
Date: Thu, 10 Oct 2019 11:56:09 +0300
From: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH 0/3] eldie generated code for folded p4d/pud
Message-ID: <20191010085609.xgwkrbzea253wmfg@black.fi.intel.com>
References: <20191009222658.961-1-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009222658.961-1-vgupta@synopsys.com>
User-Agent: NeoMutt/20170714-126-deb55f (1.8.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_015613_690372_FB583873 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Nick Piggin <npiggin@gmail.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-snps-arc@lists.infradead.org, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 10:26:55PM +0000, Vineet Gupta wrote:
> Hi,
> 
> This series elides extraneous generate code for folded p4d/pud.
> This came up when trying to remove __ARCH_USE_5LEVEL_HACK from ARC port.
> The code saving are not a while lot, but still worthwhile IMHO.

Agreed.

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
