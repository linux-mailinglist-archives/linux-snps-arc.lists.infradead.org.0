Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37E816A430
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Feb 2020 11:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTKT41CTW9CXSHijRtdQgNdiul50Zf61wqb1dXjxefc=; b=IAQyEz633WQXBe
	2FMVCe/hOXMQfgGHNrhNOHj7EB2hJ7BzRvbcHjCOHXKlivtTUOpHdHvvd0IJZz4IisyGOysRGHZNs
	X/f2K0LI3VZOUilT1vD665DUoxp6mQf9S2SvoaPa/QCZSciGD6gnJTTi66o6mWvRHyQ7HHM6sgN44
	o4/E8XWiInoxKesQyG5vwrXvWSC2lFXJWtIesflXyicI40hSdvFtx4L+dYfUdiY23m8Ac7ebCS6vE
	MJqhHnoFVo1AJtG983USPPUXj2ZfXR8kj5DXOA/qkBXquODGAd/TOnEHVX7B8h+pMOowp3BakgLNW
	awotm9KUCrm+pIM93hPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BC3-0001iu-DP; Mon, 24 Feb 2020 10:42:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BC0-0001iT-B9
 for linux-snps-arc@lists.infradead.org; Mon, 24 Feb 2020 10:42:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6E875AF00;
 Mon, 24 Feb 2020 10:42:26 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Lukasz Majewski <lukma@denx.de>
Subject: Re: switching ARC to 64-bit time_t (Re: [RFC v6 07/23] RISC-V: Use
 64-bit time_t and off_t for RV32 and RV64)
References: <cover.1578824547.git.alistair.francis@wdc.com>
 <4e95f95966d8d7c6a8339160dc62d81c1f6a1bfb.1578824547.git.alistair.francis@wdc.com>
 <00574bfb-981a-3a1c-cbdf-b2fee4eddc32@gmail.com>
 <CAKmqyKMyf2psPp+-EHoidvbPbSXv0=dP26GjVQnT5BUriLc1gA@mail.gmail.com>
 <alpine.DEB.2.21.2002120123230.3988@digraph.polyomino.org.uk>
 <CAKmqyKOgFRfMOws_-48GqMnuS3ygmN9A4DzLg6UtEjRXVoM82A@mail.gmail.com>
 <8a9784b3-fc52-adc3-4595-33142b059388@synopsys.com>
 <20200220001136.2f14236e@jawa>
 <CAK8P3a1b73K+RjfHONWLy_dFUucXxwd+0jTnHmkf6YqwRjit4w@mail.gmail.com>
 <20200220103716.2f526933@jawa>
 <CAK8P3a2n6fRm4C5Ywyk5ys92jSOAc5SwvBVZyFOY9=4rB2pyjw@mail.gmail.com>
 <20200224100051.2511d797@jawa> <mvmpne4xqpb.fsf@suse.de>
 <20200224111424.33759b2e@jawa> <mvmh7zgxozs.fsf@suse.de>
 <20200224113658.275ea702@jawa>
X-Yow: QUIET!!  I'm being CREATIVE!!  Is it GREAT yet?  It's s'posed to
 SMOKEY THE BEAR...
Date: Mon, 24 Feb 2020 11:42:23 +0100
In-Reply-To: <20200224113658.275ea702@jawa> (Lukasz Majewski's message of
 "Mon, 24 Feb 2020 11:36:58 +0100")
Message-ID: <mvmd0a4xo4w.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_024228_529580_A9B3879E 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Florian Weimer <fweimer@redhat.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 GNU C Library <libc-alpha@sourceware.org>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Helmut Grohne <helmutg@debian.org>,
 Zong Li <zongbox@gmail.com>, debian-arm@lists.debian.org,
 Alistair Francis <alistair.francis@wdc.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 "Maciej W. Rozycki" <macro@wdc.com>, Alistair Francis <alistair23@gmail.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Joseph Myers <joseph@codesourcery.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Feb 24 2020, Lukasz Majewski wrote:

> On Mon, 24 Feb 2020 11:23:51 +0100
> Andreas Schwab <schwab@suse.de> wrote:
>
>> On Feb 24 2020, Lukasz Majewski wrote:
>> 
>> > If I add those functions as hidden_alias then those would be
>> > accessible inside glibc without PLT, but will not be exported (and
>> > redirection for Y2038 will not work).  
>> 
>> They aren't?  PLT avoidance is about internal references, and uses a
>> different name then the exported sybmol.
>> 
>
> I'm probably not aware of something - but as done in the following
> patch:
>
> https://github.com/lmajewski/y2038_glibc/commit/c96eeb73175961c4ac80fdd3b6adc132805387c9
>
> I do need to remove librt_hidden_proto / librt_hidden_def to have
> proper symbols visible when I do want to use redirections.

You cannot redirect to GLIBC_PRIVATE symbols, they are not suposed to be
used by public interfaces.  All public interfaces need to use official
versioned symbols.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
