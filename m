Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEF196EE6
	for <lists+linux-snps-arc@lfdr.de>; Wed, 21 Aug 2019 03:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A7RxDwML3Ej0sQuwu0XWUGI/+W1c/6LnqVqU/88+7/E=; b=U6+CbZdZMzN2kr
	2crVy+JIfbekiCYIxDs66AhxqhpW8ObEoUHb9FJTBqxnsnD8dYbvw4jb7ObhxNkZNdUfESrkHZWyr
	6t2lHTRLy7R0/x8RenKC44r+gCfCFoBgOJ3U5pqcPY8Fk7JMThk3aaKTSyoTd1rii+WKpZ85LWsWU
	Ek5OFZx7E+7RgxDUzbxnZpxA9Fb2EOIGzMIS2YG+eja91VpcB+DcLdpFet2KU8zXJ934ghFKIRyc2
	8T2aFAAET2AozfBF889u39J6kUB3NQNkTcerig0LvSHYmA6In8NqO5AA6FcJet4PzrzPJmY5J1+Dy
	I7saVNdFRQRG3xpacZcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FRE-00037k-JA; Wed, 21 Aug 2019 01:29:24 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FRB-00036v-Lo
 for linux-snps-arc@lists.infradead.org; Wed, 21 Aug 2019 01:29:22 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id 071BD19C82
 for <linux-snps-arc@lists.infradead.org>; Tue, 20 Aug 2019 20:29:09 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 0FQyiPU983Qi00FQzi68sc; Tue, 20 Aug 2019 20:29:09 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OOSEwVTKo/XTobrljC1e2coQRLkYFj8WzE8FMIs5SyI=; b=XH+mBmWD2RAMJ8JYeWMJ1U/HPf
 KoNO6ZClPAZwK86TOehOSlEP62WhxzMdphsN+VFDwuETB8qIELEA83UWLX0kV36H61kNPiY1hvhkL
 +5LiUGmxxXwSdiNGPx2cSgFg+9335X8Cg8iSCtwt73VKwkQnxACLytZp+e0jSt+32TVqk5vqmXOKW
 XPqpCrKPbLkpSRq4F7WBFTBZrsnGTl4v7OLDfDFLGVdy1jiDuAuOdcdVlGWHL7QC4RAL/miBo0+B4
 kbb6ALif+LFUvxpNWsAHZkbIqm13eY54Ct3gzvFMNwQpRmiivRw1KRg6IwRAAlbTSXBU8ZRY0QKxR
 HNj2xjDw==;
Received: from cablelink-187-160-61-9.pcs.intercable.net ([187.160.61.9]:54391
 helo=embeddedor) by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1i0FQx-000vE1-WA; Tue, 20 Aug 2019 20:29:08 -0500
Date: Tue, 20 Aug 2019 20:29:07 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH] ARC: unwind: Mark expected switch fall-through
Message-ID: <20190821012907.GA29165@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.160.61.9
X-Source-L: No
X-Exim-ID: 1i0FQx-000vE1-WA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-187-160-61-9.pcs.intercable.net (embeddedor)
 [187.160.61.9]:54391
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 2
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_182921_806125_BDF32E73 
X-CRM114-Status: UNSURE (   3.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gu
CgpUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZ3MgKEJ1aWxkaW5nOiBoYXBz
X2hzX2RlZmNvbmZpZyBhcmMpOgoKYXJjaC9hcmMva2VybmVsL3Vud2luZC5jOiBJbiBmdW5jdGlv
biDigJhyZWFkX3BvaW50ZXLigJk6Ci4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjMyODo1OiB3
YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0
aHJvdWdoPV0KICBkbyB7ICAgICAgICBcCiAgICAgXgouL2luY2x1ZGUvbGludXgvY29tcGlsZXIu
aDozMzg6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9fY29tcGlsZXRpbWVfYXNz
ZXJ04oCZCiAgX19jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIHByZWZpeCwgc3Vm
Zml4KQogIF5+fn5+fn5+fn5+fn5+fn5+fn5+Ci4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM1
MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX2NvbXBpbGV0aW1lX2Fzc2VydOKA
mQogIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNz
ZXJ0XywgX19MSU5FX18pCiAgXn5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvbGludXgvYnVp
bGRfYnVnLmg6Mzk6Mzc6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhjb21waWxldGlt
ZV9hc3NlcnTigJkKICNkZWZpbmUgQlVJTERfQlVHX09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0
aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjUwOjI6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCVUlMRF9CVUdfT05fTVNH4oCZCiAgQlVJ
TERfQlVHX09OX01TRyhjb25kaXRpb24sICJCVUlMRF9CVUdfT04gZmFpbGVkOiAiICNjb25kaXRp
b24pCiAgXn5+fn5+fn5+fn5+fn5+fgphcmNoL2FyYy9rZXJuZWwvdW53aW5kLmM6NTczOjM6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCVUlMRF9CVUdfT07igJkKICAgQlVJTERfQlVH
X09OKHNpemVvZih1MzIpICE9IHNpemVvZih2YWx1ZSkpOwogICBefn5+fn5+fn5+fn4KYXJjaC9h
cmMva2VybmVsL3Vud2luZC5jOjU3NToyOiBub3RlOiBoZXJlCiAgY2FzZSBEV19FSF9QRV9uYXRp
dmU6CiAgXn5+fgoKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b0Bl
bWJlZGRlZG9yLmNvbT4KLS0tCiBhcmNoL2FyYy9rZXJuZWwvdW53aW5kLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJjL2tlcm5lbC91
bndpbmQuYyBiL2FyY2gvYXJjL2tlcm5lbC91bndpbmQuYwppbmRleCA0NDVlNGQ3MDJmNDMuLmRj
MDVhNjM1MTZmNSAxMDA2NDQKLS0tIGEvYXJjaC9hcmMva2VybmVsL3Vud2luZC5jCisrKyBiL2Fy
Y2gvYXJjL2tlcm5lbC91bndpbmQuYwpAQCAtNTcyLDYgKzU3Miw3IEBAIHN0YXRpYyB1bnNpZ25l
ZCBsb25nIHJlYWRfcG9pbnRlcihjb25zdCB1OCAqKnBMb2MsIGNvbnN0IHZvaWQgKmVuZCwKICNl
bHNlCiAJCUJVSUxEX0JVR19PTihzaXplb2YodTMyKSAhPSBzaXplb2YodmFsdWUpKTsKICNlbmRp
ZgorCQkvKiBGYWxsIHRocm91Z2ggKi8KIAljYXNlIERXX0VIX1BFX25hdGl2ZToKIAkJaWYgKGVu
ZCA8IChjb25zdCB2b2lkICopKHB0ci5wdWwgKyAxKSkKIAkJCXJldHVybiAwOwotLSAKMi4yMy4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
c25wcy1hcmMgbWFpbGluZyBsaXN0CmxpbnV4LXNucHMtYXJjQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1zbnBzLWFy
Ywo=
