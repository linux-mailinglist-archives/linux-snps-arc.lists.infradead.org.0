Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1CA11F127
	for <lists+linux-snps-arc@lfdr.de>; Sat, 14 Dec 2019 10:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSqeSPZ+o27FK/huikzuptDwV7pjC/Nn3dQ7ClyIfRg=; b=Xa16LZ9b16KvED
	lMuTMQDKjBl58/hd8h4a9/qEDSWnyPUeFr08Gy1m6X15UJLjvyMef9wmq4mNzYoSG5+ru2QqFKtKV
	ltpyViu3BrQfqnPfTswVZ7Jms229B1z/iFmRZUQgrS7B/zIfBxIaEKTfabZs9eLwcIxm37afMN8ZW
	EHJgrZzCNBjxYG3aY/dRmgfPRyasQTsB2UboFJE5+XncyGbI15mlMQ62CXeTfsP39hb8DFWe47/sY
	xqmC9SM3o94yR4OgBd541rEU449r9kRPKcxFAxmMSvwoD1bFuZQdQ8owBPEuLhgm+MXuSXjOKRnE/
	rijS26A1y2Bj1/M3n7TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig3sA-0003Fn-J2; Sat, 14 Dec 2019 09:38:02 +0000
Received: from albireo.enyo.de ([37.24.231.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig3s7-0003EU-Qi
 for linux-snps-arc@lists.infradead.org; Sat, 14 Dec 2019 09:38:01 +0000
Received: from [172.17.203.2] (helo=deneb.enyo.de)
 by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ig3s0-0007G4-6H; Sat, 14 Dec 2019 09:37:52 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
 (envelope-from <fw@deneb.enyo.de>)
 id 1ig3rI-0007i0-Kr; Sat, 14 Dec 2019 10:37:08 +0100
From: Florian Weimer <fw@deneb.enyo.de>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [uclibc-ng-devel] stdio fudging errno ?
References: <77f8a379-f3dc-6d15-4d8a-20be0346e9f6@synopsys.com>
Date: Sat, 14 Dec 2019 10:37:08 +0100
In-Reply-To: <77f8a379-f3dc-6d15-4d8a-20be0346e9f6@synopsys.com> (Vineet
 Gupta's message of "Thu, 12 Dec 2019 23:54:36 +0000")
Message-ID: <87k16zdz97.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_013800_029861_8E0BBECF 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>,
 "jan.vangorp_ext@softathome.com" <jan.vangorp_ext@softathome.com>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Vineet Gupta:

> Here's a simple test case which shows the problem:
>
> 	#define _GNU_SOURCE
> 	#include <stdio.h>
> 	#include <stdlib.h>
> 	#include <errno.h>
>
> 	void main(void)
> 	{
>         	const char *this_func = "finite";
> 	        char *test_name;
>
>         	errno = 0;
> 	        if (asprintf (&test_name, "%s (%s)", this_func, "my-str") == -1)
> 			abort ();
>
> 	        printf("%d\n", errno);	// <-- prints 11
> 	}
>
> The errno unconditionally being set to EAGAIN seems to have been
> introduced in commit 568ceebf6adfc58c64a95133311268db6 ("Fix
> infinite loop when fopencookie custom write returns 0 on error")
> bakc in 2016.

For functions specified by standards, successful calls can alter errno
unless specified otherwise.  asprintf is not a standardized function,
but it is reasonable to expect that a similar rule applies.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
