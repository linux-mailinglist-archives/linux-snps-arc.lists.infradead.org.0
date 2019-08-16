Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A27909F8
	for <lists+linux-snps-arc@lfdr.de>; Fri, 16 Aug 2019 23:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVUYGi8tLsxVCXqMT6JzohuQxocZ3WVMIwYU1X2pQeU=; b=FayM/w+ooZcX/R
	ba6eZRTi72JUsMiKsj5cVuT4OuqM8B0ivqUzshZGvQz0x4BmDMUVxjW2zrDsu/9M6dL5lIm9iILGw
	GOZUtdmBk8VTtGzEBA6fB+gNYE/lcV+z305wErHcTNsyv/i9WLW93P1NKpkiFf5IRMBRi5VqFe4Pu
	NAh3s6u/asrfCbgxq4fFNhqdR3th+CgaofdkMRcN+3e3WZjziZHGZh+LvSffpiRgcSghnmAJRW4OM
	QwCW/xscinpIEztZExPTk3+jvSkGhiaQaVGbDpALm9uqpe+vlWyXsry6Gen1DOfv0Tu8Ups9YDy8w
	zFlWa5s4bfvmmpE000CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjPs-0005oQ-Ab; Fri, 16 Aug 2019 21:05:44 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjPp-0005nv-De
 for linux-snps-arc@lists.infradead.org; Fri, 16 Aug 2019 21:05:42 +0000
Received: by mail-oi1-f193.google.com with SMTP id y8so5762094oih.10
 for <linux-snps-arc@lists.infradead.org>; Fri, 16 Aug 2019 14:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6kp+ij4N1iYYKyYuo9EunRtogi2ASQGFtI485lqWlls=;
 b=iNZiZUdkZTymTBmcbJL8NvyrrxEVjQS9Ztr8od+vhjNEfaN/V5EOpKRpl5xVlB8JDJ
 r38oz/o3OOfQe/XIPY4c6K5r6BNTdUNChTzQ2GfizHgP+9kNaRgE1JZSAP5HSwIkvcTj
 mmXGEal70/Dxilu3mV+wgXPVa6JdvUsdJDeP1DnjSRv8VVyh2qJk2OfdenltovSgZm86
 1Q6obRjiIyeGTNS3wlHT/se0NXROm+7uuK2YUzc+q095bHmCQq2FL5c9XKfuUOMNg4sd
 mVkOft5NKJNdPh1ZMwjNYxOEpt0YbCcR7GWJ0fhBus5ms+GEfCOalBclUke75wVHWnzC
 NbOg==
X-Gm-Message-State: APjAAAXp8Gl4fFOt5hCLiR/yryhaXi0erkKrKoWPBIXSmt5oLdlbPy5v
 BUkc4DAckUmPr7MpHqb7pg==
X-Google-Smtp-Source: APXvYqw+eETBOOyhsRthMA4bW8QoOXtxOLorHNA4vbW23rMawYntr/qdLwx77Vpq/O2pTtew0gQhRQ==
X-Received: by 2002:aca:5f03:: with SMTP id t3mr6465798oib.18.1565989540442;
 Fri, 16 Aug 2019 14:05:40 -0700 (PDT)
Received: from localhost (ip-173-126-47-137.ftwttx.spcsdns.net.
 [173.126.47.137])
 by smtp.gmail.com with ESMTPSA id 132sm1818607oid.47.2019.08.16.14.05.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 14:05:39 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:05:38 -0500
From: Rob Herring <robh@kernel.org>
To: Mischa Jonker <Mischa.Jonker@synopsys.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: IDU-intc: Add support for
 edge-triggered interrupts
Message-ID: <20190816210538.GA30424@bogus>
References: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
 <20190724120436.8537-1-mischa.jonker@synopsys.com>
 <20190724120436.8537-3-mischa.jonker@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724120436.8537-3-mischa.jonker@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_140541_462859_22318B9F 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kstewart@linuxfoundation.org, devicetree@vger.kernel.org,
 Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, tglx@linutronix.de,
 linux-snps-arc@lists.infradead.org, Mischa Jonker <Mischa.Jonker@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019 14:04:36 +0200, Mischa Jonker wrote:
> This updates the documentation for supporting an optional extra interrupt
> cell to specify edge vs level triggered.
> 
> Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
> ---
>  .../interrupt-controller/snps,archs-idu-intc.txt      | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
