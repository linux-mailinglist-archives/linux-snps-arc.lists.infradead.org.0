Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6594D9B7
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 20:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA2HXusBalzQxlx0UhBJs4IbGBGVC/w/Mr06+m3Nr8M=; b=VKqjeGNbd5ORm/
	KB3x+MNJJvZGifRv5o1NqRs8REfaZaWbyTJ0cvFZGLgAUr0Qu9J2H0Rb2eMkd/QLQD0aLK1uQMf/U
	le6YWo16EQj6dorA8T1vQ8AtFGGKJpaD9AO4G6M8ZCP1vg5i6MNTfzmsj0geneEqpg0AyMazIrl8m
	64XUL0xvO341MRD+ZLP4eORyRagJm9/+n1kIPoDfcCOuJJ7WBaFEML4ZV1WpOZ1+42sOsyV9QntgU
	QIBnGofBqpiop9OJICJeUtCbaPE9Wn0tifkAO1a9AL1yls/OiZMpVMhFlsnQ39s98xfWSxRfDwKNq
	uYC5PQiktlx2lXdK5Twg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he26s-0007ZM-4S; Thu, 20 Jun 2019 18:48:34 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he26p-0007Yh-1r
 for linux-snps-arc@lists.infradead.org; Thu, 20 Jun 2019 18:48:32 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BA543C01C9;
 Thu, 20 Jun 2019 18:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561056510; bh=YiLUG6U2F5fJuiZJSr7erxApqQi3Co5bwxuwy/JI5xw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To:From;
 b=GnZlWCiYMCIVGXPGynajwI0rcUt46SjJj2j20MHIOB5S4xpgfzRKE1bvXqoWyOXE1
 0jox0u+FnnF+qz03kXvewOez08TYh0Qj/Itcm6VTRJry+OXCi02r9E0btbhCpVOLSr
 jo3fFx2UU0+O9+Vr0RzRvMPsY9mHuwzaNz1HuKqWsGvM2PKIauuhV0pTstVSRW06nn
 YYSpfiCAB2f7r3j47Qc2ZyqqTwuOwFptiYDfaK3WQPOycm+vuXFiC84YTDE8dDkznk
 F1D7t8VXIZFjxNPBaBH30Hi1r+PtMyLpvpmmnNM/5yePxowDitFWiq1jGSnreakLGY
 gdtML2U+ZhbXQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0190BA008B;
 Thu, 20 Jun 2019 18:48:25 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 20 Jun 2019 11:48:25 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 21 Jun 2019 00:18:22 +0530
Received: from [10.10.161.66] (10.10.161.66) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 21 Jun 2019 00:18:21 +0530
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
To: Peter Zijlstra <peterz@infradead.org>
Newsgroups: gmane.linux.kernel, gmane.linux.kernel.arc,
 gmane.linux.kernel.cross-arch
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
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
Message-ID: <a0a1aa81-d46e-71db-ff7b-207bc468068d@synopsys.com>
Date: Thu, 20 Jun 2019 11:48:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620070120.GU3402@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Originating-IP: [10.10.161.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_114831_112703_23822EE1 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 6/20/19 12:01 AM, Peter Zijlstra wrote:

> 
> In particular we do not need the alignment.
> 
> So what the x86 code does is:
> 
>  - overwrite the first byte of the instruction with a single byte trap
>    instruction
> 
>  - machine wide IPI which synchronizes I$
> 
> At this point, any CPU that encounters this instruction will trap; and
> the trap handler will emulate the 'new' instruction -- typically a jump.
> 
>   - overwrite the tail of the instruction (if there is a tail)
> 
>   - machine wide IPI which syncrhonizes I$
> 
> At this point, nobody will execute the tail, because we'll still trap on
> that first single byte instruction, but if they were to read the
> instruction stream, the tail must be there.
> 
>   - overwrite the first byte of the instruction to now have a complete
>     instruction.
> 
>   - machine wide IPI which syncrhonizes I$
> 
> At this point, any CPU will encounter the new instruction as a whole,
> irrespective of alignment.
> 
> 
> So the benefit of this scheme is that is works irrespective of the
> instruction fetch window size and don't need the 'funny' alignment
> stuff.
> 
> Now, I've no idea if something like this is feasible on ARC; for it to
> work you need that 2 byte trap instruction -- since all instructions are
> 2 byte aligned, you can always poke that without issue.

We do have a 2 byte TRAP_S u6 which is used for all/any trap'ing: syscalls,
software breakpoint, kprobes etc. But using it like x86 seems a bit excessive for
ARC. Given that x86 doesn't implement flush_icache_range() it must have I$
snooping D$ and also this machine wide IPI sync I$ must be totally under the hood
all hardware affair - unlike ARC which needs on_each_cpu( I$ line range).

Using TRAP_S would actually requires 2 passes (and 2 rounds of IPI) for code
patching - the last one to undo the TRAP_S itself.

I do worry about the occasional alignment induced extra NOP_S instruction (2 byte)
but there doesn't seem to be an easy solution. Heck if we could use the NOP_S /
B_S in first place. While not a clean solution by any standards, could anything be
done to reduce the code path of DO_ONCE() so that unlikely code is not too far off.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
