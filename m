Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484E34A5F5
	for <lists+linux-snps-arc@lfdr.de>; Tue, 18 Jun 2019 17:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4tJ6iQqLU6h8AXBKT/ebixdHuc/Ak1qzMoL90q+Tcs=; b=N+78tRl7nnNMLg
	QtzTy8W9I1fQu8GHjIOhJ2jkFXAFMZxJ7OgngTa36Ay0wg6N/MzXAeEQGfYsXKGYjOoalYy3hLf34
	BfgrS5nm3xXlOoqqdakf0s3SBzTMAuoNcqaGFVAHoWDzcJ1zJNprHDZJH4semR9WC9UNnxMNpMndv
	4N+msZdUhxeMb8QROqgzwfjTOrUx0gJc3hhi5QSYOBBfXL6URs3IUHnmlXV7SN4iLPEzR0IEH5hJ/
	6i7yt3a8Bn3bAYwMesjOyUQ4LdngyLGArfBdlSE4Lnckm2H4ebdRP33cwjtWm2JdPg0ZjhZgySshQ
	IeUmKbP4bB9X/2Lksd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGTc-00055w-Vj; Tue, 18 Jun 2019 15:56:52 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGTa-00054Z-Nd
 for linux-snps-arc@lists.infradead.org; Tue, 18 Jun 2019 15:56:52 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3FFF8C01A5;
 Tue, 18 Jun 2019 15:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560873403; bh=1CMFfyJ7KaqXsTwHeD0j2YtsPsIQr6LJJY2pE9Kcd60=;
 h=Subject:To:CC:References:From:Date:In-Reply-To:From;
 b=gLp1WFIlY0uITGiBUv9seLfszYyDfOeKylsQABZ2qhGKRm70yCVDLOC2NJlg7bM+5
 +JMjx860EQZ58XxmfMDDGp7ehxdfkvOhQ+JpVGzZDWhJgJLPbC3/fG9xaB3kUZlkJj
 qcutieg+xUzcla39kpZj7SzhNi3boWO5AvnpBYjnfvj+IQkhl7ipROUMdD626O0ydM
 Ic5gNnWgvlYjTWuxWwJ01ypiUQ6CKDrUvhC0J0ZS3EyyzWHPZyUWxhs2v91hrLy+Ms
 N+WX6vmDUjyJxNBmYDLddfI6TCY6097LKe850NFvCbOCub5IhpXr5EDm5bEF/RTh5B
 sMWOPW0YcJ49Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D2325A0069;
 Tue, 18 Jun 2019 15:56:40 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Jun 2019 08:56:39 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Jun 2019 21:26:50 +0530
Received: from [10.10.161.66] (10.10.161.66) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 18 Jun 2019 21:26:50 +0530
Subject: Re: [PATCH] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: <linux-mm@kvack.org>, <linux-kernel@vger.kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
References: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
 <e5f45089-c3aa-4d78-2c8d-ed22f863d9ee@synopsys.com>
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
Message-ID: <8b184218-6880-204e-a9dd-e627c5ca92ca@synopsys.com>
Date: Tue, 18 Jun 2019 08:56:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e5f45089-c3aa-4d78-2c8d-ed22f863d9ee@synopsys.com>
Content-Language: en-US
X-Originating-IP: [10.10.161.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_085650_781272_92C6DBB2 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fenghua Yu <fenghua.yu@intel.com>,
 arcml <linux-snps-arc@lists.infradead.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

+CC Masami San, Eugeniy

On 6/13/19 10:57 AM, Vineet Gupta wrote:


> On 6/13/19 3:07 AM, Anshuman Khandual wrote:
>> Questions:
>>
>> AFAICT there is no equivalent of erstwhile notify_page_fault() during page
>> fault handling in arc and mips archs which can call this generic function.
>> Please let me know if that is not the case.
> 
> For ARC do_page_fault() is entered for MMU exceptions (TLB Miss, access violations
> r/w/x etc). kprobes uses a combination of UNIMP_S and TRAP_S instructions which
> don't funnel into do_page_fault().
> 
> UINMP_S leads to
> 
> instr_service
>    do_insterror_or_kprobe
>       notify_die(DIE_IERR)
>          kprobe_exceptions_notify
>             arc_kprobe_handler
> 
> 
> TRAP_S 2 leads to
> 
> EV_Trap
>    do_non_swi_trap
>       trap_is_kprobe
>          notify_die(DIE_TRAP)
>             kprobe_exceptions_notify
>                arc_post_kprobe_handler
> 
> But indeed we are *not* calling into kprobe_fault_handler() - from eithet of those
> paths and not sure if the existing arc*_kprobe_handler() combination does the
> equivalent in tandem.

@Eugeniy can you please investigate this - do we have krpobes bit rot in ARC port.

-Vineet



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
