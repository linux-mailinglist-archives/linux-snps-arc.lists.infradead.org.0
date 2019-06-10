Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5273B8AE
	for <lists+linux-snps-arc@lfdr.de>; Mon, 10 Jun 2019 17:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=+ISbaINbVsOECE72Nw92UTQfRKsx936I1eKrBBUlfak=; b=iG8nsF5xJolfAZ
	MIRbyxfYsvdgMMUrGVbjidmbL60CwHIaSmYSNUXVUcmGfwoyPMfTgPBrK5bSnoxBYICHb2rjcl5D0
	ytIvsC7K8tiiF0End3Iq7FN/jmMG8p59Mux0G2uU4L/kBT+mU1ZFEAsTX9ii2c9sXERzDg5Qkff5U
	ISkJB6pubN7HpG01xprYUysOB+FVbZAmzcVs57sk8y+Y7/otKFyMFV06uCnxlRgAys/PEl4YKJNUv
	bItv8JNzD7sBT64iQjWmjOqmeGSf7+H3WG6+IxBJ2X1QkmenYNcqMFD9QbxNIRQzg1Tw5q3fIsKxJ
	WBC8gx5qc0u1d/Glqrzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMeD-0005GW-LL; Mon, 10 Jun 2019 15:55:49 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMe9-0005DD-Q0
 for linux-snps-arc@lists.infradead.org; Mon, 10 Jun 2019 15:55:47 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 79D5AC5896;
 Mon, 10 Jun 2019 15:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560182141; bh=aihNbKp08qv3DocJmNBn+1cqwnR6GWVl1CV2mAjc24U=;
 h=From:To:CC:Subject:Date:References:From;
 b=iD93RKJs/EbchZsrL1WjVDrxDFv9IToe8PnqWY1KtMl6yN80aQqdRjpdKJZxNNKHm
 DbQJz1DWUGgUBkXgmo6VHAOvHU1k+/SY09ttUqAj62JO2uw/ARIIGT+sX25pJA428H
 /WyHNbF5/9z6l1GzRJrXlWo4wEAhl607nvt30OH4oiNr725gslsq2exmbKFu48sYEB
 n+bljA7YRJDwb8HwHgOYl8B5G+m1hymXxAmkai7AXwOKsZu8HuFP+N3ckBtUolbRyE
 6Si4gqf9ckH/9DOJya1YWB10LUZiHf/fy535HVbW9vFl757aN78pJazA+sRh5aeNDX
 HrBCAAQzvm6/g==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3B5E5A0276;
 Mon, 10 Jun 2019 15:55:42 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Mon, 10 Jun 2019 08:55:41 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Cupertino Miranda <Cupertino.Miranda@synopsys.com>
Subject: Re: ARC Assembler: bundle_align_mode directive support
Thread-Topic: ARC Assembler: bundle_align_mode directive support
Thread-Index: AQHVHicA2N+x/AVgjkyWYOIr/ofXig==
Date: Mon, 10 Jun 2019 15:55:41 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2525686@us01wembx1.internal.synopsys.com>
References: <3962a9ad199cea45b1cfadb80be551aab83b7028.camel@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085545_860802_34AB7E84 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/8/19 11:21 AM, Eugeniy Paltsev wrote:
> Hi Cupertino,
>
> I tried to use ".bundle_align_mode" directive in ARC assembly, but I got following error:
> ----------------->8--------------
> Assembler messages:
> Error: unknown pseudo-op: `.bundle_align_mode'
> ----------------->8--------------
>
> Is it possible to implement it in ARC assembler?
> There is some context about the reason we want to have it:
>
> I'm trying to add support of jump labels for ARC in linux kernel. Jump labels
> provide an interface to generate static branches using self-modifying code.
> This allows us to implement conditional branches where changing branch
> direction is expensive but branch selection is basically 'free'.
>
> There is nuance in current implementation:
> We need to patch code by rewriting 32-bit NOP by 32-bit BRANCH instruction (or vice versa).
> It can be easily done with following code:
> ----------------->8--------------
> write_32_bit(new_instruction)
> flush_l1_dcache_range_this_cpu
> invalidate_l1_icache_range_all_cpu
> ----------------->8--------------
>
> I$ update will be atomic in most of cases except the patched instruction share
> two L1 cache lines (so first 16 bits of instruction are in the one cache line and
> last 16 bit are in another cache line).
> In such case we can execute half-updated instruction if we are patching live code (and we are unlucky enough :)

While I understand your need for alignment, I don't see how you can possibly
execute stray lines.
dcache flush will be propagated by hardware (SCU) to all cores (as applicable) and
the icache cache flush xcall is synchronous and will have to finish on all cores
before we proceed to execute the cod eitself.

>
> As of today I simply align by 4 byte instruction which can be patched with ".balign 4" directive:
> ----------------->8--------------
> static __always_inline bool arch_static_branch_jump(struct static_key *key,
>     bool branch)
> {
> asm_volatile_goto(".balign 4\n"
>  "1:\n"
>  "b %l[l_yes]\n" // <- instruction which can be patched
>  ".pushsection __jump_table, \"aw\"\n"
>  ".word 1b, %l[l_yes], %c0\n"
>  ".popsection\n"
>  : : "i" (&((char *)key)[branch]) : : l_yes);
>
> return false;
> l_yes:
> return true;
> }
> ----------------->8--------------
>
> In that case patched instruction is aligned with one 16-bit NOP if this is required.
> However 'align by 4' directive is much stricter than it actually required. 

I don't quite understand. Can u write a couple of lines of pseudo assembly to show
what the issue is.

> It's enough
> that our 32-bit instruction don't cross l1 cache line boundary.
> That will save us from adding useless NOP padding in most of the cases.
> It can be implemented with ".bundle_align_mode" directive which isn't supported by ARC AS unfortunately.

This seems like a reasonable request (contingent to the difficulty of
implementation in binutils). but I can't comprehend why you would need it.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
