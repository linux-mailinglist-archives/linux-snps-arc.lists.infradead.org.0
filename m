Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FCD1D960B
	for <lists+linux-snps-arc@lfdr.de>; Tue, 19 May 2020 14:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sE89Pnq/k3wsPP3vYthTk8V0mg5LX4X/KdyuzWDHO2g=; b=qqajPQZ/howG9x
	Q2baxEfx/u6QW4JK1+7mkWf7/9JV5TZLUkMq90MPeHbGopdBTS0ZfldExynAii4uy0+4JsRPLwV8C
	aHG+61lj0NuTmCiQZ9Qdl1Kfvcik2aQlebITneRqyZfYi3yoNCdEVPdla2IHkzwrCJJM23cEk6QuF
	4Nn8z2a/3CB4M4Q8l/0dhYwe5lxsi27oX6TzaU/NwPltzOrugx+YnoBT3GhLIyZ7NcIwODnNPvz+p
	ao6565QKqC2AuHyhMOJA5216+TwrW5SQaT0T8LYQgD9YfUsRLr21lcjIyYdNe/4dEeW5AI2xIpYWi
	+ZwgTzNvFhDQkBV9zvaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1AL-00062U-8B; Tue, 19 May 2020 12:16:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1AI-00060j-L0
 for linux-snps-arc@lists.infradead.org; Tue, 19 May 2020 12:16:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id m12so2841242wmc.0
 for <linux-snps-arc@lists.infradead.org>; Tue, 19 May 2020 05:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to;
 bh=CI8m9crALg/Xn9OTn2CBKMgQVjthPtgSj7GKK6/xrJY=;
 b=vBqmOvTO2RpDH6eAR9P3QBjukIRoBhlYcOfYsZS2KPUH2g7YNw3monWGp1OTTphsZr
 2BOEwUj0BfqLk13bC05HQvnpLhd+RXE8NX6/wusaJZ4jg+TZHXKBYhcx0jt8Eo3cJ7Hz
 Y0wBW/ahm1c5pY7qSy5U8LUOfF5KnDEj905txbJ9j9VYGvbD8skZl5FDp/1x7S8TOzra
 FiIuG06zXO5qpN6aI6/2AhgeUJMB/8Wy/Yado2WGM34H+G7tmZ5z5pCX5iuLeGc3H72O
 W9lMeK/jqmk5fHNDYm4WN4Vhe67nU0qs0ujenvJa3chTKbNCLe9tESJ41lkBoKAm41gX
 EBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=CI8m9crALg/Xn9OTn2CBKMgQVjthPtgSj7GKK6/xrJY=;
 b=sXjf+CWJP7t4c3XVdnKiF+TQ+TfYjog86nLXAnRdhs6VAcF8+6RJ9wPTMVk4VIAK+j
 zAMDT3HvQ2W7/sN8nHxgZlhWNdGx6bD7QO5gno2m4sk2mY7o0Idn+CB/N8wdA08gfoI5
 QzgnTEDgypi/Ma0Iq0oijRqH2xyBTYzKHpVOYIbnZYr7sXJSzLpNwJWOgZQIZQuf3ksL
 Q0pBfao43vNhI68mIxMv4HDsGFYAyB1bPXAQfm7DM8xZM0zQyMbo7y0B64bnFS0xnzJ9
 nPApXCELR3slcNWl++FIU0OuyHU9uf3bNGpirhGWp2I94Q5k03YmLCp0o5weLmLrayDU
 68wA==
X-Gm-Message-State: AOAM533zrLmOfD0xHFDixnep6G/sdOdA7rEFOQG8Xp40qReJhGgwgYBJ
 Myb3HiWrIWR1Dz2e5WgJ0+w=
X-Google-Smtp-Source: ABdhPJxHMUI94FzaEe4xQzVqMjormWR9atpJ2uAM5QMcxIJw4AE3uiC6h2FBqph/XlkkdbNUkyB9Sg==
X-Received: by 2002:a05:600c:2c4e:: with SMTP id
 r14mr5467146wmg.118.1589890568466; 
 Tue, 19 May 2020 05:16:08 -0700 (PDT)
Received: from dell5510 ([62.201.25.198])
 by smtp.gmail.com with ESMTPSA id t129sm4356833wmg.27.2020.05.19.05.16.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 05:16:07 -0700 (PDT)
Date: Tue, 19 May 2020 14:16:05 +0200
From: Petr Vorel <petr.vorel@gmail.com>
To: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Subject: Re: [PATCH v2] Kernel selftests: Add check if tpm devices are
 supported
Message-ID: <20200519121605.GA26265@dell5510>
References: <20200519120743.41358-1-Nikita.Sobolev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519120743.41358-1-Nikita.Sobolev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051610_700860_0EA73190 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [petr.vorel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Shuah Khan <skhan@linuxfoundation.org>, linux-integrity@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Nikita,

> tpm2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
> are available. In case, when these devices are not available test
> fails, but expected behaviour is skipped test.

> Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
Reviewed-by: Petr Vorel <pvorel@suse.cz>

Thanks for v2, but I see v1 already merged in next tree since February.
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20200518&id=b32694cd0724d4ceca2c62cc7c3d3a8d1ffa11fc

Kind regards,
Petr

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
