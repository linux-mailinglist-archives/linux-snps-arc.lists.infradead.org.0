Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E71DED6B
	for <lists+linux-snps-arc@lfdr.de>; Fri, 22 May 2020 18:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4tWaymYnrEYyhWfjyJLigrJ/S27BUawIXk8ExC6xss=; b=pw/jBSKYVMHKxF
	NXsgu4o1C/WeqK+8KGvLCIeIFLV+RQ4L1aY+km8UWsbnx3F5kxVivDTvAFXl3EZg2sKjdzFiv5PLT
	jATHKq+UT06bh8p35mDbnZ25ETKCypNgZOvJ14ygjLHaTJNwEgw7bpeX30yJO4posTAUpJ1jguhyn
	UvYGeQClRzvNTQBPotRmg+tU23N+7Fbr3vaBWLYTih+fjEdpOnG0ZQjRZvFFp30i43y/AisTrtxoc
	+GKO0zfUy26XXHBD2XV7s9ex+dHQxHYJM/a7o2yMXWzheE5Q/ZxMmoe37winimwrdcz9H066/maCH
	fgb8yGp8WTgagiG2lYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAhj-0005Le-8h; Fri, 22 May 2020 16:39:27 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAhg-0004mN-Hn
 for linux-snps-arc@lists.infradead.org; Fri, 22 May 2020 16:39:25 +0000
IronPort-SDR: QhcvnQxHCE3q6xNwXWvTXGLESVKbGTXEeMWzoThfJrsn8Q6Bs1YQ67zFRPa4qqZu8jxW6a6BN6
 3/WnqgG771rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 09:37:18 -0700
IronPort-SDR: JEidF67PYSgBq5aX5xATp9ya5JSrCiRO+JzkEuIQOb6UmY6yIawRJ1h3RwT9Xv4uv4rOtOTBEX
 sbadxAt4klzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="300722038"
Received: from omillerx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.43.59])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2020 09:37:12 -0700
Date: Fri, 22 May 2020 19:37:14 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Subject: Re: [PATCH v3] Kernel selftests: Add check if TPM devices are
 supported
Message-ID: <20200522163714.GA10319@linux.intel.com>
References: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_093924_630625_D7936C67 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kselftest@vger.kernel.org, Tadeusz Struk <tadeusz.struk@intel.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Joey Pabalinas <joeypabalinas@gmail.com>,
 Petr Vorel <petr.vorel@gmail.com>, linux-integrity@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 05:43:44PM +0300, Nikita Sobolev wrote:
> TPM2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> are available. In case, when these devices are not available test
> fails, but expected behaviour is skipped test.
> 
> Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>

Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>

Thank you.

/Jarkko

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
