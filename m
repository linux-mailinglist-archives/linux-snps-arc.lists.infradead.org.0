Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E28158830
	for <lists+linux-snps-arc@lfdr.de>; Tue, 11 Feb 2020 03:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkI5eK9eXPOgpE0GQX5gNBuPVatKDBbnfT6BPWNUlQs=; b=K+PZ+mX1JYUgJO
	dYcLiILFLyxRcJD7rZ3YVJL+8ba0q/EuZb70iWWngo3Zu1MLLUXQf5eCpHb7Tufl5x1LvzOoatcVa
	i20Uo5Kgsr/ctnF8GhrTGz7wFQx/fq+TRUZd8DcO8r0PJY84I0vMTBCT4wh5r/MvWoSEHsXYvO9Kh
	/oUMBCTY2zpM5HlvbneKP94QMUpfO55UobeLdFM6EDXqb9g48emEX7WCICR49KIfua2Q129T/12RC
	rBa1rp2eoccbcH+uhcbT2d1csC12RAImH0B5ETI2yWiOmoIgxvNsvITroDX3LxXdZGNW+JNhDWk+h
	tRWAyhLHj+Z5agJnLvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1LFR-00063Q-UN; Tue, 11 Feb 2020 02:26:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1LFM-00061n-T5; Tue, 11 Feb 2020 02:25:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FA6531B;
 Mon, 10 Feb 2020 18:25:54 -0800 (PST)
Received: from [10.162.16.95] (p8cg001049571a15.blr.arm.com [10.162.16.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAA353F6CF;
 Mon, 10 Feb 2020 18:25:37 -0800 (PST)
Subject: Re: [PATCH V13] mm/debug: Add tests validating architecture page
 table helpers
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <1580897674-16456-1-git-send-email-anshuman.khandual@arm.com>
 <202002060619.wEOdAZU1%lkp@intel.com>
 <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
 <20200209205231.44d098f8749e88190b8ba10c@linux-foundation.org>
 <955229f7-f161-f720-0e75-a3163f63817d@arm.com>
 <aef1048f-68c4-d14f-e669-8f288ba9ac7a@c-s.fr>
 <20200210100200.GB25745@shell.armlinux.org.uk>
 <7cb3a5bb-eaea-a01c-4047-e3c000b7ad1d@c-s.fr>
 <20200210110639.GC25745@shell.armlinux.org.uk>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <82317d50-57a2-ce84-7557-21635d57448e@arm.com>
Date: Tue, 11 Feb 2020 07:55:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200210110639.GC25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_182557_028265_D1F1F2AD 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, uclinux-h8-devel@lists.sourceforge.jp,
 linux-m68k@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Max Filippov <jcmvbkbc@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Matthew Wilcox <willy@infradead.org>,
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-alpha@vger.kernel.org,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>, linux-c6x-dev@linux-c6x.org,
 Mark Brown <broonie@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Vlastimil Babka <vbabka@suse.cz>, Richard Henderson <rth@twiddle.net>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Brian Cain <bcain@codeaurora.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CgpPbiAwMi8xMC8yMDIwIDA0OjM2IFBNLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4g
d3JvdGU6Cj4gT24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgMTE6NDY6MjNBTSArMDEwMCwgQ2hyaXN0
b3BoZSBMZXJveSB3cm90ZToKPj4KPj4KPj4gTGUgMTAvMDIvMjAyMCDDoCAxMTowMiwgUnVzc2Vs
bCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIGEgw6ljcml0wqA6Cj4+PiBPbiBNb24sIEZlYiAxMCwg
MjAyMCBhdCAwNzozODozOEFNICswMTAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+Pj4+Cj4+
Pj4KPj4+PiBMZSAxMC8wMi8yMDIwIMOgIDA2OjM1LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3Jp
dMKgOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiAwMi8xMC8yMDIwIDEwOjIyIEFNLCBBbmRyZXcgTW9y
dG9uIHdyb3RlOgo+Pj4+Pj4gT24gVGh1LCA2IEZlYiAyMDIwIDEzOjQ5OjM1ICswNTMwIEFuc2h1
bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVhbEBhcm0uY29tPiB3cm90ZToKPj4+Pj4+Cj4+
Pj4+Pj4KPj4+Pj4+PiBPbiAwMi8wNi8yMDIwIDA0OjQwIEFNLCBrYnVpbGQgdGVzdCByb2JvdCB3
cm90ZToKPj4+Pj4+Pj4gSGkgQW5zaHVtYW4sCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYW5rIHlvdSBm
b3IgdGhlIHBhdGNoISBZZXQgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IFthdXRvIGJ1aWxkIHRlc3QgRVJST1Igb24gcG93ZXJwYy9uZXh0XQo+Pj4+Pj4+PiBbYWxzbyBi
dWlsZCB0ZXN0IEVSUk9SIG9uIHMzOTAvZmVhdHVyZXMgbGludXMvbWFzdGVyIGFyYy9mb3ItbmV4
dCB2NS41XQo+Pj4+Pj4+PiBbY2Fubm90IGFwcGx5IHRvIG1tb3RtL21hc3RlciB0aXAveDg2L2Nv
cmUgYXJtNjQvZm9yLW5leHQvY29yZSBuZXh0LTIwMjAwMjA1XQo+Pj4+Pj4+PiBbaWYgeW91ciBw
YXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMgYSBu
b3RlIHRvIGhlbHAKPj4+Pj4+Pj4gaW1wcm92ZSB0aGUgc3lzdGVtLiBCVFcsIHdlIGFsc28gc3Vn
Z2VzdCB0byB1c2UgJy0tYmFzZScgb3B0aW9uIHRvIHNwZWNpZnkgdGhlCj4+Pj4+Pj4+IGJhc2Ug
dHJlZSBpbiBnaXQgZm9ybWF0LXBhdGNoLCBwbGVhc2Ugc2VlIGh0dHBzOi8vc3RhY2tvdmVyZmxv
dy5jb20vYS8zNzQwNjk4Ml0KPj4+Pj4+Pj4KPj4+Pj4+Pj4gdXJsOiAgICBodHRwczovL2dpdGh1
Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0Fuc2h1bWFuLUtoYW5kdWFsL21tLWRlYnVnLUFk
ZC10ZXN0cy12YWxpZGF0aW5nLWFyY2hpdGVjdHVyZS1wYWdlLXRhYmxlLWhlbHBlcnMvMjAyMDAy
MDUtMjE1NTA3Cj4+Pj4+Pj4+IGJhc2U6ICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvcG93ZXJwYy9saW51eC5naXQgbmV4dAo+Pj4+Pj4+PiBjb25maWc6
IGlhNjQtYWxsbW9kY29uZmlnIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+Pj4+Pj4+PiBjb21waWxl
cjogaWE2NC1saW51eC1nY2MgKEdDQykgNy41LjAKPj4+Pj4+Pj4gcmVwcm9kdWNlOgo+Pj4+Pj4+
PiAgICAgICAgICAgd2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vaW50ZWwv
bGtwLXRlc3RzL21hc3Rlci9zYmluL21ha2UuY3Jvc3MgLU8gfi9iaW4vbWFrZS5jcm9zcwo+Pj4+
Pj4+PiAgICAgICAgICAgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9zcwo+Pj4+Pj4+PiAgICAgICAg
ICAgIyBzYXZlIHRoZSBhdHRhY2hlZCAuY29uZmlnIHRvIGxpbnV4IGJ1aWxkIHRyZWUKPj4+Pj4+
Pj4gICAgICAgICAgIEdDQ19WRVJTSU9OPTcuNS4wIG1ha2UuY3Jvc3MgQVJDSD1pYTY0Cj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0
YWcKPj4+Pj4+Pj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29t
Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBBbGwgZXJyb3Ivd2FybmluZ3MgKG5ldyBvbmVzIHByZWZpeGVk
IGJ5ID4+KToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gaW5j
bHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLW5vcHVkLmg6ODowLAo+Pj4+Pj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgZnJvbSBhcmNoL2lhNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oOjU4NiwKPj4+
Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9tbS5oOjk5LAo+
Pj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L2hpZ2htZW0u
aDo4LAo+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgZnJvbSBtbS9kZWJ1Z192bV9wZ3Rh
YmxlLmM6MTQ6Cj4+Pj4+Pj4+ICAgICAgbW0vZGVidWdfdm1fcGd0YWJsZS5jOiBJbiBmdW5jdGlv
biAncHVkX2NsZWFyX3Rlc3RzJzoKPj4+Pj4+Pj4+PiBpbmNsdWRlL2FzbS1nZW5lcmljL3BndGFi
bGUtbm9wNGQtaGFjay5oOjQ3OjMyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVu
Y3Rpb24gJ19fcGdkJzsgZGlkIHlvdSBtZWFuICdfX3A0ZCc/IFstV2Vycm9yPWltcGxpY2l0LWZ1
bmN0aW9uLWRlY2xhcmF0aW9uXQo+Pj4+Pj4+PiAgICAgICAjZGVmaW5lIF9fcHVkKHgpICAgICgo
cHVkX3QpIHsgX19wZ2QoeCkgfSkKPj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIF4KPj4+Pj4+Pj4+PiBtbS9kZWJ1Z192bV9wZ3RhYmxlLmM6MTQxOjg6IG5vdGU6
IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnX19wdWQnCj4+Pj4+Pj4+ICAgICAgICBwdWQgPSBfX3B1
ZChwdWRfdmFsKHB1ZCkgfCBSQU5ET01fT1JWQUxVRSk7Cj4+Pj4+Pj4+ICAgICAgICAgICAgICBe
fn5+fgo+Pj4+Pj4+Pj4+IGluY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS1ub3A0ZC1oYWNrLmg6
NDc6MjI6IHdhcm5pbmc6IG1pc3NpbmcgYnJhY2VzIGFyb3VuZCBpbml0aWFsaXplciBbLVdtaXNz
aW5nLWJyYWNlc10KPj4+Pj4+Pj4gICAgICAgI2RlZmluZSBfX3B1ZCh4KSAgICAoKHB1ZF90KSB7
IF9fcGdkKHgpIH0pCj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPj4+Pj4+
Pj4+PiBtbS9kZWJ1Z192bV9wZ3RhYmxlLmM6MTQxOjg6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBt
YWNybyAnX19wdWQnCj4+Pj4+Pj4+ICAgICAgICBwdWQgPSBfX3B1ZChwdWRfdmFsKHB1ZCkgfCBS
QU5ET01fT1JWQUxVRSk7Cj4+Pj4+Pj4+ICAgICAgICAgICAgICBefn5+fgo+Pj4+Pj4+PiAgICAg
IGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+Pj4+Pj4+Cj4+Pj4+
Pj4gVGhpcyBidWlsZCBmYWlsdXJlIGlzIGV4cGVjdGVkIG5vdyBnaXZlbiB0aGF0IHdlIGhhdmUg
YWxsb3dlZCBERUJVR19WTV9QR1RBQkxFCj4+Pj4+Pj4gd2l0aCBFWFBFUlQgd2l0aG91dCBwbGF0
Zm9ybSByZXF1aXJpbmcgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4gVGhpcyBwcm9ibGVtCj4+
Pj4+Pj4gaS5lIGJ1aWxkIGZhaWx1cmUgY2F1c2VkIHdpdGhvdXQgYSBwbGF0Zm9ybSBfX3BnZCgp
LCBpcyBrbm93biB0byBleGlzdCBib3RoIG9uCj4+Pj4+Pj4gaWE2NCBhbmQgYXJtICgzMmJpdCkg
cGxhdGZvcm1zLiBQbGVhc2UgcmVmZXIgaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOS8yNC8z
MTQKPj4+Pj4+PiBmb3IgZGV0YWlscyB3aGVyZSB0aGlzIHdhcyBkaXNjdXNzZWQgZWFybGllci4K
Pj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEknZCBwcmVmZXIgbm90IHRvIG1lcmdlIGEgcGF0Y2ggd2hp
Y2ggaXMga25vd24gdG8gY2F1c2UgYnVpbGQKPj4+Pj4+IHJlZ3Jlc3Npb25zLiAgSXMgdGhlcmUg
c29tZSB0ZW1wb3JhcnkgdGhpbmcgd2UgY2FuIGRvIHRvIHByZXZlbnQgdGhlc2UKPj4+Pj4+IGVy
cm9ycyB1bnRpbCBhcmNoIG1haW50YWluZXJzKD8pIGdldCBhcm91bmQgdG8gaW1wbGVtZW50aW5n
IHRoZQo+Pj4+Pj4gbG9uZy10ZXJtIGZpeGVzPwo+Pj4+Pgo+Pj4+PiBXZSBjb3VsZCBleHBsaWNp
dGx5IGRpc2FibGUgQ09ORklHX0RFQlVHX1ZNX1BHVEFCTEUgb24gaWE2NCBhbmQgYXJtIHBsYXRm
b3Jtcwo+Pj4+PiB3aGljaCB3aWxsIGVuc3VyZSB0aGF0IG90aGVycyBjYW4gc3RpbGwgdXNlIHRo
ZSBFWFBFUlQgcGF0aC4KPj4+Pj4KPj4+Pj4gY29uZmlnIERFQlVHX1ZNX1BHVEFCTEUKPj4+Pj4g
CWJvb2wgIkRlYnVnIGFyY2ggcGFnZSB0YWJsZSBmb3Igc2VtYW50aWNzIGNvbXBsaWFuY2UiCj4+
Pj4+IAlkZXBlbmRzIG9uIE1NVQo+Pj4+PiAJZGVwZW5kcyBvbiAhKElBNjQgfHwgQVJNKQo+Pj4+
PiAJZGVwZW5kcyBvbiBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFIHx8IEVYUEVSVAo+Pj4+PiAJ
ZGVmYXVsdCBuIGlmICFBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFCj4+Pj4+IAlkZWZhdWx0IHkg
aWYgREVCVUdfVk0KPj4+Pj4KPj4+Pgo+Pj4+IE9uIGJvdGggaWEzMiBhbmQgYXJtLCB0aGUgZml4
IGlzIHRyaXZpYWwuCj4+Pj4KPj4+PiBDYW4gd2UgaW5jbHVkZSB0aGUgZml4IHdpdGhpbiB0aGlz
IHBhdGNoLCBqdXN0IHRoZSBzYW1lIHdheSBhcyB0aGUKPj4+PiBtbV9wNGRfZm9sZGVkKCkgZml4
IGZvciB4ODYgPwo+Pj4KPj4+IFdoeSBzaG91bGQgYXJtIGluY2x1ZGUgYSBtYWNybyBmb3Igc29t
ZXRoaW5nIHRoYXQgbm90aGluZyAoYXBhcnQgZnJvbQo+Pj4gdGhpcyBjaGVja2VyKSByZXF1aXJl
cz8gIElmIHRoZSBjaGVja2VyIHJlcXVpcmVzIGl0IGJ1dCB0aGUgcmVzdCBvZgo+Pj4gdGhlIGtl
cm5lbCBkb2VzIG5vdCwgaXQgc3VnZ2VzdHMgdGhhdCB0aGUgY2hlY2tlciBpc24ndCBhY3R1YWxs
eQo+Pj4gY29ycmVjdCwgYW5kIHRoZSByZXN1bHRzIGNhbid0IGJlIHJlbGllZCB1cG9uLgo+Pj4K
Pj4KPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSwgdGhlIHByb2JsZW0gaXMgdGhhdCBhcm0gb3BlbmNv
ZGVzIHBhcnQgb2YgdGhlIEFQSQo+PiBpbnN0ZWFkIG9mIGluY2x1ZGluZyBhc20tZ2VuZXJpYy9w
Z3RhYmxlLW5vcG1kLmgKPj4KPj4gSGVyZSwgdGhlIEFSTSBoYXMgMiBsZXZlbHMsIGllIG9ubHkg
UEdEIGFuZCBQVEUuIEJ1dCBpbnN0ZWFkIG9mIGRlZmluaW5nCj4+IF9fcGdkIGFuZCBfX3B0ZSBh
bmQgZ2V0dGluZyBldmVyeXRoaW5nIGVsc2UgZnJvbSBhc20tZ2VuZXJpYywgaXQgZGVmaW5lcyBh
Cj4+IF9fcG1kIHRoZW4gcmVkZWZpbmVzIHRoZSBmb2xkZWQgbGV2ZWxzIGxpa2UgdGhlIHB1ZCwg
ZXRjIC4uLgo+Pgo+PiBUaGF0J3MgZXhhY3RseSB3aGF0IHRoZSBjaGVja2VyIGFpbXMgYXQgZGV0
ZWN0aW5nOiBhcmNoaXRlY3R1cmVzIHRoYW4gZG8gbm90Cj4+IHByb3Blcmx5IHVzZSB0aGUgc3Rh
bmRhcmQgbGludXggcGFnZSB0YWJsZSBzdHJ1Y3R1cmVzLgo+IAo+IFRoZXJlIGFyZSBnb29kIHJl
YXNvbnMgZm9yIHRoZSB3YXkgQVJNIGRvZXMgc3R1ZmYuICBUaGUgZ2VuZXJpYyBjcmFwIHdhcwo+
IHdyaXR0ZW4gd2l0aG91dCByZWdhcmQgZm9yIHRoZSBjaXJjdW1zdGFuY2VzIHRoYXQgQVJNIGhh
cywgYW5kIHRodXMgaXMKPiBlbnRpcmVseSB1bnN1aXRhYmxlIGZvciAzMi1iaXQgQVJNLgoKU2lu
Y2Ugd2UgZG9udCBoYXZlIGFuIGFncmVlbWVudCBoZXJlLCBsZXRzIGp1c3Qgc2V0dGxlIHdpdGgg
ZGlzYWJsaW5nIHRoZQp0ZXN0IGZvciBub3cgb24gcGxhdGZvcm1zIHdoZXJlIHRoZSBidWlsZCBm
YWlscy4gQ09ORklHX0VYUEVSVCBpcyBlbmFibGluZwp0aGlzIHRlc3QgZm9yIGJldHRlciBhZGFw
dGFiaWxpdHkgYW5kIGNvdmVyYWdlLCBoZW5jZSBob3cgYWJvdXQgcmUgZnJhbWluZwp0aGUgY29u
ZmlnIGxpa2UgdGhpcyA/IFRoaXMgYXQgdGhlIGxlYXN0IGNvbnZleXMgdGhlIGZhY3QgdGhhdCBF
WFBFUlQgb25seQp3b3JrcyB3aGVuIHBsYXRmb3JtIGlzIG5laXRoZXIgSUE2NCBvciBBUk0uCgpj
b25maWcgREVCVUdfVk1fUEdUQUJMRQoJYm9vbCAiRGVidWcgYXJjaCBwYWdlIHRhYmxlIGZvciBz
ZW1hbnRpY3MgY29tcGxpYW5jZSIKCWRlcGVuZHMgb24gTU1VCglkZXBlbmRzIG9uIEFSQ0hfSEFT
X0RFQlVHX1ZNX1BHVEFCTEUgfHwgKEVYUEVSVCAmJiAgIShJQTY0IHx8IEFSTSkpCglkZWZhdWx0
IG4gaWYgIUFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUKCWRlZmF1bHQgeSBpZiBERUJVR19WTQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtc25w
cy1hcmMgbWFpbGluZyBsaXN0CmxpbnV4LXNucHMtYXJjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1zbnBzLWFyYwo=
