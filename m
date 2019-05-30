Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA9D302AC
	for <lists+linux-snps-arc@lfdr.de>; Thu, 30 May 2019 21:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=c7wzKCT7/pgyqaiNmkSi3bfmBPq2bbQPLRhPSbHW6jE=; b=bb9Vu1rMpfBIap
	RAUx6abzKzwCzGtofzdbYXiIicK4JHVgmmM1PwoPAJlWOo2hdrdERhor9xe1KparR58mYfsKMqrln
	sFrOYIs3oWLTIYWcpUGMVZ29pSmzIHAVYHTEJJGE2VpDpTUia9fhYSaXGhqPdKIfWrdNIk5EDqBa3
	FZhQmMr9qjRBhhZjDNY7nxTj7LwHVVwkicKIn3H/bsaPJABhFkMxbEAOZa6IbPJOvmZnMBL0xRYyI
	BBykSb+0AwHc2EvwZ6r3mwLkJQs+I9oLhmxeT7v0FPVTYbqCt/neqpKDn1GMpyo6Tgkh6/vuY3NpJ
	OvbqoUgttcZ4LUGToWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQXZ-0003js-S7; Thu, 30 May 2019 19:16:41 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQXX-0003jT-MK
 for linux-snps-arc@lists.infradead.org; Thu, 30 May 2019 19:16:40 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B83A3C00FC;
 Thu, 30 May 2019 19:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559243808; bh=1mbzGKOk5d05XHjdieSHAEOEoFv4IjB5bTqeWALND5c=;
 h=From:To:CC:Subject:Date:References:From;
 b=Aq/P2ZcLteluaESiZPUrLU6HEcuQoTe3TmnI3PjpngMso5jrE1NZDn6CU8ktbgzOX
 3iGz3Xc9E3Vbv1D6WKYakpP9CO98vMiY6YtluE7zcgi6Iqfn7cwe0sv9XzIJ5ob6el
 BWTGnsmxCXlck2RlIo8BpW59MLFKS/s6j3LvYeFjJ3zV9zD5OMFomRMZ82jJpnLFy4
 qL14ud7ieu0PWUu8XvML45AH1wgjP0oOr0ks1Z8Yf+2YrUTj3GeiaCVLPyrxZwBIQL
 Gw09T5AkfqWX/5jsBg2Mmn/DVUM9RRrV40XgbyCGv5CUZNDnr1WHEIO/29yqHUSJNW
 hUo01xTgYflPg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EAB1AA005D;
 Thu, 30 May 2019 19:16:37 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Thu, 30 May 2019 12:16:37 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: "paulmck@linux.ibm.com" <paulmck@linux.ibm.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVFxS3L0CUD1w2LkO7mj7CwLHhlw==
Date: Thu, 30 May 2019 19:16:36 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2520D9C@us01wembx1.internal.synopsys.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190530185358.GG28207@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_121639_737109_91F571FC 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/30/19 11:55 AM, Paul E. McKenney wrote:
>
>> I'm not sure how to interpret "natural alignment" for the case of double
>> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
>> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
>>
>> I presume (and the question) that lkmm doesn't expect such 8 byte load/stores to
>> be atomic unless 8-byte aligned
> I would not expect 8-byte accesses to be atomic on 32-bit systems unless
> some special instruction was in use.  But that usually means special
> intrinsics or assembly code.

Thx for confirming.

In cases where we *do* expect the atomicity, it seems there's some existing type
checking but isn't water tight.
e.g.

#define __smp_load_acquire(p)                        \
({                                    \
    typeof(*p) ___p1 = READ_ONCE(*p);                \
    compiletime_assert_atomic_type(*p);                \
    __smp_mb();                            \
    ___p1;                                \
})

#define compiletime_assert_atomic_type(t)                \
    compiletime_assert(__native_word(t),                \
        "Need native word sized stores/loads for atomicity.")

#define __native_word(t) \
    (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
     sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))


So it won't catch the usage of 4 byte aligned long long which gcc targets to
single double load instruction.

Thx,
-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
