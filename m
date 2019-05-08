Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1EB17295
	for <lists+linux-snps-arc@lfdr.de>; Wed,  8 May 2019 09:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKLzZwMwxryi2stisMFvl7mwrlAgc3RFjL6FNP+mg4o=; b=p5pqH+p/UdVdZ/
	WJ7Z5pz7Ca3Nl90pkoXBn9wto0Hyo2gf81aYf4usN/HKhQE+Ue76KeFifvKNZSj2oDHBLan6+Gb9W
	NsSE2eQzbzBDMygPTJep9AxgkBmKDiY6dG8wTKMFNHv6NptxrQphLVQZYMygD1Yr44n1zV4y5llQ2
	M02OB/ZId7Ypsx1mJnURbKO9Hwjpa9TDXPm//evUggMY5s8aRFNQS1SAO4bdKtZNxdSqA6bJaEtut
	9aKQX8L2B6xMGbEE6Ao2S+15DVlKsPcFGqoqkt6yCKugHfcIcl0JFuqTnlmItoNC+UX/0fLPAn/WX
	0iNHyXNHGCSAHai0HOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOH0k-0008Jb-CW; Wed, 08 May 2019 07:29:06 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOH0i-0008In-2E
 for linux-snps-arc@lists.infradead.org; Wed, 08 May 2019 07:29:05 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A3689C00E5;
 Wed,  8 May 2019 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557300545; bh=TgHt3b2Gg9tpKFC4TR7N7CkLAgIAaku1jGPKdCF3QAc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Y1YmsR77akkGn/MrWnXmnnXm/mj1phLENM6JaNxyd715tYf0VKlEQTsDFAeh+R5lP
 jWnpGUdeHezx6OEAf3+0zx187aq9Viy6HebCPA6XOVpwWTfcJM6/xzJ/MYy0jBouIR
 o4AtuLJeXAcmcw6vHjWRtPqpxPZjFjQUmtdRcjQKP/vUsTRCDYvPafyLST/GC8NuTI
 BUKA8EvWeO8IKMlYC/VbMSWiHl4shXXfqTohqQo2OUNR4voauzfdUj776qJtVab0X4
 dlIbjAEpLL/mFrhqZDVjP3DpetAFaVmvz8X6462nGSsQbAwt8vuNLo9JkoKs4d+ezi
 hLAtXw6+qeSYg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EFD57A02AB;
 Wed,  8 May 2019 07:29:00 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 May 2019 00:29:01 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Wed, 8 May 2019 09:28:58 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: RE: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Topic: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Index: AQHVAMdCOflFMqXaVU6/uA7yDRRMYqZX2A8AgAZ1TQCAApAzUA==
Date: Wed, 8 May 2019 07:28:57 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B478870@DE02WEMBXB.internal.synopsys.com>
References: <7f36bbadc0df4c93c396690dab59f34775de3874.1556788240.git.joabreu@synopsys.com>
 <56933076-879c-78a0-4bae-2613203b93b1@synopsys.com>
 <1557166759.17021.9.camel@synopsys.com>
In-Reply-To: <1557166759.17021.9.camel@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_002904_106694_713D9C32 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Eugeniy Paltsev <paltsev@synopsys.com>
Date: Mon, May 06, 2019 at 19:19:20

> Hi,
> 
> I'll check this in the next few days.
> 

I also noticed that FIFO size entry is missing. DWMAC1000 does not 
support automatic FIFO size detection so this entry needs to be added.

Thanks,
Jose Miguel Abreu
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
