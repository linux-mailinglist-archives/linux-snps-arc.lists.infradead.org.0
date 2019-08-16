Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A391909F1
	for <lists+linux-snps-arc@lfdr.de>; Fri, 16 Aug 2019 23:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4YQKrjMHH+Ng0wpaFexKkFP/QGdvZE6Whk8a+7yaQQ=; b=kznV3kFh4hBJPD
	MxBznf4pIUKjf7bOIVtPlEX/6ShnPxo32O5Wjw7ZGSSnt7K1jDDwUpdVb0+YSHZoDI/fIpHAQ3+dG
	9fFOSEN3X3uGc0FaWcAC3FQPtljfpQp3GxZf/X87Kgw92B+1I5iwwW4f213R3cyW4xVHMp9Q/cwi4
	eznrklR/X/4edquNgsyoxf6Ap0O3G7imQ4hCKstxYRSXKtduTl3MIXpNEYMJmpDaHQXpk93JDEsAf
	6RaqJ9YX+fnjeWrlUvC7FKY0awr4ZxpDE9agpu+2JxEsoPAxz1zSP4J/Yc/M7tTvvbxDtU5yC0oH9
	EQ7KzTwfQhI6Y0stKBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjOm-0004LZ-R9; Fri, 16 Aug 2019 21:04:36 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjOk-0004LE-GI
 for linux-snps-arc@lists.infradead.org; Fri, 16 Aug 2019 21:04:35 +0000
Received: by mail-oi1-f196.google.com with SMTP id 16so5788190oiq.6
 for <linux-snps-arc@lists.infradead.org>; Fri, 16 Aug 2019 14:04:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=44wxmAp8F9Ny195d/7nJWW3e/BBIdYzcaKrt+F+uXIM=;
 b=qBDCZCuN0XwrohA3ovbuldQGvnAPsRZvcsTpUXhEXBm6ET4lj6UwN2mXqi8fo+zN+1
 AVi+dfZAUsU1BrLuExvpnlboImKCO+tgrYtnOHPQs4QSC87frdN5YazyWgk4oHO400y3
 DgDYjcYVzADPsIP7I+RUMrZj+VmzzuDEEC9CRbaDn2g+uv87PSkttyIqWYmVjziyWQyN
 tbTJ0tjRE7ZW8MJZ9by92btHhc/bxP87gXBzblIOVYKUVFCiZQtW7F8HP/vIq2lNAH8D
 mVCRF8BvEXQMNO9v1FQtpbAKJhLlRBs4j+vz2ddm6QKHazuM+TM3vk2R26Spcn/if1YR
 tk5g==
X-Gm-Message-State: APjAAAU5p+Dvfgmz7wLTel/X50ayBuXEmM+wgQ5Sbf//Jl8CsRCRPx6i
 0HJ0ZBfnuH3RX6mpkSjtqw==
X-Google-Smtp-Source: APXvYqyXEoglfVtUS7pUYcu1mXmbwfHhxFvihIP68Ikz8fK+6djvGYzwl+pGZ92/fFjSPdwdaIG46Q==
X-Received: by 2002:aca:cd84:: with SMTP id d126mr5962173oig.42.1565989473235; 
 Fri, 16 Aug 2019 14:04:33 -0700 (PDT)
Received: from localhost (ip-173-126-47-137.ftwttx.spcsdns.net.
 [173.126.47.137])
 by smtp.gmail.com with ESMTPSA id a4sm2407098otp.72.2019.08.16.14.04.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 14:04:32 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:04:31 -0500
From: Rob Herring <robh@kernel.org>
To: Mischa Jonker <Mischa.Jonker@synopsys.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: IDU-intc: Clean up documentation
Message-ID: <20190816210431.GA28647@bogus>
References: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
 <20190724120436.8537-1-mischa.jonker@synopsys.com>
 <20190724120436.8537-2-mischa.jonker@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724120436.8537-2-mischa.jonker@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_140434_546131_56D32E2F 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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

On Wed, 24 Jul 2019 14:04:35 +0200, Mischa Jonker wrote:
> * Some lines exceeded 80 characters.
> * Clarified statement about AUX register interface
> 
> Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
> ---
>  .../bindings/interrupt-controller/snps,archs-idu-intc.txt        | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
