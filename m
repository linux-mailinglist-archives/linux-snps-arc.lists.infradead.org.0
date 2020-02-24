Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7F816B05A
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Feb 2020 20:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4Eq7SAMU/XenMj7KXM+AIcFfFU0vC84srYgCUfDaaU=; b=UVXHqYIYLPQNxT
	Vj6ls9T3uv4EhK/+q13WKQSngZERX1x8eE8QDqGGMPoSDvYlu4NrscuJ//BS55HeaykX+Xqx2FLIG
	BmNS8VGwQuucOziA0ya5BfI53jLzAch05uIKYHcD3IxE+gNY6romqiQTOFBOx2p2dM/Tw/3L0sX2h
	jTDuE/Q+r1sH+QApjB/3A8BaE5hjY78zrQeht9DczUCUUhFBfX3jYIb1bff+X32Np48E+rclkHDU8
	ZMbdzCtBT3pIJzNE/euJesZuMWsLaxAlaRu6hMFhwzxWgSflrvtRZ1iCc9neA4mCerg/Z7/7nZaUr
	yz/tdrEjTElDjQtzJTLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JZC-0004u6-B0; Mon, 24 Feb 2020 19:38:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JZ9-0004tm-Vf
 for linux-snps-arc@lists.infradead.org; Mon, 24 Feb 2020 19:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582573134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SdUrWpWXb0OWSoY7Vh/ErwLeMg81vKD7pRzjwwBjUPQ=;
 b=W9J+ZZHZCiEg7nTNWeui1+ucne1+O+3xeu4WeyL1/hgkIG/wQgqfQRTknS1GfZOjuJunC1
 g0JsPTLtk3wmCq4jH+S6kPAdTXgmQuEMhzcNYX45RrQICtE/A73FqDMcRzaSBXL/ppo9aH
 OLZeYbujWjimIa9RHGFKPP5Q7cfuo60=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-axvkbABZM9qV5-1_h7NiDg-1; Mon, 24 Feb 2020 14:38:48 -0500
X-MC-Unique: axvkbABZM9qV5-1_h7NiDg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2F7A107B270;
 Mon, 24 Feb 2020 19:38:46 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-116-104.ams2.redhat.com
 [10.36.116.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 19B575C1D6;
 Mon, 24 Feb 2020 19:38:43 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] asm-generic ABI: Allow statx syscall despite fstatat64,
 fstat64
References: <20200224182305.28027-1-vgupta@synopsys.com>
 <87wo8bn839.fsf@oldenburg2.str.redhat.com>
 <d56495ad-c532-9e00-7f67-fa2626f9d901@synopsys.com>
 <87d0a3n6iq.fsf@oldenburg2.str.redhat.com>
 <b9937e72-f5f5-8e7f-3723-cccec83fb7ca@synopsys.com>
Date: Mon, 24 Feb 2020 20:38:42 +0100
In-Reply-To: <b9937e72-f5f5-8e7f-3723-cccec83fb7ca@synopsys.com> (Vineet
 Gupta's message of "Mon, 24 Feb 2020 19:27:46 +0000")
Message-ID: <87pne3lqrh.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113856_096077_B79EF18C 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "alistair23@gmail.com" <alistair23@gmail.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "lukma@denx.de" <lukma@denx.de>, "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Vineet Gupta:

> On 2/24/20 11:13 AM, Florian Weimer wrote:
>> * Vineet Gupta:
>> 
>>> On 2/24/20 10:39 AM, Florian Weimer wrote:
>>>>> +# undef STAT64_IS_NOT_KERNEL_STAT64
>>>> Sorry, I think that going forward, we prefer that such macros are always
>>>> defined, with values 0 or 1 as appropriate.
>>>
>>> And that means we also need to additionally define this to 0 in all
>>> ports which don't end up including the generic header ?
>>
>> Yes, or move the definition into its own header, with the default for
>> *future* architectures (not the majority of the current architectures)
>> in the header in the sysdeps/unix/sysv/linux directory.
>
> Adding a new file would seem too kludgy.

I think it's the preferred approach.  Here's a recent discussion that
looks at a few options in this space:

  <https://sourceware.org/ml/libc-alpha/2019-10/msg00030.html>

> Adding it to existing arch headers is still OK but then one needs to
> know what exact syscall ABI each arch has as even asm-generic ones
> differ depending on when the linux port was merged. And the only way
> to know that is to do a build for each arch or is there some
> documentation one could refer to.

In your case, the build should fail somewhere if there is a mismatch and
the #define is incorrect for a particular architecture.  In this case,
you can keep running build-many-glibcs.py and making tweaks to the
failing architectures until all failures are gone.

Thanks,
Florian


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
