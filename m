Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173DA1256B
	for <lists+linux-snps-arc@lfdr.de>; Fri,  3 May 2019 02:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CosgyG9c60hWWYKWu/t6s/5tcrBpfaRq4b86k20rYFg=; b=FHOHHDg0G6ZToX
	ByQHgWFp7+Xe21hMAa7BW7KIg94tGXLIhQzXLafrDhHewAarJ7hzqLi1CXsEla8UFoRT4RYvOte0d
	sJy9fdhh7r4rnlkk3K70qgp+ledmtqqXhGqYhwpRKoXyKBL0yiQ/7EiHnorJjP7KjJv4nv3K1G2fj
	wfDXDUT/QgwOVBP4in4RIGzDciBPmcecSCi6iBUGMukrkl+Eh23SC5SMw/cvgrZl/oBDrrr/BIDnI
	zNqF/r6lKEU80PkVJM1N2P3oFDlBtBPdvOBzr8TDZcqrACGCTgVPUKN9mWBftvuIPg5ZQ6MBvYsbi
	jB8fqToAnwt8Y1jyNI4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMM1c-0005LR-K2; Fri, 03 May 2019 00:26:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMM1Z-0005Kj-LL
 for linux-snps-arc@lists.infradead.org; Fri, 03 May 2019 00:26:03 +0000
Received: from quaco.ghostprotocols.net (adsl-173-228-226-134.prtc.net
 [173.228.226.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDF0620B7C;
 Fri,  3 May 2019 00:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556843160;
 bh=ptuapJiqTvB4gNmOD/1cNqPZiOmxIe8gYrXtfjCkDXs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WpPFHLFJwoZDjZpbKzU9qkBU7kKg/Zl0iZJD7ugxzSbridP6NMqlJY4WMsoUaLOGB
 vSKQQeifLdzougefWv7w1VxaJGV3sNUd3tmPuLy6B0dLZvL24kr1OfxlEl6CI4bfwZ
 f27VgQvuNufWotFsQrcxy4kFYKkAqXjIjDdMA/s4=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 05/11] perf bench numa: Add define for RUSAGE_THREAD if not
 present
Date: Thu,  2 May 2019 20:25:27 -0400
Message-Id: <20190503002533.29359-6-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503002533.29359-1-acme@kernel.org>
References: <20190503002533.29359-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_172601_716237_0E28C02F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Clark Williams <williams@redhat.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

RnJvbTogQXJuYWxkbyBDYXJ2YWxobyBkZSBNZWxvIDxhY21lQHJlZGhhdC5jb20+CgpXaGlsZSBj
cm9zcyBidWlsZGluZyBwZXJmIHRvIHRoZSBBUkMgYXJjaGl0ZWN0dXJlIG9uIGEgZmVkb3JhIDMw
IGhvc3QsCndlIHdlcmUgZmFpbGluZyB3aXRoOgoKICAgICAgQ0MgICAgICAgL3RtcC9idWlsZC9w
ZXJmL2JlbmNoL251bWEubwogIGJlbmNoL251bWEuYzogSW4gZnVuY3Rpb24g4oCYd29ya2VyX3Ro
cmVhZOKAmToKICBiZW5jaC9udW1hLmM6MTI2MToxMjogZXJyb3I6IOKAmFJVU0FHRV9USFJFQUTi
gJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g
4oCYU0lHRVZfVEhSRUFE4oCZPwogICAgZ2V0cnVzYWdlKFJVU0FHRV9USFJFQUQsICZydXNhZ2Up
OwogICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn4KICAgICAgICAgICAgICBTSUdFVl9USFJFQUQK
ICBiZW5jaC9udW1hLmM6MTI2MToxMjogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIg
aXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KCltw
ZXJmYnVpbGRlckA2MGQ1ODAyNDY4ZjYgcGVyZl0kIC9hcmNfZ251XzIwMTkuMDMtcmMxX3ByZWJ1
aWx0X3VjbGliY19sZV9hcmNoc19saW51eF9pbnN0YWxsL2Jpbi9hcmMtbGludXgtZ2NjIC0tdmVy
c2lvbiB8IGhlYWQgLTEKYXJjLWxpbnV4LWdjYyAoQVJDdjIgSVNBIExpbnV4IHVDbGliYyB0b29s
Y2hhaW4gMjAxOS4wMy1yYzEpIDguMy4xIDIwMTkwMjI1CltwZXJmYnVpbGRlckA2MGQ1ODAyNDY4
ZjYgcGVyZl0kCgpUcnlpbmcgdG8gcmVwcm9kdWNlIGEgcmVwb3J0IGJ5IFZpbmVldCwgSSBub3Rp
Y2VkIHRoYXQsIHdpdGgganVzdApjcm9zcy1idWlsdCB6bGliIGFuZCBudW1hY3RsIGxpYnJhcmll
cywgSSBlbmRlZCB1cCB3aXRoIHRoZSBhYm92ZQpmYWlsdXJlLgoKU28sIHNpbmNlIFJVU0FHRV9U
SFJFQUQgaXMgYXZhaWxhYmxlIGFzIGEgZGVmaW5lLCBjaGVjayBmb3IgdGhhdCBhbmQKbnVtYWN0
bCBsaWJyYXJpZXMsIEkgZW5kZWQgdXAgd2l0aCB0aGUgYWJvdmUgZmFpbHVyZS4KClNvLCBzaW5j
ZSBSVVNBR0VfVEhSRUFEIGlzIGF2YWlsYWJsZSBhcyBhIGRlZmluZSBpbiB0aGUgc3lzdGVtIGhl
YWRlcnMsCmNoZWNrIGlmIGl0IGlzIGRlZmluZWQgaW4gdGhlICdwZXJmIGJlbmNoIG51bWEnIHNv
dXJjZXMgYW5kIGRlZmluZSBpdCBpZgpub3QuCgpOb3cgaXQgYnVpbGRzIGFuZCBJIGhhdmUgdG8g
ZmlndXJlIG91dCBpZiB0aGUgcHJvYmxlbSByZXBvcnRlZCBieSBWaW5lZXQKb25seSB0YWtlcyBw
bGFjZSBpZiB3ZSBoYXZlIGxpYmVsZiBvciBzb21lIG90aGVyIGxpYnJhcnkgYXZhaWxhYmxlLgoK
Q2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CkNjOiBKaXJpIE9sc2EgPGpvbHNhQGtl
cm5lbC5vcmc+CkNjOiBsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBOYW1o
eXVuZyBLaW0gPG5hbWh5dW5nQGtlcm5lbC5vcmc+CkNjOiBWaW5lZXQgR3VwdGEgPFZpbmVldC5H
dXB0YTFAc3lub3BzeXMuY29tPgpMaW5rOiBodHRwczovL2xrbWwua2VybmVsLm9yZy9uL3RpcC0y
d2I0cjFnaXI5eHJldmJwcTdxcDBhbWtAZ2l0Lmtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogQXJu
YWxkbyBDYXJ2YWxobyBkZSBNZWxvIDxhY21lQHJlZGhhdC5jb20+Ci0tLQogdG9vbHMvcGVyZi9i
ZW5jaC9udW1hLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS90b29scy9wZXJmL2JlbmNoL251bWEuYyBiL3Rvb2xzL3BlcmYvYmVuY2gvbnVt
YS5jCmluZGV4IDk4YWQ3ODNlZmM2OS4uYTc3ODQ1NTRhODBkIDEwMDY0NAotLS0gYS90b29scy9w
ZXJmL2JlbmNoL251bWEuYworKysgYi90b29scy9wZXJmL2JlbmNoL251bWEuYwpAQCAtMzksNiAr
MzksMTAgQEAKICNpbmNsdWRlIDxudW1hLmg+CiAjaW5jbHVkZSA8bnVtYWlmLmg+CiAKKyNpZm5k
ZWYgUlVTQUdFX1RIUkVBRAorIyBkZWZpbmUgUlVTQUdFX1RIUkVBRCAxCisjZW5kaWYKKwogLyoK
ICAqIFJlZ3VsYXIgcHJpbnRvdXQgdG8gdGhlIHRlcm1pbmFsLCBzdXByZXNzZWQgaWYgLXEgaXMg
c3BlY2lmaWVkOgogICovCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25w
cy1hcmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXNucHMtYXJj
