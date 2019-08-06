Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD22D82B42
	for <lists+linux-snps-arc@lfdr.de>; Tue,  6 Aug 2019 07:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0tM2KDVHiuFzorvQyBTBCKqb4KqAPr39Qam6YnbPU0=; b=L/Hj+59a2fNpfd
	oUkx/FgDMeDqQqcOB7DdYd8kdczmOFKinAmTAFPa7xf3J19ANi1/F1/nPhwFo5PiOLV1h6dojF+sW
	zfoDxx+S1TFaUb72ELSpTyNLoQqI/hTuaceRi1Hqc2zXR3xoizMW+aVJU6lzjklwd7xDSV+QcR1fp
	u/PMVTLxDxS2HwfsSj0I9DEFY74CCWo79RQSK5oshNCk4/gXL59uYqW/rwuNMmFYb2YVxwBGX9krw
	w9qX7e9k8sPmYhZJtNpMR1e69q18Zj4xi+Jd0Rpn+M6WKgkkSqVO56nTQPn8vJUBYZEfJj7o+tUs1
	C+jsO2wnk4t2CWGY4B6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husLr-0006oV-Jc; Tue, 06 Aug 2019 05:49:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husLo-0006ns-NY
 for linux-snps-arc@lists.infradead.org; Tue, 06 Aug 2019 05:49:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so151985pgn.0
 for <linux-snps-arc@lists.infradead.org>; Mon, 05 Aug 2019 22:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uvYE7nrJnBQlmcbxz3H63UPfE8YRBopt5KIB26DSah4=;
 b=NdeC0FJH9+Hlx0praiF0UKs2uENSLKhRuLYYPX5PWUvTVIB3Kt9PHiuuJbUB9agSfS
 BE1i+l1rxxWnrkOR6KarFJVJnta5e6gU0nStxUDXtmZmbwLgCH6adUL+JQ8alHYc13Dq
 IdDs0knZ5ETE6HwNep8raP4YAakd+Ux7SSpT65lyVmgsBvOKDxF6PLbc2t4qnG7pFx/k
 mvRWC94RieljBIKN8ejTcNfhdoHO1NTsu+lXwK5QtsLD7hvmC1zjd6Wls+NAg/fl/Nhj
 T6z9FvjfZEg2wj4Jg63I0cmGGZlaQNWJ/LJqVcq+wRlHr4rMSfWk805XiXT9E6dP7ZSh
 4Pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=uvYE7nrJnBQlmcbxz3H63UPfE8YRBopt5KIB26DSah4=;
 b=tyGNKNkt5bsPPZEbpnXGW69J07DrlvAMyShgbiXGbiGTVvGxFqyUrBUsNoZcWrI78Y
 tubxIH4xoHSEKj47OaXxMLCIgsa+kUjWAMxra25MS7l5o3PSWx2q7z0v+4+3vtphSiUT
 bld0gE5LJH2fXE7/VH0bVU0SBtpUGZ/Rzk1HBnFFhHniggPDsw4ruokGhdtlxux+SIou
 27dYdSRJ8bPUMclBrh4QyXA8UGiASHCVffNQq0/JpDo7yN9M4xj8eSoBBPV/ZNFCVaFL
 FZQmPLz9cH4lL/Hr/5OJphajAKzqT6vvP/nwSNFYLx6fOXEGfFBiVG7ghmEYyiJUr86j
 PgNQ==
X-Gm-Message-State: APjAAAUH4bFadIqHs3j/SPhdY4hSy96EFLXjLj9bbKep/2cA5ra1i68r
 v7bFmwpIqGgsOabMi4XlR4gezYF8thZvig==
X-Google-Smtp-Source: APXvYqwP9PSzizaUfPFnptDdZml03za3TGNcWXCtkReNEzyNCPM6ATqKcupvDjBhdpOmHah/zcefag==
X-Received: by 2002:a17:90a:384d:: with SMTP id
 l13mr1425752pjf.86.1565070574630; 
 Mon, 05 Aug 2019 22:49:34 -0700 (PDT)
Received: from [192.168.1.2] ([171.61.30.136])
 by smtp.gmail.com with ESMTPSA id x14sm106764131pfq.158.2019.08.05.22.49.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 22:49:33 -0700 (PDT)
Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-throughs
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
References: <20190805193232.GA12826@embeddedor>
From: Vineet Gupta <vineetg76@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vgupta@synopsys.com; prefer-encrypt=mutual; keydata=
 mQINBFEffBMBEADIXSn0fEQcM8GPYFZyvBrY8456hGplRnLLFimPi/BBGFA24IR+B/Vh/EFk
 B5LAyKuPEEbR3WSVB1x7TovwEErPWKmhHFbyugdCKDv7qWVj7pOB+vqycTG3i16eixB69row
 lDkZ2RQyy1i/wOtHt8Kr69V9aMOIVIlBNjx5vNOjxfOLux3C0SRl1veA8sdkoSACY3McOqJ8
 zR8q1mZDRHCfz+aNxgmVIVFN2JY29zBNOeCzNL1b6ndjU73whH/1hd9YMx2Sp149T8MBpkuQ
 cFYUPYm8Mn0dQ5PHAide+D3iKCHMupX0ux1Y6g7Ym9jhVtxq3OdUI5I5vsED7NgV9c8++baM
 7j7ext5v0l8UeulHfj4LglTaJIvwbUrCGgtyS9haKlUHbmey/af1j0sTrGxZs1ky1cTX7yeF
 nSYs12GRiVZkh/Pf3nRLkjV+kH++ZtR1GZLqwamiYZhAHjo1Vzyl50JT9EuX07/XTyq/Bx6E
 dcJWr79ZphJ+mR2HrMdvZo3VSpXEgjROpYlD4GKUApFxW6RrZkvMzuR2bqi48FThXKhFXJBd
 JiTfiO8tpXaHg/yh/V9vNQqdu7KmZIuZ0EdeZHoXe+8lxoNyQPcPSj7LcmE6gONJR8ZqAzyk
 F5voeRIy005ZmJJ3VOH3Gw6Gz49LVy7Kz72yo1IPHZJNpSV5xwARAQABtCpWaW5lZXQgR3Vw
 dGEgKGFsaWFzKSA8dmd1cHRhQHN5bm9wc3lzLmNvbT6JAj4EEwECACgCGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheABQJbBYpwBQkLx0HcAAoJEGnX8d3iisJeChAQAMR2UVbJyydOv3aV
 jmqP47gVFq4Qml1weP5z6czl1I8n37bIhdW0/lV2Zll+yU1YGpMgdDTHiDqnGWi4pJeu4+c5
 xsI/VqkH6WWXpfruhDsbJ3IJQ46//jb79ogjm6VVeGlOOYxx/G/RUUXZ12+CMPQo7Bv+Jb+t
 NJnYXYMND2Dlr2TiRahFeeQo8uFbeEdJGDsSIbkOV0jzrYUAPeBwdN8N0eOB19KUgPqPAC4W
 HCg2LJ/o6/BImN7bhEFDFu7gTT0nqFVZNXlOw4UcGGpM3dq/qu8ZgRE0turY9SsjKsJYKvg4
 djAaOh7H9NJK72JOjUhXY/sMBwW5vnNwFyXCB5t4ZcNxStoxrMtyf35synJVinFy6wCzH3eJ
 XYNfFsv4gjF3l9VYmGEJeI8JG/ljYQVjsQxcrU1lf8lfARuNkleUL8Y3rtxn6eZVtAlJE8q2
 hBgu/RUj79BKnWEPFmxfKsaj8of+5wubTkP0I5tXh0akKZlVwQ3lbDdHxznejcVCwyjXBSny
 d0+qKIXX1eMh0/5sDYM06/B34rQyq9HZVVPRHdvsfwCU0s3G+5Fai02mK68okr8TECOzqZtG
 cuQmkAeegdY70Bpzfbwxo45WWQq8dSRURA7KDeY5LutMphQPIP2syqgIaiEatHgwetyVCOt6
 tf3ClCidHNaGky9KcNSQ
Message-ID: <8516c7c5-bd70-38a9-0583-225689e9e1aa@gmail.com>
Date: Tue, 6 Aug 2019 11:19:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805193232.GA12826@embeddedor>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_224936_797599_87554732 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 8/6/19 1:02 AM, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings (Building: haps_hs_defconfig arc):
> 
> arch/arc/kernel/unwind.c:827:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
> arch/arc/kernel/unwind.c:836:20: warning: this statement may fall through [-Wimplicit-fallthrough=]
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Thx for the patch, applied to arc for-curr.

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
