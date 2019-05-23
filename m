Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AA52868A
	for <lists+linux-snps-arc@lfdr.de>; Thu, 23 May 2019 21:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7IQd/JbTayltmgmqPs9M8lHplXTCWFJWkV0Sz0ETzc=; b=oXxoLIBeIE0Ls/
	it/7H0g+RAmvuz+Jbsp97JXAK2e5I4+1WPXm8P1rgAk3qD/5uxiQ7wgUMvgcL6GcRawfAvM0dcDb1
	07OJr6dQqwgyTs+nB/0VDQqiRww9ENEgW80DbVuMkjV769Ou/spJ9/y9C0EJkcIIrEkKTdR3eEtDh
	6MKUvvM24fyO6IdAVAy/BSlerYPFY+/e+BZxmpDw6hWJCqHMi/Q9gkCRJAMrR8NVJe1f6nJKiPGUo
	l0d2qspueuggnVPdbCBT02f2YQfvEQLs8S4AYFoVp6a6clvrXyIcOV/TI8g6+2c4fbotIEkA7GC5w
	1Vn2Rh+XTaHcpeWrkK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTt9b-0008Qa-I5; Thu, 23 May 2019 19:13:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTt9Y-0008Pq-I1
 for linux-snps-arc@lists.infradead.org; Thu, 23 May 2019 19:13:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B68902184E;
 Thu, 23 May 2019 19:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558638804;
 bh=oIYaQTLDXM5cHMVW2XMkPcl6lLLhRjkiSoFlo8fSd9s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0PTMKChO3fNEu879yK0TiPxXrUYadX7WDl9QvGLGG5yJPnxBpYm05VG3MPcJlwVtz
 JVkTf0Vu8+0vPzlzwh/yoKkz9QYumbIgBf1bmq7k27Pjpjm10e+x1+x2krkkfXdq0E
 ElFtlK82XOHnWuWnblzHhwczThVVPycvB7raykPg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 71/77] perf bench numa: Add define for RUSAGE_THREAD if
 not present
Date: Thu, 23 May 2019 21:06:29 +0200
Message-Id: <20190523181729.787799563@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523181719.982121681@linuxfoundation.org>
References: <20190523181719.982121681@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_121324_615558_57CFAD80 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, stable@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

WyBVcHN0cmVhbSBjb21taXQgYmY1NjFkM2MxMzQyM2ZjNTRkYWExOWI1ZDQ5ZGMxNWZhZmRiN2Fj
YyBdCgpXaGlsZSBjcm9zcyBidWlsZGluZyBwZXJmIHRvIHRoZSBBUkMgYXJjaGl0ZWN0dXJlIG9u
IGEgZmVkb3JhIDMwIGhvc3QsCndlIHdlcmUgZmFpbGluZyB3aXRoOgoKICAgICAgQ0MgICAgICAg
L3RtcC9idWlsZC9wZXJmL2JlbmNoL251bWEubwogIGJlbmNoL251bWEuYzogSW4gZnVuY3Rpb24g
4oCYd29ya2VyX3RocmVhZOKAmToKICBiZW5jaC9udW1hLmM6MTI2MToxMjogZXJyb3I6IOKAmFJV
U0FHRV9USFJFQUTigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBk
aWQgeW91IG1lYW4g4oCYU0lHRVZfVEhSRUFE4oCZPwogICAgZ2V0cnVzYWdlKFJVU0FHRV9USFJF
QUQsICZydXNhZ2UpOwogICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn4KICAgICAgICAgICAgICBT
SUdFVl9USFJFQUQKICBiZW5jaC9udW1hLmM6MTI2MToxMjogbm90ZTogZWFjaCB1bmRlY2xhcmVk
IGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFw
cGVhcnMgaW4KCltwZXJmYnVpbGRlckA2MGQ1ODAyNDY4ZjYgcGVyZl0kIC9hcmNfZ251XzIwMTku
MDMtcmMxX3ByZWJ1aWx0X3VjbGliY19sZV9hcmNoc19saW51eF9pbnN0YWxsL2Jpbi9hcmMtbGlu
dXgtZ2NjIC0tdmVyc2lvbiB8IGhlYWQgLTEKYXJjLWxpbnV4LWdjYyAoQVJDdjIgSVNBIExpbnV4
IHVDbGliYyB0b29sY2hhaW4gMjAxOS4wMy1yYzEpIDguMy4xIDIwMTkwMjI1CltwZXJmYnVpbGRl
ckA2MGQ1ODAyNDY4ZjYgcGVyZl0kCgpUcnlpbmcgdG8gcmVwcm9kdWNlIGEgcmVwb3J0IGJ5IFZp
bmVldCwgSSBub3RpY2VkIHRoYXQsIHdpdGgganVzdApjcm9zcy1idWlsdCB6bGliIGFuZCBudW1h
Y3RsIGxpYnJhcmllcywgSSBlbmRlZCB1cCB3aXRoIHRoZSBhYm92ZQpmYWlsdXJlLgoKU28sIHNp
bmNlIFJVU0FHRV9USFJFQUQgaXMgYXZhaWxhYmxlIGFzIGEgZGVmaW5lLCBjaGVjayBmb3IgdGhh
dCBhbmQKbnVtYWN0bCBsaWJyYXJpZXMsIEkgZW5kZWQgdXAgd2l0aCB0aGUgYWJvdmUgZmFpbHVy
ZS4KClNvLCBzaW5jZSBSVVNBR0VfVEhSRUFEIGlzIGF2YWlsYWJsZSBhcyBhIGRlZmluZSBpbiB0
aGUgc3lzdGVtIGhlYWRlcnMsCmNoZWNrIGlmIGl0IGlzIGRlZmluZWQgaW4gdGhlICdwZXJmIGJl
bmNoIG51bWEnIHNvdXJjZXMgYW5kIGRlZmluZSBpdCBpZgpub3QuCgpOb3cgaXQgYnVpbGRzIGFu
ZCBJIGhhdmUgdG8gZmlndXJlIG91dCBpZiB0aGUgcHJvYmxlbSByZXBvcnRlZCBieSBWaW5lZXQK
b25seSB0YWtlcyBwbGFjZSBpZiB3ZSBoYXZlIGxpYmVsZiBvciBzb21lIG90aGVyIGxpYnJhcnkg
YXZhaWxhYmxlLgoKQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CkNjOiBKaXJpIE9s
c2EgPGpvbHNhQGtlcm5lbC5vcmc+CkNjOiBsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBOYW1oeXVuZyBLaW0gPG5hbWh5dW5nQGtlcm5lbC5vcmc+CkNjOiBWaW5lZXQgR3Vw
dGEgPFZpbmVldC5HdXB0YTFAc3lub3BzeXMuY29tPgpMaW5rOiBodHRwczovL2xrbWwua2VybmVs
Lm9yZy9uL3RpcC0yd2I0cjFnaXI5eHJldmJwcTdxcDBhbWtAZ2l0Lmtlcm5lbC5vcmcKU2lnbmVk
LW9mZi1ieTogQXJuYWxkbyBDYXJ2YWxobyBkZSBNZWxvIDxhY21lQHJlZGhhdC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiB0b29scy9wZXJm
L2JlbmNoL251bWEuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL3Rvb2xzL3BlcmYvYmVuY2gvbnVtYS5jIGIvdG9vbHMvcGVyZi9iZW5jaC9u
dW1hLmMKaW5kZXggMGFmY2M3ZWNjYzYxOS4uOTk3ODc1Yzc3MGIxMCAxMDA2NDQKLS0tIGEvdG9v
bHMvcGVyZi9iZW5jaC9udW1hLmMKKysrIGIvdG9vbHMvcGVyZi9iZW5jaC9udW1hLmMKQEAgLTM4
LDYgKzM4LDEwIEBACiAjaW5jbHVkZSA8bnVtYS5oPgogI2luY2x1ZGUgPG51bWFpZi5oPgogCisj
aWZuZGVmIFJVU0FHRV9USFJFQUQKKyMgZGVmaW5lIFJVU0FHRV9USFJFQUQgMQorI2VuZGlmCisK
IC8qCiAgKiBSZWd1bGFyIHByaW50b3V0IHRvIHRoZSB0ZXJtaW5hbCwgc3VwcmVzc2VkIGlmIC1x
IGlzIHNwZWNpZmllZDoKICAqLwotLSAKMi4yMC4xCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGlu
dXgtc25wcy1hcmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXNucHMtYXJj
