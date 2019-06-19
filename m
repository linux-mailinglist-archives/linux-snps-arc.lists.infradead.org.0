Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1954C43D
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 01:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7a/05z8x2g3td/7uCyqhIdXJgDUMrWbQJI7owik0nJQ=; b=iyr4az3OZbqW0+
	vMByWiMWOj8PFS0gTrXrcYX5Wn60GA9Z/Olv1Y+tZAfmN+XudNlqD/Gv0XEAL6jDnyHo5pQsShEgZ
	EkACuJrDYJkAa17TmHj3MIVMEuT1e0GJZh5fMR569MQJMnAMv74DcFGcXfDn/tf5VcJ3xOozkI9q1
	TcwdfW9f7tAuSkUak/9+Lu7ZrXt8YReAMoKwshaLshX39784tpPmalZKr48V6uWZdJ0QXJ0RlVg9a
	IxzqenUWSbVbOdAnWdH2tKWldBK7SRA6kEdv2wT8Ec1CprG4gUzcB6TMyTSyCR0gIiUjertIgvQVE
	WVq3NdTDb6igPiZjnfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdkQk-0005MO-P7; Wed, 19 Jun 2019 23:55:54 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdkQe-0005LI-EY
 for linux-snps-arc@lists.infradead.org; Wed, 19 Jun 2019 23:55:52 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2EEB3C00A1;
 Wed, 19 Jun 2019 23:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560988545; bh=4W80PkBNQNFiNESJ/g56Fr2c3B/k9lx1UKBqqZwspzk=;
 h=From:To:CC:Subject:Date:References:From;
 b=jS2k04uaA+b3hUsLQXtOZ15Qgl4cJSt82JMlSqdYCKesmW2IQW0zPmqH5TSg4Xl4U
 5uByiCE59zhM4ZMGEBMWXaMCTqrg9uzk6AxwcQJFUXS7hoV5D3DNhF95ixdHmCgJyy
 iVOFwY9jqneN4nA4reuJeRmE8/klODTTofeYURXNWkPybiOZKmJr54tu5tnZmu/Rcr
 fe2eBek0HAVLhernrPWJfOd1TJImNEvC8z1OP8J48k59kvmkW9kPL+AG/zY/dy5SJ7
 GwU+yWL9WudaaAoPG+kzsCRDZOz1CS7e2KznVxLhrPiZNMoJizuQST76YbwCnjI/jk
 S3SfLmlwi5Okw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0D71EA0079;
 Wed, 19 Jun 2019 23:55:42 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC3.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Wed, 19
 Jun 2019 16:55:42 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVIs/0NQVi79UXq0qOEJsJAVWA8w==
Date: Wed, 19 Jun 2019 23:55:41 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_165548_503071_6FB1E61F 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/19/19 1:12 AM, Peter Zijlstra wrote:
> On Tue, Jun 18, 2019 at 04:16:20PM +0000, Vineet Gupta wrote:
>
>>> +/*
>>> + * To make atomic update of patched instruction available we need to guarantee
>>> + * that this instruction doesn't cross L1 cache line boundary.
>>> + *
> Oh urgh. Is that the only way ARC can do text patching? 

Nothing seems out of the ordinary here. Perhaps Eugeniy's comment confused you, so
let me explain the whole thing - likely obvious to you anyways.

I-cache is non snooping on ARC (like most embedded style arches) so self modifying
code has to flush corresponding D and I cache lines. Instructions can be 2 byte
aligned and could be 2, 4, 6, 8 bytes long, so a 4 byte NOP can potentially
straddle cache line, needing 2 lines to be flushed. The cache maintenance ops work
on region or line but coherency unit nonetheless operates on line sized units
meaning 2 line ops may not be atomic on a remote cpu. So in the pathetic corner
case we can have "other (non patching) CPU execute the code around patched PC with
partial old/new fragments. So we ensure a patched instruction never crosses a
cache line - using .balign 4. This causes a slight mis-optimization that all
patched instruction locations are forced to be 4 bytes aligned while ISA allows
code to be 2 byte aligned. The cost is an extra NOP_S (2 bytes) - no big deal in
grand scheme of things in IMO.

FWIW I tried to avoid all of this by using the 2 byte NOP_S and B_S variants which
ensures we can never straddle cache line so the alignment issue goes away. There's
a nice code size reduction too - see [1] . But I get build link errors in
networking code around DO_ONCE where the unlikely code is too much and offset
can't be encoded in signed 10 bits which B_S is allowed.

[1] http://lists.infradead.org/pipermail/linux-snps-arc/2019-June/005875.html
> We've actually
> considered something like this on x86 at some point, but there we have
> the 'fun' detail that the i-fetch window does not in fact align with L1
> size on all uarchs, so that got complicated real fast.

As described above we don't have such an issue. I/D flushing works - its just that
they are not be atomic

> I'm assuming you've looked at what x86 currently does and found
> something like that doesn't work for ARC?

Just looked at x86 code and it seems similar

>
>>> +/* Halt system on fatal error to make debug easier */
>>> +#define arc_jl_fatal(format...)						\
>>> +({									\
>>> +	pr_err(JUMPLABEL_ERR format);					\
>>> +	BUG();								\
>> Does it make sense to bring down the whole system vs. failing and returning.
>> I see there is no error propagation to core code, but still.
> It is what x86 does. And I've been fairly adamant about doing so. When
> the kernel text is compromised, do you really want to continue running
> it?

Agree, but the errors here are not in the middle of code patching itself. They are
found before committing to patching say because patched code straddles line (which
BTW can never happen given the .balign, it is perhaps a pedantic safety net), or
the offset can't be encoded in B. So it is possible to  do a pr_err and just
return w/o any patching like an API call failed. But given that the error
propagation to core is not there - the assumption is it either always works or
panics, there is no "failing" semantics.

>
>>> +})
>>> +
>>> +static inline u32 arc_gen_nop(void)
>>> +{
>>> +	/* 1x 32bit NOP in middle endian */
> I dare not ask...

:-) The public PRM is being worked on for *real* so this will be remedied in a few
months at best.

Short answer is it specifies how instruction stream is laid out in code memory for
efficient next PC decoding given that ARC can freely intermix 2, 4, 6, 8 byte
instruction fragments w/o any restrictions.

Consier SWI insn encoding: per PRM is

31                                     0
--------------------------------------------------------------
00100    010    01    101111    0    000    000000    111111
--------------------------------------------------------------

In regular little endian notation, in memory it would have looked as

31                  0
 0x22    0x6F    0x00    0x3F 
  b3     b2      b1      b0

However in middle endian format, the 2 short words are flipped

31                   0
0x00    0x3F   0x22     0x6F   
  b1     b0      b3       b2

>
>>> +	WRITE_ONCE(*instr_addr, instr);
>>> +	flush_icache_range(entry->code, entry->code + JUMP_LABEL_NOP_SIZE);
> So do you have a 2 byte opcode that traps unconditionally? In that case
> I'm thinking you could do something like x86 does. And it would avoid
> that NOP padding you do to get the alignment.

Just to be clear there is no trapping going on in the canonical sense of it. There
are regular instructions for NO-OP and Branch.
We do have 2 byte opcodes for both but as described the branch offset is too
limited so not usable.

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
