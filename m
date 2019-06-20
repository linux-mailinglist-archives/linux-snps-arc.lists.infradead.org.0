Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400494C834
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 09:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HS9q2ANImsZskXrIyQTRZMD5SLWB/yPizySdDFfJUdc=; b=hpugFb2W3q5mdl
	m+QxSi2YL1k47zwHazqlQs2Z6U64QqfrtJjMPbHkQ+c0ts547QTv3vRETdIbnF7Jensu4vu/kqQxK
	sdE0qT7KEOT60+VtNBLfhDXEGHHnvYvaYkGqM5LPxH5dsugkE+t6HQsQZbve98cwtuIvKBaLs8EBs
	zgOasUb3BWA4KXkrlGVRkd53r112nysqBBfrnlrVaOlWanRnsVEbAjolT9ziT5QAAtn2nCks7omdo
	5RgLrjBGdfFih8f5PsbeP8eSwvhCt3UR2lIw6cGmWOfhl8MEVjzFZXBL8H9pCMZ82a+4ggCK3kDCG
	ACcBaurzVpWPDSRupdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrLv-0004ZP-1U; Thu, 20 Jun 2019 07:19:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrLt-0004Z6-8Z
 for linux-snps-arc@lists.infradead.org; Thu, 20 Jun 2019 07:19:22 +0000
Received: from devnote2 (113x40x119x170.ap113.ftth.ucom.ne.jp [113.40.119.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81DA02084A;
 Thu, 20 Jun 2019 07:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561015160;
 bh=ditT581I77m/ZbUu7CLuX7DQIEDwZUnG/8oeauPi0io=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fyBYqmEqZeklNLUnmdmPM/4625Mcbao07QGNIYQw5knhEZK8wIHjcm8xUL4RmnX0r
 PMnegxpi1BIQAjhCwgTuEYSEaa/KbTsng4M1dGIJ9/yq3pToiPLhZ1loMNuNQ0OZTt
 fyFz0fNafXWDnlMWBNAdXCvQrux1gSBdpWnS1k4c=
Date: Thu, 20 Jun 2019 16:19:17 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
Message-Id: <20190620161917.a713ea0ff38fa18a2c6f05c2@kernel.org>
In-Reply-To: <8b184218-6880-204e-a9dd-e627c5ca92ca@synopsys.com>
References: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
 <e5f45089-c3aa-4d78-2c8d-ed22f863d9ee@synopsys.com>
 <8b184218-6880-204e-a9dd-e627c5ca92ca@synopsys.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_001921_330604_055F3FB2 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fenghua Yu <fenghua.yu@intel.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

On Tue, 18 Jun 2019 08:56:33 -0700
Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:

> +CC Masami San, Eugeniy
> 
> On 6/13/19 10:57 AM, Vineet Gupta wrote:
> 
> 
> > On 6/13/19 3:07 AM, Anshuman Khandual wrote:
> >> Questions:
> >>
> >> AFAICT there is no equivalent of erstwhile notify_page_fault() during page
> >> fault handling in arc and mips archs which can call this generic function.
> >> Please let me know if that is not the case.
> > 
> > For ARC do_page_fault() is entered for MMU exceptions (TLB Miss, access violations
> > r/w/x etc). kprobes uses a combination of UNIMP_S and TRAP_S instructions which
> > don't funnel into do_page_fault().
> > 
> > UINMP_S leads to
> > 
> > instr_service
> >    do_insterror_or_kprobe
> >       notify_die(DIE_IERR)
> >          kprobe_exceptions_notify
> >             arc_kprobe_handler
> > 
> > 
> > TRAP_S 2 leads to
> > 
> > EV_Trap
> >    do_non_swi_trap
> >       trap_is_kprobe
> >          notify_die(DIE_TRAP)
> >             kprobe_exceptions_notify
> >                arc_post_kprobe_handler
> > 
> > But indeed we are *not* calling into kprobe_fault_handler() - from eithet of those
> > paths and not sure if the existing arc*_kprobe_handler() combination does the
> > equivalent in tandem.

Interesting, it seems that the kprobe_fault_handler() has never been called.
Anyway, it is used for handling a page fault in kprobe's user handler or single
stepping. And a page fault in user handler will not hard to fix up. Only a hard
case is a page fault in single stepping. If ARC's kprobes using single-stepping
on copied buffer, it may crashes kernel, since fixup code can not find correct
address without kprobe_fault_handler.

Thank you,

> 
> @Eugeniy can you please investigate this - do we have krpobes bit rot in ARC port.
> 
> -Vineet
> 
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
