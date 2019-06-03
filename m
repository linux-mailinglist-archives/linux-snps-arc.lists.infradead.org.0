Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06C132EEA
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 13:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFjsSCkz+cHCn8XeP1NnaHavN8gj2UW6vvvvWwUXjCU=; b=lkYTm8XwfnSsv4
	fI+IHs12hfx8upSAf0y5sAjmo4f5LQWiryKozBsN8kiVI3o/1PdLo/TbC31vdovtcQluGpPiAEzpu
	hOjSyfvAJdBit1UeJ7fg1vU5LOC/SLuYnUl1ImqI3F8sjB2nqaHT//JsNJOJnhz7wagpbHTNjpit+
	j1YdC+5f/rZ9Ym1g8NxQ6zQaIqNHBeeGKogpjvoX08MQy+pfA910C9+aCoaUzTADQb+dHNxu89fK/
	NcJkS2bCbCVA/MtasF1N7XQSFkRKI9afFW8FiM0bPxBXJCaA/gIqUTwHI/ihyUJOJb3aG/mtXMFEo
	4MR8fJIUSZ56klyQpyHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlQ1-0007gE-Jj; Mon, 03 Jun 2019 11:46:25 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlPx-0007fl-Oz
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 11:46:23 +0000
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x53BjrZu030753
 for <linux-snps-arc@lists.infradead.org>; Mon, 3 Jun 2019 20:45:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x53BjrZu030753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559562354;
 bh=xcdVS2lZM1a48jGewJjV7DieZdVaVvo2sv103QVTF4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vD2ZSXItTjKjdiNBHbKw3ZwxymGkS+mFzGNJdILthjozmnTu79/V5i1V8R22/nnLr
 3Bw8q1gvPjzDonVsJOuFRSuMKPvOQAUdQaZmuCbo0GRiGSBfxaddMQx1ahOH8UJqTx
 YfHiSmxDHnUIL+meK6FxxCOVklZh415UQpOq1Dp0zXb3EiK/jpR2st9Kjvipf0isXu
 A5q5swRbapK7hp912uNtA2dqkyZEP2HMa1B5c0V0HrNiot0WqaCOeKEbm0bkGoddoU
 csou2T6LFFYdEKH87VrsG7p35LArxmFUjTiFl5fSqOU9j7jWNvgLKYgGp4n52MswfN
 ml+ums0o22Y+Q==
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id g194so2788166vke.13
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 04:45:53 -0700 (PDT)
X-Gm-Message-State: APjAAAWViPkYcLznLYQ3oqivFqETGQ8i4inkRJlATEuGsrDLY8vznK3o
 HNKeF5g57CWSfANrcFRYCmQuXdm0aTO9z9vqwE8=
X-Google-Smtp-Source: APXvYqxzUHPoQIku6KGXaYa9Qp+9KgMH/y/NROsn43MQouSz1p//qa19a5lw5lYTcOIKJq2hnfSJHM9bQSGQoQwpkgs=
X-Received: by 2002:ac5:c215:: with SMTP id m21mr8858804vkk.84.1559562352459; 
 Mon, 03 Jun 2019 04:45:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190603104902.23799-1-yamada.masahiro@socionext.com>
 <3dcacca3f71c46cc98fa64b13a405b59@AcuMS.aculab.com>
In-Reply-To: <3dcacca3f71c46cc98fa64b13a405b59@AcuMS.aculab.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 3 Jun 2019 20:45:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNATt=P5rHrnK_8PTmjMb+tdtPg2qBgopRUDBFw_fkP2SsQ@mail.gmail.com>
Message-ID: <CAK7LNATt=P5rHrnK_8PTmjMb+tdtPg2qBgopRUDBFw_fkP2SsQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use more portable 'command -v' for cc-cross-prefix
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_044622_052553_7DED78B2 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stable <stable@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 8:16 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Masahiro Yamada
> > Sent: 03 June 2019 11:49
> >
> > To print the pathname that will be used by shell in the current
> > environment, 'command -v' is a standardized way. [1]
> >
> > 'which' is also often used in scripting, but it is not portable.
>
> All uses of 'which' should be expunged.
> It is a bourne shell script that is trying to emulate a csh builtin.
> It is doomed to fail in corner cases.
> ISTR it has serious problems with shell functions and aliases.

OK, I do not have time to check it treewide.
I expect somebody will contribute to it.



BTW, I see yet another way to get the command path.

'type -path' is bash-specific.

Maybe, we should do this too:

diff --git a/scripts/mkuboot.sh b/scripts/mkuboot.sh
index 4b1fe09e9042..77829ee4268e 100755
--- a/scripts/mkuboot.sh
+++ b/scripts/mkuboot.sh
@@ -1,14 +1,14 @@
-#!/bin/bash
+#!/bin/sh
 # SPDX-License-Identifier: GPL-2.0

 #
 # Build U-Boot image when `mkimage' tool is available.
 #

-MKIMAGE=$(type -path "${CROSS_COMPILE}mkimage")
+MKIMAGE=$(command -v "${CROSS_COMPILE}mkimage")

 if [ -z "${MKIMAGE}" ]; then
-       MKIMAGE=$(type -path mkimage)
+       MKIMAGE=$(command -v mkimage)
        if [ -z "${MKIMAGE}" ]; then
                # Doesn't exist
                echo '"mkimage" command not found - U-Boot images will
not be built' >&2


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
