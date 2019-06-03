Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D173633523
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 18:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jKOYcStbmUX+kvV8rAy4AhYM3XyrymNq0ZK9x0r0To=; b=C/3ZWzz0srz9bf
	e+sV42AEW02dVKcCGua1b/NJ0e1Q10n/OwuwEVJ+rE7xukUBqTzNZSJRAKEOUrEx3jQf7mAL5wdIM
	LthyD5k4DpWrTb0e5Ltd7U2wIcifdAp7QUg0Eq3Yk8OnjfO37Xu6tqWSwsj1O2k9cOiV0pBrwoBqz
	1jNHnjuMWu4k0471211NC2CRzmoFHOu8Wt38Zog0deSX994BdwZXfeuMQR9MfZwwBTRmjOX8yFnzF
	C/DJuo9ePZosYG4biUT0YwSDGR61I42WEv1jb2dv+1yO/r44crNKcBprPLLztXMZlF9lN/ntL6FBZ
	3JBbA4pI0yx3XyhWmBiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXq0M-0002Mh-JB; Mon, 03 Jun 2019 16:40:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hXq0K-0002MX-OR; Mon, 03 Jun 2019 16:40:12 +0000
Date: Mon, 3 Jun 2019 09:40:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH] ARC: build: Try to guess CROSS_COMPILE with
 cc-cross-prefix
Message-ID: <20190603164012.GA29719@infradead.org>
References: <20190603063119.36544-1-abrodkin@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603063119.36544-1-abrodkin@synopsys.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

I wish we could just set CROSS_COMPILE and ARCH in .config.  That would
make everyones life compile testing on multiple architectures so much
easier.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
