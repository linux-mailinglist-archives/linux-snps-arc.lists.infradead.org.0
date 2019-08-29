Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB3CA0F0A
	for <lists+linux-snps-arc@lfdr.de>; Thu, 29 Aug 2019 03:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTuh+PjmCtVasjHenjv5ziK64K77f9IBjnC773yQlv0=; b=ih/zyQrnl7kOXc
	GLU3SPsWieda8cdIZOBfADGFDaQcaO8XchqGldTVDkLAZsvKqvKjiE7uWS2ul8II+MxEFoYyxqvfw
	TOCVbehmqVuDhTF+8iE74ox0WzaUhfAn0uyhRBa07zJgWIBN8GJDCzTIafkPStD2ewYNr1AyAPr9B
	7Fvl9tNSsdT7gKD1ue+Fhm4yXAaaOxzQOSMg1afkKlcEXBGvSB4XNaVK8ky56akwMUwp9sBXnoCZh
	dU2vy6+dEXA1z0sD4oGroO8nSQ5YFHU93RHhPI3qoKiEkVVJCcaSvth41GV5iaMMw9zSIIsqd1gHT
	qyxXLkGfcscoTUna1KIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i39XM-0007ne-1r; Thu, 29 Aug 2019 01:47:44 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.48])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i39XJ-0007mp-Kp
 for linux-snps-arc@lists.infradead.org; Thu, 29 Aug 2019 01:47:42 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 716B87A9D
 for <linux-snps-arc@lists.infradead.org>; Wed, 28 Aug 2019 20:47:40 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 39XIijsu2iQer39XIi3L4b; Wed, 28 Aug 2019 20:47:40 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cWullUGTic6zMakrg3aKV7VvzCgJI8sz0e/+68+BctU=; b=GX18bF1M3WWE2q21D588RJ0Z6a
 olkEJP7ZsLP7zA+moCDwwcOGdQV6uiwWBOQ6eY4nhzjugPYbP4Sa0GtwqOS+bNjAiUlJQCY0bbulx
 QHVudODRIeZz0W2alOaqeGYlxV5n8D5xTUlcQyL314EAQCUrAGJ2EdBj8FtWVlVwwnOVn3i3NwTz1
 +VaV6D8QOnIhmepCuFmEDw5JTK/s1EL0TpADTce4eNIywW/63PSDY7h7v8831l1iCuvlg7bO9qjYz
 oC1L4q2WvFb0nqgZ04GpXUnc+BbI5z1ft1q2LxPOPnhXweW1fWsjejUcAazyWSFwhVB69qRQ7nmWW
 mZ60SXOg==;
Received: from [189.152.216.116] (port=36158 helo=[192.168.43.131])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1i39XI-0002ZH-0y; Wed, 28 Aug 2019 20:47:40 -0500
Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-through
To: Vineet Gupta <vgupta@synopsys.com>
References: <20190821012907.GA29165@embeddedor>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <2c3ef09b-bd07-6caf-05a9-908700a60afd@embeddedor.com>
Date: Wed, 28 Aug 2019 20:47:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821012907.GA29165@embeddedor>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.152.216.116
X-Source-L: No
X-Exim-ID: 1i39XI-0002ZH-0y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [189.152.216.116]:36158
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 2
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_184741_771416_6BB3696F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

SGksCgpGcmllbmRseSBwaW5nOgoKV2hvIGNhbiB0YWtlIHRoaXMsIHBsZWFzZT8KClRoYW5rcwot
LQpHdXN0YXZvCgpPbiA4LzIwLzE5IDg6MjkgUE0sIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6
Cj4gTWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91
Z2guCj4gCj4gVGhpcyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzIChCdWlsZGlu
ZzogaGFwc19oc19kZWZjb25maWcgYXJjKToKPiAKPiBhcmNoL2FyYy9rZXJuZWwvdW53aW5kLmM6
IEluIGZ1bmN0aW9uIOKAmHJlYWRfcG9pbnRlcuKAmToKPiAuL2luY2x1ZGUvbGludXgvY29tcGls
ZXIuaDozMjg6NTogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdp
bXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gICBkbyB7ICAgICAgICBcCj4gICAgICBeCj4gLi9pbmNs
dWRlL2xpbnV4L2NvbXBpbGVyLmg6MzM4OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDi
gJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQo+ICAgX19jb21waWxldGltZV9hc3NlcnQoY29uZGl0
aW9uLCBtc2csIHByZWZpeCwgc3VmZml4KQo+ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAuL2lu
Y2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3Jv
IOKAmF9jb21waWxldGltZV9hc3NlcnTigJkKPiAgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0
aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19MSU5FX18pCj4gICBefn5+fn5+fn5+
fn5+fn5+fn5+Cj4gLi9pbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4gICNkZWZpbmUgQlVJ
TERfQlVHX09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cp
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fgo+IC4vaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDo1MDoyOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYQlVJTERfQlVHX09OX01TR+KAmQo+ICAgQlVJTERfQlVHX09OX01TRyhjb25k
aXRpb24sICJCVUlMRF9CVUdfT04gZmFpbGVkOiAiICNjb25kaXRpb24pCj4gICBefn5+fn5+fn5+
fn5+fn5+Cj4gYXJjaC9hcmMva2VybmVsL3Vud2luZC5jOjU3MzozOiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8g4oCYQlVJTERfQlVHX09O4oCZCj4gICAgQlVJTERfQlVHX09OKHNpemVvZih1
MzIpICE9IHNpemVvZih2YWx1ZSkpOwo+ICAgIF5+fn5+fn5+fn5+fgo+IGFyY2gvYXJjL2tlcm5l
bC91bndpbmQuYzo1NzU6Mjogbm90ZTogaGVyZQo+ICAgY2FzZSBEV19FSF9QRV9uYXRpdmU6Cj4g
ICBefn5+Cj4gCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b0Bl
bWJlZGRlZG9yLmNvbT4KPiAtLS0KPiAgYXJjaC9hcmMva2VybmVsL3Vud2luZC5jIHwgMSArCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
Yy9rZXJuZWwvdW53aW5kLmMgYi9hcmNoL2FyYy9rZXJuZWwvdW53aW5kLmMKPiBpbmRleCA0NDVl
NGQ3MDJmNDMuLmRjMDVhNjM1MTZmNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FyYy9rZXJuZWwvdW53
aW5kLmMKPiArKysgYi9hcmNoL2FyYy9rZXJuZWwvdW53aW5kLmMKPiBAQCAtNTcyLDYgKzU3Miw3
IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJlYWRfcG9pbnRlcihjb25zdCB1OCAqKnBMb2MsIGNv
bnN0IHZvaWQgKmVuZCwKPiAgI2Vsc2UKPiAgCQlCVUlMRF9CVUdfT04oc2l6ZW9mKHUzMikgIT0g
c2l6ZW9mKHZhbHVlKSk7Cj4gICNlbmRpZgo+ICsJCS8qIEZhbGwgdGhyb3VnaCAqLwo+ICAJY2Fz
ZSBEV19FSF9QRV9uYXRpdmU6Cj4gIAkJaWYgKGVuZCA8IChjb25zdCB2b2lkICopKHB0ci5wdWwg
KyAxKSkKPiAgCQkJcmV0dXJuIDA7Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1h
cmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXNucHMtYXJjCg==
