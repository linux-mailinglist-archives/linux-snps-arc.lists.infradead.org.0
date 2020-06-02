Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F223E1EC1AD
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 20:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8+AaiMnzWCLwZiefGHaUWSeltL8M+zNFdy3PekQE64=; b=UNvbQc4Vn+GxyE
	mtDpqp3nHX80N/b5lFEVBWnbQgvszOiyNL9aLSerznAPtWGUp8tMgesoR30fTQfPCtcvYkQr+Rm4R
	626m0KAdCXjGjbKY5KSRtB2lPRXR4xbPbi+sSc5q4rCyF5I4yrUpVH1p7/9L8d+3a7yOdtpQcExUt
	Ghf690iRY4M2YaTsfusxqbGQu6oCq5MnsDPtN1r/S4WvQSabwwbD/dkHNGIENCnstdFQq3WiR+Qr3
	pJuT7KmnL508rcda1xO/39cYZ2AYZy/9yc/qUn2ouhHuizCqHmYUPWhqcnKK3yyz6M3wfc51VVuSG
	/xIEcNMZym9txmLQvkJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBSi-0004FE-J3; Tue, 02 Jun 2020 18:16:32 +0000
Received: from esa3.mentor.iphmx.com ([68.232.137.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBSg-0004Ej-8d
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jun 2020 18:16:31 +0000
IronPort-SDR: Zym7Aj1ECk8xpw/nKFZlzAOXZUN2m2fn/rqUBWKh5BYXfBkIjMWrTJcC67QMVpuqhJR/4oqhBN
 /dVac1I8Lp/qtFXNMjHnL5jnYAmFOo/1w2lXgS10V54ZXVn7HY3YuuFN7e3ZHWMiVaIG6YhmEK
 cIfKPdxGl81hq9Rkk0eLsu7giX2uS3erkuLAb7jq0PfQvNDFitfd79Ce0Prw8Z/QjOCx4cEsEs
 n3omraudiOlvzgDLFRrgi1coBDBIuR15V/yKhB+YiPS9QnUMMqYKjVVd3ZXlycp0GdstYHKehi
 lkU=
X-IronPort-AV: E=Sophos;i="5.73,465,1583222400"; d="scan'208";a="49434742"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa3.mentor.iphmx.com with ESMTP; 02 Jun 2020 10:16:29 -0800
IronPort-SDR: dq9b/Ex+1bF7DklXvozNm60W67dBxv/1H10HYeEeR5qDzas0CHW6XME0ZWnus1GIveOEJTbYB5
 t391ZsC5i+k5kuLXrcMCunoxqlQb/NiQLqIJawQSQmYjR0oIBUjr0Xxfd2pgwosDXrQhTzQ4+T
 SZEC+nYZ4H2NFBhhdaraxXCf+BaWxLCfpwOYfF/7vfm4t4VLTviU6LJzMlibnLbSlRYrVREEr5
 BEfchEoj56BIr3dwRHP8BlG1HemDyeXLFyVU3/asYoX+NZ6PEXKVHpaL3bNLyDn2tF2M/NGzf0
 mQ0=
Date: Tue, 2 Jun 2020 18:16:24 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2] ieee754/dbl-64: Reduce the scope of temporary storage
 variables
In-Reply-To: <20200602023223.13823-1-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2006021814210.3673@digraph.polyomino.org.uk>
References: <alpine.DEB.2.21.1911112247180.30786@digraph.polyomino.org.uk>
 <20200602023223.13823-1-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) To
 svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_111630_368077_375C9224 
X-CRM114-Status: UNSURE (   3.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, 1 Jun 2020, Vineet Gupta via Libc-alpha wrote:

> Also as suggested by Joseph [1] used --strip and compared the libs with
> and w/o patch and their sizes are exactly same (with gcc 9).

My suggestion was to compare the *contents* of the libraries, not just 
their sizes.  Either they should be byte-for-byte identical, or if there 
are other differences (register allocation, line numbers in assertions, 
etc.) a more detailed investigation will be needed.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
