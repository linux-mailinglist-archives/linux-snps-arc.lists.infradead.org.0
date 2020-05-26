Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE6C199F2F
	for <lists+linux-snps-arc@lfdr.de>; Tue, 31 Mar 2020 21:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMnvBaszcCxzZ+Z1yeSaPgE7s1ls9rOtCrlaKrDQcqo=; b=F2IOqGV1mV7NH3
	1Ok+/Sp/lVnJxlTNGcmKAhjYiJaVgrWpy3zWNf86SKfF9owigwMlMN4GcmTI8TFMHB7mHA8nk8w4H
	0465uP8lMPrx10Lv2uIsePpjQshs3ZSvSrKymEsMyW/XLCMt/qB23/C2tfk/iaieD1LaVaHz2gUMP
	Q81rhJcEjSuQgFSGrngRvEsvI5V0Y424/V/yMMqbmblH2WR1p0undXvzSZEEvxuraCcKgz3GXnwzx
	I2OV4mHCTDbTgWeY8tJaMLrli6O/WFqtg2qm1IjzJ7RaKyvG+dgbnBYnLjB4DmRehn+mlqMR1VmX2
	NLXWz3zmxyPsOvz8DBPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMeq-0001pS-3j; Tue, 31 Mar 2020 19:34:44 +0000
Received: from albireo.enyo.de ([37.24.231.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMen-0001o5-Nm
 for linux-snps-arc@lists.infradead.org; Tue, 31 Mar 2020 19:34:43 +0000
Received: from [172.17.203.2] (helo=deneb.enyo.de)
 by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jJMeb-0002Xs-Dz; Tue, 31 Mar 2020 19:34:29 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
 (envelope-from <fw@deneb.enyo.de>)
 id 1jJMeb-0003vF-BP; Tue, 31 Mar 2020 21:34:29 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Vineet Gupta via Libc-alpha <libc-alpha@sourceware.org>
Subject: Re: [PATCH] provide y2038 safe socket constants
References: <20200329041612.4071-1-vgupta@synopsys.com>
Date: Tue, 31 Mar 2020 21:34:29 +0200
In-Reply-To: <20200329041612.4071-1-vgupta@synopsys.com> (Vineet Gupta via
 Libc-alpha's message of "Sat, 28 Mar 2020 21:16:12 -0700")
Message-ID: <87r1x8qpx6.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_123441_771013_652038C7 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.24.231.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stepan Golosunov <stepan@golosunov.pp.ru>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-snps-arc@lists.infradead.org,
 Alistair Francis <alistair.francis@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Vineet Gupta via Libc-alpha:

> These will be used by upcoming RV32 and ARC ports and any future ports
>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  sysdeps/unix/sysv/linux/bits/socket-constants.h | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/sysdeps/unix/sysv/linux/bits/socket-constants.h b/sysdeps/unix/sysv/linux/bits/socket-constants.h
> index 9dcc19cd5380..8a48ae7d0ca2 100644
> --- a/sysdeps/unix/sysv/linux/bits/socket-constants.h
> +++ b/sysdeps/unix/sysv/linux/bits/socket-constants.h

What about the parallel changes to the sysdeps overrides?  I would
expect changes for hppa, mips, powerpc.  (Not sure about the alpha
situation.)

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
