Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75B71D9886
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 May 2020 15:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=490JO/4Wr2C/JAMLnats0hFv94taAd5ChR35I8+/jhM=; b=hJH8BygvXI3hii
	bltT3waNz41mnJu9wRCc6DbEOK2kImoWYwqE3C8evsN4QtKuf4US77TSgA0A7rI9rXWXsgVSjGK6j
	j+KFO5yplvQtqf1HV5vXmuXmFkP0yjsltQYJIiqhq5O4UrF1fGpBcP86GWDqEZJaPPVdBGVYxVQL1
	Qw4WiPTc3WAQubHHlwDfflm+WlAO5gwqlYdE0cLBc79rqiN+0FqR5X+ZKXgYlRmm5zDelAtxdIDPs
	ffeRWz3TfAVZ0m/x9AKq0pnwx8Vy5dGSe4iT4++bnVfR1yQUmqX1xDmXgYAzkD09xHSzKPoqyLEYM
	gU6CIKQc4nMC+hpopX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2bx-0004DL-4f; Tue, 19 May 2020 13:48:49 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2bt-0004CV-Ms
 for linux-snps-arc@lists.infradead.org; Tue, 19 May 2020 13:48:46 +0000
IronPort-SDR: eEdAnnN8wPIhjbjIqJH8FoF59a96GrBfB6Z5G/L2ROZygxk9FUMhJeTUi/IxBjxr0TxErzmtP/
 Bh1z96BP0xzA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:48:44 -0700
IronPort-SDR: H/JFjAHMwzZmTTusqpdysvxKXqFJF23mHNOpHPdTHd356dHLXcuk5QvGRbP68bBgYzBfk6LPVq
 nS0/01vIj02w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="343140365"
Received: from joelin3-mobl.gar.corp.intel.com (HELO localhost)
 ([10.249.42.57])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2020 06:48:39 -0700
Date: Tue, 19 May 2020 16:48:38 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Subject: Re: [PATCH] Kernel selftests: Add check if tpm devices are supported
Message-ID: <20200519134838.GA17129@linux.intel.com>
References: <20200518213934.23156-1-Nikita.Sobolev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518213934.23156-1-Nikita.Sobolev@synopsys.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_064845_786830_A26EC0A9 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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

On Tue, May 19, 2020 at 12:39:34AM +0300, Nikita Sobolev wrote:
> tpm2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> are available. In case, when these devices are not available test
> fails, but expected behaviour is test to be skipped.
> 
> Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>

tpm2 tests set -> TPM2 test suite

Fixes tag is also required.

There is nothing cool writing acronyms in lower case, so lets
just always write them correctly.

> ---
>  tools/testing/selftests/tpm2/test_smoke.sh | 11 +++++++++--
>  tools/testing/selftests/tpm2/test_space.sh |  9 ++++++++-
>  2 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/testing/selftests/tpm2/test_smoke.sh b/tools/testing/selftests/tpm2/test_smoke.sh
> index 8155c2ea7ccb..e55d3e400666 100755
> --- a/tools/testing/selftests/tpm2/test_smoke.sh
> +++ b/tools/testing/selftests/tpm2/test_smoke.sh
> @@ -1,8 +1,15 @@
>  #!/bin/bash
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>  
> -python -m unittest -v tpm2_tests.SmokeTest
> -python -m unittest -v tpm2_tests.AsyncTest
> +# Kselftest framework requirement - SKIP code is 4.
> +ksft_skip=4
> +
> +if [ -f /dev/tpm0 ] ; then
> +	python -m unittest -v tpm2_tests.SmokeTest
> +	python -m unittest -v tpm2_tests.AsyncTest
> +else
> +	exit $ksft_skip
> +fi
>  
>  CLEAR_CMD=$(which tpm2_clear)
>  if [ -n $CLEAR_CMD ]; then
> diff --git a/tools/testing/selftests/tpm2/test_space.sh b/tools/testing/selftests/tpm2/test_space.sh
> index a6f5e346635e..180b469c53b4 100755
> --- a/tools/testing/selftests/tpm2/test_space.sh
> +++ b/tools/testing/selftests/tpm2/test_space.sh
> @@ -1,4 +1,11 @@
>  #!/bin/bash
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>  
> -python -m unittest -v tpm2_tests.SpaceTest
> +# Kselftest framework requirement - SKIP code is 4.
> +ksft_skip=4
> +
> +if [ -f /dev/tpmrm0 ] ; then
> +	python -m unittest -v tpm2_tests.SpaceTest
> +else
> +	exit $ksft_skip
> +fi
> -- 
> 2.16.2
> 

This would make the change more compact:

# Kselftest framework requirement - SKIP code is 4.
if [ ! -f /dev/tpmrm0 ] ; then
	exit 4
fi

python -m unittest -v tpm2_tests.SpaceTest

(also for /dev/tpm0)

/Jarkko

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
