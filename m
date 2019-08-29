Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AF4A278C
	for <lists+linux-snps-arc@lfdr.de>; Thu, 29 Aug 2019 22:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zmgM0Rzgc9vzVQkxVxMIa1cMl51BPzrjTXFF9m6Qnw=; b=iHcWu/pCt2FY1C
	GmtwX1fV+no0lm32mSjtdMgNwiuvuaxmctIrkiLarCEru3/PGP4iSxKYJswnz89/P945Xob4ANc5J
	oM7gw2i/KXGDLpFJBaplTN6TEfJk1h9yS+eCB5ohWmK9zqXe9n22dL3mXSqfkTdvZLrZ0+av+kkC9
	SONKhYJLjbIuNidy0ulXrJiNHOfK4y8DmSxm6hwyKJ84tT4x+H38j/74aLlAHpZxyjl1INtzBJsaH
	KwR1VnHXxgqQmRd5ReCvqD0cgTXAOWLZMrk+31JplumVNMYsxrbnOLBlJXC+HSqhmdr5MiLH4RZ/c
	E6sntStQMe+C9zu3HhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Qb9-0002qZ-VI; Thu, 29 Aug 2019 20:00:47 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Qb5-0002pr-AV
 for linux-snps-arc@lists.infradead.org; Thu, 29 Aug 2019 20:00:45 +0000
Received: by mail-pf1-x42d.google.com with SMTP id w26so2784771pfq.12
 for <linux-snps-arc@lists.infradead.org>; Thu, 29 Aug 2019 13:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LkefRpHhPpQBjXysRY3mbOcTpi1NAYNRo0gZduV7DwA=;
 b=lqG2adsZN0rapMmSDiKsP6NsIFhyNun7jd2mSev2QM3rezIdaeO543noug9zilvKAK
 9LNwjMtNXgSJ/+4RPRyJsykl0p+gVNJ5oA2Z+D+JfAQrao9qJ6cveRSqH8vChabkAI1Q
 Te3VUXRjQbcuSTBJvdWCPXVIky6ILFQE1+rC6KyguE5GfKYFwzZ9MSITmo2TSAqPNHYs
 118bN3dimHj9VwZGYqoBD9ggfiCd/cA27TA2IH/9iONupjvNU+TshuACYt/qlwFo6EUY
 9gFCipC+75B0gmRW8kdkbJ2K/Em5lyKAvM4ouQZu+32uAcXWiziABbSEGNy2tV8XoYYr
 dAOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LkefRpHhPpQBjXysRY3mbOcTpi1NAYNRo0gZduV7DwA=;
 b=jtE55ODB+WfXVGaXDiiz6iyig20GVQEdsnLebWZ02I8ph1mOcpWhT6CQisEmsPVhPY
 sJtUt+PyjfBqiWD/+/kHhHCIY8Y5WDU/ugjP4BiayaFjtW5tVgMWPFP/60KNL4T6ZO0H
 8PUt2XHEEhfZblLs2Lii4nf47JvlTuXl4wehGRKSTLtrD0eSADOq2U52kAdEYkLO1Uqq
 PSDDZk9YfkhwmTcUgJUIr45hZDLUsXrMJmel7/nxeHXbaIUJeymiQRGGp5U3cTqivf09
 LWAoBuUcoLTD8vBb8O9rpwRV5GTLZptalFWG7Zu89HpIu1pMC5fHEho/YuzQU1Ym3/RR
 qcyA==
X-Gm-Message-State: APjAAAW+ZoXqWPrfYuxRADuaRHVM4L0rrqlexGeHLdDk2mjrHeVUaM/q
 G4asc8W9tjAN7yyCA5bnIX8=
X-Google-Smtp-Source: APXvYqxHkBqH634c/3hf+pqVAKDbpAVa43BLH29PFU+Tzvho0KkwDKz3GNAJMVp6lo910MkBK51LMw==
X-Received: by 2002:a65:6081:: with SMTP id t1mr10012365pgu.9.1567108840240;
 Thu, 29 Aug 2019 13:00:40 -0700 (PDT)
Received: from ?IPv6:2601:641:c100:83a0:7543:d89b:60ad:490f?
 ([2601:641:c100:83a0:7543:d89b:60ad:490f])
 by smtp.gmail.com with ESMTPSA id j9sm4130638pfi.128.2019.08.29.13.00.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 13:00:39 -0700 (PDT)
Subject: Re: [PATCH] ARC: unwind: Mark expected switch fall-through
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
References: <20190821012907.GA29165@embeddedor>
 <2c3ef09b-bd07-6caf-05a9-908700a60afd@embeddedor.com>
 <BY5PR12MB403422F37413E42066FCA9BEDEA20@BY5PR12MB4034.namprd12.prod.outlook.com>
 <1496d4b7-f07b-01e1-c33d-b2d4c501d9dc@embeddedor.com>
From: Vineet Gupta <vineetg76@gmail.com>
Message-ID: <a549a117-5ec6-85f5-a4b4-fdc1cc267763@gmail.com>
Date: Thu, 29 Aug 2019 13:00:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1496d4b7-f07b-01e1-c33d-b2d4c501d9dc@embeddedor.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_130044_333223_B8C24583 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 8/29/19 8:05 AM, Gustavo A. R. Silva wrote:
> No. This is a different one. Notice that the subject lines differ by one
> letter.

Umm, indeed I thought I'd already merged it.
Now added, will show up in linux-next after rc7

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
