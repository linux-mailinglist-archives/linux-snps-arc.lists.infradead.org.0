Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E55D22BD
	for <lists+linux-snps-arc@lfdr.de>; Thu, 10 Oct 2019 10:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+ySc31ig3btcZVJrudP0RxLr8vghlgC06+tUVhC9PE=; b=Aob60EN1/IbnGN
	7Uf43zS8E+jlOvRwSCVsoe40TJZLJJ//j79y1ltybizfXChUVOwzNNAEEDIFi6cOMyaMZtDiIFXxM
	BcqiAlu6NxBM64f9nL2qZsTovi8zPMoXYFEe7J8AzcPqIrT5pdvnPz71PJUNRaG0r66Pw93/Ve7wo
	kzD1a3SX76TbJQUEAn7EMtCTw4OsSgaEcR2HsqLzqnemBf3hcgpn6iWyEIaARidPYOvtzh4lRquLT
	4AWKAOp0PcZzJoRHgJPuJLEjSPBFqbneLOz0Apj/YdCCx3f2KeRMYc0aNfswmGR1PawKMkc8DWg2R
	c0G7wXvjXPLA0xNvkYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITnt-0003MB-KR; Thu, 10 Oct 2019 08:28:09 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITnq-0003LB-K4
 for linux-snps-arc@lists.infradead.org; Thu, 10 Oct 2019 08:28:07 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 01:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="198274137"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga006.jf.intel.com with ESMTP; 10 Oct 2019 01:28:04 -0700
Received: by black.fi.intel.com (Postfix, from userid 1000)
 id 4B00822C; Thu, 10 Oct 2019 11:28:03 +0300 (EEST)
Date: Thu, 10 Oct 2019 11:28:03 +0300
From: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3] ARC: mm: remove __ARCH_USE_5LEVEL_HACK
Message-ID: <20191010082803.biaon6gq7yxvrvrq@black.fi.intel.com>
References: <20191009184350.18323-1-vgupta@synopsys.com>
 <20191009185731.25814-1-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009185731.25814-1-vgupta@synopsys.com>
User-Agent: NeoMutt/20170714-126-deb55f (1.8.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012806_671387_DB5FCD8E 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: linux-mm@kvack.org, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 06:57:31PM +0000, Vineet Gupta wrote:
> Add the intermediate p4d accessors to make it 5 level compliant.
> 
> This is a non-functional change anyways since ARC has software page walker
> with 2 lookup levels (pgd -> pte)
> 
> There is slight code bloat due to pulling in needless p*d_free_tlb()
> macros which needs to be addressed seperately.
> 
> | bloat-o-meter2 vmlinux-with-5LEVEL_HACK vmlinux-patched
> | add/remove: 0/0 grow/shrink: 2/0 up/down: 128/0 (128)
> | function                                     old     new   delta
> | free_pgd_range                               546     656    +110
> | p4d_clear_bad                                  2      20     +18
> | Total: Before=4137148, After=4137276, chg 0.000000%
> 
> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
