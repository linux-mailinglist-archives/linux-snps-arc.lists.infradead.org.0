Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F21AE886
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 01:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lP7Fm7YckG7qsEH9j/YP94Fh5WLtNs1YauePAh8LPm8=; b=dsPtB0olkb31Bk
	BK/Y1JBW7yq99M9i4ydGIz49QxocMgJQHxB7rp1KSmSospRp/e6+cELpeadxQHxIQwxgEI/Zccs0q
	axhMVWtGtrpsu1354dvaCRIEfasioxf5HFDP7zpgyrNB+LX8+O+y7qs8U1CX82hEc29kWz/ohDAtm
	wQPVNa8aBhUQatd0Ep9+McVmXFBAreUeUVA7kGmT/Dy7yLVyAFL44v6Ajnvozvb5w8XwOtpD4iVMz
	eEFwG8BhEfHKP2zbnrMIUFYoY354DhHKVJy8oWcxfrZxTvCeIpfsClzftPmxElf6QTjY4PV0NYfG7
	3exbYrhXF9gmtG4ts3Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPa8V-0003wq-E3; Fri, 17 Apr 2020 23:11:03 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPa8T-0003wO-Ch
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 23:11:02 +0000
IronPort-SDR: CMKSUV7Ylqpl3IxB+HBg2wRqxRMZ7vWFAV2k6uIxaFi+DrIAZwyM2wpLreQpMPaciDXU2PiiKu
 pgdkUxW9d3qdKsSeEGcc8/cpvO+mm65ficjEjuMvVf09WGJpWhBsoD9ndvmyJWutgxGl4BBLEJ
 2Xz2Y+hkRdNYJa6rA+YKTkvEXneU5w7HnuhVPCbhrssK5qmBdS5UBAD+WVlMYET9eeZwd93PQg
 kwz7ffmWHyQU2jiJKt3evnGUluyrZjLKn+qWqsBMKsJSUXQfu3TtcEBF7NojEqdERxLjSjuqoo
 AaU=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="47847720"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa2.mentor.iphmx.com with ESMTP; 17 Apr 2020 15:11:00 -0800
IronPort-SDR: ATnt2fn7sjg24VP5IY20omeunE/G9m3/kUUhZZ0p6URlbGLESJ79ioFVo249pPiS6TsPrfyFlw
 uzTXI7S00auhTjKK66J1G3u+SxTCVgtnOZGxTbFSIUvm3vP1+UMq/fp/m+a5bLrICokzyjlepf
 /pU2gRtUe5nRcBPdA0+LI0FBnrR+58aEQ6kAoN6IXvPH4/jaXwKJSWpmj5Otk7260z3vcLlRJx
 TmBl9+HS6aQsw+FbAzUI3Nigx7DwbkHNDdimytJeMIlGGUyavq0aNaTkiuYCi8MPqVoPUi92wJ
 +Nc=
Date: Fri, 17 Apr 2020 23:10:57 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 12/14] ARC: Build Infrastructure
In-Reply-To: <20200409025615.27003-13-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172307560.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-13-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_161101_436466_E4268D17 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, 8 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> +  GLIBC_PRIVATE {
> +    # A copy of sigaction lives in libpthread, and needs these.
> +    __default_rt_sa_restorer;
> +  }

Not a requirement for this port, given that this is GLIBC_PRIVATE so can 
always be changed later, but does sigaction actually need to live in 
libpthread?  Or given the work that's been done on moving functions from 
libpthread to libc (and the corresponding dynamic linker work that mean 
it's now possible to move versioned symbols like that), could the copy of 
sigaction in libpthread be removed?

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
