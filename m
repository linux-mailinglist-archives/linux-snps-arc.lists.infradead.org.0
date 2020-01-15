Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F0913C50D
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 Jan 2020 15:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up0UDmTU4cys94ZHr/zHaTC3S6StXpl2sB0e6P7Atwg=; b=Squ8JNbN9Ut54v
	xq+va1njqp/vBpS90bPEu0Ox2wDZ72O+ONSOfnze8i5VvXd91hubjlI16Iy2vxVsj6TvFpIohjWUi
	pi0AuZPOvgvfQmIxOefP/jFCzjeWZJr9/7iHKozR/H0VAA7eR6e5t6S8wt4teLNrny/BLv3cF7ll2
	lO6Wrp3LIzQQtM05agiEdLRnWTf0s97UxYWG/zWzCMUyhEC3cAcyaciTITbzgOWLb3Xk/RPhdlVz1
	KTvzkKPjsS8jJlyhGFpcKjLT7DD8HPxNpLl9V6dfBJCWkDCBKkYAJywARolRtj0YiHO82G2NmPkMH
	onA1klJ60nAQ6ivS4kiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjPj-0000pP-Ob; Wed, 15 Jan 2020 14:12:55 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjPc-0000oN-7S
 for linux-snps-arc@lists.infradead.org; Wed, 15 Jan 2020 14:12:54 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1irjPE-008p64-U6; Wed, 15 Jan 2020 14:12:25 +0000
Date: Wed, 15 Jan 2020 14:12:24 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/4] asm-generic/uaccess: don't define inline functions if
 noinline lib/* in use
Message-ID: <20200115141224.GH8904@ZenIV.linux.org.uk>
References: <20200114200846.29434-1-vgupta@synopsys.com>
 <20200114200846.29434-2-vgupta@synopsys.com>
 <CAHk-=wjChjfOaDnGygOJpC36R6mtT7=Xf6wWTzD_wLJm=quu0Q@mail.gmail.com>
 <CAK8P3a2ao=xBuy3XHBkdo03KEjpMHGe9ahwj-uogtkZBXsMkGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2ao=xBuy3XHBkdo03KEjpMHGe9ahwj-uogtkZBXsMkGw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_061248_274259_EF724F24 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Aleksa Sarai <cyphar@cyphar.com>,
 Ingo Molnar <mingo@kernel.org>, Khalid Aziz <khalid.aziz@oracle.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 10:08:31AM +0100, Arnd Bergmann wrote:

> > I would suggest that anybody who uses asm-generic/uaccess.h needs to
> > simply use the generic library version.
> 
> Or possibly just everybody altogether: the remaining architectures that
> have a custom implementation don't seem to be doing any better either.

No go for s390.  There you really want to access userland memory in
larger chunks - it's oriented for block transfers.  IIRC, the insn
they are using has a costly setup phase, independent of the amount
to copy, followed by reasonably fast transfer more or less linear
by the size.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
