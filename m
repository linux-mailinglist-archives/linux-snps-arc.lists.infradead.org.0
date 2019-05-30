Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F0630162
	for <lists+linux-snps-arc@lfdr.de>; Thu, 30 May 2019 19:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBx7Xir/u+oouhyHVlOvs/raWjGoemBJew+jnV7UmkM=; b=GwA+za6WXK0zLS
	JLzu8sVkWc1mjSfJklylZW3QwkcNIENrnzPQpeo5C9/fD5ViKhxihSbWCgLbEuIEbqGnk3OjIw2Dq
	ih1YQwZ3CLY6ObL3GM5t2ltdBk6DKaiVt7WpXhpwMBlTFVTYxxo57ggobRpjlnQMVU+DQLKmTwtw0
	KIYeVu18bAcRvD/etL/PBJVxZGCLqCzfdr1AKvZco56qqbzI0nvbqsAi/F4sqwCQdaRjnRF708/3J
	s2yxrMRp6CeFs7N4TERlXEqC9rBDgerJ9cVoPMEqEdjQhy+CjzTnY4jVGZs7DLB4eCUjtATg8P93d
	QDm4AuOGg287OMRH3pDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPJo-00031s-4o; Thu, 30 May 2019 17:58:24 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPJl-00031A-H8
 for linux-snps-arc@lists.infradead.org; Thu, 30 May 2019 17:58:22 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8F0FEC00DB;
 Thu, 30 May 2019 17:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559239082; bh=5GP4w1Bpe5t07VP8WSgVlPbfP1asIntV9WMlEi3rPoY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To:From;
 b=T/4O9utu9pPN7m60uY41ltPxBEK8Lws7ZwOUvxoq8FxRfdz+YjDpwMiIafaYtXDWp
 JuHTMvc+8Bz7hRXgFgGx/fGpiZeyp46VOFiTn0VW8MVCZAXCGwwmV/xj60Mg4HO5Qh
 GaDUN+y/i1XQxVm3QG7ys4NhGvOO5GsDVMZEI36TluK8wTqYRqUB6qFG9QXO0R93zq
 05RquOVtgBMK14YsNRBzKBeGrdaMkyeEcjwNsrbVXAlfD/h/lvurghUpLSX47uVtvZ
 a67BDzKbEiFpXckZKEkqRZ1Ns0QHztYD2uk3EApADovHRJq+49aw1hyTVvf2QX9DAc
 hhmrFwGtNZYWg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 90C13A0093;
 Thu, 30 May 2019 17:58:19 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 30 May 2019 10:58:19 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 30 May 2019 23:28:16 +0530
Received: from [10.10.161.35] (10.10.161.35) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 30 May 2019 23:28:28 +0530
Subject: extraneous generated EXTB (was Re: [PATCH 4/9] ARC: mm: do_page_fault
 refactor #3: tidyup vma access permission code)
To: Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>
Newsgroups: gmane.linux.kernel,gmane.linux.kernel.arc
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
 <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
 <1558027448.2682.11.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
 <1558131743.2682.33.camel@synopsys.com>
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vgupta@synopsys.com; keydata=
 mQINBFEffBMBEADIXSn0fEQcM8GPYFZyvBrY8456hGplRnLLFimPi/BBGFA24IR+B/Vh/EFk
 B5LAyKuPEEbR3WSVB1x7TovwEErPWKmhHFbyugdCKDv7qWVj7pOB+vqycTG3i16eixB69row
 lDkZ2RQyy1i/wOtHt8Kr69V9aMOIVIlBNjx5vNOjxfOLux3C0SRl1veA8sdkoSACY3McOqJ8
 zR8q1mZDRHCfz+aNxgmVIVFN2JY29zBNOeCzNL1b6ndjU73whH/1hd9YMx2Sp149T8MBpkuQ
 cFYUPYm8Mn0dQ5PHAide+D3iKCHMupX0ux1Y6g7Ym9jhVtxq3OdUI5I5vsED7NgV9c8++baM
 7j7ext5v0l8UeulHfj4LglTaJIvwbUrCGgtyS9haKlUHbmey/af1j0sTrGxZs1ky1cTX7yeF
 nSYs12GRiVZkh/Pf3nRLkjV+kH++ZtR1GZLqwamiYZhAHjo1Vzyl50JT9EuX07/XTyq/Bx6E
 dcJWr79ZphJ+mR2HrMdvZo3VSpXEgjROpYlD4GKUApFxW6RrZkvMzuR2bqi48FThXKhFXJBd
 JiTfiO8tpXaHg/yh/V9vNQqdu7KmZIuZ0EdeZHoXe+8lxoNyQPcPSj7LcmE6gONJR8ZqAzyk
 F5voeRIy005ZmJJ3VOH3Gw6Gz49LVy7Kz72yo1IPHZJNpSV5xwARAQABtCpWaW5lZXQgR3Vw
 dGEgKGFsaWFzKSA8dmd1cHRhQHN5bm9wc3lzLmNvbT6JAj4EEwECACgCGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheABQJbBYpwBQkLx0HcAAoJEGnX8d3iisJeChAQAMR2UVbJyydOv3aV
 jmqP47gVFq4Qml1weP5z6czl1I8n37bIhdW0/lV2Zll+yU1YGpMgdDTHiDqnGWi4pJeu4+c5
 xsI/VqkH6WWXpfruhDsbJ3IJQ46//jb79ogjm6VVeGlOOYxx/G/RUUXZ12+CMPQo7Bv+Jb+t
 NJnYXYMND2Dlr2TiRahFeeQo8uFbeEdJGDsSIbkOV0jzrYUAPeBwdN8N0eOB19KUgPqPAC4W
 HCg2LJ/o6/BImN7bhEFDFu7gTT0nqFVZNXlOw4UcGGpM3dq/qu8ZgRE0turY9SsjKsJYKvg4
 djAaOh7H9NJK72JOjUhXY/sMBwW5vnNwFyXCB5t4ZcNxStoxrMtyf35synJVinFy6wCzH3eJ
 XYNfFsv4gjF3l9VYmGEJeI8JG/ljYQVjsQxcrU1lf8lfARuNkleUL8Y3rtxn6eZVtAlJE8q2
 hBgu/RUj79BKnWEPFmxfKsaj8of+5wubTkP0I5tXh0akKZlVwQ3lbDdHxznejcVCwyjXBSny
 d0+qKIXX1eMh0/5sDYM06/B34rQyq9HZVVPRHdvsfwCU0s3G+5Fai02mK68okr8TECOzqZtG
 cuQmkAeegdY70Bpzfbwxo45WWQq8dSRURA7KDeY5LutMphQPIP2syqgIaiEatHgwetyVCOt6
 tf3ClCidHNaGky9KcNSQ
Message-ID: <7923928f-1f4e-3fa8-3d38-40fcb2074b4a@synopsys.com>
Date: Thu, 30 May 2019 10:58:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558131743.2682.33.camel@synopsys.com>
Content-Language: en-US
X-Originating-IP: [10.10.161.35]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_105821_580070_084CD8EA 
X-CRM114-Status: GOOD (  17.42  )
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "paltsev@snyopsys.com" <paltsev@snyopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/17/19 3:23 PM, Eugeniy Paltsev wrote:
> Hmmm,
> 
> so load the bool variable from memory is converted to such asm code:
> 
> ----------------->8------------------- 
> ldb	r2,[some_bool_address]
> extb_s	r2,r2
> ----------------->8-------------------
> 
> Could you please describe that the magic is going on there?
> 
> This extb_s instruction looks completely useless here, according on the LDB description from PRM:
> ----------------->8-------------------
> LD LDH LDW LDB LDD:
> The size of the requested data is specified by the data size field <.zz> and by default, data is zero
> extended from the most-significant bit of the data to the most-significant bit of the destination
> register.
> ----------------->8-------------------
> 
> Am I missing something?


@Claudiu is that a target specific optimization/tuning in ARC backend ?


> 
> On Thu, 2019-05-16 at 17:37 +0000, Vineet Gupta wrote:
>> On 5/16/19 10:24 AM, Eugeniy Paltsev wrote:
>>>> +    unsigned int write = 0, exec = 0, mask;
>>>
>>> Probably it's better to use 'bool' type for 'write' and 'exec' as we really use them as a boolean variables.
>>
>> Right those are semantics, but the generated code for "bool" is not ideal - given
>> it is inherently a "char" it is promoted first to an int with an additional EXTB
>> which I really dislike.
>> Guess it is more of a style thing.
>>
>> -Vineet


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
