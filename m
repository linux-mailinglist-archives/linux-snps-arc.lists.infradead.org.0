Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA82013B61F
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 Jan 2020 00:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8NazDAn23BcRVDNQ5Lm2NLjHJRUmRoCaNQEjpB1htg=; b=JiFKrIa7/1CMbP
	2JJ64jyISDn4OcdpFtJtUh7ePA1Wh8mZa7nsyzmu2mtVXKDtI7SNZ2AEoXGHOfXz6gaLq/GMkPnib
	+QWDwPAef1AMZwDW3vfJSrIds/P0kcxOw0a5/N81nJ91bggctts4VcbIxfiCycUr2dLDvPwb6Xt5B
	hje/XAv0Q/qFij/WLaQW3V/p5ALX10Xe8TPDTU0r/yjpMYzXFha9a6srO+Z3Qo+6Bodp6WH0b5QTz
	7BlWoIBpY1EubGpJmdizXaP+LL/st38Wnonp/0zxrC0rWl3sEAtroxqNwKgLuLvBf5jeGVaqMn1Bp
	XkiyN/zakKOguki5XMNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irVv2-00073f-KA; Tue, 14 Jan 2020 23:48:20 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irVuz-0006of-44
 for linux-snps-arc@lists.infradead.org; Tue, 14 Jan 2020 23:48:18 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1irVsm-008O1i-77; Tue, 14 Jan 2020 23:46:00 +0000
Date: Tue, 14 Jan 2020 23:46:00 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [RFC 2/4] lib/strncpy_from_user: Remove redundant user space
 pointer range check
Message-ID: <20200114234600.GD8904@ZenIV.linux.org.uk>
References: <20200114200846.29434-1-vgupta@synopsys.com>
 <20200114200846.29434-3-vgupta@synopsys.com>
 <CAHk-=wgoc5DaF6=WxsAcft_Lp4XUYTiRhhCJGcmM5PwEDXY6Gw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgoc5DaF6=WxsAcft_Lp4XUYTiRhhCJGcmM5PwEDXY6Gw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_154817_163146_702E519F 
X-CRM114-Status: UNSURE (   7.78  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Aleksa Sarai <cyphar@cyphar.com>,
 Ingo Molnar <mingo@kernel.org>, Khalid Aziz <khalid.aziz@oracle.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 01:22:07PM -0800, Linus Torvalds wrote:

> The fact is, copying a string from user space is *very* different from
> copying a fixed number of bytes, and that whole dance with
> 
>         max_addr = user_addr_max();
> 
> is absolutely required and necessary.
> 
> You completely broke string copying.

BTW, a quick grep through the callers has found something odd -
static ssize_t kmemleak_write(struct file *file, const char __user *user_buf,
                              size_t size, loff_t *ppos)
{
        char buf[64];
        int buf_size;
        int ret;

        buf_size = min(size, (sizeof(buf) - 1));
        if (strncpy_from_user(buf, user_buf, buf_size) < 0)
                return -EFAULT;
        buf[buf_size] = 0;

What the hell?  If somebody is calling write(fd, buf, n) they'd
better be ready to see any byte from buf[0] up to buf[n - 1]
fetched, and if something is unmapped - deal with -EFAULT.
Is something really doing that and if so, why does kmemleak
try to accomodate that idiocy?

The same goes for several more ->write() instances - mtrr_write(),
armada_debugfs_crtc_reg_write() and cio_ignore_write(); IMO that's
seriously misguided (and cio one ought use vmemdup_user() instead
of what it's doing)...


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
