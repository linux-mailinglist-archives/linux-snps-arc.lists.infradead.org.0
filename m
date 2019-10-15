Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A0DD7E86
	for <lists+linux-snps-arc@lfdr.de>; Tue, 15 Oct 2019 20:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N7OqE3rX9zJhkvSiWhasIrtsrHhFMRx8wAQX0nYTbE=; b=AUusja6NvovL7F
	h6eaM9uAjj45cctJwnHhx5+YLnmTiirdYU1RbZRJrirsz2ZluDfuuPcBCfsqujEtzeWocTguxPtuR
	SZxmAf3fkJjAYOw52syQEr2ixYWJqKnnzjq5pOdPCpxrmA1SzABDC16llmL6jLImwQoObd5IAAAE5
	EfwfDE8Pl+6KDU6FXk9qtLI/VOygS12+BPTLYdA1U5OnwDjg4lXeYy3y1PiqpN3NG9H2iL1rUlENd
	1jekMj+m13PmZryFK3bf/8dpQHIhRrCtCzdMldu//iXzJXiuM2j3/BE6XPff8wUb5rtEDkaeL9Jaj
	nxvfXCNBILAh6SqVzFYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKRGZ-0005M6-1K; Tue, 15 Oct 2019 18:09:51 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKRGW-0005JO-11
 for linux-snps-arc@lists.infradead.org; Tue, 15 Oct 2019 18:09:49 +0000
Received: by mail-qt1-x842.google.com with SMTP id t20so26570410qtr.10
 for <linux-snps-arc@lists.infradead.org>; Tue, 15 Oct 2019 11:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0qwLtcxPALcuAsItN1B8qx8pI5MyvooMsDhjXlcFVYU=;
 b=OnJVDC5hcrBKYzJ0aaZLxRkdp1U3qCbQgu81veLGc4CM3Zb6t5hcOJCBpTdvyBdixF
 VWur9qZ4L56kK+G5lLndae4M48fKcE348SEdyWD92O4lDLHkfxe5ub5wW2//gFbMdbTi
 iE/SuY24OOqYt++fDwkOv1/GwgIUIlLUQjLQSRUD9o8GbrJtA9JJHM6yNqLJ6MTwQsp1
 dfxkcvx1nTD9OtgmSDJrI8pHgij5k8GqR5jvJV2yqTmJQajvA0gKezgdBIJXSTBKmtgD
 Bn30ldSgF22fHm04r+hQGzlUE6CW7jcqmMjIT04sV5F04SskgoCcXMGW7VfjZDMID4ld
 SbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0qwLtcxPALcuAsItN1B8qx8pI5MyvooMsDhjXlcFVYU=;
 b=k8eegCiTOxro0QFK8nLcaNysmivT1J/nq4ZTBgB5zEewRTzKM9BN9l6NBRsudAJd2E
 3pPE7N00bPQSAvrhZuO6RUvPojgXp1WDu/XamW8BntoVBTiIuwTWeS7+rvn+o6b5mpiv
 KfZdkWXiYbb6Yw4Vi2NuIAbt/vCWg2PRLM5dtusriGHdhfRdUlkv/UJaXamGN7+0+W+B
 9JMJk05j2etiCN0ODwq6BP9RLd8gwEWrYLMehWjmSlNAL1lCm+JwSChe15D9msfDLzif
 KjqUURhHSNELu313Re4mdXmV8x5H9ucX7rS6nEpQDWW8sN577BY+FO3KLdMtdL1ogAb5
 +9/Q==
X-Gm-Message-State: APjAAAXM9SlWQEQk4ig2LiwqBa3rItCHuKg93p2CwKB1YwQmVHTa+l1L
 E/a5sOu2L6rUuWY3fNz5SesRPQ==
X-Google-Smtp-Source: APXvYqyVLYUWTIAK6GzhvgdzZLJE6+q5wD4mjw+q975FciP9rpwUqd4etcurLcTJHzy5ZkDdOjbnKA==
X-Received: by 2002:ac8:7289:: with SMTP id v9mr39571710qto.139.1571162985818; 
 Tue, 15 Oct 2019 11:09:45 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k54sm15559033qtf.28.2019.10.15.11.09.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 11:09:45 -0700 (PDT)
Message-ID: <1571162982.5937.42.camel@lca.pw>
Subject: Re: [PATCH V6 2/2] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Tue, 15 Oct 2019 14:09:42 -0400
In-Reply-To: <1571131302-32290-3-git-send-email-anshuman.khandual@arm.com>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_110948_100433_11FF6029 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEwLTE1IGF0IDE0OjUxICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90
ZToKPiArc3RhdGljIHVuc2lnbmVkIGxvbmcgX19pbml0IGdldF9yYW5kb21fdmFkZHIodm9pZCkK
PiArewo+ICsJdW5zaWduZWQgbG9uZyByYW5kb21fdmFkZHIsIHJhbmRvbV9wYWdlcywgdG90YWxf
dXNlcl9wYWdlczsKPiArCj4gKwl0b3RhbF91c2VyX3BhZ2VzID0gKFRBU0tfU0laRSAtIEZJUlNU
X1VTRVJfQUREUkVTUykgLyBQQUdFX1NJWkU7Cj4gKwo+ICsJcmFuZG9tX3BhZ2VzID0gZ2V0X3Jh
bmRvbV9sb25nKCkgJSB0b3RhbF91c2VyX3BhZ2VzOwo+ICsJcmFuZG9tX3ZhZGRyID0gRklSU1Rf
VVNFUl9BRERSRVNTICsgcmFuZG9tX3BhZ2VzICogUEFHRV9TSVpFOwo+ICsKPiArCVdBUk5fT04o
cmFuZG9tX3ZhZGRyID4gVEFTS19TSVpFKTsKPiArCVdBUk5fT04ocmFuZG9tX3ZhZGRyIDwgRklS
U1RfVVNFUl9BRERSRVNTKTsKCkl0IHdvdWxkIGJlIG5pY2UgaWYgdGhpcyBwYXRjaCBkb2VzIG5v
dCBpbnRyb2R1Y2UgYSBuZXcgVz0xIEdDQyB3YXJuaW5nIGhlcmUgb24KeDg2IGJlY2F1c2UgRklS
U1RfVVNFUl9BRERSRVNTIGlzIDAsIGFuZCBHQ0MgdGhpbmsgdGhlIGNvZGUgaXMgZHVtYiBiZWNh
dXNlCiJyYW5kb21fdmFkZHIiIGlzIHVuc2lnbmVkLAoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4v
YXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6ODMsCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBmcm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LArCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZnJvbSAuL2luY2x1ZGUvbGludXgvbW1kZWJ1Zy5oOjUsCsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmcm9tIC4vaW5jbHVkZS9saW51eC9nZnAuaDo1LArC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnJvbSBtbS9kZWJ1Z192bV9wZ3RhYmxl
LmM6MTM6Cm1tL2RlYnVnX3ZtX3BndGFibGUuYzogSW4gZnVuY3Rpb24g4oCYZ2V0X3JhbmRvbV92
YWRkcuKAmToKbW0vZGVidWdfdm1fcGd0YWJsZS5jOjM1OToyMzogd2FybmluZzogY29tcGFyaXNv
biBvZiB1bnNpZ25lZCBleHByZXNzaW9uIDwgMCBpcwphbHdheXMgZmFsc2UgWy1XdHlwZS1saW1p
dHNdCsKgIFdBUk5fT04ocmFuZG9tX3ZhZGRyIDwgRklSU1RfVVNFUl9BRERSRVNTKTsKwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF4KLi9pbmNsdWRlL2FzbS1n
ZW5lcmljL2J1Zy5oOjExMzoyNTogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhXQVJO
X09O4oCZCsKgIGludCBfX3JldF93YXJuX29uID0gISEoY29uZGl0aW9uKTvCoMKgwqDCoFwKwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBefn5+fn5+fn4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXNu
cHMtYXJjIG1haWxpbmcgbGlzdApsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtc25wcy1hcmMK
