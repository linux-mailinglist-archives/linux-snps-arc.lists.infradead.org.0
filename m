Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B19A73E0
	for <lists+linux-snps-arc@lfdr.de>; Tue,  3 Sep 2019 21:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WPLb+YqvGbzqpixj/k/M3BU4siDgoPZFObBwCF3yWG4=; b=kXnWOsdfxdK5QfJ22HETAQ0sA
	PDDCKokcPo4ou6XhkSsAwO6EWOfYkb/P3O+E6Kr2LFq9OCC8v/lcnSI2oa6wLJBNe8bjwLRHRGK41
	0aVYTQKXPOXFvll2rFSUXcwf4nDtk4IhFpgIhHNJ+mExff68dxWmMlHcREQNiTgV3mNz8VLFgbaet
	WSmdsXEtP47fH7GEAFy1+Lo57Hx76jL0IJm3daYy7zjsALm/QyIA7kJSxRNAvGc6iB3e0oxBmtCt0
	52vdL4Y/67xgPaCRnuyGoLDdt3Wspbf3anMbtVS5zQONeuNJCHwyeSY1DpGyZMgY++0R/oGRPkHv7
	Wh4VYUWUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ek7-0000FC-4T; Tue, 03 Sep 2019 19:45:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ek4-0000Er-Fb
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 19:45:29 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61EBE2087E;
 Tue,  3 Sep 2019 19:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567539927;
 bh=6rDGf6Mr2PWH+edV87q7LtUbadgXTDv9RgfsX/XKqn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jw3H8NWSRa/rp7Tx15FaQOmdJ42hgPL1DfPKDvlJtMeuGY3Dg6vh3yf8D4795tj5m
 tI59r7Ki98NrvwlFHhIZ6Bx15f1w2DWv8YOHeEZ/koehoD56ZFPYbTSK0ngOX9DVfi
 MAIVxuFzvhWu76lGqTl8bZoIzPrXfYJEXGunY9Z8=
Date: Tue, 3 Sep 2019 15:45:26 -0400
From: Sasha Levin <sashal@kernel.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH AUTOSEL 4.19 111/167] signal/arc: Use force_sig_fault
 where appropriate
Message-ID: <20190903194526.GH5281@sasha-vm>
References: <20190903162519.7136-1-sashal@kernel.org>
 <20190903162519.7136-111-sashal@kernel.org>
 <87ef0xqq9f.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ef0xqq9f.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_124528_542779_C1717754 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 11:49:16AM -0500, Eric W. Biederman wrote:
>Sasha Levin <sashal@kernel.org> writes:
>
>> From: "Eric W. Biederman" <ebiederm@xmission.com>
>>
>> [ Upstream commit 15773ae938d8d93d982461990bebad6e1d7a1830 ]
>
>To the best of my knowledge this is just a clean up, no changes in
>behavior are present.
>
>The only reason I can see to backport this is so that later fixes could
>be applied cleanly.
>
>So while I have no objections to this patch being backported I don't see
>why you would want to either.

This patch along with the next one came in as a dependency for
a8c715b4dd73c ("ARC: mm: SIGSEGV userspace trying to access kernel
virtual memory").

--
Thanks,
Sasha


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
