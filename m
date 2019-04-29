Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F5E8A2
	for <lists+linux-snps-arc@lfdr.de>; Mon, 29 Apr 2019 19:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bENhBUv/IWBaWStNjCVabMP92c+P6/E7xlou8hCcEOM=; b=uD5WqopRodqKyf
	dXjJdvUzSjak8MdbgA5d2bvK53XpvffKcIq3ew0SRus57M5wbytrfCZENomW/9m+fOPBeWMk3iLAp
	HLqOCxZn09xr6WqyHr/Sx85cbKHZvP4JU4iZ5U8bjHu+PX7iit0K5DLqYsjvaRq52GSeRjwORStvQ
	vaJLBVl40v98RP3D1meA3ieKpTsEekbJcONdFyaZPgx4ph3zAmA7ypZv54gVYW3SAkBfPFMt908MQ
	M9cyUHH0mZZLI1CZah0HcKrLDkU5RLyqq6DP8vkrNVSTXREdn74X7kRWOm7GaroggO0Bt05y1Et3J
	gzHdoi++RqogGU4rwR4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9uf-0003FV-3F; Mon, 29 Apr 2019 17:17:57 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9uc-0003FA-Bh
 for linux-snps-arc@lists.infradead.org; Mon, 29 Apr 2019 17:17:55 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4B5F9C009B;
 Mon, 29 Apr 2019 17:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556558271; bh=rx21fwalFzJuwLlEFvldeNsp0iEkfMYCHIUJGt12hfY=;
 h=From:To:CC:Subject:Date:References:From;
 b=j9vr3RNo7bxDoJ3ou1UiEVj4zkM4uS3kpvE6nJh3tGICOpGKubVQDEWb5sKe9r14m
 rROXe9L4PqDyh+9gDEbeeszLO950QSAUY+4OylAVQehPboAy8WNmMlSgZ/SHl6VVtL
 0fBhz4xVENQhJEDcAaUMS/deHBfNPRRXVSIi0wNQqGXFGB9pThb1kojWzYJmNz0FiL
 F8rOPdaaxFpOwpwYiIQo5CrPOvzokiwQ8XqlTXWZZQZwedVBig0ZcX+JPLhQMEH9sf
 /Ag+ZHDFnZj3unGASH6n2jRuOO0VbDudMIEWtz2zrCqQUwfZp3YNTSlx+It3ZFupt0
 vPdLqg1cJjikg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EDD0FA007A;
 Mon, 29 Apr 2019 17:17:50 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 us01wehtc1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Mon, 29
 Apr 2019 10:17:51 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: perf tools build broken after v5.1-rc1
Thread-Topic: perf tools build broken after v5.1-rc1
Thread-Index: AQHU9whSYuAYlq2eD0OAivz0M0d5Nw==
Date: Mon, 29 Apr 2019 17:17:50 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101754_398546_759562A3 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung
 Kim <namhyung@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 4/22/19 8:31 AM, Arnaldo Carvalho de Melo wrote:
>> A quick fix for ARC will be to create our own version but I presume all existing
>> arches using generic syscall abi are affected. Thoughts ? In lack of ideas I'll
>> send out a patch for ARC.
>>
>> P.S. Why do we need the unistd.h duplication in tools directory, given it could
>> have used the in-tree unistd headers directly ?
> I have to write down the explanation and have it in a file, but we can't
> use anything in the kernel from outside tools/ to avoid adding a burden
> to kernel developers that would then have to make sure that the changes
> that they make outside tools/ don't break things living there.

That is a sound guiding principle in general but I don't agree here. unistd is
backbone of kernel user interface it has to work and can't possibly be broken even
when kernel devs add a new syscall is added or condition-alize existing one. So
adding a copy - and deferring the propagation of in-kernel unistd to usersapce
won't necessarily help with anything and it just adds the burden of keeping them
in sync. Granted we won't necessarily need all the bleeding edge (new syscall
updates) into that header, its still more work.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
