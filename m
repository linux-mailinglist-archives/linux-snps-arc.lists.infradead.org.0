Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD6CA86AC
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 18:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewnkx/hxUkJVPcryAzJYrKGw/CDHFt/mojGMD4iIrlI=; b=iFD1oTEqZadJjY
	mPFIGyOaQbE7mQVlOOZIWZnmcUf1Z/Rhn3CgBH9/gs2AdS4U8ZyCWIMEUxh+nOATjbI9yAgZOA6Yg
	joZ780dcj49p0oFyhxGRPfHlBYcCqmg9D0edq6gFUHlZlcTDZYpYbFdTSK0pbJpmOBgt1XubHpmda
	gfQz1KUYw10z6cODwpwcG6T2feiL5NSVIEyYIYNI3tOf49AY0XMDPDYjPIihJuc5Hm1Mvevv8B6Y+
	dBLFEW5W1xDlnTMc0BX6NQiqLHxkuV/ZyLUyc17GqImrVQTcckue5+N0E5SqyGzmcmEPbzY7WSpR9
	U8B+CVeU8tcDxp60Wm+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YMb-0006G7-IV; Wed, 04 Sep 2019 16:42:33 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YMY-0006Ei-8F
 for linux-snps-arc@lists.infradead.org; Wed, 04 Sep 2019 16:42:31 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i5YMG-0003Uf-5q; Wed, 04 Sep 2019 10:42:12 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1i5YMF-0000Z5-KX; Wed, 04 Sep 2019 10:42:12 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Sasha Levin <sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
 <20190903162519.7136-111-sashal@kernel.org>
 <87ef0xqq9f.fsf@x220.int.ebiederm.org>
 <20190903194526.GH5281@sasha-vm>
Date: Wed, 04 Sep 2019 11:41:55 -0500
In-Reply-To: <20190903194526.GH5281@sasha-vm> (Sasha Levin's message of "Tue, 
 3 Sep 2019 15:45:26 -0400")
Message-ID: <87y2z4nhd8.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1i5YMF-0000Z5-KX; ; ; mid=<87y2z4nhd8.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19zYZU/xsW7us0tfO+uH4u3qzYGa3Y2+bo=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=8.0 tests=ALL_TRUSTED,BAYES_40,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
 *      [score: 0.3492] *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Sasha Levin <sashal@kernel.org>
X-Spam-Relay-Country: 
X-Spam-Timing: total 192 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 6 (3.1%), b_tie_ro: 5 (2.6%), parse: 0.94 (0.5%),
 extract_message_metadata: 11 (5.6%), get_uri_detail_list: 1.19 (0.6%),
 tests_pri_-1000: 10 (5.4%), tests_pri_-950: 1.00 (0.5%),
 tests_pri_-900: 0.85 (0.4%), tests_pri_-90: 20 (10.2%), check_bayes:
 18 (9.5%), b_tokenize: 3.8 (2.0%), b_tok_get_all: 6 (3.1%),
 b_comp_prob: 1.51 (0.8%), b_tok_touch_all: 2.5 (1.3%), b_finish: 0.64
 (0.3%), tests_pri_0: 132 (69.1%), check_dkim_signature: 0.53 (0.3%),
 check_dkim_adsp: 2.3 (1.2%), poll_dns_idle: 0.97 (0.5%), tests_pri_10:
 1.70 (0.9%), tests_pri_500: 6 (2.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH AUTOSEL 4.19 111/167] signal/arc: Use force_sig_fault
 where appropriate
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_094230_325064_CB985C4D 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Sasha Levin <sashal@kernel.org> writes:

> On Tue, Sep 03, 2019 at 11:49:16AM -0500, Eric W. Biederman wrote:
>>Sasha Levin <sashal@kernel.org> writes:
>>
>>> From: "Eric W. Biederman" <ebiederm@xmission.com>
>>>
>>> [ Upstream commit 15773ae938d8d93d982461990bebad6e1d7a1830 ]
>>
>>To the best of my knowledge this is just a clean up, no changes in
>>behavior are present.
>>
>>The only reason I can see to backport this is so that later fixes could
>>be applied cleanly.
>>
>>So while I have no objections to this patch being backported I don't see
>>why you would want to either.
>
> This patch along with the next one came in as a dependency for
> a8c715b4dd73c ("ARC: mm: SIGSEGV userspace trying to access kernel
> virtual memory").

Thanks for providing the rest of the context.

That looks like a perfect reason for backporting this patch.

Eric



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
