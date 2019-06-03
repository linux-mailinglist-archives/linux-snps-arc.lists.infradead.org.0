Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019CA334DE
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 18:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8m1Sx1qf7YZpZLrFNyJxlsrHlWS2xzrOM5/xN9MRfaI=; b=NJvwCQLbW3crLr
	7yxk0Z2WF7pKMCRoFvkWD2VNZhHai4alPtH1Upw12++jdixHFGLw9dys2SY5Sek+LzChKEAH1LdN7
	JY1Y26EZ/cRP+cQB7sInsD5xxCXHKr9ylJvusgiYVGI7+/iN5K76apqtK/hYThm+1WzRmdDSS5sM4
	1eONJCMx9vJHDtkRvHI7yFxhf0D/mtqurExl5nF483463PTVgFbnn6jg2gY0CHLREsFa93sVhTJM5
	sdR8ZwwPE2YYWFFcrGYzM+bUBlxjDxuwYhoLRWfo7r2x4KwQ7hOUT4veQFbMjWBH1RPtulUOiclJt
	/PlXCCXW60Bc/c83leIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXplb-0003Xl-NF; Mon, 03 Jun 2019 16:24:59 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXplY-0003X0-RI
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 16:24:58 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CF72AC2124;
 Mon,  3 Jun 2019 16:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559579074; bh=JX+elEHAI7MoI1Kj6PhDcFRioomBwhgwjAEA09vtnIg=;
 h=From:To:CC:Subject:Date:References:From;
 b=cewzcBd3vYNCfDC3IhKlsGl2ELoWAKv8GHqe4/WXW/yiEuN8pwH2OZUTGi2TMEHwf
 9KMaMKjgt3MCVQ4zpaFkYE3YBK6o0WXALP+vdfaaPBdmdcyuHwNFCYbVKsbEba/8Zt
 kT93PPT9bOHPGzER8qLfuE4N41BpuMs0yXUp/g4Lknp5hRtwreAOyfp0fgXIQNshiw
 cfZi98+4IDMJwGEuQUwnPjmXUS8lW6Hfu4mls7Y+Vtmqs3TOrliVS7bGfgGCvN0IIA
 rKwf9ai8hA4F64MmFEo8UJCF2v2lBL5+7AIesFyqcDdo9tlxfKFDQ/ZjIxDnqxKBP+
 BcGxQw2xGBo/w==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 36BD3A0079;
 Mon,  3 Jun 2019 16:24:51 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC3.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Mon, 3
 Jun 2019 09:24:50 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Topic: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Thread-Index: AQHVGdX4wIpfF+K0XEmKZYQZNUp5WA==
Date: Mon, 3 Jun 2019 16:24:49 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2522AB4@us01wembx1.internal.synopsys.com>
References: <20190603063119.36544-1-abrodkin@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_092456_894350_54CB8496 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/2/19 11:31 PM, Alexey Brodkin wrote:
> For a long time we used to hard-code CROSS_COMPILE prefix
> for ARC until it started to cause problems, so we decided to
> solely rely on CROSS_COMPILE externally set by a user:
> commit 40660f1fcee8 ("ARC: build: Don't set CROSS_COMPILE in arch's Makefile").
>
> While it works perfectly fine for build-systems where the prefix
> gets defined anyways for us human beings it's quite an annoying
> requirement especially given most of time the same one prefix
> "arc-linux-" is all what we need.
>
> It looks like finally we're getting the best of both worlds:
>  1. W/o cross-toolchain we still may install headers, build .dtb etc
>  2. W/ cross-toolchain get the kerne built with only ARCH=arc
>
> Inspired by [1] & [2].
>
> [1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-May/005788.html
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fc2b47b55f17
>
> A side note: even though "cc-cross-prefix" does its job it pollutes
> console with output of "which" for all the prefixes it didn't manage to find
> a matching cross-compiler for like that:
> | # ARCH=arc make defconfig
> | which: no arceb-linux-gcc in (~/.local/bin:~/bin:/usr/bin:/usr/sbin)
> | *** Default configuration is based on 'nsim_hs_defconfig'
>
> Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Vineet Gupta <vgupta@synopsys.com>

Not a big deal but I'd propose we add "Suggested-by: vgupta" since that is where
it came from.

@Masahiro san I suppose you are OK with this, so perhaps an Ack etc would be nice
to have.

Thx,
-Vineet

> ---
>  arch/arc/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arc/Makefile b/arch/arc/Makefile
> index e2b991f75bc5..9cfd2ba7a12d 100644
> --- a/arch/arc/Makefile
> +++ b/arch/arc/Makefile
> @@ -8,6 +8,10 @@
>  
>  KBUILD_DEFCONFIG := nsim_hs_defconfig
>  
> +ifeq ($(CROSS_COMPILE),)
> +CROSS_COMPILE := $(call cc-cross-prefix, arc-linux- arceb-linux-)
> +endif
> +
>  cflags-y	+= -fno-common -pipe -fno-builtin -mmedium-calls -D__linux__
>  cflags-$(CONFIG_ISA_ARCOMPACT)	+= -mA7
>  cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
