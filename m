Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A2B1733B1
	for <lists+linux-snps-arc@lfdr.de>; Fri, 28 Feb 2020 10:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ijugstym3DYjsT1dwb5q8aExtAknkp/TOvN3Kim2R3w=; b=gopSyTbwQ5UMh9
	mfLxzjGnQLQoVfe4SDpc94nDtTluUmIeaLTSaYpkdjSJpc5AtISBhY8y8H5JACNIepyCo2h1Ar3SL
	6MoZ/Fn0VGOG9yu56qcZk+z2CPLpXDQK6bXVapZ3Vtc7y+vsRjXyPTZWpPXOvX96lVjdV9giRQcXH
	Q37L82VLWnsXNO5vPda6LY1YdSE41+aszqXWgDgMyvWaawirMtAUl+kw4oXPplQK6RETs1GOnEBDT
	GFxYh6QJZWXUzO4EDPS/Gpp9wv/eU1iZHiJ8ItmH1JXHi8wAuLYh0MRjTZNf5CixGcgsLYDNlHPen
	zdUU+OssyXqqgrLlJ0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bp6-0002ff-MD; Fri, 28 Feb 2020 09:20:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bom-0002I2-JJ; Fri, 28 Feb 2020 09:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2C8E1FB;
 Fri, 28 Feb 2020 01:20:19 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E52C03F7B4;
 Fri, 28 Feb 2020 01:20:10 -0800 (PST)
Subject: Re: [PATCH] mm/debug: Add tests validating arch page table helpers
 for core features
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
 <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f99692be-5d38-fdb7-46f1-205c7cc7481c@arm.com>
Date: Fri, 28 Feb 2020 14:50:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012024_696067_761E8A50 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

CgpPbiAwMi8yNy8yMDIwIDA0OjEyIFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+IAo+IAo+
IExlIDI3LzAyLzIwMjAgw6AgMTE6MzMsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
IFRoaXMgYWRkcyBuZXcgdGVzdHMgdmFsaWRhdGluZyBhcmNoIHBhZ2UgdGFibGUgaGVscGVycyBm
b3IgdGhlc2UgZm9sbG93aW5nCj4+IGNvcmUgbWVtb3J5IGZlYXR1cmVzLiBUaGVzZSB0ZXN0cyBj
cmVhdGUgYW5kIHRlc3Qgc3BlY2lmaWMgbWFwcGluZyB0eXBlcyBhdAo+PiB2YXJpb3VzIHBhZ2Ug
dGFibGUgbGV2ZWxzLgo+Pgo+PiAqIFNQRUNJQUwgbWFwcGluZwo+PiAqIFBST1ROT05FIG1hcHBp
bmcKPj4gKiBERVZNQVAgbWFwcGluZwo+PiAqIFNPRlRESVJUWSBtYXBwaW5nCj4+ICogU1dBUCBt
YXBwaW5nCj4+ICogTUlHUkFUSU9OIG1hcHBpbmcKPj4gKiBIVUdFVExCIG1hcHBpbmcKPiAKPiBG
b3IgdGVzdGluZyBIVUdFVExCIG1hcHBpbmdzLCB5b3UgYWxzbyBoYXZlIHRvIGluY2x1ZGUgdGVz
dHMgb2YgaHVnZXBkIGZ1bmN0aW9ucy9oZWxwZXJzLiBOb3QgYWxsIGFyY2hpY3R1cmVzIGhhdmUg
aHVnZXBhZ2Ugc2l6ZSB3aGljaCBtYXRjaGVzIHdpdGggcGFnZSB0YWJsZXMgbGV2ZWxzIChlLmcu
IHBvd2VycGMpLiBUaG9zZSBhcmNoaXRlY3R1cmVzIHVzZSBodWdlcGRfdC4KCkRvbnQgc2VlIG11
Y2ggaHVnZXBkX3QgaW4gZ2VuZXJpYyBIdWdlVExCLiBKdXN0IHdvbmRlcmluZyB3aGljaCBnZW5l
cmljCmh1Z2VwZCBoZWxwZXJzIGNhbiBiZSB0ZXN0ZWQgaGVyZS4gQ291bGQgeW91IHBsZWFzZSBi
ZSBiaXQgbW9yZSBzcGVjaWZpYy4KQXMgd2UgaGF2ZSBub3QgeWV0IHN0YXJ0ZWQgbG9va2luZyBm
b3IgYXJjaCBzcGVjaWZpYyBwYWdlIHRhYmxlIGhlbHBlcnMKdGVzdCByZXF1aXJlbWVudHMsIGFs
bCB0aGUgdGVzdCBzY2VuYXJpb3MgaGVyZSBuZWVkIHRvIGJlIGdlbmVyaWMuCgo+IAo+IENocmlz
dG9waGUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXNucHMtYXJjIG1haWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
c25wcy1hcmMK
