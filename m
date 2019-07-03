Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8865EB85
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jul 2019 20:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NO4vB9OK8F9RV/OPnZcaMqlE0t/gJrLXtJqio7kxWVM=; b=gb41mT1Wbpe/t2
	Ag2+UFPgUd5SkU4ftqn7O+hUkxOry5RJ2hJl5bxA/5uttCsU4Ln9s//53a046sm0Zq23N7GJS3Nea
	8+Egi8rDAAqZRgVYk8vTHPsbdLluP7/FZTTXrT7Edpa2RyaWzWxNkS4OsUf1A6vgjFfWP4LbVDcx0
	FETBxOC+ZpSkOZmb518AoTO4H+XdUNRMPscwbIXZZVB5Lx1KHtoMggAt7rtHSluhTMJrnUWLytOXu
	baJYZVdawLLPQurfo9IYntuJdorNRwdmAjE0YbRycnogXWyNp679gqUApdw3hC90gTiAoEKXEv7Wi
	wHQROfmafRhKmyTnFYsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijx4-0001B1-4W; Wed, 03 Jul 2019 18:25:54 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijx0-0001AQ-L7
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jul 2019 18:25:52 +0000
Received: by mail-qk1-f196.google.com with SMTP id g18so3605995qkl.3
 for <linux-snps-arc@lists.infradead.org>; Wed, 03 Jul 2019 11:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hj9Mu/A07WEzdqlLv51CSKCOmnErRsnZV7qZQXqAPU4=;
 b=b6nXow/+RCfw7qyl/z8a/PrMoxQ5tCwhVKEzc0rpMHMZm2st9Oq2nCwaLBl1AU/eN6
 FK2YuAt20Mb/SntLp6jKMmTn8uuYs242zALnGnQoBxTTjY0RewYepQVSVwYgI7Y8m8mi
 HJZsX97qrdqAJ1VBScyIY9SsOwMA8rf9MgbdRo+gz8EpHWDh7l27x3g0KDCdXopI8BMt
 KSalbY41J1OvkQ+EuGed/e+vxdxTz3Rf8sctCTyj+z/5ozqFwepyOQyROJxNuxei44sn
 3zvvwW7B9idmcpzlLwgIdjWoXj2Lkii5L9tzNIZOkCdyouiKf+sqXek1fte7/avlhgET
 HdiA==
X-Gm-Message-State: APjAAAUFUaR7S9nJyObFhMeZicm5ms+NQ8cEYCfXxBvdg7EhBDCbmaVz
 qIYBi7T/KZTEluayA2mUTY6C6heIAhSil1mFWt0=
X-Google-Smtp-Source: APXvYqz4bMygWKgzPmMPQ5p4ZuQcJbZZCvEe0RJ2vPSOcOE5DSOmY6oaJcaZ7l0WpnAhLbZjS+hOicTtiyKfXEbB3xc=
X-Received: by 2002:a37:ad12:: with SMTP id f18mr31452492qkm.3.1562178349452; 
 Wed, 03 Jul 2019 11:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190703133940.1493249-1-arnd@arndb.de>
 <7584cf05-e3f9-7027-a08c-87efbfb0f608@synopsys.com>
In-Reply-To: <7584cf05-e3f9-7027-a08c-87efbfb0f608@synopsys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 3 Jul 2019 20:25:32 +0200
Message-ID: <CAK8P3a2c49gLLU5BKsty7WCD=6gZbJ0PiJvYfe3SMou=SqUi9Q@mail.gmail.com>
Subject: Re: [PATCH] ARC: hide unused function unw_hdr_alloc
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_112550_699362_14CEBCC1 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 6:13 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
> On 7/3/19 6:39 AM, Arnd Bergmann wrote:
> > Fixes: bc79c9a72165 ("ARC: dw2 unwind: Reinstante unwinding out of modules")
> > Link: https://kernelci.org/build/id/5d1cae3f59b514300340c132/logs/
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Thx, do you want me to pick this up via arc tree.

Yes, that would be great.

Thanks,

      Arnd

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
