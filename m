Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FC544D8E
	for <lists+linux-snps-arc@lfdr.de>; Thu, 13 Jun 2019 22:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=OkMWeMIBbSzwX6Vfj/s5XwH5dK/k8gRlMoCcxuRu2ic=; b=FxUhZ5QISIkyQU
	532+uVHrb+5qt5RSheIEC+PyZ0nfv6g+/RitGRVDK658HZ7QdQ70EOiqvpll3lCeshk0Y6S2ayaFg
	C5AweHV9m+Iz8uSHVKKZrVQD7swQn0gNVhzOnIkioCkum+4kNHGKkVMp+BAW1d8VyFkjMFSafXkve
	nfZl62LTI4O0w4mmga/pajMdz4uxeB1oh/BsKZ6aGDe6SSHm64nAyjw8H+e2Uq8icT/Ef3s7GgB9b
	M8zeie1ppdzOespg/RmOhgwyZkBR357IVYWU9akkv2kVs/Yeg8uljz+XJKKOn023k+mezXLwJPEQI
	YXFjj3yo8Rm/1e3o20DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWRa-0004bK-Cz; Thu, 13 Jun 2019 20:35:34 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWRX-0004ad-7i
 for linux-snps-arc@lists.infradead.org; Thu, 13 Jun 2019 20:35:32 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CBDA3C0246;
 Thu, 13 Jun 2019 20:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560458129; bh=jsFFEjF512FgPkQJhTvFb8dpbi1Ey52PpS6d7gE4Aco=;
 h=From:To:CC:Subject:Date:References:From;
 b=ir8Q9janMXIgtC9SfzadlISDHA94Fi/CXa+S18i715MLQHkwBniZeu3uvI5wxPB8z
 /o3kwlft4zeXL4Q3Ao8rg4Y4egEKwxfN9swYmfLrp4o2yMISaY8y8DnNsytPsRoWWE
 YsRNzzKb4wDe8r++BABw1zn6Jgi4215xb+xLqfJnjONZqearmPJUXB1DpqrvoTYgVx
 D+13znxZv7T2YK3a3+ath/Zq6BFA5pkg0Rjas2SiFAPkcw5vlMRBZjSME2vUrbm5Xx
 srt8oK/uAeztcWFol+hJ6w3sJIHn6lTbQwRPqjMmp7f6reHOmNLF4A9D2w6z643VCq
 Lbomlh3pnO+mQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2AC58A0105;
 Thu, 13 Jun 2019 20:35:26 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.22]) by
 US01WEHTC3.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Thu, 13
 Jun 2019 13:35:26 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "Cupertino.Miranda@synopsys.com" <Cupertino.Miranda@synopsys.com>
Subject: Re: ARC Assembler: bundle_align_mode directive support
Thread-Topic: ARC Assembler: bundle_align_mode directive support
Thread-Index: AQHVHicA2N+x/AVgjkyWYOIr/ofXig==
Date: Thu, 13 Jun 2019 20:35:26 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2526536@us01wembx1.internal.synopsys.com>
References: <3962a9ad199cea45b1cfadb80be551aab83b7028.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2525686@us01wembx1.internal.synopsys.com>
 <d79085cbc6126c2a4fad173934e1e9b29523abba.camel@synopsys.com>
 <02fcd330-8b3c-a3cb-0aa9-e91bca6b6d0f@synopsys.com>
 <8a027c250d7bd14ff107c169351af6a04a6d8334.camel@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_133531_285563_A05D9470 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Claudiu.Zissulescu@synopsys.com" <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/13/19 11:14 AM, Eugeniy Paltsev wrote:
> BTW:
> there is discussion in Linux ML about implementation of static calls.
> The idea is to patch immediate operand in jump instruction instead of using function pointers to optimize hot code.
> @vineet I bet you'll like this :)
>
> Current v3 patch revision is for x86 only and it's not applied yet. However I expect (based on comments to last patches)
> it'll be applied after several respins. 

Indeed when researching on jump labels I saw that and indeed like that approach a lot.


> It would be nice to implement it for ARC too.

Absolutely.

> And x86 static calls implementation uses '.bundle_align_mode' directive too.

Ok then we have a case for pushing for this feature in tools !

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
