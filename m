Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297CA1DF047
	for <lists+linux-snps-arc@lfdr.de>; Fri, 22 May 2020 22:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bN9jtmgednkNeD+2DdHbFHIjkW0rYczZcOjU/U8+J4o=; b=F30w8XWppnN+YP
	szwD92orcblsimhpN9CHKVxNCRXF7bCoNFsmOgk0Fj5rXFvizdBCxLOvDQvGnAt56plL3qurMU1/s
	mLRlSMnLJERGXCMimSqgVharl+LLvBPiyeR1K5lD3AKCkCFXu6fwwRAvCxGpkNleOwhXLjKmKTX1w
	uHUC1V5r74bRUvsHzUEhASRPWKyZCCks5ccnTQi7GEqZPwsOpT60WVfYKx9dPOaydBP1LSM1ZTzCN
	5jxFEhIJAoJc2MRUeI8gQU2fHtb5787JNNC9nbOGJFw1qZfRkNPngYBLGbsFgY+Dq293Rc/jwqmC6
	ZMz82Eo+q8WhdoQHFu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcDqO-0007RE-Ea; Fri, 22 May 2020 20:00:36 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcDqL-0007Qg-Tv
 for linux-snps-arc@lists.infradead.org; Fri, 22 May 2020 20:00:35 +0000
IronPort-SDR: U9R0rGaCLyliwHUnPy0x84PKx7e5wP0owwfuo/xgbVFbkP8JPVmJZvHyOQaOHRCUzl8ByUTvYR
 2dWDmwjQUcwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:00:31 -0700
IronPort-SDR: Bn+s5kEeq3xJ/DxUaKFS56sEC5ThKILViF5ryIBv8HF8o4U+Pd6FqEFkCsxFQFXiXuboE64Tfx
 YkRHJDkDDurQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="300771018"
Received: from rpurrx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.10])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2020 13:00:28 -0700
Date: Fri, 22 May 2020 23:00:29 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v3] Kernel selftests: Add check if TPM devices are
 supported
Message-ID: <20200522200029.GA150221@linux.intel.com>
References: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
 <20200522163714.GA10319@linux.intel.com>
 <20200522163745.GB10319@linux.intel.com>
 <b433d7c7-38a2-098a-55c9-6f8cc13f7230@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b433d7c7-38a2-098a-55c9-6f8cc13f7230@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_130034_007740_C9FBD5B5 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Jason Gunthorpe <jgg@ziepe.ca>, linux-kselftest@vger.kernel.org,
 Tadeusz Struk <tadeusz.struk@intel.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Petr Vorel <petr.vorel@gmail.com>, Joey Pabalinas <joeypabalinas@gmail.com>,
 Nikita Sobolev <Nikita.Sobolev@synopsys.com>, linux-integrity@vger.kernel.org,
 linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 01:23:26PM -0600, shuah wrote:
> On 5/22/20 10:37 AM, Jarkko Sakkinen wrote:
> > On Fri, May 22, 2020 at 07:37:17PM +0300, Jarkko Sakkinen wrote:
> > > On Thu, May 21, 2020 at 05:43:44PM +0300, Nikita Sobolev wrote:
> > > > TPM2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> > > > are available. In case, when these devices are not available test
> > > > fails, but expected behaviour is skipped test.
> > > > 
> > > > Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
> > > 
> > > Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> > 
> > Shuah, can you pick this up?
> > 
> > /Jarkko
> > 
> 
> Done. Applied to linux-kselftest next for Linux 5.8-rc1.
> 
> thanks,
> -- Shuah

Thank you.

/Jarkko

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
