Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8343837F7F
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 23:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0K9kzUTJlmVmmAySB4yySbLTjMpUOnr270yGNEZ8/Qg=; b=N8zzM0C8yEI9mB
	YlD6aTdmqcNkqUBk8tU2J2rVZTpVwiOtKKHLInh0eVgaV7hoVJpjlCr0Taes3Os53GiWXj+DQzteD
	NQXxtH9VXUqL9fJVJ1uh7IAoZ7o1/IENdG0ZxObrD9ErP0KYF3XahB3RCfYECjk0WcMY2f078usqy
	mh1Ik5hggbkZLeh8nrknMzR4gF1tbyfov/7w/4MrzM6Ke/TbdxQA3ZAq+RCgiWmDAg4Np4UTUeki7
	4MLzo4oc/14isRcqK/+1PnxS7/QhjxVLP1caDQoJsmGwXQ9EomEiY3Xb9+Gtb5ZsxrJVEEtEwDDMR
	rGrRXq63gDbuTHRmYGpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzsE-0004uH-8g; Thu, 06 Jun 2019 21:24:38 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzsB-0004tv-PA
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 21:24:37 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2E651C00B0;
 Thu,  6 Jun 2019 21:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559856273; bh=ztmufjfdnzdzFXw27NX9pwjpME7y4ERqGU8Jdwb+vEQ=;
 h=From:Subject:To:CC:Date:From;
 b=e5dLcydVhJ47CXMU2CqiiAEmfwdFypxkKmGZSwWX8huOv3Z1e6QKGGS9jW+2r50c5
 XI2hwi6wyzFWSd1Pwie69Qg5lAPLE/hwtgYx29SIzpxQy1kkFtZ1LmWTWaasZbtC8m
 MpDQWFPq5taR68surwgu4IjDaQBH7gWXsMnGcUPkqcs+V2jHPEwUqngQNAchxGJ+BT
 zvziI2ERMPd1a3ycZO8hVQE8njFF9S5qY/Cic7E77d4cOxJm5aD453UMtjkBFLcvzU
 kZ50eHu1/jO8hLYZWHrzNYGds83807J4Ndh0Vr+O+IpG9nzqWjiLdApG2ieQt7oCgl
 ugBStR3hV2QGA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 03F2EA005D;
 Thu,  6 Jun 2019 21:24:30 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 6 Jun 2019 14:24:30 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 7 Jun 2019 02:54:27 +0530
Received: from [10.10.161.35] (10.10.161.35) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 7 Jun 2019 02:54:40 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: state of uClibc ARC soft-float support
X-Mozilla-News-Host: news://gmane.comp.lib.uclibc.buildroot
To: "devel@uclibc-ng.org" <devel@uclibc-ng.org>
Openpgp: preference=signencrypt
Autocrypt: addr=vgupta@synopsys.com; keydata=
 mQINBFEffBMBEADIXSn0fEQcM8GPYFZyvBrY8456hGplRnLLFimPi/BBGFA24IR+B/Vh/EFk
 B5LAyKuPEEbR3WSVB1x7TovwEErPWKmhHFbyugdCKDv7qWVj7pOB+vqycTG3i16eixB69row
 lDkZ2RQyy1i/wOtHt8Kr69V9aMOIVIlBNjx5vNOjxfOLux3C0SRl1veA8sdkoSACY3McOqJ8
 zR8q1mZDRHCfz+aNxgmVIVFN2JY29zBNOeCzNL1b6ndjU73whH/1hd9YMx2Sp149T8MBpkuQ
 cFYUPYm8Mn0dQ5PHAide+D3iKCHMupX0ux1Y6g7Ym9jhVtxq3OdUI5I5vsED7NgV9c8++baM
 7j7ext5v0l8UeulHfj4LglTaJIvwbUrCGgtyS9haKlUHbmey/af1j0sTrGxZs1ky1cTX7yeF
 nSYs12GRiVZkh/Pf3nRLkjV+kH++ZtR1GZLqwamiYZhAHjo1Vzyl50JT9EuX07/XTyq/Bx6E
 dcJWr79ZphJ+mR2HrMdvZo3VSpXEgjROpYlD4GKUApFxW6RrZkvMzuR2bqi48FThXKhFXJBd
 JiTfiO8tpXaHg/yh/V9vNQqdu7KmZIuZ0EdeZHoXe+8lxoNyQPcPSj7LcmE6gONJR8ZqAzyk
 F5voeRIy005ZmJJ3VOH3Gw6Gz49LVy7Kz72yo1IPHZJNpSV5xwARAQABtCpWaW5lZXQgR3Vw
 dGEgKGFsaWFzKSA8dmd1cHRhQHN5bm9wc3lzLmNvbT6JAj4EEwECACgCGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheABQJbBYpwBQkLx0HcAAoJEGnX8d3iisJeChAQAMR2UVbJyydOv3aV
 jmqP47gVFq4Qml1weP5z6czl1I8n37bIhdW0/lV2Zll+yU1YGpMgdDTHiDqnGWi4pJeu4+c5
 xsI/VqkH6WWXpfruhDsbJ3IJQ46//jb79ogjm6VVeGlOOYxx/G/RUUXZ12+CMPQo7Bv+Jb+t
 NJnYXYMND2Dlr2TiRahFeeQo8uFbeEdJGDsSIbkOV0jzrYUAPeBwdN8N0eOB19KUgPqPAC4W
 HCg2LJ/o6/BImN7bhEFDFu7gTT0nqFVZNXlOw4UcGGpM3dq/qu8ZgRE0turY9SsjKsJYKvg4
 djAaOh7H9NJK72JOjUhXY/sMBwW5vnNwFyXCB5t4ZcNxStoxrMtyf35synJVinFy6wCzH3eJ
 XYNfFsv4gjF3l9VYmGEJeI8JG/ljYQVjsQxcrU1lf8lfARuNkleUL8Y3rtxn6eZVtAlJE8q2
 hBgu/RUj79BKnWEPFmxfKsaj8of+5wubTkP0I5tXh0akKZlVwQ3lbDdHxznejcVCwyjXBSny
 d0+qKIXX1eMh0/5sDYM06/B34rQyq9HZVVPRHdvsfwCU0s3G+5Fai02mK68okr8TECOzqZtG
 cuQmkAeegdY70Bpzfbwxo45WWQq8dSRURA7KDeY5LutMphQPIP2syqgIaiEatHgwetyVCOt6
 tf3ClCidHNaGky9KcNSQ
Message-ID: <8544debf-dfb6-ebb5-a80e-aa9f860949ff@synopsys.com>
Date: Thu, 6 Jun 2019 14:24:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.10.161.35]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142435_833440_10AB1F0D 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Waldemar,

After test-suite commit 9f079b6353 "(disable complex math)" the math tests build
and I see lot of failures (for the default soft float builds)

	.... test-float-finiteFAIL test-float-finite got 1 expected 0
	.... test-floatFAIL test-float got 1 expected 0
	.... test-idoubleFAIL test-idouble got 1 expected 0
	.... test-ifloatFAIL test-ifloat got 1 expected 0
	.... test-matherrFAIL test-matherr got 1 expected 0
	.... test-nan-overflowFAIL test-nan-overflow got 1 expected 0
	.... test-nan-payloadFAIL test-nan-payload got 1 expected 0


Interestingly in ARC glibc port, soft float builds, all flaot tests pass (so
atleast gcc/libgcc foo seem to be fine I think).

I noticed a few things:

1. ulps for ARC was removed from test-sute last year - so I copied over the
version from ARC glibc port [1]

2. I suppose these don't depend on UCLIBC_HAS_FENV. Anyhow It seems uClibc
__UCLIBC_HAS_FENV__ implies hardware float as it expects all FE_*
exceptions/rounding modes to be defined in ARCH specific file.

Anyhow I tried creating an ARC specific fenv to support soft float with no
exceptions and only single rounding mode but that doesn't seem to help. Any idea
what I'm missing or if it is worth pursuing at all.

Thx,
-Vineet


[1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-January/005347.html


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
