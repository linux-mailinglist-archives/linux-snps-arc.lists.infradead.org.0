Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3533816B703
	for <lists+linux-snps-arc@lfdr.de>; Tue, 25 Feb 2020 02:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2vhqeQKIpUH9kc2ua+igfQjwCS5pEQ7/P5iiJcnW4w=; b=ezGOh1OfgCD4Fr
	WzGhV6Ud9V744itvdTSayfyV6SMfre5PK2bppsmbWeT3BB909x59jTpOVFUBo2e5eCmwt6q7KjgGA
	LhUB1dkD7R1kh7vTYfNKjBnHKiECCgZOFwMA177QLrhPftrCgNgpq4w7B28rYT+ZuLg9Ov7wt/Zck
	PSd+ENeN7SaoCJtGszttIOlV4KLlHMLo/C8XliDbsJDtvKA33+cBhy/CN0SultANoujsZqffio0w6
	e2DMelMUjQ8UnCnbSZifO8ZoEfB2vwjFdLxo8RHvJuikvFCR8HNU1iGHmyBjh85LTUAZ341vDDcy6
	DcaPqIq/EfTqzSBM9WMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Oge-0007RO-Uj; Tue, 25 Feb 2020 01:07:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ogc-0007Qt-HS
 for linux-snps-arc@lists.infradead.org; Tue, 25 Feb 2020 01:07:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so8299218lfc.4
 for <linux-snps-arc@lists.infradead.org>; Mon, 24 Feb 2020 17:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DYACz/I1g+dSB0kophMnPCCHB6QICvtlGA92yZe+gYY=;
 b=JIaM/Mol/dBpBlr5t6HedQLS+ELIpJoX6VlpPtwPlsDuqIGbEZhbsck9gFJduUBCzj
 3puM41ffgOsX1UsUZbH0isPXgdPVW5gfl/awmqvf8GYlIkV3Eh8V+e5dVbLTNJOwljif
 nL1UAbrbJ8WBgWQ/XRYKXyf8VL2NNhi8bg/JRLDE3+IshalV3458eyPSaRCOJW9MjmoU
 sqhn06H9nPim99iInTJpDwikLb3yuFpUdhXRWG0WYlEEbELPGMgEcGD5WAC3mt2n1qhT
 VbgjPPYHNCgX0h9CTAg//aQCgvGW9qFt6dqMBFKxBhuksZfxvNeFNsNxssTJFyF0GTg8
 vY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DYACz/I1g+dSB0kophMnPCCHB6QICvtlGA92yZe+gYY=;
 b=FguISRBV64MfgFdK0NaLWLCX5HyQkbKrtTSZDOEUZCoVpsb7AcAKSpaO7OPmrnZz7M
 wWgnq/kxzkzQM7uupOCYkDUBok+IyFhZPZnuPsVudK4+mchM0mBSO5tbF09GmXpIaSfi
 TMTe1IcDfFDz1ie3g5AMzP87E8MKfVvAWlZHQMREdz/qVYynUiJFILjlb4hwf9gCumPv
 ODIB4Et8HTN/cOQp7w/u9+f06q5iY2Fa1M1zz57L35DGUfFl1oxhXsnHBtVZMGq3zuUU
 3wjn/+UOqPBnoqH9mlV0HHzZ9t7W9utCTv6G0u1LVPfoSEkC6pHR9GYVk6xF77HhWhEB
 TYvQ==
X-Gm-Message-State: APjAAAW3ruRDx0Nmpj6JONekDf9ikIFX38Si7ZoggpZk8OhdyyJJc94I
 jsnmsIpFikFxg9nOP2NIYDx4Ujw+wIor7Hy0Mk/DIZ7/sX2oCQ==
X-Google-Smtp-Source: APXvYqxTmaYDFG3ZXScdJw+hjwefx16I5STUuXnqfYnVrGwE3O5vAbHtNfa0UjSmg3uOMxdhvisTBwmH9gGqXJNCZEc=
X-Received: by 2002:ac2:5198:: with SMTP id u24mr5478980lfi.137.1582592816434; 
 Mon, 24 Feb 2020 17:06:56 -0800 (PST)
MIME-Version: 1.0
References: <20200224183413.13629-1-vgupta@synopsys.com>
In-Reply-To: <20200224183413.13629-1-vgupta@synopsys.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Mon, 24 Feb 2020 16:59:20 -0800
Message-ID: <CAKmqyKMLjb3rRh6n02_rL_fuh5cofBViJ7D1kNeD7r3rEYnkTg@mail.gmail.com>
Subject: Re: [PATCH] Force 64-bit time based syscalls for TIMESIZE==64 on
 32-bit arches
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_170658_602798_52DC2B67 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [alistair23[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alistair23[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 GNU C Library <libc-alpha@sourceware.org>, Lukasz Majewski <lukma@denx.de>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:34 AM Vineet Gupta
<Vineet.Gupta1@synopsys.com> wrote:
>
> This provides better out-of-box support for 32-bit arches with 64-bit
> time_t
>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  sysdeps/unix/sysv/linux/generic/sysdep.h | 48 ++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/sysdeps/unix/sysv/linux/generic/sysdep.h b/sysdeps/unix/sysv/linux/generic/sysdep.h
> index 23defce7c3e1..27b0079a2a71 100644
> --- a/sysdeps/unix/sysv/linux/generic/sysdep.h
> +++ b/sysdeps/unix/sysv/linux/generic/sysdep.h
> @@ -17,6 +17,7 @@
>     <https://www.gnu.org/licenses/>.  */
>
>  #include <bits/wordsize.h>
> +#include <bits/timesize.h>
>  #include <kernel-features.h>
>  #include <sysdeps/unix/sysdep.h>
>  #include <sysdeps/unix/sysv/linux/sysdep.h>
> @@ -33,3 +34,50 @@
>  #define __NR_pread __NR_pread64
>  #define __NR_pwrite __NR_pwrite64
>  #endif
> +
> +/* Override syscalls for asm-generic ABIs with 64-bit time.  */
> +#if __WORDSIZE == 32 && __TIMESIZE == 64
> +
> +# undef __NR_futex
> +# define __NR_futex __NR_futex_time64

I think you should do what RV32 does and wrap these in ifndef's

Alistair

> +
> +# undef __NR_rt_sigtimedwait
> +# define __NR_rt_sigtimedwait __NR_rt_sigtimedwait_time64
> +
> +# undef __NR_ppoll
> +# define __NR_ppoll __NR_ppoll_time64
> +
> +# undef __NR_utimensat
> +# define __NR_utimensat __NR_utimensat_time64
> +
> +# undef __NR_pselect6
> +# define __NR_pselect6 __NR_pselect6_time64
> +
> +# undef __NR_recvmmsg
> +# define __NR_recvmmsg __NR_recvmmsg_time64
> +
> +# undef __NR_semtimedop
> +# define __NR_semtimedop __NR_semtimedop_time64
> +
> +# undef __NR_mq_timedreceive
> +# define __NR_mq_timedreceive __NR_mq_timedreceive_time64
> +
> +# undef __NR_mq_timedsend
> +# define __NR_mq_timedsend __NR_mq_timedsend_time64
> +
> +# undef __NR_clock_getres
> +# define __NR_clock_getres __NR_clock_getres_time64
> +
> +# undef __NR_timerfd_settime
> +# define __NR_timerfd_settime __NR_timerfd_settime64
> +
> +# undef __NR_timerfd_gettime
> +# define __NR_timerfd_gettime __NR_timerfd_gettime64
> +
> +# undef __NR_sched_rr_get_interval
> +# define __NR_sched_rr_get_interval __NR_sched_rr_get_interval_time64
> +
> +# undef __NR_clock_adjtime
> +# define __NR_clock_adjtime __NR_clock_adjtime64
> +
> +#endif
> --
> 2.20.1
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
