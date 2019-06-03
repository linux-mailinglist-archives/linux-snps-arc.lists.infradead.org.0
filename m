Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D09533A81
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 23:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=cafsOFZd/RTyMFJ4uLd8fynbvrpJpaGLiNiq+QQRFVQ=; b=U+Tkhl3uXrNMk5
	ayoxLWG+vkLMU6KT4bAKxaIv9okTaOnYqw5azcRZNbGy+6o/ikuVM0qKHDbktPPbTJpP34YVCYcje
	0URKniOGKmI1t1NYoJ1NeQkjKKdxsapbaxTWB5Y5mwz5u4Xlv4QUoWg/E9UciEPUR3M7iLQoyg+jM
	fNo47kT0jyPE565q0gmdzIH9XMjUmyDe+bzZNScWOGIuv2ktTo1qts1nNjLKaYd8qhaeD0NWKkiQP
	uL1edoYzd5aPJPwbDtZybvyi6VzkPIsGrOdQYH/xoGS8Xe/8pwEyR9+KVqhgLCGyW7YfFVpCcjHhx
	kPde1ZBlev+A3+7WdowA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuz1-0000nJ-40; Mon, 03 Jun 2019 21:59:11 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuyy-0000mb-1b
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 21:59:09 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 40F2EC1E8F;
 Mon,  3 Jun 2019 21:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559599156; bh=dNg1Wi9QIPPZ6xZvn5MUOdQ8oFIGLsTJA4xuoGPffxI=;
 h=From:To:CC:Subject:Date:References:From;
 b=ARfkJIZCZiHrFoce3E8ebmpCSa/ze39hP83+SvbN8LJJvnL2KM49CuAYk6UNvKYxH
 jgER1JODLivb4nH3MTq6PNLyYFAsnekqfivnUWgeWeUoAgOf1Os67kuiFkgnJwc5Ic
 PWhNwQmDrEBiq/KlU2GsgLljx9ygbrOOKN5KScI6xE0XYRY3ANQ6tunci2lk6oY4nr
 zahdqemc3iHPTvTQ+EBkKuvUJyX8UDQSdoQVJU4TOv0tJLK6Ou566rTrnlutKrHzvZ
 IESCJveC6prys6IB8/2Dky3s280asMUnFU5Y9mjHKMHJYG8M9uyTwG4l3p85ERAr0j
 L903tG4H277qA==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9F076A005D;
 Mon,  3 Jun 2019 21:59:05 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Mon, 3 Jun 2019 14:59:04 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: "paulmck@linux.ibm.com" <paulmck@linux.ibm.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVGkjSbYnGBSHcp0iQsqIdFKOjIw==
Date: Mon, 3 Jun 2019 21:59:03 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2523460@us01wembx1.internal.synopsys.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_145908_651488_83686E4F 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/3/19 1:13 PM, Paul E. McKenney wrote:
> On Mon, Jun 03, 2019 at 06:08:35PM +0000, Vineet Gupta wrote:
>> On 5/31/19 1:21 AM, Peter Zijlstra wrote:
>>>> I'm not sure how to interpret "natural alignment" for the case of double
>>>> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
>>>> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
>>> Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
>>>
>>> For any u64 type, that would give 8 byte alignment. the problem
>>> otherwise being that your data spans two lines/pages etc..
>> Sure, but as Paul said, if the software doesn't expect them to be atomic by
>> default, they could span 2 hardware lines to keep the implementation simpler/sane.
> I could imagine 8-byte types being only four-byte aligned on 32-bit systems,
> but it would be quite a surprise on 64-bit systems.

Totally agree !

Thx,
-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
