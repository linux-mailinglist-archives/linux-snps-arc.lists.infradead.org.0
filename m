Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B035194E28
	for <lists+linux-snps-arc@lfdr.de>; Fri, 27 Mar 2020 01:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe5n+wp9fmvPtSwrgS5v50v4OdeS7Z0pH2ZnXdqiIIY=; b=Sr5NAp44rv6sJG
	rW6ktWDk7+hVO5j+SFuGBXWfh835wce5zlIssRa//onRZORJCwmtFEMN/ghCEKU9LQjcxTgtdD8GO
	D60rRoWjMXaGW7pYttX9++NomBH5+4FiumU1s0OcltONlwwKWGdh7Nf9pResyURikNRGo8LGg1bP+
	2izFVCUJ3SmkjjLUkXyRdwPJsHrzZ4CGJHXxCXpPlJ3lxVegkwm9nBFlOuUDHLpsBsxwohd3HskJw
	FPLog7OsqxrGME54sIEbvUVsp5FK7ibKeKUc8aFF9WbkQaAjzZNjkdQJ48h98C7WlYxEtX3iH5c09
	LseouNPeXj4/TLDRWpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHd32-0003r8-Sq; Fri, 27 Mar 2020 00:40:32 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHd2z-0003qj-Q2
 for linux-snps-arc@lists.infradead.org; Fri, 27 Mar 2020 00:40:31 +0000
IronPort-SDR: +IbrgqjAVDJh9fs4sPK627O+3hvmQNy727TR3LpKc7ODD0ya8XYfsjZfksr3x6Wa1rZNDr3cBP
 2kteDBUHwdP1v6gV7iDUPoCqgP7uUOtPC+lB3KlIAS6xzMqHfPMwSQI/iTts86lLJb7Gf6bJ2Z
 7/wbAhV2k12X+xltwvznlwxAl8NMnbVb9pZIGBEJRanfRC3winOE4RdPLGVYAWcgekOqY+Ia2g
 APsD9wFtChH61NV/VRXrV3co4UsaSVn/oNP+gj8pKbjDXUJlPGBDAidRzZcOTm3n8c+ptQ8nt1
 6QU=
X-IronPort-AV: E=Sophos;i="5.72,310,1580803200"; d="scan'208";a="47205193"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa4.mentor.iphmx.com with ESMTP; 26 Mar 2020 16:40:25 -0800
IronPort-SDR: U6woCP7+uDDLBjRVHoN5EFWcDb57eY7Vif2ghQzoV0Jam4C+CBq9A0UtWrOYxwvUeOnXuubIFP
 em872x4Bo22rFueL9REAXnNyiBTQeo0OOujnaWTp/puHqCzJSbqQJp8QQbrlJa+A8wyAGTsD9m
 a3nTahxLl28YCbYCrmjH0Uq8rhiy+Nxzs9cQgaS6wgx2jQ49oUGKYW5ya81DfcnMQQND8dS7OG
 Ngw01g9tpj+zo6kg9C7VMwlswqCQQG9MPFApkfdKAd6LHIwHefF7JUcx+xciLMiYcg0IdzzWF5
 K38=
Date: Fri, 27 Mar 2020 00:40:20 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v4 11/15] ARC: ABI lists
In-Reply-To: <20200313030419.15843-12-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003270039380.24611@digraph.polyomino.org.uk>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-12-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_174029_875406_4AA52F9B 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.252 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, 12 Mar 2020, Vineet Gupta via Libc-alpha wrote:

> diff --git a/sysdeps/arc/nofpu/libm-test-ulps b/sysdeps/arc/nofpu/libm-test-ulps
> new file mode 100644
> index 000000000000..0e8ef313fa94
> --- /dev/null
> +++ b/sysdeps/arc/nofpu/libm-test-ulps
> @@ -0,0 +1,390 @@
> +# Begin of automatic generation
> +
> +# Maximal error of functions:
> +Function: "acos":
> +float: 1
> +ifloat: 1

This file also needs regenerating to reflect that there are no longer 
"ifloat" and "idouble" ulps / tests.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
