Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E73B6B3B
	for <lists+linux-snps-arc@lfdr.de>; Wed, 18 Sep 2019 20:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+CoCHBk5Q63Jav0+QE3GC+povm5oI13IE41bCrRCL8=; b=tIz07QNPiI5a0t
	ZENw3rIdAneFKpscMhB0YmWdoDF6ZRHthq+1zuqEw+/WN7c/2npSMOcROPV2gbfZDioMoLcSgbDPj
	OCrSq1BiFfhAtFGlteRAhriWVzzxhua4ObaU8yCp9162cAIBGretXT0ZCbYdG7ukF1X2IJR3cjkbY
	aF4AWiyGwITo/dplA3EL3P+T/oWWwuN0MbBTVcpgmYPXhn3yZpfOUuqXA/8npQcCwhmwi1crqIhK7
	dO1It+PfOx9eIuyZktddHkkdWcwcla5HkQuQkAWSOwsCoseqoYkhf3RtF1cHXmkZBnWInBjseTzNq
	UP5daalyIoecRyVG+XlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf86-0007L4-3c; Wed, 18 Sep 2019 18:56:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf81-0007IV-6E
 for linux-snps-arc@lists.infradead.org; Wed, 18 Sep 2019 18:56:41 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0D99222BD;
 Wed, 18 Sep 2019 18:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568832996;
 bh=VgF4oxnkm95abC04U+ZEJWH733Bi1oVy4TQp3hrbazQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DrrKUVaynHppU8RftJRmiED3I0GmjXAt16neo7L6j7CQl6M4zuSf79pznAOlT2zIe
 XD0Pm2REG84TYWgx0lBRC+C4Eavabpu+a0N9cwqtcqhQUKLEz1lrorJlxNS7qvM69B
 gP9b2SIe+ZvbGtjYYRhwIW7z7PeX/euxcnSMv1Uc=
Date: Wed, 18 Sep 2019 20:56:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vineet Gupta <vineetg76@gmail.com>
Subject: Re: stable backport for dc8635b78cd8669
Message-ID: <20190918185633.GB1944551@kroah.com>
References: <efb68643-3750-e94b-8387-6e4cacb3a82a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efb68643-3750-e94b-8387-6e4cacb3a82a@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115637_260223_67653E6D 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 arcml <linux-snps-arc@lists.infradead.org>, kbuild test robot <lkp@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:40:32AM -0700, Vineet Gupta wrote:
> Hi Stable team,
> 
> Can we please backport dc8635b78cd8669c37e230058d18c33af7451ab1 ("kernel/exit.c:
> export abort() to modules")
> 
> 0-Day kernel test infra reports ARC 4.x.y builds failing after backport of
> af1be2e21203867cb958aace ("ARC: handle gcc generated __builtin_trap for older
> compiler")

So is this only needed in 4.9.y and 4.4.y?

thanks,

greg k-h

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
