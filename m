Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BED11DA035
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 May 2020 21:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3U2h3fTZcr6nXMqh+rxzur3QFxv3vb7w/wu056fAMU=; b=UJWuwLBtPKg4h9
	DLvC2bH3xYPPS9H60UsJBh8gyd/0zX4GIJFmzPNc4nMAqSHaWPtJFweWG+u7uqwgUvcNS4FjN1NGE
	XL6F+yLZpNmhQjD6EJ7wb7AJZERl3DYYjSocd3zhoB/SwyDXHs+H4yUamZIQcGJ73aaE34YX5um2Q
	k8ZsemPuInWItxh4yGxfJHI5zI6+S6uX2c+Ru3ujWCuqvEXqXGyItBU33nnBNGPc98cG+v+QUiYyF
	SUeCGx3rCV5hUesIQ0mKY11Ghm19pw8lIW/mTktULXZ+BMi2zpt0Hak0cSZQoFR7OLM/PO3N86Pw2
	NrEs8XgPuwWYwdhYodow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Ty-0006u9-16; Tue, 19 May 2020 19:00:54 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Tq-0006nX-7X
 for linux-snps-arc@lists.infradead.org; Tue, 19 May 2020 19:00:51 +0000
IronPort-SDR: 4DuJR/A+WMqC+wXeWw3t4p3/1MAaMJddXSBFyFCpFnPWnxO7odyULcR/UWWdgFSHr5o8SR1BVq
 fwAC5yNqVJVw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 12:00:45 -0700
IronPort-SDR: DPcoO8JWQyzvNdTE+i+NjsSRehFDDEuS8LYC9YUWq1IQeAtof4lmJM2bG07+MnU58PZIh1qInD
 p/nEVByMNVFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="264407484"
Received: from joelin3-mobl.gar.corp.intel.com (HELO localhost)
 ([10.249.42.57])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2020 12:00:40 -0700
Date: Tue, 19 May 2020 22:00:36 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Subject: Re: [PATCH v2] Kernel selftests: Add check if tpm devices are
 supported
Message-ID: <20200519190023.GA22852@linux.intel.com>
References: <20200519120743.41358-1-Nikita.Sobolev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519120743.41358-1-Nikita.Sobolev@synopsys.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120046_348236_EEC02006 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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

On Tue, May 19, 2020 at 03:07:43PM +0300, Nikita Sobolev wrote:
> tpm2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> are available. In case, when these devices are not available test
> fails, but expected behaviour is skipped test.
> 
> Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>

See

https://lore.kernel.org/linux-kselftest/20200519134838.GA17129@linux.intel.com/T/#mf762512a67f0b23db5663d6d67746cb94b812931

The comments about the fixes tag and acronym spelling were not
addressed. The code change looks great tho now, thanks.

/Jarkko

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
