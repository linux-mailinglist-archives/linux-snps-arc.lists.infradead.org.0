Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7EC33789
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 20:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rlYpu2e2cspwZzEeAkd7mQ16G594dA6/rcBkKs7YWFI=; b=Mm3eaz/d0AyQiD
	ezoSIZu8ivpCVlA4lO8Vb2J1XiH5bOI5RuH7hhOLK8N5woVDVzu3CW4BoWh+oWK+iXGm4vljoqbQ6
	ERShiFIgo4L54QsPvw95d0qXlxFIDW56YMBRwM06NjerjIR/WXBnzKFL6rQpOavW0vfkA5YgvgMtu
	XuT1fmU9L1pkSBUcidxsYK02etSI+alqxvj9068Y2XvsW85POvYIWf+3/Zsnnzq1ZHjKK0C/dq8Dq
	0Da56C3ZidFoCh7u4dEUTSp47mJey+S3hdeQPzseG+LkxYvljivw5csbcFLXlPqjIB4P//lmfMbNY
	4O9GZB7r+JPvL6RXAZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrO0-0001o6-Ut; Mon, 03 Jun 2019 18:08:44 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrNx-0001nK-OU
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 18:08:42 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 333CBC2132;
 Mon,  3 Jun 2019 18:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559585300; bh=0UhEzVtwwbxv/sHK4Tn8wIkMCFphv3Lw9ONZypJrIYc=;
 h=From:To:CC:Subject:Date:References:From;
 b=b+AgoA0yEgOTv+uklEZZS6H+wCJmYnLr3Y83YXD3PmzDXVtrox3X9xFTQHc/Kdgjl
 BgQa3XED+MyOcgJR/y9PN/YF3Y3sNmaBdeyqMK0fYsx4LkZq9pgiXOSEdibSlgTK+a
 N1eFRakZzSSicJSod5B1C709+/RqxRW7wlSm29kecjhiuN3J0q2viVnYxdTK8UnFcu
 Ymowiv6VMhK0Dw4Fa/iGGDx3Ct6Q3RLI4nM9ppRTvpHk6EMuvG4vWD8Rxg1VkYhiEQ
 j/hMwbQg+BjDMSnHEJIfvsSz74kobeaCuWf0XMes8zghuM1sijwqJDe7texviU4L2M
 4MIZ9hiY38YDQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id ABAF9A006A;
 Mon,  3 Jun 2019 18:08:35 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WXQAHTC1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Mon,
 3 Jun 2019 11:08:35 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVFxS3L0CUD1w2LkO7mj7CwLHhlw==
Date: Mon, 3 Jun 2019 18:08:35 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_110841_799793_4F04E5BF 
X-CRM114-Status: UNSURE (   5.63  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>,
 Will Deacon <Will.Deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/31/19 1:21 AM, Peter Zijlstra wrote:
>> I'm not sure how to interpret "natural alignment" for the case of double
>> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
>> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
>
> For any u64 type, that would give 8 byte alignment. the problem
> otherwise being that your data spans two lines/pages etc..

Sure, but as Paul said, if the software doesn't expect them to be atomic by
default, they could span 2 hardware lines to keep the implementation simpler/sane.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
