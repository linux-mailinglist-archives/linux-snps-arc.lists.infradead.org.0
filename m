Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7573BD8C09
	for <lists+linux-snps-arc@lfdr.de>; Wed, 16 Oct 2019 11:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0e6cUkp++PM4HVZUHrGp6CEZCQEPLJ7F0iLxDvPn8yM=; b=N2T7IYPiyB6GTr
	3HOX5BlsGTnpxtu7tlgnbQyT98IK6WXfy7kf663VqH3aoa/oYDWv+nnoVsn3/y7ZRYvfhrzaZVAqg
	4KxrXkCR+aQeTZJ/NSia6K8nnlsjcZm9Q1llnAHhOqd+ENHrthAsd8kWQs7yN9RL7K7mPmdQHa1np
	yGUG6n8nHvDAX5qI4Yt9h2SWmskL7R1/8pB0dsGGctoo3hKQR4i1lisYG3Yqr5Tc6l+a65MmLYUfa
	vgx4aKKT1z8rnrWUu/llHeCw/m1Ujxf4CYsO6wJDr9C0WZzi9cTv0GczFWrmlTXdJNalDILEoA/Ao
	S8kQdayF6hHDNL9ddafA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfAF-0000SL-4D; Wed, 16 Oct 2019 09:00:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf9u-0007dM-VA; Wed, 16 Oct 2019 08:59:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 940C9142F;
 Wed, 16 Oct 2019 01:59:50 -0700 (PDT)
Received: from [10.163.1.216] (unknown [10.163.1.216])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2810F3F6C4;
 Wed, 16 Oct 2019 01:59:32 -0700 (PDT)
Subject: Re: [PATCH V6 0/2] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, linux-mm@kvack.org
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571150502.5937.39.camel@lca.pw>
 <c052784a-a5d7-878e-cd97-01daa90c0ed8@arm.com>
 <1571164920.5937.45.camel@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <fb1fe447-d30a-21ea-1b85-0d46e14f0872@arm.com>
Date: Wed, 16 Oct 2019 14:29:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1571164920.5937.45.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_015955_087733_E2B57474 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CgpPbiAxMC8xNi8yMDE5IDEyOjEyIEFNLCBRaWFuIENhaSB3cm90ZToKPiBPbiBUdWUsIDIwMTkt
MTAtMTUgYXQgMjA6NTEgKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pgo+PiBPbiAx
MC8xNS8yMDE5IDA4OjExIFBNLCBRaWFuIENhaSB3cm90ZToKPj4+IFRoZSB4ODYgd2lsbCBjcmFz
aCB3aXRoIGxpbnV4LW5leHQgZHVyaW5nIGJvb3QgZHVlIHRvIHRoaXMgc2VyaWVzICh2NSkgd2l0
aCB0aGUKPj4+IGNvbmZpZyBiZWxvdyBwbHVzIENPTkZJR19ERUJVR19WTV9QR1RBQkxFPXkuIEkg
YW0gbm90IHN1cmUgaWYgdjYgd291bGQgYWRkcmVzcwo+Pj4gaXQuCj4+Pgo+Pj4gaHR0cHM6Ly9y
YXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIveDg2LmNvbmZp
Zwo+Pj4KPj4+IFvCoMKgwqAzMy44NjI2MDBdW8KgwqDCoMKgVDFdIHBhZ2U6ZmZmZmVhMDAwOTAw
MDAwMCBpcyB1bmluaXRpYWxpemVkIGFuZCBwb2lzb25lZAo+Pj4gW8KgwqDCoDMzLjg2MjYwOF1b
wqDCoMKgwqBUMV0gcmF3OiBmZmZmZmZmZmZmZmZmZmZmIGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZm
ZmZmZmZmZmZmZgo+Pj4gZmZmZmZmODcxMTQwXVvCoMKgwqDCoFQxXcKgwqA/IF9yYXdfc3Bpbl91
bmxvY2tfaXJxKzB4MjcvMHg0MAo+Pj4gW8KgwqDCoDMzLjg3MTE0MF1bwqDCoMKgwqBUMV3CoMKg
PyByZXN0X2luaXQrMHgzMDcvMHgzMDcKPj4+IFvCoMKgwqAzMy44NzExNDBdW8KgwqDCoMKgVDFd
wqDCoGtlcm5lbF9pbml0KzB4MTEvMHgxMzkKPj4+IFvCoMKgwqAzMy44NzExNDBdW8KgwqDCoMKg
VDFdwqDCoD8gcmVzdF9pbml0KzB4MzA3LzB4MzA3Cj4+PiBbwqDCoMKgMzMuODcxMTQwXVvCoMKg
wqDCoFQxXcKgwqByZXRfZnJvbV9mb3JrKzB4MjcvMHg1MAo+Pj4gW8KgwqDCoDMzLjg3MTE0MF1b
wqDCoMKgwqBUMV0gTW9kdWxlcyBsaW5rZWQgaW46Cj4+PiBbwqDCoMKgMzMuODcxMTQwXVvCoMKg
wqDCoFQxXSAtLS1bIGVuZCB0cmFjZSBlOTlkMzkyYjBmN2JlZmJkIF0tLS0KPj4+IFvCoMKgwqAz
My44NzExNDBdW8KgwqDCoMKgVDFdIFJJUDogMDAxMDphbGxvY19naWdhbnRpY19wYWdlX29yZGVy
KzB4M2ZlLzB4NDkwCj4+Cj4+IEhtbSwgd2l0aCBkZWZjb25maWcgKERFQlVHX1ZNPXkgYW5kIERF
QlVHX1ZNX1BHVEFCTEU9eSkgaXQgZG9lcyBub3QgY3Jhc2ggYnV0Cj4+IHdpdGggdGhlIGNvbmZp
ZyBhYm92ZSwgaXQgZG9lcy4gSnVzdCB3b25kZXJpbmcgaWYgaXQgaXMgcG9zc2libGUgdGhhdCB0
aGVzZQo+PiBwYWdlcyBtaWdodCBub3QgYmVlbiBpbml0aWFsaXplZCB5ZXQgYmVjYXVzZSBERUZF
UlJFRF9TVFJVQ1RfUEFHRV9JTklUPXkgPwo+IAo+IFllcywgdGhpcyBwYXRjaCB3b3JrcyBmaW5l
Lgo+IAo+IGRpZmYgLS1naXQgYS9pbml0L21haW4uYyBiL2luaXQvbWFpbi5jCj4gaW5kZXggNjc2
ZDgwMjBkZDI5Li41OTFiZThmOWU4ZTAgMTAwNjQ0Cj4gLS0tIGEvaW5pdC9tYWluLmMKPiArKysg
Yi9pbml0L21haW4uYwo+IEBAIC0xMTc3LDcgKzExNzcsNiBAQCBzdGF0aWMgbm9pbmxpbmUgdm9p
ZCBfX2luaXQga2VybmVsX2luaXRfZnJlZWFibGUodm9pZCkKPiDCoMKgwqDCoMKgwqDCoMKgd29y
a3F1ZXVlX2luaXQoKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBpbml0X21tX2ludGVybmFscygp
Owo+IC3CoMKgwqDCoMKgwqDCoGRlYnVnX3ZtX3BndGFibGUoKTsKPiDCoAo+IMKgwqDCoMKgwqDC
oMKgwqBkb19wcmVfc21wX2luaXRjYWxscygpOwo+IMKgwqDCoMKgwqDCoMKgwqBsb2NrdXBfZGV0
ZWN0b3JfaW5pdCgpOwo+IEBAIC0xMTg2LDYgKzExODUsOCBAQCBzdGF0aWMgbm9pbmxpbmUgdm9p
ZCBfX2luaXQga2VybmVsX2luaXRfZnJlZWFibGUodm9pZCkKPiDCoMKgwqDCoMKgwqDCoMKgc2No
ZWRfaW5pdF9zbXAoKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBwYWdlX2FsbG9jX2luaXRfbGF0
ZSgpOwo+ICvCoMKgwqDCoMKgwqDCoGRlYnVnX3ZtX3BndGFibGUoKTsKPiArCj4gwqDCoMKgwqDC
oMKgwqDCoC8qIEluaXRpYWxpemUgcGFnZSBleHQgYWZ0ZXIgYWxsIHN0cnVjdCBwYWdlcyBhcmUg
aW5pdGlhbGl6ZWQuICovCj4gwqDCoMKgwqDCoMKgwqDCoHBhZ2VfZXh0X2luaXQoKTsKPiAKClN1
cmUsIHdpbGwga2VlcCB0aGlzIGluIG1pbmQgaWYgd2UgYXQgYWxsIGVuZCB1cCB3aXRoIG1lbW9y
eSBhbGxvY2F0aW9uIGFwcHJvYWNoCmZvciB0aGlzIHRlc3QuCgo+Pgo+PiBbICAgMTMuODk4NTQ5
XVsgICAgVDFdIHBhZ2U6ZmZmZmVhMDAwNTAwMDAwMCBpcyB1bmluaXRpYWxpemVkIGFuZCBwb2lz
b25lZAo+PiBbICAgMTMuODk4NTQ5XVsgICAgVDFdIHJhdzogZmZmZmZmZmZmZmZmZmZmZiBmZmZm
ZmZmZmZmZmZmZmZmIGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZmZmZmZmZmZgo+PiBbICAgMTMu
ODk4NTQ5XVsgICAgVDFdIHJhdzogZmZmZmZmZmZmZmZmZmZmZiBmZmZmZmZmZmZmZmZmZmZmIGZm
ZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZmZmZmZmZmZgo+PiBbICAgMTMuODk4NTQ5XVsgICAgVDFd
IHBhZ2UgZHVtcGVkIGJlY2F1c2U6IFZNX0JVR19PTl9QQUdFKFBhZ2VQb2lzb25lZChwKSkKPj4g
WyAgIDEzLjg5ODU0OV1bICAgIFQxXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0t
LS0KPj4gWyAgIDEzLjg5ODU0OV1bICAgIFQxXSBrZXJuZWwgQlVHIGF0IC4vaW5jbHVkZS9saW51
eC9tbS5oOjExMDchCj4+IFsgICAxMy44OTg1NDldWyAgICBUMV0gaW52YWxpZCBvcGNvZGU6IDAw
MDAgWyMxXSBTTVAgREVCVUdfUEFHRUFMTE9DIEtBU0FOIFBUSQo+PiBbICAgMTMuODk4NTQ5XVsg
ICAgVDFdIENQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUuNC4wLXJj
My1uZXh0LTIwMTkxMDE1KyAjCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1hcmNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXNucHMtYXJjCg==
