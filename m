Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018319F135
	for <lists+linux-snps-arc@lfdr.de>; Tue, 27 Aug 2019 19:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L/wWt0wc3KeLwDeMFIVoapafhCeiukTplmhsBxvm8jU=; b=d25OxzyD6J12iZ
	k4mvrEMwRcD8IKyjCfX3kY/jJMsJ1PekFiOL0fm6mKnDLtt0jq/tl1LbsDPDqxOD2nEvzmbFklXFV
	tvPUv/0nKZVFnOE+lq5Hx+Uud1FQG0H3rtxYKvPYFwXOQlZC2FJGT3SqUEgxFhBtceNE7To0z5h9X
	BBQNpFmmE6c1dM5CD8N2rOolhHc23RC4YEPqRKLNZwR96PwsyTuAHCE6G2fIsV3uvbcPr2ixr4QCs
	5wcZW9Mcm0cejN/7Nr6B8wt6pqDMRlcqfZsRW+CZ4MHk6OKmVMFWi3kMIsYvkpRbOWlQzo9g3H+Ou
	WU3WeWX7PdukHwr2IKXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ewi-0003PH-PO; Tue, 27 Aug 2019 17:07:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ewg-0003Oy-2J
 for linux-snps-arc@lists.infradead.org; Tue, 27 Aug 2019 17:07:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id q139so14489702pfc.13
 for <linux-snps-arc@lists.infradead.org>; Tue, 27 Aug 2019 10:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:openpgp:autocrypt:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=q0kT6PQbzsiYnhvqFPwiKFm2QLDcZ2zSEw+IGcRlCgw=;
 b=UMz9MSnCnlqAH0ef2rjlxORz8VWWoTKMmaRn9gq0OLWJi4wz4barRmZLN7ehtpm3WF
 JHeqcatfU5j/JrHTooZ6EJiLJnc+ijM5wOQez3NJ9I9aF3/GFmf+WKlWxobjXjkeUgcv
 gh0aWARzpvlUWMRMoU2BOVMwkRpZcqQcFrAlBOiu4a3KvGFvf1p21dmQm8fKHBLA1c/V
 pCBzot5KdW6lnP/FxMKqyoYy8bV9LGSmDowjSXXNd5bBgy6gIuEk7fpg1R2VZFYR36LD
 ZOORYvKVnP/880fmbwgeS868Jza/KV6pc6GPR3ZW0hToDi0gSvo3c1fTcALgeOGIOsen
 7g0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=q0kT6PQbzsiYnhvqFPwiKFm2QLDcZ2zSEw+IGcRlCgw=;
 b=rJEzJqhppl0zghq+o7x7rG1ZdVJ3KnZy0MeKaQlZN+35cGxKAkeMV48hZkqn+lFIir
 +9YAIF+1p1TEAzS/fYfalAhrDFYl7ztF3fkjvg/gPRj77nGt9E2+QPxKA3Pq2RHikg3M
 479IMshKufqYwxxZTZUHTfhRVqVN8OXYZ/Od1NwCm63DqbXM3ZKBoXRX76eipdDobq4X
 N/gXebja6+/37oaMXZE8jcxSCys7bfIZb24Arpq/ORdZJkybcnT2C/PiBPL6FxGC/dLQ
 DSxf2q4YNYm1r8xQuqIyFlT0lnm85kDMQmxkM+Ce4RoY7bGHRTfpDCydxHvn5/kxih1W
 jVxA==
X-Gm-Message-State: APjAAAWEpQwps0EeOBBEgiNseuS/8jo4dCKrzZarGY4kEwmRo0vT7Nt1
 SO5K3aGIec7/isJsEbgob4k=
X-Google-Smtp-Source: APXvYqyjWTE+SdJ/Ko+rR9A0KMt3tPEs6juc+GO5EUHf9F+pdqDZePthnY5d78eO4O1sIlIYipZ8Mg==
X-Received: by 2002:a05:6a00:8e:: with SMTP id
 c14mr26613244pfj.241.1566925669586; 
 Tue, 27 Aug 2019 10:07:49 -0700 (PDT)
Received: from ?IPv6:2601:641:c100:83a0:7543:d89b:60ad:490f?
 ([2601:641:c100:83a0:7543:d89b:60ad:490f])
 by smtp.gmail.com with ESMTPSA id 97sm2905491pjz.12.2019.08.27.10.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 10:07:48 -0700 (PDT)
X-Mozilla-News-Host: news://gmane.comp.lib.uclibc.buildroot:119
To: Linus Torvalds <torvalds@linux-foundation.org>
From: Vineet Gupta <vineetg76@gmail.com>
Subject: [GIT PULL] ARC fixes for 5.3-rc7
Openpgp: preference=signencrypt
Autocrypt: addr=vineetg76@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFEffBMBEADIXSn0fEQcM8GPYFZyvBrY8456hGplRnLLFimPi/BBGFA24IR+B/Vh/EFk
 B5LAyKuPEEbR3WSVB1x7TovwEErPWKmhHFbyugdCKDv7qWVj7pOB+vqycTG3i16eixB69row
 lDkZ2RQyy1i/wOtHt8Kr69V9aMOIVIlBNjx5vNOjxfOLux3C0SRl1veA8sdkoSACY3McOqJ8
 zR8q1mZDRHCfz+aNxgmVIVFN2JY29zBNOeCzNL1b6ndjU73whH/1hd9YMx2Sp149T8MBpkuQ
 cFYUPYm8Mn0dQ5PHAide+D3iKCHMupX0ux1Y6g7Ym9jhVtxq3OdUI5I5vsED7NgV9c8++baM
 7j7ext5v0l8UeulHfj4LglTaJIvwbUrCGgtyS9haKlUHbmey/af1j0sTrGxZs1ky1cTX7yeF
 nSYs12GRiVZkh/Pf3nRLkjV+kH++ZtR1GZLqwamiYZhAHjo1Vzyl50JT9EuX07/XTyq/Bx6E
 dcJWr79ZphJ+mR2HrMdvZo3VSpXEgjROpYlD4GKUApFxW6RrZkvMzuR2bqi48FThXKhFXJBd
 JiTfiO8tpXaHg/yh/V9vNQqdu7KmZIuZ0EdeZHoXe+8lxoNyQPcPSj7LcmE6gONJR8ZqAzyk
 F5voeRIy005ZmJJ3VOH3Gw6Gz49LVy7Kz72yo1IPHZJNpSV5xwARAQABtC1WaW5lZXQgR3Vw
 dGEgKHBlcnNvbmFsKSA8dmluZWV0Zzc2QGdtYWlsLmNvbT6JAj4EEwECACgCGwMGCwkIBwMC
 BhUIAgkKCwQWAgMBAh4BAheABQJbBYpwBQkLx0HcAAoJEGnX8d3iisJe9TAP/3ljkSlRwToH
 O0E9QimJJqF52uZ0phSg1ZoavgHhGtz1mRykgeOzOITpFmYGBnf3v2Z33fDltIxTaN5TkRwl
 DjYvz1NTBlTLyPRbYwdCn6YyVSWj75hiGwdD0/N5M7Rb3XYsyDHvZ/tns1oGwipPmu9G+JoB
 VOkZw/bviE8AmGEK54PWdU1t3AnJ/3wtT6FSIPlTtCREiuZdQItjFkH0sYL1/BOXcE+XoBoQ
 9hx6IEb46pop9ix/IRov2y6ZBUtDbF+SOSvImRadvD8A1ttvH51naP21Bra3ypV/GmZOR1/U
 8azvgKmimYvC0345za/dS8eqrDuSh2IbEkDR0juQsFbkWS4IY5uqckzRWxHVZBas9CjpjipO
 C4iTzxq3CgmCyAD5qlQndJdhbsTgN18PXVAAI/phC1BtjNOoCgWgNsr8JK2TbXNF9wSR17T7
 jDWCZ+Up8k5CTVQywLwJl91u5dV82WAnHnv3U1dwUX46DFMenV16ADfRrm7ib+D/O0XZMP7B
 sGC7PPleU+Ej/rt6V4H6VZ5RC9CXVCdUjM+ZZsqJc6/f5od4gSyswWQzCb/izU5ebxrehTUJ
 lPh2QCa6e46G1WzLWwZCFmQU3uUQtCXU1BBId/nL+Y3hQW0XKapvTx+zr8cZAZDXb83YE8Qs
 inBoGE5y9nj+ZveaVZHZRy63
Message-ID: <41adb7d8-dcf5-3ee9-0ae8-53fe0d614de9@gmail.com>
Date: Tue, 27 Aug 2019 10:07:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_100750_130505_675EAD01 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mischa Jonker <mjonker@synopsys.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Alexey Brodkin <abrodkin@synopsys.COM>, lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Linus,

Late pull request for ARC as I was off to land of monsoons.
Please pull.

P.S. Using my private email (also on pgp key) due to some interim IT email
shenanigans being sorted out.

Thx,
-Vineet
--------->
The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.3-rc7

for you to fetch changes up to 2f029413cbfbfe519d294c6ac83a0c00e2a48a97:

  arc: prefer __section from compiler_attributes.h (2019-08-26 22:37:12 +0530)

----------------------------------------------------------------
ARC updates for 5.3-rc7

 - Support for Edge Triggered IRQs in ARC IDU intc

 - other fixes here and there

----------------------------------------------------------------
Alexey Brodkin (1):
      ARCv2: entry: early return from exception need not clear U & DE bits

Eugeniy Paltsev (2):
      ARC: fix typo in setup_dma_ops log message
      ARC: [plat-hsdk]: allow to switch between AXI DMAC port configurations

Gustavo A. R. Silva (1):
      ARC: unwind: Mark expected switch fall-throughs

Mischa Jonker (3):
      ARCv2: IDU-intc: Add support for edge-triggered interrupts
      dt-bindings: IDU-intc: Clean up documentation
      dt-bindings: IDU-intc: Add support for edge-triggered interrupts

Nick Desaulniers (1):
      arc: prefer __section from compiler_attributes.h

 .../interrupt-controller/snps,archs-idu-intc.txt   | 30 +++++---
 arch/arc/boot/dts/Makefile                         |  3 +
 arch/arc/include/asm/entry-arcv2.h                 |  2 +-
 arch/arc/include/asm/linkage.h                     |  8 +-
 arch/arc/include/asm/mach_desc.h                   |  3 +-
 arch/arc/kernel/mcip.c                             | 60 +++++++++++++--
 arch/arc/kernel/unwind.c                           |  4 +-
 arch/arc/mm/dma.c                                  |  2 +-
 arch/arc/plat-hsdk/platform.c                      | 87 +++++++++++++++++++---
 include/soc/arc/mcip.h                             | 11 +++
 10 files changed, 172 insertions(+), 38 deletions(-)

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
