Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8DF17CA7
	for <lists+linux-snps-arc@lfdr.de>; Wed,  8 May 2019 16:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXXjDsy6Wpgml6UUuVdUxVopnYqRV+KDVYbRKp1nSg0=; b=MzOO5uldGLzMUG
	+iz9AtdAg7PH0jVfhJv+JOC+PXg33fNh2nlHXnu5YfNIdYLF5bo3CdKKn+pOchgUzVYAXnjx66btH
	1X/Flol59zqrYdNUf7DhLPFqQxPQAlleAHlMaPaqbuQqSyka4RaBgHYEjvmfJT8Cckz+p7TELeFQQ
	fheVBmWRvGj3XqodvXXgxh/bmDqbQmDRX8yI9X7+KF2uG2Kdwxihvgd8dd7PYGFyIQIX0ZBid/j7C
	ueFUtkm/ewAH4yeGzXixGooZPlVqz9e7DZHCUcqShdgHAhgoPBqiaKM44kmUcAsZ6Qv3ZXvsXX56N
	d2zG7gDJaLoIRlDs+wbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONyN-0002cg-OQ; Wed, 08 May 2019 14:55:07 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONyL-0002F9-To
 for linux-snps-arc@lists.infradead.org; Wed, 08 May 2019 14:55:07 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5EBEDC011E;
 Wed,  8 May 2019 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557327308; bh=OyuDIlKKF19OaJlrS+fbwBer3egeSY4j1jMCaPU9OqM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=mE/KQgnnVbLcjfK6l2q22Gh+f4KyshSYb/1jCZQu8FXNfwbYjpoyzGmNAoBlB+4jF
 iq5oadnTtsHq8KwxUFg/uc74JVkdKTeVg6oDArX7PGxWcRS0GtNJDlMjz5SkEadRBp
 O33NPEtMZhOlh65vkFV2bXjhXnn8F57k0ksA1U+a9Hz4hIxi+HEWjlgb2jxUY5DD/i
 yPTu2KicQWyNdxj2nlWkgv4AE8gG4k0Bwo/gxV9OIXZeieaK3VOm91CF/sk2biIAQ0
 3NmLetBLM0RPiOUF53pjfjyX+vBdh2yNw+hOHMiV3gmokPstq9bczklZ1HS9ML+7Xz
 WgFzEfVHCcJYA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1BC79A0328;
 Wed,  8 May 2019 14:55:03 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 May 2019 07:54:22 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Wed, 8 May 2019 16:54:20 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Topic: [PATCH] ARC: [plat-hsdk]: Add missing multicast filter bins
 number to GMAC node
Thread-Index: AQHVAMdCOflFMqXaVU6/uA7yDRRMYqZX2A8AgAZ1TQCAApAzUIAAFfkAgABmh6A=
Date: Wed, 8 May 2019 14:54:19 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B479FD8@DE02WEMBXB.internal.synopsys.com>
References: <7f36bbadc0df4c93c396690dab59f34775de3874.1556788240.git.joabreu@synopsys.com>
 <56933076-879c-78a0-4bae-2613203b93b1@synopsys.com>
 <1557166759.17021.9.camel@synopsys.com>
 <78EB27739596EE489E55E81C33FEC33A0B478870@DE02WEMBXB.internal.synopsys.com>
 <CY4PR1201MB01206801C1C2B8272ABE9B17A1320@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB01206801C1C2B8272ABE9B17A1320@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_075505_973012_80426F14 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

From: Alexey Brodkin <abrodkin@synopsys.com>
Date: Wed, May 08, 2019 at 11:46:36

> Could you please propose a patch?

I couldn't yet find the exact FIFO size of the HW (it's not described in 
the documents I have). Do you have the values ?

Thanks,
Jose Miguel Abreu
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
