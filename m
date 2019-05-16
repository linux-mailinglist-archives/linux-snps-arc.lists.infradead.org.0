Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8BA20E0F
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 19:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dHGLPOepho9K/CEZlLabt3yQomqZ8NYNawQFIUtJHOA=; b=LcE2I+Icxo+aEW
	Q4Vpnv81CZ5nbTclIzEJTzLDqyDfouTi05nwGq1lK9uMRnFg4PQpQYhJmO9Rt2K8sBs1nANjSxcFJ
	BphK9sU/IanbupH6XEKUyNXiApsUWL3FjR0dzgc704KlxbV44mF9kaTjdML1QgjKoODK44EfqfySu
	m5qocTRDMozcKgys0TTV/pZJoFXvxhNsE4q2+12jfXImZXy2qso9MVVp8Vw/Y68cRiHROP1DEmDot
	3VaYSBE9eTugMDaZdAi4Jb20wqMr4+hOnDZuVElxLb6y7T01jO6ni2BzypqQY3zPoTz8JZolI5xCb
	Vl5EnrWZLf9+guIfaQ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKKM-0007tW-9h; Thu, 16 May 2019 17:37:58 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKKJ-0007ss-Ls
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 17:37:56 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 29261C0BC3;
 Thu, 16 May 2019 17:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558028263; bh=Wmy4EGULNayDPs5gXSLg4GnxB4UoMyTMnJFypw/UAMs=;
 h=From:To:CC:Subject:Date:References:From;
 b=RFo89LUgrQVhapH4tg0LTkHnYmSWx/0iOcJhA1/wNiAqNlq2G0BcoBqBQ094mISSm
 sUJNK2Mu9R/qVLHOM4oag6F34iE9EbuUVXrqaLIT+lVPLHCmB7al/P92uaisSvB4Bu
 zOGPkf4va32BVku1mILHhQEYqe6wd1V0b1bJ1La3c3iWJFe3VH1WUfzI4UUsWGzGbL
 MpN5Bb1Q7zEq6IsqtkgA8E+mLs9zKTz4xMQ9GGnwti40hCpmIe5EwPViiGeV378wC+
 KMAN1mcDI6C/1vg2v4ib8pbEAKJUvXi2inpNw9CGudQuJi37F/g62dqVkUheaDkL3e
 Tm/X0X86XhJJA==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 744EEA006A;
 Thu, 16 May 2019 17:37:52 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC2.internal.synopsys.com ([10.12.239.237]) with mapi id
 14.03.0415.000; Thu, 16 May 2019 10:37:52 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma
 access permission code
Thread-Topic: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma
 access permission code
Thread-Index: AQHVCrVZlKJI28iPlEu8hsRog7Qd0g==
Date: Thu, 16 May 2019 17:37:51 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
 <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
 <1558027448.2682.11.camel@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103755_719407_82E2625F 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "paltsev@snyopsys.com" <paltsev@snyopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/16/19 10:24 AM, Eugeniy Paltsev wrote:
>> +	unsigned int write = 0, exec = 0, mask;
> Probably it's better to use 'bool' type for 'write' and 'exec' as we really use them as a boolean variables.

Right those are semantics, but the generated code for "bool" is not ideal - given
it is inherently a "char" it is promoted first to an int with an additional EXTB
which I really dislike.
Guess it is more of a style thing.

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
