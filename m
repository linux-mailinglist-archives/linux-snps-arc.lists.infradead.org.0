Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC1D825F
	for <lists+linux-snps-arc@lfdr.de>; Tue, 15 Oct 2019 23:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQeqQncVcZpLlsl5s3z8XMHdcX9min6NogDuRhoevTA=; b=KrfPuFtBQ/OCWF
	82nO/BsofdI0ofH7ATSEHRiiUJ+oiLk+YO3BpnIUJRHm+6AKdV/5iqLh0bGgdk8crFf7oDcDubIjk
	oGmC0PIot+QaUzQ34v+wXfHxKFaS/gV6Jrz0ebkgZLoIj6Ezy6O5PNUxGUre5BSqm6Qjo2woPX2ib
	BuXAosIz9dYreGs3hHcJQ4xzBs1e2AdlxkL3B7EVL5mgHmeA5r0hRPeInkFzz3LIj6p5Zz2ISSyqk
	RmzuVvYG6mMXmJI0GkPxXRlSHRD7tTmkI8yQHFjrIZahOynDPgnHBlzaQ2IClbPj61e/I0KjVn/x6
	FnUEbzJ6xZBS/J7WOOuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUea-0005ny-G5; Tue, 15 Oct 2019 21:46:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUeX-0005n2-JW
 for linux-snps-arc@lists.infradead.org; Tue, 15 Oct 2019 21:46:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id j19so21844979lja.1
 for <linux-snps-arc@lists.infradead.org>; Tue, 15 Oct 2019 14:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ob5N5ZzOYqwWJlWtRK/QQr9teH3dlSPsAVI1F8bPf38=;
 b=Ls2Ydx/1fiuQCKLYCr6mZfYT53ylM0bwO8QLfmOr29RVIEWsNQvXoEyD7/28atloUG
 w+SNF88R+eUaHbdCKU6U17DXhOsSyLQK+W93/BhVqc1MTwofrvdbxA3OX0BP8484yWP6
 rquduhuB1DQ9TVPZMjcMgJRO4GQPDwTo2bq84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ob5N5ZzOYqwWJlWtRK/QQr9teH3dlSPsAVI1F8bPf38=;
 b=cXCRQC1hMa0gls3opMRTuGIA99H9ReCstlm4x0nfbA5C3X8cc+kv/axKfyH9Wm3l2a
 LxCFxDAHOoePF1aoU0j2DJiFlW0fQiO0f6HCm2t4Y30emRGQOVzBqbg+srresH4TT9Xv
 qGI+OIIiDNLuGo4OZlo2FY/Sol3EXh4xhhxDN74CN8GMlrpkDEcRyHL6GbNVV7031p2T
 gKIFVrMtIAIEzy1uorrdJBzyWyqsKIfr+5Gv8ifuzMIggfHHGV+ZnExErWxXqs+t8COi
 cHcqUvDByuE6/jMRglkgf0JAC2tym578jLseU0yfV03GPnFR8igX9N6AyCZ+EmJdMbwe
 6kpQ==
X-Gm-Message-State: APjAAAUljcgsAUWCIO7cx4uB7cc5YjLoDl1lIiiuToUU8n2oqHfYMgMo
 wnQbXTORunjEBq1EatrsoQsyl61UTU4=
X-Google-Smtp-Source: APXvYqzQZng32p3i7g76R0XFqHlhP2CPlUjUh6BUkiRbiOdOCEcczTSaCUvmzD+pPWLX84BOlVLUhQ==
X-Received: by 2002:a2e:750c:: with SMTP id q12mr23355512ljc.138.1571176005535; 
 Tue, 15 Oct 2019 14:46:45 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id k23sm5361089ljc.13.2019.10.15.14.46.43
 for <linux-snps-arc@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 14:46:43 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id t8so15624346lfc.13
 for <linux-snps-arc@lists.infradead.org>; Tue, 15 Oct 2019 14:46:43 -0700 (PDT)
X-Received: by 2002:a05:6512:219:: with SMTP id
 a25mr22630003lfo.61.1571176002727; 
 Tue, 15 Oct 2019 14:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191015191926.9281-1-vgupta@synopsys.com>
 <20191015191926.9281-3-vgupta@synopsys.com>
In-Reply-To: <20191015191926.9281-3-vgupta@synopsys.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 15 Oct 2019 14:46:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=whtRuGdsm0BR50vpwJBRJgP3u6Suz0LNa6WzR9RMtJjbw@mail.gmail.com>
Message-ID: <CAHk-=whtRuGdsm0BR50vpwJBRJgP3u6Suz0LNa6WzR9RMtJjbw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] asm-generic/tlb: stub out pud_free_tlb() if nopud
 ...
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_144649_659763_71A09981 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nick Piggin <npiggin@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 12:19 PM Vineet Gupta
<Vineet.Gupta1@synopsys.com> wrote:
>
> This came up when removing __ARCH_HAS_5LEVEL_HACK for ARC as code bloat
> from this routine which is not required in a 2-level paging setup

Ack, looks good.

           Linus

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
