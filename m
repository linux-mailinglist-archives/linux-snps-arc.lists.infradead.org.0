Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E8A6C87
	for <lists+linux-snps-arc@lfdr.de>; Tue,  3 Sep 2019 17:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYtyaUgzlGOHHmWUo6bHx4FAcqc5phSV4X0n+VUsrA4=; b=j7H1MiOJV/lIgt
	c20UlQBk2X2g0/2b2s3lmp3JlKbqGBEgyr53YKNRQ02aUQ5KK+1+LWujAbCiOj0c0B2HSuHlwAAp5
	58KB9kE/IJ/Jm9IwMi6S5BOlsSm69hYfozRzPPjfMk41jL+WHWZVp/lP+h6dH1Ge+x1e2odOu9k5y
	5r48XRQTj9tS6gvkQK9hHy3PcblvI61oSzfpB6XM9CJPahbSRGLSfO4F05wDI4CIpMFXGd7/QhLZ0
	+i+QNZESoGJml4c7Vgnxol8YzwDy9AXEIlitH5F67eXc/GWLqfNuUf8EQM1UI3oln/jEftMq9Dasg
	cWg9AJQ7q7hvyHhGkafg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ARH-0006yM-90; Tue, 03 Sep 2019 15:09:47 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ARD-0006xe-BC
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 15:09:45 +0000
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x83F9QPg026769
 for <linux-snps-arc@lists.infradead.org>; Wed, 4 Sep 2019 00:09:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x83F9QPg026769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567523367;
 bh=9jJVopxdMBKe7W7BiHbj/Q49/78YA2fNno5GdQEz8rw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=t9gbLmy1iw1YX1L3bT6MP0HnyJdqqiaUGTR/l02FTP9HIzOEQFIQmIguBszfG3pkG
 ERFW99pBXV48FTPvVLfH5ePDwuRRbXOpQW9Qo3K1MF7fyfLDzOGcybtvTiU8ozHkR9
 OVof0XITnRIIgOrMW9E8vSbGtS/AqkWyXiOMCFCH5SnaE/R6VmjpwFQMufLT9A4lNk
 mssfe+UZARJBckaM4vgKHPludgXjpdoSib8/ITCYwLRFkXMVYesrLKBXhqZx74uXPB
 uXB3xjS7bGVzi8xPqAeGTOA+XxhEFw5Q+q5pDgtt9yioRCK6amLV7rai/yQma+QlM/
 WDLROFr5jK3dg==
X-Nifty-SrcIP: [209.85.221.175]
Received: by mail-vk1-f175.google.com with SMTP id q186so2405922vkb.0
 for <linux-snps-arc@lists.infradead.org>; Tue, 03 Sep 2019 08:09:26 -0700 (PDT)
X-Gm-Message-State: APjAAAUXWnK+wNmbNkCebXRQS8D0+57QW0gEGFlEmQtjpCZlf83QS3sD
 l0SOVoEMbYrfQRpnM66T+En+WQ807aWGEUCayoo=
X-Google-Smtp-Source: APXvYqwi+lp9AaDuvR/fu0AbuDkOFmi+pQ++9wBOAlZmiyjg5RAdj3/t55OpBvKp1YW16iXsWocw8XeYzOLdsa8Cw1o=
X-Received: by 2002:a1f:9e83:: with SMTP id h125mr6551608vke.84.1567523365548; 
 Tue, 03 Sep 2019 08:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170941.26193-1-yamada.masahiro@socionext.com>
 <20190820170941.26193-2-yamada.masahiro@socionext.com>
 <ed251c63-10e0-bd8a-1a9b-be9ade5cad3f@gmail.com>
In-Reply-To: <ed251c63-10e0-bd8a-1a9b-be9ade5cad3f@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 00:08:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNARd1KFq=GRYQUr16KaiiRzh4ARX5eOpcRcUrZSVgHdhJA@mail.gmail.com>
Message-ID: <CAK7LNARd1KFq=GRYQUr16KaiiRzh4ARX5eOpcRcUrZSVgHdhJA@mail.gmail.com>
Subject: Re: [PATCH 2/3] kbuild, arc: add CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3
 for ARC
To: Vineet Gupta <vineetg76@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_080943_605176_DCC39ECD 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMzEsIDIwMTkgYXQgMTo0MyBBTSBWaW5lZXQgR3VwdGEgPHZpbmVldGc3NkBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gOC8yMC8xOSAxMDowOSBBTSwgTWFzYWhpcm8gWWFtYWRh
IHdyb3RlOgo+ID4gYXJjaC9hcmMvTWFrZWZpbGUgb3ZlcnJpZGVzIC1PMiB3aXRoIC1PMy4gVGhp
cyBpcyB0aGUgb25seSB1c2VyIG9mCj4gPiBBUkNIX0NGTEFHUy4gVGhlcmUgaXMgbm8gdXNlciBv
ZiBBUkNIX0NQUEZMQUdTIG9yIEFSQ0hfQUZMQUdTLgo+ID4gTXkgcGxhbiBpcyB0byByZW1vdmUg
QVJDSF97Q1BQLEEsQ31GTEFHUyBhZnRlciByZWZhY3RvcmluZyB0aGUgQVJDCj4gPiBNYWtlZmls
ZS4KPgo+IFdoeSwgaXQgc2VlbXMgbGlrZSBhIGdvb2QgZ2VuZXJpYyBmYWNpbGl0eSBmb3IgYXJj
aGVzIHRvIG92ZXItcmlkZSBzdHVmZgo+IChzcGVjaWFsbHkgYWRkaW5nIGFueSB0b2dnbGVzIGF0
IHRoZSBlbmQgb2YgY21kbGluZSkuCj4KPiBBbmQgZXZlbiBpZiB0aGVyZSBhcmUgbm8gY3VycmVu
dCB1c2VycywgaXQgd291bGQgYmUgZ29vZCB0byBoYXZlLiBJIHVuZGVyc3RhbmQgd2UKPiBkb24n
dCBrZWVwIGNvZGUgZm9yIGZ1dHVyZSwgYnV0IHN0cmljdGx5IHRoaXMgaXMgbWV0YS1jb2RlIDst
KQoKV2UgY2FuIHJlLWFkZCBpdCB3aGVuZXZlciB3ZSBuZWVkIGl0LgoKCgo+ID4gQ3VycmVudGx5
LCBBUkMgaGFzIG5vIHdheSB0byBlbmFibGUgLVdtYXliZS11bmluaXRpYWxpemVkIGJlY2F1c2Ug
Ym90aAo+ID4gLU8zIGFuZCAtT3MgZGlzYWJsZSBpdC4gRW5hYmxpbmcgaXQgd2lsbCBiZSB1c2Vm
dWwgZm9yIGNvbXBpbGUtdGVzdGluZy4KPiA+IFRoaXMgY29tbWl0IGFsbG93cyBhbGxtb2Rjb25m
aWcgKCwgd2hpY2ggZGVmYXVsdHMgdG8gLU8yKSB0byBlbmFibGUgaXQuCj4KPiBCdXQgdGhpcyBp
cyBhIHNlcGFyYXRlIGlzc3VlIGFuZCB3YXMgZG9uZSBvbiBwdXJwb3NlIGJlY2F1c2Ugb2YgdW5i
ZWFyYWJsZSBidWlsZAo+IHNwZXcgYXQgdGhlIHRpbWUuIEFzIGFuIGV4cGVyaW1lbnQgSSBlbmFi
bGVkIGl0IGluIGN1cnJlbnQga2VybmVsIGFuZCBhdCAtTzMgd2UKPiBzdGlsbCBnZXQgdGhlIGRy
ZWFkZWQgc3BldyBpbiBuZXQvc3VucnBjL3hkci5jIGFuZCBzb21lIG1vcmUgaW4gbmV0L2lwdjQu
IFRoZSBzcGV3Cj4gZG9lc24ndCBoYXBwZW4gYXQgLU8yIGFuZCBzZWVtcyBub3QgQVJDIHNwZWNp
ZmljIGFzIEkgY2FuIHNlZSB0aGlzIHdpdGggQVJNIC1PMwo+IGJ1aWxkIHdpdGggZ2NjIDcuMyAo
YnVpbGRyb290IDIwMTguMDgpCj4KPiB8ICQgbWFrZSBBUkNIPWFybSBDUk9TU19DT01QSUxFPWFy
bS1saW51eC0gbmV0Cj4gfCAuLi4uLi4KPiB8IC4uLi4uLgo+IHwgLi4vbmV0L3N1bnJwYy94ZHIu
YzogSW4gZnVuY3Rpb24g4oCYeGRyX2VuY29kZV93b3Jk4oCZOgo+IHwgLi4vbmV0L3N1bnJwYy94
ZHIuYzoxMTk5OjI6IHdhcm5pbmc6IOKAmHN1YmJ1Zi50YWlsWzBdLmlvdl9iYXNl4oCZIG1heSBi
ZSB1c2VkCj4gfCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24gWy1XbWF5YmUtdW5pbml0
aWFsaXplZF0KPiB8ICBtZW1jcHkoc3ViYnVmLT50YWlsWzBdLmlvdl9iYXNlLCBvYmosIHRoaXNf
bGVuKTsKPiB8ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fgo+IHwgLi4vbmV0L3N1bnJwYy94ZHIuYzoxMjA1OjE3OiBub3RlOiDigJhzdWJidWYudGFpbFsw
XS5pb3ZfYmFzZeKAmSB3YXMgZGVjbGFyZWQgaGVyZQo+IHwgIHN0cnVjdCB4ZHJfYnVmIHN1YmJ1
ZjsKPgo+Cj4gSSB1bmRlcnN0YW5kIHRoZSB2YWx1ZSBvZiB0aGlzIHRvZ2dsZSwgYnV0IHRoZSBz
cGV3IGlzIHRvbyBtdWNoIGFuZCBhdCB0aW1lcwo+IG9iZnVzY2F0ZWQgbGlrZWx5IG90aGVyIHJl
YWwgaXNzdWVzLgo+ID4gQWRkIENPTkZJR19DQ19PUFRJTUlaRV9GT1JfUEVSRk9STUFOQ0VfTzM9
eSB0byBhbGwgdGhlIGRlZmNvbmZpZyBmaWxlcwo+ID4gaW4gYXJjaC9hcmMvY29uZmlncy8gaW4g
b3JkZXIgdG8ga2VlcCB0aGUgY3VycmVudCBjb25maWcgc2V0dGluZ3MuCj4KPiBNeSBmaXJzdCBy
ZWFjdGlvbiB0byBhZGRpbmcgdGhpcyB0byBhbGwgZGVmY29uZmlncyB3YXMgdGhhdCB0aGlzIHdh
cyBpbmVsZWdhbnQgOgo+IGZvciBsYWNrIG9mIGJldHRlciB3b3JkIDotKQo+Cj4gQnV0IGluZGVl
ZCBpdCBzZWVtcyBiZXR0ZXIgdGhpcyB3YXkgYXMgd2UgY2FuIG5vdyBleHBlcmltZW50IHdpdGgg
LU8yIHZzLiAtTzMgZnJvbQo+IGNvbmZpZywgcmF0aGVyIHRoYW4gaGFyZHdpcmluZyB0byAtTzMu
Cj4KPiBTbyBpZiB5b3UgY291bGQgcGxlYXNlIHNwbGl0IG91dCB0aGUgV21heWJlLXVuaW5pdGlh
bGl6ZWQgY2hhbmdlCgpJIGNvdWxkIG5vdCB1bmRlcnN0YW5kIHlvdXIgcmVxdWVzdC4KCkkgYWRk
ZWQgJ2ltcGx5IENDX0RJU0FCTEVfV0FSTl9NQVlCRV9VTklOSVRJQUxJWkVEJwpmb3IgQ09ORklH
X0NDX09QVElNSVpFX0ZPUl9QRVJGT1JNQU5DRV9PMy4KCkkgY2Fubm90IHNwbGl0IGl0IG91dC4g
T3RoZXJ3aXNlLCB5b3Ugd2lsbCBzZWUgZmFsc2UtcG9zaXRpdmUKbWF5YmUtdW5pbml0aWFsaXpl
ZCB3YXJuaW5ncy4KCgo+IEFja2VkLWJ5OiBWaW5lZXQgR3VwdGEgPHZndXB0YUBzeW5vcHN5cy5j
b20+CgpUaGFua3MuCgoKLS0gCkJlc3QgUmVnYXJkcwpNYXNhaGlybyBZYW1hZGEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXNucHMtYXJjIG1h
aWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtc25wcy1hcmMK
