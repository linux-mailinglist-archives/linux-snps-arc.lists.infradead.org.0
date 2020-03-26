Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B582519356D
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Mar 2020 02:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9egua6ar/prcOM6BgHL1e52t0W0wOduGM0Q8QLVnhxM=; b=Xo7AOSH5OCxjOg
	Bk+/JYvFnDAEInTtoej+XmFfsgcZEi70iZ/v+fX4oSJUuToOgarindiQlZ+ZzAR6eXiZWpDMjndak
	GBHJfY6hzyPsVu3oHsawXHa9trqrAcxM9LB6v+H9VZUu2gxol2Wzd6fKCQUfShw9ajcP2rpZ2CBbu
	MU+D1tm+PtlJOUxd4t56gIhKb7AIkTRDI/YR8BLYXdVM+g2Yk8uCk0rHXV6EBTBxY8+0s07SPxw0T
	fVYncHge0P+X2KArM85u7ALPGQ/Gtjx5xPiFPmgu/WugXEJLvJg5lpXtPD3wx1llcFdcpboTZ+jG2
	93wzNf/NbyITxJuwNU7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHHkY-0007Mw-AS; Thu, 26 Mar 2020 01:56:02 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHHkV-0007MR-Pk
 for linux-snps-arc@lists.infradead.org; Thu, 26 Mar 2020 01:56:01 +0000
IronPort-SDR: Eh2BfzrcUttyAXvev1CZWFeeKjNyr/nsncF0hfMngbeyjpN9spIDDAFq7GMX+UjqjmOZTKxbUq
 Tkd2IVAudsWzA6u8FzGCpmEtDyudHSXe3Y3PsXU+pTauVYL8m3/fB9We5Yu2tNw6L2V50BnhW3
 5WmjX01YGdZ9vvhbJIW1V8ayvgR6L8Fe5sXf4o2+HAcjwvcrOw4brX97aux503hv5nESlV7IxA
 F87QY06OJzWAacg1/rxzF2PRsjoyR1kc/Hpw12hzZzahZ68yHuIkeNUH2EwByt3x3dyIx769ez
 b/k=
X-IronPort-AV: E=Sophos;i="5.72,306,1580803200"; d="scan'208";a="47166418"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa4.mentor.iphmx.com with ESMTP; 25 Mar 2020 17:55:56 -0800
IronPort-SDR: a745On7cnjvYkZnsTemOjPbWnFsYqvvWjihBVbf7rTiy9hg2tDOw7NQ4zeYLnBQY6lvxfDWn55
 rM8bcB3iESnH4vrzOOC9xvAS6FY45QTDLGnVAs0pOR7p0pWx0nSEli8uvP7IvNv0dKd5RxV82b
 yn5ItM1tQRw3BqbKB/m0oTWdozBrvJ8ssCPa//ifCrdp/wMLPjvVVWG3FbVwt3GyNlmNEEkbjy
 KBJtCC/XfQe3TAuc5QN8jrDO/NaBFtmK7d6Hri1lrN+6X1we2rAvZSDShIbfphdg9Q0f9xuikf
 EZU=
Date: Thu, 26 Mar 2020 01:55:50 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v4 03/15] ARC: startup and dynamic linking code
In-Reply-To: <20200313030419.15843-4-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003260155160.31593@digraph.polyomino.org.uk>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-4-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_185559_868249_77CC1566 
X-CRM114-Status: UNSURE (   4.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.252 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

> +        case R_ARC_TLS_DTPOFF:
> +          if (sym != NULL)
> +            /* Offset set by the linker in the GOT entry would be overwritten
> +               by dynamic loader instead of added to the symbol location.
> +               Other target have the same approach on DTSOFF relocs.  */

Do you mean DTPOFF?  Otherwise I'm not sure what DTSOFF is.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
