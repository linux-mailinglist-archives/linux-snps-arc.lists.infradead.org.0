Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291682863C
	for <lists+linux-snps-arc@lfdr.de>; Thu, 23 May 2019 21:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEmdlNrT6TGVzpoPfpwVqgyBerqSrpGTOpAG9qGtXic=; b=GpT1/0oYujT6qb
	KOhlxf+76w5HC/KuFYJklupQCpTK99MFRe4pHamMrL3ePP9/yBmke5iMdaEQmPkZJWE954WXDJiKu
	k3ak6RAtuf3ugjAzJnfC9IcHDrfH7UO7p+gUYBVxFiGSRQHmoNkzeS+yamX0zh0G1g4/raVfndkZj
	c6RZkWjfNiHGYYVEtkSqwxRdsZXGuuuVphebpqFdYJaIo2MmW7rDF+WphULPMEVT0K0flA/nuJsLL
	bxTjmEptgojRWzqpoQOcaLY5oyYlhooCq+Xv1CcYoqo8CzbjTfxCo5fhIx4JyFxCG2zQXmw0aTGUc
	UBA80F1DjBrMARxSDx8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsz1-00057U-Nr; Thu, 23 May 2019 19:02:31 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsyx-00056G-VF
 for linux-snps-arc@lists.infradead.org; Thu, 23 May 2019 19:02:29 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4E4A9C00F4;
 Thu, 23 May 2019 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558638131; bh=aKeSNI4AwBP/qqtb9+WBKmlunFYD/hQqcP82Q/VliaM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To:From;
 b=lA3BAAs4XQuj5hqQhgS87YGJ2iuq5HJDqSkG/4nC8sFKiGnzv81syMKMJ/Cjqkjp2
 JxPzOz1qbcMgW5c6XmQZdVP6hQ8bHilCz3zm9dGlynGevJhxL7ySlcNfy58hVZkiku
 WbTHarXafurdinua7qo6bi+8q27eGUf2/iI/K/1RWWuGq6FrjMuK0zsy6BN9hzhA5t
 VLsDPpoec7pUIXEe8QCgTE92mLpjgmiVSbERc/cwxXfLtvM9Zq9xQcZc6TgjkAcFKs
 KGHbY3vwkfcyiTGK54mcV0oFm8yj59bR07H7BNZvQQO50cqnsgsGzuY758/baJb9QU
 wMOqsh2WODRCQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 244A7A0097;
 Thu, 23 May 2019 19:02:24 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 23 May 2019 12:02:10 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 May 2019 00:32:19 +0530
Received: from [10.10.161.89] (10.10.161.89) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 May 2019 00:32:06 +0530
Subject: Re: [PATCH] ARC: Don't set CROSS_COMPILE in arch's Makefile
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 <linux-snps-arc@lists.infradead.org>
Newsgroups: gmane.linux.kernel,gmane.linux.kernel.arc
References: <20180916204757.31131-1-abrodkin@synopsys.com>
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
Message-ID: <efe9e312-565f-ba47-135c-ad7108b1170c@synopsys.com>
Date: Thu, 23 May 2019 12:02:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20180916204757.31131-1-abrodkin@synopsys.com>
Content-Language: en-US
X-Originating-IP: [10.10.161.89]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_120228_351096_5D66E4CA 
X-CRM114-Status: GOOD (  19.07  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

T24gOS8xNi8xOCAxOjQ3IFBNLCBBbGV4ZXkgQnJvZGtpbiB3cm90ZToKPiBUaGVyZSdzIG5vdCBt
dWNoIHNlbnNlIGluIGRvaW5nIHRoYXQgYmVjYXVzZSBpZiB1c2VyIG9yCj4gaGlzIGJ1aWxkLXN5
c3RlbSBkaWRuJ3Qgc2V0IENST1NTX0NPTVBJTEUgd2Ugc3RpbGwgbWF5Cj4gdmVyeSB3ZWxsIG1h
a2UgaW5jb3JyZWN0IGd1ZXNzLgo+IAo+IEJ1dCBhcyBpdCB0dXJuZWQgb3V0IHNldHRpbmcgQ1JP
U1NfQ09NUElMRSBpcyBub3QgYXMgaGFybWxlc3MKPiBhcyBvbmUgbWF5IHRoaW5rOiB3aXRoIHJl
Y2VudCBjaGFuZ2VzIHRoYXQgaW1wbGVtZW50ZWQgYXV0b21hdGljCj4gZGlzY292ZXJ5IG9mIF9f
aG9zdF9fIGdjYyBmZWF0dXJlcyB1bmNvbmRpdGlvbmFsIHNldHVwIG9mCj4gQ1JPU1NfQ09NUElM
RSBsZWFkcyB0byBmYWlsdXJlcyBvbiBleGVjdXRpb24gb2YgIm1ha2UgeHh4X2RlZmNvbmZpZyIK
PiB3aXRoIGFic2VudCBjcm9zcy1jb21waWxlciwgZm9yIG1vcmUgaW5mbyBzZWUgWzFdLgo+IAo+
IFNldCBDUk9TU19DT01QSUxFIGFzIHdlbGwgZ2V0cyBpbiB0aGUgd2F5IGlmIHdlIHdhbnQgb25s
eSB0byBidWlsZAo+IC5kdGIncyAoYWdhaW4gd2l0aCBhYnNlbnQgY3Jvc3MtY29tcGlsZXIgd2hp
Y2ggaXMgbm90IHJlYWxseSBuZWVkZWQKPiBmb3IgYnVpbGRpbmcgLmR0YidzKSwgc2VlIFsyXS4K
CkBBbGV4ZXksIGNhbiB3ZSByZXZpc2l0IHRoaXMgKHJldmVydCBiYWNrIHBhcnRpYWxseSkuIEkn
bSBnZXR0aW5nIHNpY2sgb2YgaGF2aW5nCnRvIHNwZWNpZnkgdGhlIENST1NTX0NPTVBJTEUgaW4g
bXkgY21kbGluZS4KCldpbGwgc29tZXRoaW5nIGFsb25nIHRoZSBsaW5lcyBmYzJiNDdiNTVmMTdm
ZDk5NmY3YTAxOSAoImg4MzAwOiB1c2UKY2MtY3Jvc3MtcHJlZml4IGluc3RlYWQgb2YgaGFyZGNv
ZGluZyBoODMwMC11bmtub3duLWxpbnV4LSIpIHdvcmsgPwoKLS0tLT4KK2lmZXEgKCQoQ1JPU1Nf
Q09NUElMRSksKQorQ1JPU1NfQ09NUElMRSA6PSAkKGNhbGwgY2MtY3Jvc3MtcHJlZml4LCBhcmMt
bGludXgtKQorZW5kaWYKCgoKPiAKPiBOb3RlLCB3ZSBoYWQgdG8gY2hhbmdlIExJQkdDQyBhc3Np
Z25tZW50IHR5cGUgZnJvbSAiOj0iIHRvICI9Igo+IHNvIHRoYXQgaXMgaXMgcmVzb2x2ZWQgb24g
aXRzIHVzYWdlLCBvdGhlcndpc2UgaWYgaXQgaXMgcmVzb2x2ZWQKPiBhdCBkZWNsYXJhdGlvbiB0
aW1lIHdpdGggbWlzc2luZyBDUk9TU19DT01QSUxFIHdlJ3JlIGdldHRpbmcgdGhpcwo+IGVycm9y
IG1lc3NhZ2UgZnJvbSBob3N0IEdDQzoKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPjgtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gZ2NjOiBlcnJvcjogdW5yZWNvZ25pemVkIGNvbW1hbmQg
bGluZSBvcHRpb24g4oCYLW1tZWRpdW0tY2FsbHPigJkKPiBnY2M6IGVycm9yOiB1bnJlY29nbml6
ZWQgY29tbWFuZCBsaW5lIG9wdGlvbiDigJgtbW5vLXNkYXRh4oCZOyBkaWQgeW91IG1lYW4g4oCY
LWZuby1zdGF0c+KAmT8KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPjgtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gCj4gWzFdIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFp
bC9saW51eC1zbnBzLWFyYy8yMDE4LVNlcHRlbWJlci8wMDQzMDguaHRtbAo+IFsyXSBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtc25wcy1hcmMvMjAxOC1TZXB0ZW1i
ZXIvMDA0MzIwLmh0bWwKPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQnJvZGtpbiA8YWJyb2Rr
aW5Ac3lub3BzeXMuY29tPgo+IENjOiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bz
b2Npb25leHQuY29tPgo+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+
ICBhcmNoL2FyYy9NYWtlZmlsZSB8IDEwICstLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FyYy9N
YWtlZmlsZSBiL2FyY2gvYXJjL01ha2VmaWxlCj4gaW5kZXggOTljY2U3N2FiOThmLi41ZjZiNjc5
MTdkYzIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcmMvTWFrZWZpbGUKPiArKysgYi9hcmNoL2FyYy9N
YWtlZmlsZQo+IEBAIC02LDE0ICs2LDYgQEAKPiAgIyBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29m
dHdhcmUgRm91bmRhdGlvbi4KPiAgIwo+ICAKPiAtaWZlcSAoJChDUk9TU19DT01QSUxFKSwpCj4g
LWlmbmRlZiBDT05GSUdfQ1BVX0JJR19FTkRJQU4KPiAtQ1JPU1NfQ09NUElMRSA6PSBhcmMtbGlu
dXgtCj4gLWVsc2UKPiAtQ1JPU1NfQ09NUElMRSA6PSBhcmNlYi1saW51eC0KPiAtZW5kaWYKPiAt
ZW5kaWYKPiAtCj4gIEtCVUlMRF9ERUZDT05GSUcgOj0gbnNpbV83MDBfZGVmY29uZmlnCj4gIAo+
ICBjZmxhZ3MteQkrPSAtZm5vLWNvbW1vbiAtcGlwZSAtZm5vLWJ1aWx0aW4gLW1tZWRpdW0tY2Fs
bHMgLURfX2xpbnV4X18KPiBAQCAtNzksNyArNzEsNyBAQCBjZmxhZ3MtJChkaXNhYmxlX3NtYWxs
X2RhdGEpCQkrPSAtbW5vLXNkYXRhIC1mY2FsbC11c2VkLWdwCj4gIGNmbGFncy0kKENPTkZJR19D
UFVfQklHX0VORElBTikJCSs9IC1tYmlnLWVuZGlhbgo+ICBsZGZsYWdzLSQoQ09ORklHX0NQVV9C
SUdfRU5ESUFOKQkrPSAtRUIKPiAgCj4gLUxJQkdDQwk6PSAkKHNoZWxsICQoQ0MpICQoY2ZsYWdz
LXkpIC0tcHJpbnQtbGliZ2NjLWZpbGUtbmFtZSkKPiArTElCR0NDCT0gJChzaGVsbCAkKENDKSAk
KGNmbGFncy15KSAtLXByaW50LWxpYmdjYy1maWxlLW5hbWUpCj4gIAo+ICAjIE1vZHVsZXMgd2l0
aCBzaG9ydCBjYWxscyBtaWdodCBicmVhayBmb3IgY2FsbHMgaW50byBidWlsdGluLWtlcm5lbAo+
ICBLQlVJTERfQ0ZMQUdTX01PRFVMRQkrPSAtbWxvbmctY2FsbHMgLW1uby1taWxsaWNvZGUKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1z
bnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1hcmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXNucHMtYXJj
