Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957061DEFAF
	for <lists+linux-snps-arc@lfdr.de>; Fri, 22 May 2020 21:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50en9lAnGOUAR1wLm/e4EHjVUwvBPgJ/NH1wHBlYfuc=; b=Q5C8zq/onyf4th
	9/HzX/7PINxPXpOs4mT8yv/YMtJu5i1qsYPXRKxC8t1U8TF0WRzvbN6PlFUgpw1YYBRxCZVhUghJa
	/D6aS0VIbQZ388G3kDOSRNaxsNwfsIS0uDyK2XevO0ZNdNdBIJLKcgd47AtMPRT6yX5I8coxpQryL
	O2pT22gchDofe89mE75hqvr0ZP88NkBlYdi7+6UaluyE0eGVfnzLASyRmcvdRn9oaJHKSd5UU2YH5
	kx+ooNmCsBBMs591Vj9RgEFxU/zO5rJ1D6HzLFFzHnnUlcl99xgLy5MOEcq6y+Vm4YnTUejNJ6p8y
	6bQDugcQUYo4WxXPMABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcD0r-0008BV-6C; Fri, 22 May 2020 19:07:21 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcD0p-0008A9-0E
 for linux-snps-arc@lists.infradead.org; Fri, 22 May 2020 19:07:20 +0000
Received: by mail-ej1-x644.google.com with SMTP id s3so14223967eji.6
 for <linux-snps-arc@lists.infradead.org>; Fri, 22 May 2020 12:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to;
 bh=xmNwanKC++U+27ahip8lbbEDLlHHtUnV6HgVgvFbfDM=;
 b=GDNPawQaeob9K+mNF5FNjW5o7K97gJjg59+CeSgpNELRpu58JHl52mCtCCNck1pEvb
 HeMZ58GjcMB+3JZnPZjNGFu50ZDhiU05fcSRiSQrFSXBCJ5aO517JMVOHzoDFbBO3T60
 qnlzDbf5s7Br0/5RInsVsW1RA7uhRp1mzgyUGrAFjOIAaV9g0pC8U0e9WQbXzCXZwYet
 DqrLVQL6ZhVlh+lICfs24zODMFqTJ0SSF7aT4xVhXt8oxVKEvCjTjVq4eOjlnJT6xm25
 F41FFU4KAnVVQTZT1cdv+ze1DN1EPzyRpSTRK8C2V0/wIYNvJnYk969MPWkiE6ykVs9U
 B4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=xmNwanKC++U+27ahip8lbbEDLlHHtUnV6HgVgvFbfDM=;
 b=EHvMKSabQoo7JrnIEgDbZLPwXBHCnhn1WVKdHDmc6xtScgfkG3zCYQ5KaluXXF13LR
 ZcRtsjTxTVW55wuCQZuisESbZ2cSSjom5qEQkclUCzf4IZiLUmTySACGbr0K32monmAb
 DfUXdYWr4bdtMvrLrv5AEgsmTL8Rz5jmsji6VAxtNeYvxzUAAf94NlRT2zjUllJrRyKo
 Gv2ItFfEiCMJLKgLmANtbQT7hvvSURRuOViMatdCglSaLM05eP0wrnebU47fGGH5A1jf
 4eIpPqYLpZo7FtF7YbEgGe1tD2+1+njE34L9JEMERWIARKmOkwB/6/wpt08NtHpLekQI
 kjRQ==
X-Gm-Message-State: AOAM53253nckABffri+tyClug9UfS3uW8XYW6na+ITfHfp7rd0GYAfnq
 Ykcp/dhOcWUEib8IPwBZokw=
X-Google-Smtp-Source: ABdhPJwPJ0lh6giMCZwg2jnCxoteCi2ar0Wm0YeibZi4QG8ZQHgHqxFG/zwgNygvQ7Y4qWoDWBhNzw==
X-Received: by 2002:a17:906:f74c:: with SMTP id
 jp12mr9871203ejb.490.1590174436607; 
 Fri, 22 May 2020 12:07:16 -0700 (PDT)
Received: from x230 ([62.201.25.198])
 by smtp.gmail.com with ESMTPSA id df21sm7827794edb.27.2020.05.22.12.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 12:07:16 -0700 (PDT)
Date: Fri, 22 May 2020 21:07:14 +0200
From: Petr Vorel <petr.vorel@gmail.com>
To: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Subject: Re: [PATCH v3] Kernel selftests: Add check if TPM devices are
 supported
Message-ID: <20200522190714.GB90663@x230>
References: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_120719_050992_87BC1D8E 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [petr.vorel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Petr Vorel <petr.vorel@gmail.com>
Cc: linux-kselftest@vger.kernel.org, Tadeusz Struk <tadeusz.struk@intel.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Joey Pabalinas <joeypabalinas@gmail.com>,
 linux-integrity@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 Shuah Khan <shuah@kernel.org>, Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

> TPM2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> are available. In case, when these devices are not available test
> fails, but expected behaviour is skipped test.

Reviewed-by: Petr Vorel <petr.vorel@gmail.com>

Kind regards,
Petr

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
