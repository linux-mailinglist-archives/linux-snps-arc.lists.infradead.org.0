Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C286204E2
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 13:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxn0YEq5r6zm+WebKHFLwOtgrk1n5rZ2pE/wiqkHvyQ=; b=Ow9aA0LSWEzzhL
	LeoBMhjfcKjaMvM6FgBGuwpi9Tp4J31ih7lC0dB3Bdmp7sz5ztm+eWcTdfQGsM3SotGoUmRWm0/Sq
	DHql9wmPe2YRDMrgaVHG5TwN+Pcui6qBYsSGOt7qTHL1wyKPDxkxq914u3AL1Og2wWt0UzoAJuNT3
	bnwc09yucack3mK7uI4CdltlXl7oXgVhps5HU+3X6UDOtpZo27fz/WYoZUeNGYqTqKNO2+PL2UXxB
	hWRiTTKQ5QqpUMxUn8vIzTGaMCoscWKiHPP6feCiGvzq/aMIBWd6xbqLo8ZBq2mFwLvE5R/DXj0W7
	2MV13g/dcnrdizzgoa2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRElu-0001Wr-Pa; Thu, 16 May 2019 11:42:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRElr-0001Vu-Hn
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 11:42:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4527A2087E;
 Thu, 16 May 2019 11:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558006919;
 bh=yRkLOFR3h40g7f+vwHCiXT4JQc/3J7QKLamA3qGjGS8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YiRgkkz0opXITm9IFcbMiGC0HJkvpAdM+ol4kEOKbAq9LwmHO1yMHAHZLRNjRhwk8
 C6qyn2nxOH6x/AmOLooVgp5i/1zKW+5mx4z+J+Wt5XirhtPnOIVhvVqvJ9nnaWTbFU
 8yycqsysckj5m6yL8/zxkoK8todyQ1lCTD9QnmHA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 8/8] perf bench numa: Add define for RUSAGE_THREAD
 if not present
Date: Thu, 16 May 2019 07:41:46 -0400
Message-Id: <20190516114146.9267-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516114146.9267-1-sashal@kernel.org>
References: <20190516114146.9267-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_044159_603409_18BF51F9 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

RnJvbTogQXJuYWxkbyBDYXJ2YWxobyBkZSBNZWxvIDxhY21lQHJlZGhhdC5jb20+CgpbIFVwc3Ry
ZWFtIGNvbW1pdCBiZjU2MWQzYzEzNDIzZmM1NGRhYTE5YjVkNDlkYzE1ZmFmZGI3YWNjIF0KCldo
aWxlIGNyb3NzIGJ1aWxkaW5nIHBlcmYgdG8gdGhlIEFSQyBhcmNoaXRlY3R1cmUgb24gYSBmZWRv
cmEgMzAgaG9zdCwKd2Ugd2VyZSBmYWlsaW5nIHdpdGg6CgogICAgICBDQyAgICAgICAvdG1wL2J1
aWxkL3BlcmYvYmVuY2gvbnVtYS5vCiAgYmVuY2gvbnVtYS5jOiBJbiBmdW5jdGlvbiDigJh3b3Jr
ZXJfdGhyZWFk4oCZOgogIGJlbmNoL251bWEuYzoxMjYxOjEyOiBlcnJvcjog4oCYUlVTQUdFX1RI
UkVBROKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3Ug
bWVhbiDigJhTSUdFVl9USFJFQUTigJk/CiAgICBnZXRydXNhZ2UoUlVTQUdFX1RIUkVBRCwgJnJ1
c2FnZSk7CiAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fgogICAgICAgICAgICAgIFNJR0VWX1RI
UkVBRAogIGJlbmNoL251bWEuYzoxMjYxOjEyOiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRp
ZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBp
bgoKW3BlcmZidWlsZGVyQDYwZDU4MDI0NjhmNiBwZXJmXSQgL2FyY19nbnVfMjAxOS4wMy1yYzFf
cHJlYnVpbHRfdWNsaWJjX2xlX2FyY2hzX2xpbnV4X2luc3RhbGwvYmluL2FyYy1saW51eC1nY2Mg
LS12ZXJzaW9uIHwgaGVhZCAtMQphcmMtbGludXgtZ2NjIChBUkN2MiBJU0EgTGludXggdUNsaWJj
IHRvb2xjaGFpbiAyMDE5LjAzLXJjMSkgOC4zLjEgMjAxOTAyMjUKW3BlcmZidWlsZGVyQDYwZDU4
MDI0NjhmNiBwZXJmXSQKClRyeWluZyB0byByZXByb2R1Y2UgYSByZXBvcnQgYnkgVmluZWV0LCBJ
IG5vdGljZWQgdGhhdCwgd2l0aCBqdXN0CmNyb3NzLWJ1aWx0IHpsaWIgYW5kIG51bWFjdGwgbGli
cmFyaWVzLCBJIGVuZGVkIHVwIHdpdGggdGhlIGFib3ZlCmZhaWx1cmUuCgpTbywgc2luY2UgUlVT
QUdFX1RIUkVBRCBpcyBhdmFpbGFibGUgYXMgYSBkZWZpbmUsIGNoZWNrIGZvciB0aGF0IGFuZApu
dW1hY3RsIGxpYnJhcmllcywgSSBlbmRlZCB1cCB3aXRoIHRoZSBhYm92ZSBmYWlsdXJlLgoKU28s
IHNpbmNlIFJVU0FHRV9USFJFQUQgaXMgYXZhaWxhYmxlIGFzIGEgZGVmaW5lIGluIHRoZSBzeXN0
ZW0gaGVhZGVycywKY2hlY2sgaWYgaXQgaXMgZGVmaW5lZCBpbiB0aGUgJ3BlcmYgYmVuY2ggbnVt
YScgc291cmNlcyBhbmQgZGVmaW5lIGl0IGlmCm5vdC4KCk5vdyBpdCBidWlsZHMgYW5kIEkgaGF2
ZSB0byBmaWd1cmUgb3V0IGlmIHRoZSBwcm9ibGVtIHJlcG9ydGVkIGJ5IFZpbmVldApvbmx5IHRh
a2VzIHBsYWNlIGlmIHdlIGhhdmUgbGliZWxmIG9yIHNvbWUgb3RoZXIgbGlicmFyeSBhdmFpbGFi
bGUuCgpDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KQ2M6IEppcmkgT2xzYSA8am9s
c2FAa2VybmVsLm9yZz4KQ2M6IGxpbnV4LXNucHMtYXJjQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6
IE5hbWh5dW5nIEtpbSA8bmFtaHl1bmdAa2VybmVsLm9yZz4KQ2M6IFZpbmVldCBHdXB0YSA8Vmlu
ZWV0Lkd1cHRhMUBzeW5vcHN5cy5jb20+Ckxpbms6IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL24v
dGlwLTJ3YjRyMWdpcjl4cmV2YnBxN3FwMGFta0BnaXQua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5
OiBBcm5hbGRvIENhcnZhbGhvIGRlIE1lbG8gPGFjbWVAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1i
eTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIHRvb2xzL3BlcmYvYmVuY2gv
bnVtYS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvdG9vbHMvcGVyZi9iZW5jaC9udW1hLmMgYi90b29scy9wZXJmL2JlbmNoL251bWEuYwpp
bmRleCA3M2QxOTJmNTdkYzM0Li5kZjQxZGVlZDAzMjBlIDEwMDY0NAotLS0gYS90b29scy9wZXJm
L2JlbmNoL251bWEuYworKysgYi90b29scy9wZXJmL2JlbmNoL251bWEuYwpAQCAtMzIsNiArMzIs
MTAgQEAKICNpbmNsdWRlIDxudW1hLmg+CiAjaW5jbHVkZSA8bnVtYWlmLmg+CiAKKyNpZm5kZWYg
UlVTQUdFX1RIUkVBRAorIyBkZWZpbmUgUlVTQUdFX1RIUkVBRCAxCisjZW5kaWYKKwogLyoKICAq
IFJlZ3VsYXIgcHJpbnRvdXQgdG8gdGhlIHRlcm1pbmFsLCBzdXByZXNzZWQgaWYgLXEgaXMgc3Bl
Y2lmaWVkOgogICovCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFyYyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1h
cmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXNucHMtYXJj
