Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8763FB1255
	for <lists+linux-snps-arc@lfdr.de>; Thu, 12 Sep 2019 17:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hjIpnhQz7U8G1OrklTXS2jjohDxe4k4DBXlC87DeWfA=; b=DTDjKGw6qlA1HW2wACe3iTqU7
	RGIKxfOcvGrEwxAw7g9OhUGKL41QOhWtubCwOlK6tt58VMhuhF7XHxNgJNk4EERTjYKPyiNzqK3up
	wu3x/fdS4YdNb4nBO0WmNNCTuxy8SicdL+PxcmGK++TANiAf+8l5Egzx9qE+sEjn8qjpVjdrKYhia
	AxUab0VH9RkvpT+t18QlgoLuNcqC9wuKdpFvMoo8R4JYnuoA9yo4eZ6mf30IBOG6eOZ1o1YXVrA4w
	E8c5eA7gBal0EXy0CsDf82Izx+w0/voOqavXC0O5NQ5729gfGm+zOxTx4qB8jWnj+BNOuqOhG8evn
	MIcthEx0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8RAM-0003Vh-VZ; Thu, 12 Sep 2019 15:37:51 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R98-0002Ni-3R; Thu, 12 Sep 2019 15:36:38 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46TjY55kR1zB09Zp;
 Thu, 12 Sep 2019 17:36:25 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=vXjHrIsD; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id DwyHfJ_-hmk0; Thu, 12 Sep 2019 17:36:25 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46TjY54MYgzB09ZC;
 Thu, 12 Sep 2019 17:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568302585; bh=IhIV2LM0kJGGv/F34RdYML5IiQ3nwig+HBKPEh4K5vw=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=vXjHrIsDpNVTmPIV+FqFTM1WOKwePeTDgnCH7EOvfA3I9YCObdf/G7pwoOKTK0TOf
 acGFsLp+5pfGsxUu4d+5NxmkiphS/982bTUxvlc0xdlN3kmadTDcMIZfwEX6wJ4VmX
 yzksD6pyopcgU+LT4RasTCt4C9sSQU6knXxj1T+o=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 2E1CA8B945;
 Thu, 12 Sep 2019 17:36:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id NEjtA1ocC_FG; Thu, 12 Sep 2019 17:36:27 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0B0BC8B933;
 Thu, 12 Sep 2019 17:36:25 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <4cf31ca9-39e4-87e4-7eef-a6f3f0ea7576@c-s.fr>
Message-ID: <31aa6043-3b11-a936-bf35-6ed84bff9304@c-s.fr>
Date: Thu, 12 Sep 2019 17:36:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4cf31ca9-39e4-87e4-7eef-a6f3f0ea7576@c-s.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083634_570381_5C438AFB 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CgpMZSAxMi8wOS8yMDE5IMOgIDE3OjAwLCBDaHJpc3RvcGhlIExlcm95IGEgw6ljcml0wqA6Cj4g
Cj4gCj4gT24gMDkvMTIvMjAxOSAwNjowMiBBTSwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+
IFRoaXMgYWRkcyBhIHRlc3QgbW9kdWxlIHdoaWNoIHdpbGwgdmFsaWRhdGUgYXJjaGl0ZWN0dXJl
IHBhZ2UgdGFibGUgCj4+IGhlbHBlcnMKPj4gYW5kIGFjY2Vzc29ycyByZWdhcmRpbmcgY29tcGxp
YW5jZSB3aXRoIGdlbmVyaWMgTU0gc2VtYW50aWNzIAo+PiBleHBlY3RhdGlvbnMuCj4+IFRoaXMg
d2lsbCBoZWxwIHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBpbiB2YWxpZGF0aW5nIGNoYW5nZXMgdG8g
dGhlIAo+PiBleGlzdGluZwo+PiBwYWdlIHRhYmxlIGhlbHBlcnMgb3IgYWRkaXRpb24gb2YgbmV3
IG9uZXMuCj4+Cj4+IFRlc3QgcGFnZSB0YWJsZSBhbmQgbWVtb3J5IHBhZ2VzIGNyZWF0aW5nIGl0
J3MgZW50cmllcyBhdCB2YXJpb3VzIAo+PiBsZXZlbCBhcmUKPj4gYWxsIGFsbG9jYXRlZCBmcm9t
IHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1aXJlZCBhbGlnbm1lbnRzLiBJZiBtZW1vcnkgCj4+IHBh
Z2VzCj4+IHdpdGggcmVxdWlyZWQgc2l6ZSBhbmQgYWxpZ25tZW50IGNvdWxkIG5vdCBiZSBhbGxv
Y2F0ZWQsIHRoZW4gYWxsIAo+PiBkZXBlbmRpbmcKPj4gaW5kaXZpZHVhbCB0ZXN0cyBhcmUgc2tp
cHBlZC4KPiAKPiBCdWlsZCBmYWlsdXJlIG9uIHBvd2VycGMgYm9vazNzLzMyLiBUaGlzIGlzIGJl
Y2F1c2UgYXNtL2hpZ2htZW0uaCBpcyAKPiBtaXNzaW5nLiBJdCBjYW4ndCBiZSBpbmNsdWRlZCBm
cm9tIGFzbS9ib29rM3MvMzIvcGd0YWJsZS5oIGJlY2F1c2UgaXQgCj4gY3JlYXRlcyBjaXJjdWxh
ciBkZXBlbmRlbmN5LiBTbyBpdCBoYXMgdG8gYmUgaW5jbHVkZWQgZnJvbSAKPiBtbS9hcmNoX3Bn
dGFibGVfdGVzdC5jCgpJbiBmYWN0IGl0IGlzIDxsaW51eC9oaWdobWVtLmg+IHRoYXQgbmVlZHMg
dG8gYmUgYWRkZWQsIGFkZGluZyAKPGFzbS9oaWdobWVtLmg+IGRpcmVjdGx5IHByb3Zva2VzIGJ1
aWxkIGZhaWx1cmUgYXQgbGluayB0aW1lLgoKQ2hyaXN0b3BoZQoKPiAKPiAKPiAKPiAgwqAgQ0PC
oMKgwqDCoMKgIG1tL2FyY2hfcGd0YWJsZV90ZXN0Lm8KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20g
Li9hcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vYm9vazNzL3BndGFibGUuaDo4OjAsCj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9hcmNoL3Bvd2VycGMvaW5jbHVkZS9h
c20vcGd0YWJsZS5oOjE4LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9t
IC4vaW5jbHVkZS9saW51eC9tbS5oOjk5LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBmcm9tIC4vYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2lvLmg6MjksCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2lvLmg6MTMsCj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2ly
cS5oOjIwLAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vYXJjaC9w
b3dlcnBjL2luY2x1ZGUvYXNtL2hhcmRpcnEuaDo2LAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9saW51eC9oYXJkaXJxLmg6OSwKPiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2luY2x1ZGUvbGludXgvaW50ZXJydXB0Lmg6
MTEsCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xp
bnV4L2tlcm5lbF9zdGF0Lmg6OSwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZnJvbSAuL2luY2x1ZGUvbGludXgvY2dyb3VwLmg6MjYsCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2h1Z2V0bGIuaDo5LAo+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIG1tL2FyY2hfcGd0YWJsZV90ZXN0LmM6MTQ6
Cj4gbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYzogSW4gZnVuY3Rpb24gJ2FyY2hfcGd0YWJsZV90ZXN0
c19pbml0JzoKPiAuL2FyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9ib29rM3MvMzIvcGd0YWJsZS5o
OjM2NToxMzogZXJyb3I6IGltcGxpY2l0IAo+IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdrbWFw
X2F0b21pYycgCj4gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gIMKg
ICgocHRlX3QgKikoa21hcF9hdG9taWMocG1kX3BhZ2UoKihkaXIpKSkgKyBcCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBeCj4gLi9pbmNsdWRlL2xpbnV4L21tLmg6MjAwODozMTogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvICdwdGVfb2Zmc2V0X21hcCcKPiAgwqAgKHB0ZV9hbGxvYyht
bSwgcG1kKSA/IE5VTEwgOiBwdGVfb2Zmc2V0X21hcChwbWQsIGFkZHJlc3MpKQo+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXgo+
IG1tL2FyY2hfcGd0YWJsZV90ZXN0LmM6Mzc3Ojk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byAncHRlX2FsbG9jX21hcCcKPiAgwqAgcHRlcCA9IHB0ZV9hbGxvY19tYXAobW0sIHBtZHAsIHZh
ZGRyKTsKPiAgwqDCoMKgwqDCoMKgwqDCoCBeCj4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRy
ZWF0ZWQgYXMgZXJyb3JzCj4gbWFrZVsyXTogKioqIFttbS9hcmNoX3BndGFibGVfdGVzdC5vXSBF
cnJvciAxCj4gCj4gCj4gQ2hyaXN0b3BoZQo+IAo+IAo+Pgo+PiBDYzogQW5kcmV3IE1vcnRvbiA8
YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KPj4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmth
QHN1c2UuY3o+Cj4+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgo+PiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+IENj
OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LnZuZXQuaWJtLmNvbT4KPj4gQ2M6IEphc29uIEd1
bnRob3JwZSA8amdnQHppZXBlLmNhPgo+PiBDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFt
c0BpbnRlbC5jb20+Cj4+IENjOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+
Cj4+IENjOiBNaWNoYWwgSG9ja28gPG1ob2Nrb0BrZXJuZWwub3JnPgo+PiBDYzogTWFyayBSdXRs
YW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4KPj4gQ2M6IFN0ZXZlbiBQcmljZSA8U3RldmVuLlByaWNlQGFybS5jb20+Cj4+IENj
OiBBcmQgQmllc2hldXZlbCA8YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz4KPj4gQ2M6IE1hc2Fo
aXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+Cj4+IENjOiBLZWVzIENv
b2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KPj4gQ2M6IFRldHN1byBIYW5kYSA8cGVuZ3Vpbi1r
ZXJuZWxAaS1sb3ZlLnNha3VyYS5uZS5qcD4KPj4gQ2M6IE1hdHRoZXcgV2lsY294IDx3aWxseUBp
bmZyYWRlYWQub3JnPgo+PiBDYzogU3JpIEtyaXNobmEgY2hvd2RhcnkgPHNjaG93ZGFyeUBudmlk
aWEuY29tPgo+PiBDYzogRGF2ZSBIYW5zZW4gPGRhdmUuaGFuc2VuQGludGVsLmNvbT4KPj4gQ2M6
IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCA8bGludXhAYXJtbGludXgub3JnLnVrPgo+PiBDYzog
TWljaGFlbCBFbGxlcm1hbiA8bXBlQGVsbGVybWFuLmlkLmF1Pgo+PiBDYzogUGF1bCBNYWNrZXJy
YXMgPHBhdWx1c0BzYW1iYS5vcmc+Cj4+IENjOiBNYXJ0aW4gU2Nod2lkZWZza3kgPHNjaHdpZGVm
c2t5QGRlLmlibS5jb20+Cj4+IENjOiBIZWlrbyBDYXJzdGVucyA8aGVpa28uY2Fyc3RlbnNAZGUu
aWJtLmNvbT4KPj4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+
PiBDYzogVmluZWV0IEd1cHRhIDx2Z3VwdGFAc3lub3BzeXMuY29tPgo+PiBDYzogSmFtZXMgSG9n
YW4gPGpob2dhbkBrZXJuZWwub3JnPgo+PiBDYzogUGF1bCBCdXJ0b24gPHBhdWwuYnVydG9uQG1p
cHMuY29tPgo+PiBDYzogUmFsZiBCYWVjaGxlIDxyYWxmQGxpbnV4LW1pcHMub3JnPgo+PiBDYzog
S2lyaWxsIEEuIFNodXRlbW92IDxraXJpbGxAc2h1dGVtb3YubmFtZT4KPj4gQ2M6IEdlcmFsZCBT
Y2hhZWZlciA8Z2VyYWxkLnNjaGFlZmVyQGRlLmlibS5jb20+Cj4+IENjOiBDaHJpc3RvcGhlIExl
cm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4KPj4gQ2M6IGxpbnV4LXNucHMtYXJjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LW1pcHNAdmdlci5rZXJuZWwub3JnCj4+IENjOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWlhNjRAdmdl
ci5rZXJuZWwub3JnCj4+IENjOiBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZwo+PiBDYzog
bGludXgtczM5MEB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGxpbnV4LXNoQHZnZXIua2VybmVsLm9y
Zwo+PiBDYzogc3BhcmNsaW51eEB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IHg4NkBrZXJuZWwub3Jn
Cj4+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4+Cj4+IFN1Z2dlc3RlZC1ieTog
Q2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20+Cj4+IC0tLQo+
PiDCoCBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0X3R5cGVzLmggfMKgwqAgMiArCj4+
IMKgIG1tL0tjb25maWcuZGVidWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCAxNCArCj4+IMKgIG1tL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIG1tL2Fy
Y2hfcGd0YWJsZV90ZXN0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNDI5
ICsrKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDQ0NiBpbnNl
cnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtbS9hcmNoX3BndGFibGVfdGVzdC5j
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0X3R5cGVz
LmggCj4+IGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV82NF90eXBlcy5oCj4+IGluZGV4
IDUyZTVmNWYyMjQwZC4uYjg4Mjc5MmEzOTk5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL3g4Ni9pbmNs
dWRlL2FzbS9wZ3RhYmxlXzY0X3R5cGVzLmgKPj4gKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20v
cGd0YWJsZV82NF90eXBlcy5oCj4+IEBAIC00MCw2ICs0MCw4IEBAIHN0YXRpYyBpbmxpbmUgYm9v
bCBwZ3RhYmxlX2w1X2VuYWJsZWQodm9pZCkKPj4gwqAgI2RlZmluZSBwZ3RhYmxlX2w1X2VuYWJs
ZWQoKSAwCj4+IMKgICNlbmRpZiAvKiBDT05GSUdfWDg2XzVMRVZFTCAqLwo+PiArI2RlZmluZSBt
bV9wNGRfZm9sZGVkKG1tKSAoIXBndGFibGVfbDVfZW5hYmxlZCgpKQo+PiArCj4+IMKgIGV4dGVy
biB1bnNpZ25lZCBpbnQgcGdkaXJfc2hpZnQ7Cj4+IMKgIGV4dGVybiB1bnNpZ25lZCBpbnQgcHRy
c19wZXJfcDRkOwo+PiBkaWZmIC0tZ2l0IGEvbW0vS2NvbmZpZy5kZWJ1ZyBiL21tL0tjb25maWcu
ZGVidWcKPj4gaW5kZXggMzI3YjNlYmYyM2JmLi5jZTljMzk3ZjdiMDcgMTAwNjQ0Cj4+IC0tLSBh
L21tL0tjb25maWcuZGVidWcKPj4gKysrIGIvbW0vS2NvbmZpZy5kZWJ1Zwo+PiBAQCAtMTE3LDMg
KzExNywxNyBAQCBjb25maWcgREVCVUdfUk9EQVRBX1RFU1QKPj4gwqDCoMKgwqDCoCBkZXBlbmRz
IG9uIFNUUklDVF9LRVJORUxfUldYCj4+IMKgwqDCoMKgwqAgLS0taGVscC0tLQo+PiDCoMKgwqDC
oMKgwqDCoCBUaGlzIG9wdGlvbiBlbmFibGVzIGEgdGVzdGNhc2UgZm9yIHRoZSBzZXR0aW5nIHJv
ZGF0YSByZWFkLW9ubHkuCj4+ICsKPj4gK2NvbmZpZyBERUJVR19BUkNIX1BHVEFCTEVfVEVTVAo+
PiArwqDCoMKgIGJvb2wgIlRlc3QgYXJjaCBwYWdlIHRhYmxlIGhlbHBlcnMgZm9yIHNlbWFudGlj
cyBjb21wbGlhbmNlIgo+PiArwqDCoMKgIGRlcGVuZHMgb24gTU1VCj4+ICvCoMKgwqAgZGVwZW5k
cyBvbiBERUJVR19LRVJORUwKPj4gK8KgwqDCoCBoZWxwCj4+ICvCoMKgwqDCoMKgIFRoaXMgb3B0
aW9ucyBwcm92aWRlcyBhIGtlcm5lbCBtb2R1bGUgd2hpY2ggY2FuIGJlIHVzZWQgdG8gdGVzdAo+
PiArwqDCoMKgwqDCoCBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxwZXIgZnVuY3Rpb25zIG9u
IHZhcmlvdXMgcGxhdGZvcm0gaW4KPj4gK8KgwqDCoMKgwqAgdmVyaWZ5aW5nIGlmIHRoZXkgY29t
cGx5IHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuIFRoaXMKPj4gK8KgwqDCoMKg
wqAgd2lsbCBoZWxwIGFyY2hpdGVjdHVyZXMgY29kZSBpbiBtYWtpbmcgc3VyZSB0aGF0IGFueSBj
aGFuZ2VzIG9yCj4+ICvCoMKgwqDCoMKgIG5ldyBhZGRpdGlvbnMgb2YgdGhlc2UgaGVscGVycyB3
aWxsIHN0aWxsIGNvbmZvcm0gdG8gZ2VuZXJpYyBNTQo+PiArwqDCoMKgwqDCoCBleHBlY3RlZCBz
ZW1hbnRpY3MuCj4+ICsKPj4gK8KgwqDCoMKgwqAgSWYgdW5zdXJlLCBzYXkgTi4KPj4gZGlmZiAt
LWdpdCBhL21tL01ha2VmaWxlIGIvbW0vTWFrZWZpbGUKPj4gaW5kZXggZDk5Njg0NjY5N2VmLi5i
YjU3MmM1YWE4YzUgMTAwNjQ0Cj4+IC0tLSBhL21tL01ha2VmaWxlCj4+ICsrKyBiL21tL01ha2Vm
aWxlCj4+IEBAIC04Niw2ICs4Niw3IEBAIG9iai0kKENPTkZJR19IV1BPSVNPTl9JTkpFQ1QpICs9
IGh3cG9pc29uLWluamVjdC5vCj4+IMKgIG9iai0kKENPTkZJR19ERUJVR19LTUVNTEVBSykgKz0g
a21lbWxlYWsubwo+PiDCoCBvYmotJChDT05GSUdfREVCVUdfS01FTUxFQUtfVEVTVCkgKz0ga21l
bWxlYWstdGVzdC5vCj4+IMKgIG9iai0kKENPTkZJR19ERUJVR19ST0RBVEFfVEVTVCkgKz0gcm9k
YXRhX3Rlc3Qubwo+PiArb2JqLSQoQ09ORklHX0RFQlVHX0FSQ0hfUEdUQUJMRV9URVNUKSArPSBh
cmNoX3BndGFibGVfdGVzdC5vCj4+IMKgIG9iai0kKENPTkZJR19QQUdFX09XTkVSKSArPSBwYWdl
X293bmVyLm8KPj4gwqAgb2JqLSQoQ09ORklHX0NMRUFOQ0FDSEUpICs9IGNsZWFuY2FjaGUubwo+
PiDCoCBvYmotJChDT05GSUdfTUVNT1JZX0lTT0xBVElPTikgKz0gcGFnZV9pc29sYXRpb24ubwo+
PiBkaWZmIC0tZ2l0IGEvbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYyBiL21tL2FyY2hfcGd0YWJsZV90
ZXN0LmMKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi44YjRh
OTI3NTZhZDgKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9tbS9hcmNoX3BndGFibGVfdGVzdC5j
Cj4+IEBAIC0wLDAgKzEsNDI5IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMC1vbmx5Cj4+ICsvKgo+PiArICogVGhpcyBrZXJuZWwgbW9kdWxlIHZhbGlkYXRlcyBhcmNo
aXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxwZXJzICYKPj4gKyAqIGFjY2Vzc29ycyBhbmQgaGVscHMg
aW4gdmVyaWZ5aW5nIHRoZWlyIGNvbnRpbnVlZCBjb21wbGlhbmNlIHdpdGgKPj4gKyAqIGdlbmVy
aWMgTU0gc2VtYW50aWNzLgo+PiArICoKPj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBBUk0gTHRk
Lgo+PiArICoKPj4gKyAqIEF1dGhvcjogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5k
dWFsQGFybS5jb20+Cj4+ICsgKi8KPj4gKyNkZWZpbmUgcHJfZm10KGZtdCkgImFyY2hfcGd0YWJs
ZV90ZXN0OiAlcyAiIGZtdCwgX19mdW5jX18KPj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4L2dmcC5o
Pgo+PiArI2luY2x1ZGUgPGxpbnV4L2h1Z2V0bGIuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9rZXJu
ZWwuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tbS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21tYW4u
aD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tbV90eXBlcy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3Bmbl90Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgv
cHJpbnRrLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcmFuZG9tLmg+Cj4+ICsjaW5jbHVkZSA8bGlu
dXgvc3BpbmxvY2suaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9zd2FwLmg+Cj4+ICsjaW5jbHVkZSA8
bGludXgvc3dhcG9wcy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4+ICsjaW5j
bHVkZSA8YXNtL3BnYWxsb2MuaD4KPj4gKyNpbmNsdWRlIDxhc20vcGd0YWJsZS5oPgo+PiArCj4+
ICsvKgo+PiArICogQmFzaWMgb3BlcmF0aW9ucwo+PiArICoKPj4gKyAqIG1rb2xkKGVudHJ5KcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPSBBbiBvbGQgYW5kIG5vdCBhIHlvdW5nIGVudHJ5Cj4+ICsg
KiBta3lvdW5nKGVudHJ5KcKgwqDCoMKgwqDCoMKgID0gQSB5b3VuZyBhbmQgbm90IGFuIG9sZCBl
bnRyeQo+PiArICogbWtkaXJ0eShlbnRyeSnCoMKgwqDCoMKgwqDCoCA9IEEgZGlydHkgYW5kIG5v
dCBhIGNsZWFuIGVudHJ5Cj4+ICsgKiBta2NsZWFuKGVudHJ5KcKgwqDCoMKgwqDCoMKgID0gQSBj
bGVhbiBhbmQgbm90IGEgZGlydHkgZW50cnkKPj4gKyAqIG1rd3JpdGUoZW50cnkpwqDCoMKgwqDC
oMKgwqAgPSBBIHdyaXRlIGFuZCBub3QgYSB3cml0ZSBwcm90ZWN0ZWQgZW50cnkKPj4gKyAqIHdy
cHJvdGVjdChlbnRyeSnCoMKgwqDCoMKgwqDCoCA9IEEgd3JpdGUgcHJvdGVjdGVkIGFuZCBub3Qg
YSB3cml0ZSBlbnRyeQo+PiArICogcHh4X2JhZChlbnRyeSnCoMKgwqDCoMKgwqDCoCA9IEEgbWFw
cGVkIGFuZCBub24tdGFibGUgZW50cnkKPj4gKyAqIHB4eF9zYW1lKGVudHJ5MSwgZW50cnkyKcKg
wqDCoCA9IEJvdGggZW50cmllcyBob2xkIHRoZSBleGFjdCBzYW1lIHZhbHVlCj4+ICsgKi8KPj4g
KyNkZWZpbmUgVk1GTEFHU8KgwqDCoCAoVk1fUkVBRHxWTV9XUklURXxWTV9FWEVDKQo+PiArCj4+
ICsvKgo+PiArICogT24gczM5MCBwbGF0Zm9ybSwgdGhlIGxvd2VyIDEyIGJpdHMgYXJlIHVzZWQg
dG8gaWRlbnRpZnkgZ2l2ZW4gCj4+IHBhZ2UgdGFibGUKPj4gKyAqIGVudHJ5IHR5cGUgYW5kIGZv
ciBvdGhlciBhcmNoIHNwZWNpZmljIHJlcXVpcmVtZW50cy4gQnV0IHRoZXNlIAo+PiBiaXRzIG1p
Z2h0Cj4+ICsgKiBhZmZlY3QgdGhlIGFiaWxpdHkgdG8gY2xlYXIgZW50cmllcyB3aXRoIHB4eF9j
bGVhcigpLiBTbyB3aGlsZSAKPj4gbG9hZGluZyB1cAo+PiArICogdGhlIGVudHJpZXMgc2tpcCBh
bGwgbG93ZXIgMTIgYml0cyBpbiBvcmRlciB0byBhY2NvbW1vZGF0ZSBzMzkwIAo+PiBwbGF0Zm9y
bS4KPj4gKyAqIEl0IGRvZXMgbm90IGhhdmUgYWZmZWN0IGFueSBvdGhlciBwbGF0Zm9ybS4KPj4g
KyAqLwo+PiArI2RlZmluZSBSQU5ET01fT1JWQUxVRcKgwqDCoCAoMHhmZmZmZmZmZmZmZmZmMDAw
VUwpCj4+ICsjZGVmaW5lIFJBTkRPTV9OWlZBTFVFwqDCoMKgICgweGZmKQo+PiArCj4+ICtzdGF0
aWMgYm9vbCBwdWRfYWxpZ25lZDsKPj4gK3N0YXRpYyBib29sIHBtZF9hbGlnbmVkOwo+PiArCj4+
ICtzdGF0aWMgdm9pZCBwdGVfYmFzaWNfdGVzdHMoc3RydWN0IHBhZ2UgKnBhZ2UsIHBncHJvdF90
IHByb3QpCj4+ICt7Cj4+ICvCoMKgwqAgcHRlX3QgcHRlID0gbWtfcHRlKHBhZ2UsIHByb3QpOwo+
PiArCj4+ICvCoMKgwqAgV0FSTl9PTighcHRlX3NhbWUocHRlLCBwdGUpKTsKPj4gK8KgwqDCoCBX
QVJOX09OKCFwdGVfeW91bmcocHRlX21reW91bmcocHRlKSkpOwo+PiArwqDCoMKgIFdBUk5fT04o
IXB0ZV9kaXJ0eShwdGVfbWtkaXJ0eShwdGUpKSk7Cj4+ICvCoMKgwqAgV0FSTl9PTighcHRlX3dy
aXRlKHB0ZV9ta3dyaXRlKHB0ZSkpKTsKPj4gK8KgwqDCoCBXQVJOX09OKHB0ZV95b3VuZyhwdGVf
bWtvbGQocHRlKSkpOwo+PiArwqDCoMKgIFdBUk5fT04ocHRlX2RpcnR5KHB0ZV9ta2NsZWFuKHB0
ZSkpKTsKPj4gK8KgwqDCoCBXQVJOX09OKHB0ZV93cml0ZShwdGVfd3Jwcm90ZWN0KHB0ZSkpKTsK
Pj4gK30KPj4gKwo+PiArI2lmZGVmIENPTkZJR19IQVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVHRVBB
R0UKPj4gK3N0YXRpYyB2b2lkIHBtZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdw
cm90X3QgcHJvdCkKPj4gK3sKPj4gK8KgwqDCoCBwbWRfdCBwbWQ7Cj4+ICsKPj4gK8KgwqDCoCAv
Kgo+PiArwqDCoMKgwqAgKiBNZW1vcnkgYmxvY2sgaGVyZSBtdXN0IGJlIFBNRF9TSVpFIGFsaWdu
ZWQuIEFib3J0IHRoaXMKPj4gK8KgwqDCoMKgICogdGVzdCBpbiBjYXNlIHdlIGNvdWxkIG5vdCBh
bGxvY2F0ZSBzdWNoIGEgbWVtb3J5IGJsb2NrLgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBp
ZiAoIXBtZF9hbGlnbmVkKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwcl93YXJuKCJDb3VsZCBub3Qg
cHJvY2VlZCB3aXRoIFBNRCB0ZXN0c1xuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+
ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgcG1kID0gbWtfcG1kKHBhZ2UsIHByb3QpOwo+PiAr
wqDCoMKgIFdBUk5fT04oIXBtZF9zYW1lKHBtZCwgcG1kKSk7Cj4+ICvCoMKgwqAgV0FSTl9PTigh
cG1kX3lvdW5nKHBtZF9ta3lvdW5nKHBtZCkpKTsKPj4gK8KgwqDCoCBXQVJOX09OKCFwbWRfZGly
dHkocG1kX21rZGlydHkocG1kKSkpOwo+PiArwqDCoMKgIFdBUk5fT04oIXBtZF93cml0ZShwbWRf
bWt3cml0ZShwbWQpKSk7Cj4+ICvCoMKgwqAgV0FSTl9PTihwbWRfeW91bmcocG1kX21rb2xkKHBt
ZCkpKTsKPj4gK8KgwqDCoCBXQVJOX09OKHBtZF9kaXJ0eShwbWRfbWtjbGVhbihwbWQpKSk7Cj4+
ICvCoMKgwqAgV0FSTl9PTihwbWRfd3JpdGUocG1kX3dycHJvdGVjdChwbWQpKSk7Cj4+ICvCoMKg
wqAgLyoKPj4gK8KgwqDCoMKgICogQSBodWdlIHBhZ2UgZG9lcyBub3QgcG9pbnQgdG8gbmV4dCBs
ZXZlbCBwYWdlIHRhYmxlCj4+ICvCoMKgwqDCoCAqIGVudHJ5LiBIZW5jZSB0aGlzIG11c3QgcXVh
bGlmeSBhcyBwbWRfYmFkKCkuCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIFdBUk5fT04oIXBt
ZF9iYWQocG1kX21raHVnZShwbWQpKSk7Cj4+ICt9Cj4+ICsjZWxzZQo+PiArc3RhdGljIHZvaWQg
cG1kX2Jhc2ljX3Rlc3RzKHN0cnVjdCBwYWdlICpwYWdlLCBwZ3Byb3RfdCBwcm90KSB7IH0KPj4g
KyNlbmRpZgo+PiArCj4+ICsjaWZkZWYgQ09ORklHX0hBVkVfQVJDSF9UUkFOU1BBUkVOVF9IVUdF
UEFHRV9QVUQKPj4gK3N0YXRpYyB2b2lkIHB1ZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFn
ZSwgcGdwcm90X3QgcHJvdCkKPj4gK3sKPj4gK8KgwqDCoCBwdWRfdCBwdWQ7Cj4+ICsKPj4gK8Kg
wqDCoCAvKgo+PiArwqDCoMKgwqAgKiBNZW1vcnkgYmxvY2sgaGVyZSBtdXN0IGJlIFBVRF9TSVpF
IGFsaWduZWQuIEFib3J0IHRoaXMKPj4gK8KgwqDCoMKgICogdGVzdCBpbiBjYXNlIHdlIGNvdWxk
IG5vdCBhbGxvY2F0ZSBzdWNoIGEgbWVtb3J5IGJsb2NrLgo+PiArwqDCoMKgwqAgKi8KPj4gK8Kg
wqDCoCBpZiAoIXB1ZF9hbGlnbmVkKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwcl93YXJuKCJDb3Vs
ZCBub3QgcHJvY2VlZCB3aXRoIFBVRCB0ZXN0c1xuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgcHVkID0gcGZuX3B1ZChwYWdlX3RvX3Bm
bihwYWdlKSwgcHJvdCk7Cj4+ICvCoMKgwqAgV0FSTl9PTighcHVkX3NhbWUocHVkLCBwdWQpKTsK
Pj4gK8KgwqDCoCBXQVJOX09OKCFwdWRfeW91bmcocHVkX21reW91bmcocHVkKSkpOwo+PiArwqDC
oMKgIFdBUk5fT04oIXB1ZF93cml0ZShwdWRfbWt3cml0ZShwdWQpKSk7Cj4+ICvCoMKgwqAgV0FS
Tl9PTihwdWRfd3JpdGUocHVkX3dycHJvdGVjdChwdWQpKSk7Cj4+ICvCoMKgwqAgV0FSTl9PTihw
dWRfeW91bmcocHVkX21rb2xkKHB1ZCkpKTsKPj4gKwo+PiArI2lmICFkZWZpbmVkKF9fUEFHRVRB
QkxFX1BNRF9GT0xERUQpICYmICFkZWZpbmVkKF9fQVJDSF9IQVNfNExFVkVMX0hBQ0spCj4+ICvC
oMKgwqAgLyoKPj4gK8KgwqDCoMKgICogQSBodWdlIHBhZ2UgZG9lcyBub3QgcG9pbnQgdG8gbmV4
dCBsZXZlbCBwYWdlIHRhYmxlCj4+ICvCoMKgwqDCoCAqIGVudHJ5LiBIZW5jZSB0aGlzIG11c3Qg
cXVhbGlmeSBhcyBwdWRfYmFkKCkuCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIFdBUk5fT04o
IXB1ZF9iYWQocHVkX21raHVnZShwdWQpKSk7Cj4+ICsjZW5kaWYKPj4gK30KPj4gKyNlbHNlCj4+
ICtzdGF0aWMgdm9pZCBwdWRfYmFzaWNfdGVzdHMoc3RydWN0IHBhZ2UgKnBhZ2UsIHBncHJvdF90
IHByb3QpIHsgfQo+PiArI2VuZGlmCj4+ICsKPj4gK3N0YXRpYyB2b2lkIHA0ZF9iYXNpY190ZXN0
cyhzdHJ1Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3QgcHJvdCkKPj4gK3sKPj4gK8KgwqDCoCBwNGRf
dCBwNGQ7Cj4+ICsKPj4gK8KgwqDCoCBtZW1zZXQoJnA0ZCwgUkFORE9NX05aVkFMVUUsIHNpemVv
ZihwNGRfdCkpOwo+PiArwqDCoMKgIFdBUk5fT04oIXA0ZF9zYW1lKHA0ZCwgcDRkKSk7Cj4+ICt9
Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHBnZF9iYXNpY190ZXN0cyhzdHJ1Y3QgcGFnZSAqcGFnZSwg
cGdwcm90X3QgcHJvdCkKPj4gK3sKPj4gK8KgwqDCoCBwZ2RfdCBwZ2Q7Cj4+ICsKPj4gK8KgwqDC
oCBtZW1zZXQoJnBnZCwgUkFORE9NX05aVkFMVUUsIHNpemVvZihwZ2RfdCkpOwo+PiArwqDCoMKg
IFdBUk5fT04oIXBnZF9zYW1lKHBnZCwgcGdkKSk7Cj4+ICt9Cj4+ICsKPj4gKyNpZiAhZGVmaW5l
ZChfX1BBR0VUQUJMRV9QTURfRk9MREVEKSAmJiAhZGVmaW5lZChfX0FSQ0hfSEFTXzRMRVZFTF9I
QUNLKQo+PiArc3RhdGljIHZvaWQgcHVkX2NsZWFyX3Rlc3RzKHB1ZF90ICpwdWRwKQo+PiArewo+
PiArwqDCoMKgIHB1ZF90IHB1ZCA9IFJFQURfT05DRSgqcHVkcCk7Cj4+ICsKPj4gK8KgwqDCoCBw
dWQgPSBfX3B1ZChwdWRfdmFsKHB1ZCkgfCBSQU5ET01fT1JWQUxVRSk7Cj4+ICvCoMKgwqAgV1JJ
VEVfT05DRSgqcHVkcCwgcHVkKTsKPj4gK8KgwqDCoCBwdWRfY2xlYXIocHVkcCk7Cj4+ICvCoMKg
wqAgcHVkID0gUkVBRF9PTkNFKCpwdWRwKTsKPj4gK8KgwqDCoCBXQVJOX09OKCFwdWRfbm9uZShw
dWQpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgcHVkX3BvcHVsYXRlX3Rlc3RzKHN0cnVj
dCBtbV9zdHJ1Y3QgKm1tLCBwdWRfdCAqcHVkcCwgCj4+IHBtZF90ICpwbWRwKQo+PiArewo+PiAr
wqDCoMKgIHB1ZF90IHB1ZDsKPj4gKwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIFRoaXMg
ZW50cnkgcG9pbnRzIHRvIG5leHQgbGV2ZWwgcGFnZSB0YWJsZSBwYWdlLgo+PiArwqDCoMKgwqAg
KiBIZW5jZSB0aGlzIG11c3Qgbm90IHF1YWxpZnkgYXMgcHVkX2JhZCgpLgo+PiArwqDCoMKgwqAg
Ki8KPj4gK8KgwqDCoCBwbWRfY2xlYXIocG1kcCk7Cj4+ICvCoMKgwqAgcHVkX2NsZWFyKHB1ZHAp
Owo+PiArwqDCoMKgIHB1ZF9wb3B1bGF0ZShtbSwgcHVkcCwgcG1kcCk7Cj4+ICvCoMKgwqAgcHVk
ID0gUkVBRF9PTkNFKCpwdWRwKTsKPj4gK8KgwqDCoCBXQVJOX09OKHB1ZF9iYWQocHVkKSk7Cj4+
ICt9Cj4+ICsjZWxzZQo+PiArc3RhdGljIHZvaWQgcHVkX2NsZWFyX3Rlc3RzKHB1ZF90ICpwdWRw
KSB7IH0KPj4gK3N0YXRpYyB2b2lkIHB1ZF9wb3B1bGF0ZV90ZXN0cyhzdHJ1Y3QgbW1fc3RydWN0
ICptbSwgcHVkX3QgKnB1ZHAsIAo+PiBwbWRfdCAqcG1kcCkKPj4gK3sKPj4gK30KPj4gKyNlbmRp
Zgo+PiArCj4+ICsjaWYgIWRlZmluZWQoX19QQUdFVEFCTEVfUFVEX0ZPTERFRCkgJiYgIWRlZmlu
ZWQoX19BUkNIX0hBU181TEVWRUxfSEFDSykKPj4gK3N0YXRpYyB2b2lkIHA0ZF9jbGVhcl90ZXN0
cyhwNGRfdCAqcDRkcCkKPj4gK3sKPj4gK8KgwqDCoCBwNGRfdCBwNGQgPSBSRUFEX09OQ0UoKnA0
ZHApOwo+PiArCj4+ICvCoMKgwqAgcDRkID0gX19wNGQocDRkX3ZhbChwNGQpIHwgUkFORE9NX09S
VkFMVUUpOwo+PiArwqDCoMKgIFdSSVRFX09OQ0UoKnA0ZHAsIHA0ZCk7Cj4+ICvCoMKgwqAgcDRk
X2NsZWFyKHA0ZHApOwo+PiArwqDCoMKgIHA0ZCA9IFJFQURfT05DRSgqcDRkcCk7Cj4+ICvCoMKg
wqAgV0FSTl9PTighcDRkX25vbmUocDRkKSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHA0
ZF9wb3B1bGF0ZV90ZXN0cyhzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcDRkX3QgKnA0ZHAsIAo+PiBw
dWRfdCAqcHVkcCkKPj4gK3sKPj4gK8KgwqDCoCBwNGRfdCBwNGQ7Cj4+ICsKPj4gK8KgwqDCoCAv
Kgo+PiArwqDCoMKgwqAgKiBUaGlzIGVudHJ5IHBvaW50cyB0byBuZXh0IGxldmVsIHBhZ2UgdGFi
bGUgcGFnZS4KPj4gK8KgwqDCoMKgICogSGVuY2UgdGhpcyBtdXN0IG5vdCBxdWFsaWZ5IGFzIHA0
ZF9iYWQoKS4KPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgcHVkX2NsZWFyKHB1ZHApOwo+PiAr
wqDCoMKgIHA0ZF9jbGVhcihwNGRwKTsKPj4gK8KgwqDCoCBwNGRfcG9wdWxhdGUobW0sIHA0ZHAs
IHB1ZHApOwo+PiArwqDCoMKgIHA0ZCA9IFJFQURfT05DRSgqcDRkcCk7Cj4+ICvCoMKgwqAgV0FS
Tl9PTihwNGRfYmFkKHA0ZCkpOwo+PiArfQo+PiArI2Vsc2UKPj4gK3N0YXRpYyB2b2lkIHA0ZF9j
bGVhcl90ZXN0cyhwNGRfdCAqcDRkcCkgeyB9Cj4+ICtzdGF0aWMgdm9pZCBwNGRfcG9wdWxhdGVf
dGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHA0ZF90ICpwNGRwLCAKPj4gcHVkX3QgKnB1ZHAp
Cj4+ICt7Cj4+ICt9Cj4+ICsjZW5kaWYKPj4gKwo+PiArI2lmbmRlZiBfX0FSQ0hfSEFTXzVMRVZF
TF9IQUNLCj4+ICtzdGF0aWMgdm9pZCBwZ2RfY2xlYXJfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAq
bW0sIHBnZF90ICpwZ2RwKQo+PiArewo+PiArwqDCoMKgIHBnZF90IHBnZCA9IFJFQURfT05DRSgq
cGdkcCk7Cj4+ICsKPj4gK8KgwqDCoCBpZiAobW1fcDRkX2ZvbGRlZChtbSkpCj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm47Cj4+ICsKPj4gK8KgwqDCoCBwZ2QgPSBfX3BnZChwZ2RfdmFsKHBnZCkg
fCBSQU5ET01fT1JWQUxVRSk7Cj4+ICvCoMKgwqAgV1JJVEVfT05DRSgqcGdkcCwgcGdkKTsKPj4g
K8KgwqDCoCBwZ2RfY2xlYXIocGdkcCk7Cj4+ICvCoMKgwqAgcGdkID0gUkVBRF9PTkNFKCpwZ2Rw
KTsKPj4gK8KgwqDCoCBXQVJOX09OKCFwZ2Rfbm9uZShwZ2QpKTsKPj4gK30KPj4gKwo+PiArc3Rh
dGljIHZvaWQgcGdkX3BvcHVsYXRlX3Rlc3RzKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwZ2RfdCAq
cGdkcCwgCj4+IHA0ZF90ICpwNGRwKQo+PiArewo+PiArwqDCoMKgIHBnZF90IHBnZDsKPj4gKwo+
PiArwqDCoMKgIGlmIChtbV9wNGRfZm9sZGVkKG1tKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
bjsKPj4gKwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIFRoaXMgZW50cnkgcG9pbnRzIHRv
IG5leHQgbGV2ZWwgcGFnZSB0YWJsZSBwYWdlLgo+PiArwqDCoMKgwqAgKiBIZW5jZSB0aGlzIG11
c3Qgbm90IHF1YWxpZnkgYXMgcGdkX2JhZCgpLgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBw
NGRfY2xlYXIocDRkcCk7Cj4+ICvCoMKgwqAgcGdkX2NsZWFyKHBnZHApOwo+PiArwqDCoMKgIHBn
ZF9wb3B1bGF0ZShtbSwgcGdkcCwgcDRkcCk7Cj4+ICvCoMKgwqAgcGdkID0gUkVBRF9PTkNFKCpw
Z2RwKTsKPj4gK8KgwqDCoCBXQVJOX09OKHBnZF9iYWQocGdkKSk7Cj4+ICt9Cj4+ICsjZWxzZQo+
PiArc3RhdGljIHZvaWQgcGdkX2NsZWFyX3Rlc3RzKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwZ2Rf
dCAqcGdkcCkgeyB9Cj4+ICtzdGF0aWMgdm9pZCBwZ2RfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1t
X3N0cnVjdCAqbW0sIHBnZF90ICpwZ2RwLCAKPj4gcDRkX3QgKnA0ZHApCj4+ICt7Cj4+ICt9Cj4+
ICsjZW5kaWYKPj4gKwo+PiArc3RhdGljIHZvaWQgcHRlX2NsZWFyX3Rlc3RzKHN0cnVjdCBtbV9z
dHJ1Y3QgKm1tLCBwdGVfdCAqcHRlcCkKPj4gK3sKPj4gK8KgwqDCoCBwdGVfdCBwdGUgPSBSRUFE
X09OQ0UoKnB0ZXApOwo+PiArCj4+ICvCoMKgwqAgcHRlID0gX19wdGUocHRlX3ZhbChwdGUpIHwg
UkFORE9NX09SVkFMVUUpOwo+PiArwqDCoMKgIFdSSVRFX09OQ0UoKnB0ZXAsIHB0ZSk7Cj4+ICvC
oMKgwqAgcHRlX2NsZWFyKG1tLCAwLCBwdGVwKTsKPj4gK8KgwqDCoCBwdGUgPSBSRUFEX09OQ0Uo
KnB0ZXApOwo+PiArwqDCoMKgIFdBUk5fT04oIXB0ZV9ub25lKHB0ZSkpOwo+PiArfQo+PiArCj4+
ICtzdGF0aWMgdm9pZCBwbWRfY2xlYXJfdGVzdHMocG1kX3QgKnBtZHApCj4+ICt7Cj4+ICvCoMKg
wqAgcG1kX3QgcG1kID0gUkVBRF9PTkNFKCpwbWRwKTsKPj4gKwo+PiArwqDCoMKgIHBtZCA9IF9f
cG1kKHBtZF92YWwocG1kKSB8IFJBTkRPTV9PUlZBTFVFKTsKPj4gK8KgwqDCoCBXUklURV9PTkNF
KCpwbWRwLCBwbWQpOwo+PiArwqDCoMKgIHBtZF9jbGVhcihwbWRwKTsKPj4gK8KgwqDCoCBwbWQg
PSBSRUFEX09OQ0UoKnBtZHApOwo+PiArwqDCoMKgIFdBUk5fT04oIXBtZF9ub25lKHBtZCkpOwo+
PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCBwbWRfcG9wdWxhdGVfdGVzdHMoc3RydWN0IG1tX3N0
cnVjdCAqbW0sIHBtZF90ICpwbWRwLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBndGFibGVfdCBwZ3RhYmxlKQo+PiArewo+PiArwqDCoMKgIHBtZF90IHBtZDsKPj4g
Kwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIFRoaXMgZW50cnkgcG9pbnRzIHRvIG5leHQg
bGV2ZWwgcGFnZSB0YWJsZSBwYWdlLgo+PiArwqDCoMKgwqAgKiBIZW5jZSB0aGlzIG11c3Qgbm90
IHF1YWxpZnkgYXMgcG1kX2JhZCgpLgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBwbWRfY2xl
YXIocG1kcCk7Cj4+ICvCoMKgwqAgcG1kX3BvcHVsYXRlKG1tLCBwbWRwLCBwZ3RhYmxlKTsKPj4g
K8KgwqDCoCBwbWQgPSBSRUFEX09OQ0UoKnBtZHApOwo+PiArwqDCoMKgIFdBUk5fT04ocG1kX2Jh
ZChwbWQpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHN0cnVjdCBwYWdlICphbGxvY19tYXBwZWRf
cGFnZSh2b2lkKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBwYWdlICpwYWdlOwo+PiArwqDCoMKg
IGdmcF90IGdmcF9tYXNrID0gR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk87Cj4+ICsKPj4gK8KgwqDC
oCBwYWdlID0gYWxsb2NfZ2lnYW50aWNfcGFnZV9vcmRlcihnZXRfb3JkZXIoUFVEX1NJWkUpLCBn
ZnBfbWFzaywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmaXJzdF9tZW1vcnlf
bm9kZSwgJm5vZGVfc3RhdGVzW05fTUVNT1JZXSk7Cj4+ICvCoMKgwqAgaWYgKHBhZ2UpIHsKPj4g
K8KgwqDCoMKgwqDCoMKgIHB1ZF9hbGlnbmVkID0gdHJ1ZTsKPj4gK8KgwqDCoMKgwqDCoMKgIHBt
ZF9hbGlnbmVkID0gdHJ1ZTsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBwYWdlOwo+PiArwqDC
oMKgIH0KPj4gKwo+PiArwqDCoMKgIHBhZ2UgPSBhbGxvY19wYWdlcyhnZnBfbWFzaywgZ2V0X29y
ZGVyKFBNRF9TSVpFKSk7Cj4+ICvCoMKgwqAgaWYgKHBhZ2UpIHsKPj4gK8KgwqDCoMKgwqDCoMKg
IHBtZF9hbGlnbmVkID0gdHJ1ZTsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBwYWdlOwo+PiAr
wqDCoMKgIH0KPj4gK8KgwqDCoCByZXR1cm4gYWxsb2NfcGFnZShnZnBfbWFzayk7Cj4+ICt9Cj4+
ICsKPj4gK3N0YXRpYyB2b2lkIGZyZWVfbWFwcGVkX3BhZ2Uoc3RydWN0IHBhZ2UgKnBhZ2UpCj4+
ICt7Cj4+ICvCoMKgwqAgaWYgKHB1ZF9hbGlnbmVkKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB1bnNp
Z25lZCBsb25nIHBmbiA9IHBhZ2VfdG9fcGZuKHBhZ2UpOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDC
oCBmcmVlX2NvbnRpZ19yYW5nZShwZm4sIDFVTEwgPDwgZ2V0X29yZGVyKFBVRF9TSVpFKSk7Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgaWYg
KHBtZF9hbGlnbmVkKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpbnQgb3JkZXIgPSBnZXRfb3JkZXIo
UE1EX1NJWkUpOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBmcmVlX3BhZ2VzKCh1bnNpZ25lZCBs
b25nKXBhZ2VfYWRkcmVzcyhwYWdlKSwgb3JkZXIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
Owo+PiArwqDCoMKgIH0KPj4gK8KgwqDCoCBmcmVlX3BhZ2UoKHVuc2lnbmVkIGxvbmcpcGFnZV9h
ZGRyZXNzKHBhZ2UpKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHVuc2lnbmVkIGxvbmcgZ2V0X3Jh
bmRvbV92YWRkcih2b2lkKQo+PiArewo+PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgcmFuZG9tX3Zh
ZGRyLCByYW5kb21fcGFnZXMsIHRvdGFsX3VzZXJfcGFnZXM7Cj4+ICsKPj4gK8KgwqDCoCB0b3Rh
bF91c2VyX3BhZ2VzID0gKFRBU0tfU0laRSAtIEZJUlNUX1VTRVJfQUREUkVTUykgLyBQQUdFX1NJ
WkU7Cj4+ICsKPj4gK8KgwqDCoCByYW5kb21fcGFnZXMgPSBnZXRfcmFuZG9tX2xvbmcoKSAlIHRv
dGFsX3VzZXJfcGFnZXM7Cj4+ICvCoMKgwqAgcmFuZG9tX3ZhZGRyID0gRklSU1RfVVNFUl9BRERS
RVNTICsgcmFuZG9tX3BhZ2VzICogUEFHRV9TSVpFOwo+PiArCj4+ICvCoMKgwqAgV0FSTl9PTihy
YW5kb21fdmFkZHIgPiBUQVNLX1NJWkUpOwo+PiArwqDCoMKgIFdBUk5fT04ocmFuZG9tX3ZhZGRy
IDwgRklSU1RfVVNFUl9BRERSRVNTKTsKPj4gK8KgwqDCoCByZXR1cm4gcmFuZG9tX3ZhZGRyOwo+
PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IF9faW5pdCBhcmNoX3BndGFibGVfdGVzdHNfaW5pdCh2
b2lkKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tOwo+PiArwqDCoMKgIHN0
cnVjdCBwYWdlICpwYWdlOwo+PiArwqDCoMKgIHBnZF90ICpwZ2RwOwo+PiArwqDCoMKgIHA0ZF90
ICpwNGRwLCAqc2F2ZWRfcDRkcDsKPj4gK8KgwqDCoCBwdWRfdCAqcHVkcCwgKnNhdmVkX3B1ZHA7
Cj4+ICvCoMKgwqAgcG1kX3QgKnBtZHAsICpzYXZlZF9wbWRwLCBwbWQ7Cj4+ICvCoMKgwqAgcHRl
X3QgKnB0ZXA7Cj4+ICvCoMKgwqAgcGd0YWJsZV90IHNhdmVkX3B0ZXA7Cj4+ICvCoMKgwqAgcGdw
cm90X3QgcHJvdDsKPj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIHZhZGRyOwo+PiArCj4+ICvCoMKg
wqAgcHJvdCA9IHZtX2dldF9wYWdlX3Byb3QoVk1GTEFHUyk7Cj4+ICvCoMKgwqAgdmFkZHIgPSBn
ZXRfcmFuZG9tX3ZhZGRyKCk7Cj4+ICvCoMKgwqAgbW0gPSBtbV9hbGxvYygpOwo+PiArwqDCoMKg
IGlmICghbW0pIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHByX2VycigibW1fc3RydWN0IGFsbG9jYXRp
b24gZmFpbGVkXG4iKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAxOwo+PiArwqDCoMKgIH0K
Pj4gKwo+PiArwqDCoMKgIHBhZ2UgPSBhbGxvY19tYXBwZWRfcGFnZSgpOwo+PiArwqDCoMKgIGlm
ICghcGFnZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJtZW1vcnkgYWxsb2NhdGlvbiBm
YWlsZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDE7Cj4+ICvCoMKgwqAgfQo+PiAr
Cj4+ICvCoMKgwqAgcGdkcCA9IHBnZF9vZmZzZXQobW0sIHZhZGRyKTsKPj4gK8KgwqDCoCBwNGRw
ID0gcDRkX2FsbG9jKG1tLCBwZ2RwLCB2YWRkcik7Cj4+ICvCoMKgwqAgcHVkcCA9IHB1ZF9hbGxv
YyhtbSwgcDRkcCwgdmFkZHIpOwo+PiArwqDCoMKgIHBtZHAgPSBwbWRfYWxsb2MobW0sIHB1ZHAs
IHZhZGRyKTsKPj4gK8KgwqDCoCBwdGVwID0gcHRlX2FsbG9jX21hcChtbSwgcG1kcCwgdmFkZHIp
Owo+PiArCj4+ICvCoMKgwqAgLyoKPj4gK8KgwqDCoMKgICogU2F2ZSBhbGwgdGhlIHBhZ2UgdGFi
bGUgcGFnZSBhZGRyZXNzZXMgYXMgdGhlIHBhZ2UgdGFibGUKPj4gK8KgwqDCoMKgICogZW50cmll
cyB3aWxsIGJlIHVzZWQgZm9yIHRlc3Rpbmcgd2l0aCByYW5kb20gb3IgZ2FyYmFnZQo+PiArwqDC
oMKgwqAgKiB2YWx1ZXMuIFRoZXNlIHNhdmVkIGFkZHJlc3NlcyB3aWxsIGJlIHVzZWQgZm9yIGZy
ZWVpbmcKPj4gK8KgwqDCoMKgICogcGFnZSB0YWJsZSBwYWdlcy4KPj4gK8KgwqDCoMKgICovCj4+
ICvCoMKgwqAgcG1kID0gUkVBRF9PTkNFKCpwbWRwKTsKPj4gK8KgwqDCoCBzYXZlZF9wNGRwID0g
cDRkX29mZnNldChwZ2RwLCAwVUwpOwo+PiArwqDCoMKgIHNhdmVkX3B1ZHAgPSBwdWRfb2Zmc2V0
KHA0ZHAsIDBVTCk7Cj4+ICvCoMKgwqAgc2F2ZWRfcG1kcCA9IHBtZF9vZmZzZXQocHVkcCwgMFVM
KTsKPj4gK8KgwqDCoCBzYXZlZF9wdGVwID0gcG1kX3BndGFibGUocG1kKTsKPj4gKwo+PiArwqDC
oMKgIHB0ZV9iYXNpY190ZXN0cyhwYWdlLCBwcm90KTsKPj4gK8KgwqDCoCBwbWRfYmFzaWNfdGVz
dHMocGFnZSwgcHJvdCk7Cj4+ICvCoMKgwqAgcHVkX2Jhc2ljX3Rlc3RzKHBhZ2UsIHByb3QpOwo+
PiArwqDCoMKgIHA0ZF9iYXNpY190ZXN0cyhwYWdlLCBwcm90KTsKPj4gK8KgwqDCoCBwZ2RfYmFz
aWNfdGVzdHMocGFnZSwgcHJvdCk7Cj4+ICsKPj4gK8KgwqDCoCBwdGVfY2xlYXJfdGVzdHMobW0s
IHB0ZXApOwo+PiArwqDCoMKgIHBtZF9jbGVhcl90ZXN0cyhwbWRwKTsKPj4gK8KgwqDCoCBwdWRf
Y2xlYXJfdGVzdHMocHVkcCk7Cj4+ICvCoMKgwqAgcDRkX2NsZWFyX3Rlc3RzKHA0ZHApOwo+PiAr
wqDCoMKgIHBnZF9jbGVhcl90ZXN0cyhtbSwgcGdkcCk7Cj4+ICsKPj4gK8KgwqDCoCBwbWRfcG9w
dWxhdGVfdGVzdHMobW0sIHBtZHAsIHNhdmVkX3B0ZXApOwo+PiArwqDCoMKgIHB1ZF9wb3B1bGF0
ZV90ZXN0cyhtbSwgcHVkcCwgc2F2ZWRfcG1kcCk7Cj4+ICvCoMKgwqAgcDRkX3BvcHVsYXRlX3Rl
c3RzKG1tLCBwNGRwLCBzYXZlZF9wdWRwKTsKPj4gK8KgwqDCoCBwZ2RfcG9wdWxhdGVfdGVzdHMo
bW0sIHBnZHAsIHNhdmVkX3A0ZHApOwo+PiArCj4+ICvCoMKgwqAgcDRkX2ZyZWUobW0sIHNhdmVk
X3A0ZHApOwo+PiArwqDCoMKgIHB1ZF9mcmVlKG1tLCBzYXZlZF9wdWRwKTsKPj4gK8KgwqDCoCBw
bWRfZnJlZShtbSwgc2F2ZWRfcG1kcCk7Cj4+ICvCoMKgwqAgcHRlX2ZyZWUobW0sIHNhdmVkX3B0
ZXApOwo+PiArCj4+ICvCoMKgwqAgbW1fZGVjX25yX3B1ZHMobW0pOwo+PiArwqDCoMKgIG1tX2Rl
Y19ucl9wbWRzKG1tKTsKPj4gK8KgwqDCoCBtbV9kZWNfbnJfcHRlcyhtbSk7Cj4+ICvCoMKgwqAg
X19tbWRyb3AobW0pOwo+PiArCj4+ICvCoMKgwqAgZnJlZV9tYXBwZWRfcGFnZShwYWdlKTsKPj4g
K8KgwqDCoCByZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgX19leGl0IGFyY2hf
cGd0YWJsZV90ZXN0c19leGl0KHZvaWQpIHsgfQo+PiArCj4+ICttb2R1bGVfaW5pdChhcmNoX3Bn
dGFibGVfdGVzdHNfaW5pdCk7Cj4+ICttb2R1bGVfZXhpdChhcmNoX3BndGFibGVfdGVzdHNfZXhp
dCk7Cj4+ICsKPj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsKPj4gK01PRFVMRV9BVVRIT1Io
IkFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVhbEBhcm0uY29tPiIpOwo+PiArTU9E
VUxFX0RFU0NSSVBUSU9OKCJUZXN0IGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMiKTsK
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LXNucHMtYXJjIG1haWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtc25wcy1h
cmMK
