Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CDAD78E7
	for <lists+linux-snps-arc@lfdr.de>; Tue, 15 Oct 2019 16:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90SeVtKwgBc2feYIGLSME9wANMTzdUASxxc/2lgMid4=; b=dCme26SOJLVpBJ
	RvF600cNI0k29emiQJVYLFn4DGkzeJoCk/dE5iS5mYZNsWdff1x8+4IykMLNNZEtnDCP7jBvdvqoC
	2VSAbD5dMS8xgQRv73zomJQ2uKPsQuf8DtfZcaYuahpA8eoVkHBP5Dc3Me+aKgNeNbCclIju80o6d
	raOcapSYLjJTuLT7QuDb709nq1XHx7AysG043r80zp/l4GDC8r+ev4RRNJo2uVSIt+npz0LMNQ60w
	xThJjb6hSbrgzlsBo+3Re6BpyGKvYrSvQ+lOz9fy51wynCQt/ypHtCQYQrNlZplUNnub+ljgXBgvF
	gHXO/I9M4f147UviDJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKO1J-00074k-9a; Tue, 15 Oct 2019 14:41:53 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKO1F-00073i-SM
 for linux-snps-arc@lists.infradead.org; Tue, 15 Oct 2019 14:41:52 +0000
Received: by mail-qt1-x841.google.com with SMTP id u40so30846974qth.11
 for <linux-snps-arc@lists.infradead.org>; Tue, 15 Oct 2019 07:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KOthtKc750ha5x4f9O1nDtFHxGzvuirdOiPTMzSqTsk=;
 b=AtgdjehMIW2BLhP3jeK/qmKXq2+AXxzyWeIH6bKw4O3o0bC6XJQt+cAWIC0yMh6wiP
 SupmvGOupyWxPBHXOSFIRoapYlzZ1hYO8VI7pDOCxTY/Dx1Dgrvi2XOEp2yl+LhIOEHT
 u2tYUEb7UC7Y+OmoO377QG3dWxUE+13skl13Dwf1FBQ4rIPA/dbKnr+HRCDUS7FZtcdV
 L3b45BZgHc50mOaywiqTTOXCkKt7paRreX5ny4ScY/osK3vBY9jN0JO82EN8FpMzG1Nn
 DuZelOJa5PuYyzq9v5gfHBe8i4OKeqTjui1sMrU6aselqYDmxj1po/GPeKBXBAMZGEJa
 1g3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KOthtKc750ha5x4f9O1nDtFHxGzvuirdOiPTMzSqTsk=;
 b=NauLHP7XE3SR/ivQP6LUV21qu1ssB9SPZoDj6/rtIUvaCx2lDhMhjWAuAJK8n/10y2
 NHf4jbTqq26J9jfVjArn90wstz/OQ9zmCdb2THAd/WxWNZiW2c2FK0pXsJV8aE+qZtnk
 nED6GA0hkbJREzb7mwspEAT/iM0famAKuzqkK1oOpW4V5nHLB/VWJm8hvffCuIlW/axN
 FxWa+narnJxFd0w/EqgOucBfz06GUrYP/4iE405aDaPj21ckYuOWvuimTqSZl3uGiPml
 +OwwfibqQV9wQq+j/Gm5RrNONFlvJ/gUXLjT/VDSUHzzIErPw3e/8lAO2Ea+ak+27LXc
 wUgw==
X-Gm-Message-State: APjAAAVNf73trWdgweS41+VCDeCR+eOzseCNsJ6RLpnSJRTAOBog66j9
 vRIdvrfXYk9ap4aTx9UqfKkyjQ==
X-Google-Smtp-Source: APXvYqz1jaDLsZXCujEQqKw2NmGGpxtStBi3XubJKmoqx4STHaHJWThY1IvGZuOPXBVemA+XaCvAzg==
X-Received: by 2002:ac8:6ede:: with SMTP id f30mr38381128qtv.205.1571150507816; 
 Tue, 15 Oct 2019 07:41:47 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z200sm10605390qkb.5.2019.10.15.07.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 07:41:47 -0700 (PDT)
Message-ID: <1571150502.5937.39.camel@lca.pw>
Subject: Re: [PATCH V6 0/2] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Tue, 15 Oct 2019 10:41:42 -0400
In-Reply-To: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_074150_049950_2EA9FA5A 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VGhlIHg4NiB3aWxsIGNyYXNoIHdpdGggbGludXgtbmV4dCBkdXJpbmcgYm9vdCBkdWUgdG8gdGhp
cyBzZXJpZXMgKHY1KSB3aXRoIHRoZQpjb25maWcgYmVsb3cgcGx1cyBDT05GSUdfREVCVUdfVk1f
UEdUQUJMRT15LiBJIGFtIG5vdCBzdXJlIGlmIHY2IHdvdWxkIGFkZHJlc3MKaXQuCgpodHRwczov
L3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vY2FpbGNhL2xpbnV4LW1tL21hc3Rlci94ODYuY29u
ZmlnCgpbwqDCoMKgMzMuODYyNjAwXVvCoMKgwqDCoFQxXSBwYWdlOmZmZmZlYTAwMDkwMDAwMDAg
aXMgdW5pbml0aWFsaXplZCBhbmQgcG9pc29uZWQKW8KgwqDCoDMzLjg2MjYwOF1bwqDCoMKgwqBU
MV0gcmF3OiBmZmZmZmZmZmZmZmZmZmZmIGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZmZmZmZmZm
ZgpmZmZmZmY4NzExNDBdW8KgwqDCoMKgVDFdwqDCoD8gX3Jhd19zcGluX3VubG9ja19pcnErMHgy
Ny8weDQwClvCoMKgwqAzMy44NzExNDBdW8KgwqDCoMKgVDFdwqDCoD8gcmVzdF9pbml0KzB4MzA3
LzB4MzA3ClvCoMKgwqAzMy44NzExNDBdW8KgwqDCoMKgVDFdwqDCoGtlcm5lbF9pbml0KzB4MTEv
MHgxMzkKW8KgwqDCoDMzLjg3MTE0MF1bwqDCoMKgwqBUMV3CoMKgPyByZXN0X2luaXQrMHgzMDcv
MHgzMDcKW8KgwqDCoDMzLjg3MTE0MF1bwqDCoMKgwqBUMV3CoMKgcmV0X2Zyb21fZm9yaysweDI3
LzB4NTAKW8KgwqDCoDMzLjg3MTE0MF1bwqDCoMKgwqBUMV0gTW9kdWxlcyBsaW5rZWQgaW46ClvC
oMKgwqAzMy44NzExNDBdW8KgwqDCoMKgVDFdIC0tLVsgZW5kIHRyYWNlIGU5OWQzOTJiMGY3YmVm
YmQgXS0tLQpbwqDCoMKgMzMuODcxMTQwXVvCoMKgwqDCoFQxXSBSSVA6IDAwMTA6YWxsb2NfZ2ln
YW50aWNfcGFnZV9vcmRlcisweDNmZS8weDQ5MAoKT24gVHVlLCAyMDE5LTEwLTE1IGF0IDE0OjUx
ICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPiBUaGlzIHNlcmllcyBhZGRzIGEgdGVz
dCB2YWxpZGF0aW9uIGZvciBhcmNoaXRlY3R1cmUgZXhwb3J0ZWQgcGFnZSB0YWJsZQo+IGhlbHBl
cnMuIFBhdGNoIGluIHRoZSBzZXJpZXMgYWRkcyBiYXNpYyB0cmFuc2Zvcm1hdGlvbiB0ZXN0cyBh
dCB2YXJpb3VzCj4gbGV2ZWxzIG9mIHRoZSBwYWdlIHRhYmxlLiBCZWZvcmUgdGhhdCBpdCBleHBv
cnRzIGdpZ2FudGljIHBhZ2UgYWxsb2NhdGlvbgo+IGZ1bmN0aW9uIGZyb20gSHVnZVRMQi4KPiAK
PiBUaGlzIHRlc3Qgd2FzIG9yaWdpbmFsbHkgc3VnZ2VzdGVkIGJ5IENhdGFsaW4gZHVyaW5nIGFy
bTY0IFRIUCBtaWdyYXRpb24KPiBSRkMgZGlzY3Vzc2lvbiBlYXJsaWVyLiBHb2luZyBmb3J3YXJk
IGl0IGNhbiBpbmNsdWRlIG1vcmUgc3BlY2lmaWMgdGVzdHMKPiB3aXRoIHJlc3BlY3QgdG8gdmFy
aW91cyBnZW5lcmljIE1NIGZ1bmN0aW9ucyBsaWtlIFRIUCwgSHVnZVRMQiBldGMgYW5kCj4gcGxh
dGZvcm0gc3BlY2lmaWMgdGVzdHMuCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
bW0vMjAxOTA2MjgxMDIwMDMuR0E1NjQ2M0BhcnJha2lzLmVtZWEuYXJtLmNvbS8KPiAKPiBDaGFu
Z2VzIGluIFY2Ogo+IAo+IC0gTW92ZWQgYWxsb2NfZ2lnYW50aWNfcGFnZV9vcmRlcigpIGludG8g
bW0vcGFnZV9hbGxvYy5jIHBlciBNaWNoYWwKPiAtIE1vdmVkIGFsbG9jX2dpZ2FudGljX3BhZ2Vf
b3JkZXIoKSB3aXRoaW4gQ09ORklHX0NPTlRJR19BTExPQyBpbiB0aGUgdGVzdAo+IC0gRm9sZGVk
IEFuZHJldydzIGluY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oIGZpeCBpbnRvIHRoZSB0ZXN0
IHBhdGNoIDIvMgo+IAo+IENoYW5nZXMgaW4gVjU6IChodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL3Byb2plY3QvbGludXgtbW0vbGlzdC8/c2VyaWVzPTE4NTk5MSkKPiAKPiAtIFJlZGVmaW5l
ZCBhbmQgbW92ZWQgWDg2IG1tX3A0ZF9mb2xkZWQoKSBpbnRvIGEgZGlmZmVyZW50IGhlYWRlciBw
ZXIgS2lyaWxsL0luZ28KPiAtIFVwZGF0ZWQgdGhlIGNvbmZpZyBvcHRpb24gY29tbWVudCBwZXIg
SW5nbyBhbmQgZHJvcHBlZCAna2VybmVsIG1vZHVsZScgcmVmZXJlbmNlCj4gLSBVcGRhdGVkIHRo
ZSBjb21taXQgbWVzc2FnZSBhbmQgZHJvcHBlZCAna2VybmVsIG1vZHVsZScgcmVmZXJlbmNlCj4g
LSBDaGFuZ2VkIERFQlVHX0FSQ0hfUEdUQUJMRV9URVNUIGludG8gREVCVUdfVk1fUEdUQUJMRSBw
ZXIgSW5nbwo+IC0gTW92ZWQgY29uZmlnIG9wdGlvbiBmcm9tIG1tL0tjb25maWcuZGVidWcgaW50
byBsaWIvS2NvbmZpZy5kZWJ1Zwo+IC0gUmVuYW1lZCBjb3JlIHRlc3QgZnVuY3Rpb24gYXJjaF9w
Z3RhYmxlX3Rlc3RzKCkgYXMgZGVidWdfdm1fcGd0YWJsZSgpCj4gLSBSZW5hbWVkIG1tL2FyY2hf
cGd0YWJsZV90ZXN0LmMgYXMgbW0vZGVidWdfdm1fcGd0YWJsZS5jCj4gLSBkZWJ1Z192bV9wZ3Rh
YmxlKCkgZ2V0cyBjYWxsZWQgZnJvbSBrZXJuZWxfaW5pdF9mcmVlYWJsZSgpIGFmdGVyIGluaXRf
bW1faW50ZXJuYWxzKCkKPiAtIEFkZGVkIGFuIGVudHJ5IGluIERvY3VtZW50YXRpb24vZmVhdHVy
ZXMvZGVidWcvIHBlciBJbmdvCj4gLSBFbmFibGVkIHRoZSB0ZXN0IG9uIGFybTY0IGFuZCB4ODYg
cGxhdGZvcm1zIGZvciBub3cKPiAKPiBDaGFuZ2VzIGluIFY0OiAoaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1tL2xpc3QvP3Nlcmllcz0xODM0NjUpCj4gCj4gLSBE
aXNhYmxlIERFQlVHX0FSQ0hfUEdUQUJMRV9URVNUIGZvciBBUk0gYW5kIElBNjQgcGxhdGZvcm1z
Cj4gCj4gQ2hhbmdlcyBpbiBWMzogKGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9w
cm9qZWN0L2xrbWwvbGlzdC8/c2VyaWVzPTQxMTIxNikKPiAKPiAtIENoYW5nZWQgdGVzdCB0cmln
Z2VyIGZyb20gbW9kdWxlIGZvcm1hdCBpbnRvIGxhdGVfaW5pdGNhbGwoKQo+IC0gTWFya2VkIGFs
bCBmdW5jdGlvbnMgd2l0aCBfX2luaXQgdG8gYmUgZnJlZWQgYWZ0ZXIgY29tcGxldGlvbgo+IC0g
Q2hhbmdlZCBhbGwgX19QR1RBQkxFX1BYWF9GT0xERUQgY2hlY2tzIGFzIG1tX3B4eF9mb2xkZWQo
KQo+IC0gRm9sZGVkIGluIFBQQzMyIGZpeGVzIGZyb20gQ2hyaXN0b3BoZQo+IAo+IENoYW5nZXMg
aW4gVjI6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMTU2ODI2ODE3My0z
MTMwMi0xLWdpdC1zZW5kLWVtYWlsLWFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20vVC8jdAo+IAo+
IC0gRml4ZWQgc21hbGwgdHlwbyBlcnJvciBpbiBNT0RVTEVfREVTQ1JJUFRJT04oKQo+IC0gRml4
ZWQgbTY0ayBidWlsZCBwcm9ibGVtcyBmb3IgbHZhbHVlIGNvbmNlcm5zIGluIHBtZF94eHhfdGVz
dHMoKQo+IC0gRml4ZWQgZHluYW1pYyBwYWdlIHRhYmxlIGxldmVsIGZvbGRpbmcgcHJvYmxlbXMg
b24geDg2IGFzIHBlciBLaXJyaWwKPiAtIEZpeGVkIHNlY29uZCBwb2ludGVycyBkdXJpbmcgcHh4
X3BvcHVsYXRlX3Rlc3RzKCkgcGVyIEtpcmlsbCBhbmQgR2VyYWxkCj4gLSBBbGxvY2F0ZSBhbmQg
ZnJlZSBwdGUgdGFibGUgd2l0aCBwdGVfYWxsb2Nfb25lL3B0ZV9mcmVlIHBlciBLaXJpbGwKPiAt
IE1vZGlmaWVkIHB4eF9jbGVhcl90ZXN0cygpIHRvIGFjY29tbW9kYXRlIHMzOTAgbG93ZXIgMTIg
Yml0cyBzaXR1YXRpb24KPiAtIENoYW5nZWQgUkFORE9NX05aVkFMVUUgdmFsdWUgZnJvbSAweGJl
IHRvIDB4ZmYKPiAtIENoYW5nZWQgYWxsb2NhdGlvbiwgdXNhZ2UsIGZyZWUgc2VxdWVuY2UgZm9y
IHNhdmVkX3B0ZXAKPiAtIFJlbmFtZWQgVk1BX0ZMQUdTIGFzIFZNRkxBR1MKPiAtIEltcGxlbWVu
dGVkIGEgbmV3IG1ldGhvZCBmb3IgcmFuZG9tIHZhZGRyIGdlbmVyYXRpb24KPiAtIEltcGxlbWVu
dGVkIHNvbWUgb3RoZXIgY2xlYW51cHMKPiAtIERyb3BwZWQgZXh0ZXJuIHJlZmVyZW5jZSB0byBt
bV9hbGxvYygpCj4gLSBDcmVhdGVkIGFuZCBleHBvcnRlZCBuZXcgYWxsb2NfZ2lnYW50aWNfcGFn
ZV9vcmRlcigpCj4gLSBEcm9wcGVkIHRoZSBjdXN0b20gYWxsb2NhdG9yIGFuZCB1c2VkIG5ldyBh
bGxvY19naWdhbnRpY19wYWdlX29yZGVyKCkKPiAKPiBDaGFuZ2VzIGluIFYxOgo+IAo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzE1Njc0OTc3MDYtODY0OS0xLWdpdC1zZW5kLWVt
YWlsLWFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20vCj4gCj4gLSBBZGRlZCBmYWxsYmFjayBtZWNo
YW5pc20gZm9yIFBNRCBhbGlnbmVkIG1lbW9yeSBhbGxvY2F0aW9uIGZhaWx1cmUKPiAKPiBDaGFu
Z2VzIGluIFJGQyBWMjoKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8xNTY1
MzM1OTk4LTIyNTUzLTEtZ2l0LXNlbmQtZW1haWwtYW5zaHVtYW4ua2hhbmR1YWxAYXJtLmNvbS9U
LyN1Cj4gCj4gLSBNb3ZlZCB0ZXN0IG1vZHVsZSBhbmQgaXQncyBjb25maWcgZnJvbSBsaWIvIHRv
IG1tLwo+IC0gUmVuYW1lZCBjb25maWcgVEVTVF9BUkNIX1BHVEFCTEUgYXMgREVCVUdfQVJDSF9Q
R1RBQkxFX1RFU1QKPiAtIFJlbmFtZWQgZmlsZSBmcm9tIHRlc3RfYXJjaF9wZ3RhYmxlLmMgdG8g
YXJjaF9wZ3RhYmxlX3Rlc3QuYwo+IC0gQWRkZWQgcmVsZXZhbnQgTU9EVUxFX0RFU0NSSVBUSU9O
KCkgYW5kIE1PRFVMRV9BVVRIT1IoKSBkZXRhaWxzCj4gLSBEcm9wcGVkIGxvYWRhYmxlIG1vZHVs
ZSBjb25maWcgb3B0aW9uCj4gLSBCYXNpYyB0ZXN0cyBub3cgdXNlIG1lbW9yeSBibG9ja3Mgd2l0
aCByZXF1aXJlZCBzaXplIGFuZCBhbGlnbm1lbnQKPiAtIFBVRCBhbGlnbmVkIG1lbW9yeSBibG9j
ayBnZXRzIGFsbG9jYXRlZCB3aXRoIGFsbG9jX2NvbnRpZ19yYW5nZSgpCj4gLSBJZiBQVUQgYWxp
Z25lZCBtZW1vcnkgY291bGQgbm90IGJlIGFsbG9jYXRlZCBpdCBmYWxscyBiYWNrIG9uIFBNRCBh
bGlnbmVkCj4gICBtZW1vcnkgYmxvY2sgZnJvbSBwYWdlIGFsbG9jYXRvciBhbmQgcHVkXyogdGVz
dHMgYXJlIHNraXBwZWQKPiAtIENsZWFyIGFuZCBwb3B1bGF0ZSB0ZXN0cyBub3cgb3BlcmF0ZSBv
biByZWFsIGluIG1lbW9yeSBwYWdlIHRhYmxlIGVudHJpZXMKPiAtIER1bW15IG1tX3N0cnVjdCBn
ZXRzIGFsbG9jYXRlZCB3aXRoIG1tX2FsbG9jKCkKPiAtIER1bW15IHBhZ2UgdGFibGUgZW50cmll
cyBnZXQgYWxsb2NhdGVkIHdpdGggW3B1ZHxwbWR8cHRlXV9hbGxvY19bbWFwXSgpCj4gLSBTaW1w
bGlmaWVkIFtwNGR8cGdkXV9iYXNpY190ZXN0cygpLCBub3cgaGFzIHJhbmRvbSB2YWx1ZXMgaW4g
dGhlIGVudHJpZXMKPiAKPiBPcmlnaW5hbCBSRkMgVjE6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbW0vMTU2NDAzNzcyMy0yNjY3Ni0xLWdpdC1zZW5kLWVtYWlsLWFuc2h1bWFu
LmtoYW5kdWFsQGFybS5jb20vCj4gCj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91
bmRhdGlvbi5vcmc+Cj4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4gQ2M6
IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+IENjOiBNaWtlIFJhcG9wb3J0IDxy
cHB0QGxpbnV4LnZuZXQuaWJtLmNvbT4KPiBDYzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUu
Y2E+Cj4gQ2M6IERhbiBXaWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+IENjOiBQ
ZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4gQ2M6IE1pY2hhbCBIb2NrbyA8
bWhvY2tvQGtlcm5lbC5vcmc+Cj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5j
b20+Cj4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBDYzogU3RldmVuIFBy
aWNlIDxTdGV2ZW4uUHJpY2VAYXJtLmNvbT4KPiBDYzogQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVz
aGV1dmVsQGxpbmFyby5vcmc+Cj4gQ2M6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJv
QHNvY2lvbmV4dC5jb20+Cj4gQ2M6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgo+
IENjOiBUZXRzdW8gSGFuZGEgPHBlbmd1aW4ta2VybmVsQGktbG92ZS5zYWt1cmEubmUuanA+Cj4g
Q2M6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+IENjOiBTcmkgS3Jpc2hu
YSBjaG93ZGFyeSA8c2Nob3dkYXJ5QG52aWRpYS5jb20+Cj4gQ2M6IERhdmUgSGFuc2VuIDxkYXZl
LmhhbnNlbkBpbnRlbC5jb20+Cj4gQ2M6IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCA8bGludXhA
YXJtbGludXgub3JnLnVrPgo+IENjOiBNaWNoYWVsIEVsbGVybWFuIDxtcGVAZWxsZXJtYW4uaWQu
YXU+Cj4gQ2M6IFBhdWwgTWFja2VycmFzIDxwYXVsdXNAc2FtYmEub3JnPgo+IENjOiBNYXJ0aW4g
U2Nod2lkZWZza3kgPHNjaHdpZGVmc2t5QGRlLmlibS5jb20+Cj4gQ2M6IEhlaWtvIENhcnN0ZW5z
IDxoZWlrby5jYXJzdGVuc0BkZS5pYm0uY29tPgo+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2
ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogVmluZWV0IEd1cHRhIDx2Z3VwdGFAc3lub3BzeXMuY29t
Pgo+IENjOiBKYW1lcyBIb2dhbiA8amhvZ2FuQGtlcm5lbC5vcmc+Cj4gQ2M6IFBhdWwgQnVydG9u
IDxwYXVsLmJ1cnRvbkBtaXBzLmNvbT4KPiBDYzogUmFsZiBCYWVjaGxlIDxyYWxmQGxpbnV4LW1p
cHMub3JnPgo+IENjOiBLaXJpbGwgQS4gU2h1dGVtb3YgPGtpcmlsbEBzaHV0ZW1vdi5uYW1lPgo+
IENjOiBHZXJhbGQgU2NoYWVmZXIgPGdlcmFsZC5zY2hhZWZlckBkZS5pYm0uY29tPgo+IENjOiBD
aHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4KPiBDYzogTWlrZSBLcmF2
ZXR6IDxtaWtlLmtyYXZldHpAb3JhY2xlLmNvbT4KPiBDYzogbGludXgtc25wcy1hcmNAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtaWE2NEB2Z2VyLmtl
cm5lbC5vcmcKPiBDYzogbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5vcmcKPiBDYzogbGludXgt
czM5MEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtc2hAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IHNwYXJjbGludXhAdmdlci5rZXJuZWwub3JnCj4gQ2M6IHg4NkBrZXJuZWwub3JnCj4gQ2M6IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiAKPiAKPiBBbnNodW1hbiBLaGFuZHVhbCAoMik6
Cj4gICBtbS9wYWdlX2FsbG9jOiBNYWtlIGFsbG9jX2dpZ2FudGljX3BhZ2UoKSBhdmFpbGFibGUg
Zm9yIGdlbmVyYWwgdXNlCj4gICBtbS9kZWJ1ZzogQWRkIHRlc3RzIHZhbGlkYXRpbmcgYXJjaGl0
ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVycwo+IAo+ICAuLi4vZGVidWcvZGVidWctdm0tcGd0YWJs
ZS9hcmNoLXN1cHBvcnQudHh0ICAgfCAgMzQgKysKPiAgYXJjaC9hcm02NC9LY29uZmlnICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgYXJjaC94ODYvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0
YWJsZV82NC5oICAgICAgICAgICAgIHwgICA2ICsKPiAgaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3Rh
YmxlLmggICAgICAgICAgICAgICAgIHwgICA2ICsKPiAgaW5jbHVkZS9saW51eC9nZnAuaCAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAzICsKPiAgaW5pdC9tYWluLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgbGliL0tjb25maWcuZGVidWcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDIxICsKPiAgbW0vTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgbW0vZGVidWdfdm1fcGd0YWJsZS5jICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgNDUwICsrKysrKysrKysrKysrKysrKwo+ICBtbS9odWdl
dGxiLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNzYgKy0tCj4gIG1tL3Bh
Z2VfYWxsb2MuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA5OCArKysrCj4gIDEy
IGZpbGVzIGNoYW5nZWQsIDYyMyBpbnNlcnRpb25zKCspLCA3NSBkZWxldGlvbnMoLSkKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZmVhdHVyZXMvZGVidWcvZGVidWctdm0tcGd0
YWJsZS9hcmNoLXN1cHBvcnQudHh0Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBtbS9kZWJ1Z192bV9w
Z3RhYmxlLmMKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LXNucHMtYXJjIG1haWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtc25wcy1hcmMK
