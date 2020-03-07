Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57EC17C981
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 01:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqCuAqX7pVG4dpacGk1tdIP8lNiKO9G1GOP1mJInzq4=; b=QVTsOKof74FQS2
	GdD3g9oNhC08aZSYrvIDTCGhjkcFKayOlar+xj2+kecPVGyV7EsInCbRrkAsxHKSFQCfMIaCyiDoA
	a3CpIvXp1G5PXd/VlECWy22upg9oydwu4nRubDy3efMl6QEKWlvzgILjRMs0QXZPmBtnGVUsNQFWl
	JuHJo0jzhW+mcYpcNdLBHuTxwWU6E2pgsMswEHNR+JrWIgaot9AaahXwlguRyfK/k/Sb2fyCR6OoS
	jTFzCXMkHirJarOwQEq4H/10w0pW8GNnP2m/J4aEhQmHhf3nj38Fy14Tcyh5ibS4FbmwFnSSfgAUl
	ezfUcEsKlf1rwngTEm/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAN6j-0004ql-FF; Sat, 07 Mar 2020 00:14:21 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAN6h-0004oS-2U
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 00:14:20 +0000
IronPort-SDR: vxOWivBO8Cup82KgpdnIz7cl2fIn7d2g6wUxMc17Tomc7zWaX//mwCQWLF3bTKgSQAqgILufQC
 g/RjGyHK2TFkUBg2LrUKK1PhsfGrQGGzoWY9nQaCFkNNjle79/jtfxjK6xfyW+J4zEooCKkOjN
 M4jx85u1NWBwHHbeZTaNAE8pr8ZAuBZqatHBbi3+K5Ea0qlctbuyZhxuPO2ueMbYrrwU3JEt2l
 npuAF91GWF1s5ir2cahRxHOW2eeyHGSZXXdicGvNTw3qdOULc2yPiTGG+72EV/PRnVtOHhAGz3
 zCU=
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="46436177"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa2.mentor.iphmx.com with ESMTP; 06 Mar 2020 16:14:18 -0800
IronPort-SDR: Y3rh4mOE3jsWLsq2unG7uci8WfxRP8wzpKKQhZOoLT45PT0ovMrU8Ty5vDUmyeEZUXQcScZ0pW
 /vKA5/WcXAf8clFVkpY6tOxdtuH2wLjirrMfHsjvTeYss0BcDz8oceLA4Zjh/Y4lxEl64PQ8l3
 T/b4WWld1u8lyXc+3ri0n0itjpm1SHkXCZSygJ6f4SAZVopQMuhlPZZ5uLwVatGWKCeeWap/v0
 pcZCDRrNRCGttdOVblC2/7ZgQWArLUc8SB/x5PLiNhdCi96bQSnQt1xIkaO4jRqTipk42BCCXm
 nys=
Date: Sat, 7 Mar 2020 00:14:13 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 16/17] NEWS: mention ARC port
In-Reply-To: <20200306182419.13945-17-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070013170.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <20200306182419.13945-17-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161419_131738_3F005E41 
X-CRM114-Status: UNSURE (   3.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.98 listed in list.dnswl.org]
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

On Fri, 6 Mar 2020, Vineet Gupta wrote:

> +* Support for ARC HS cores running Linux has been contributed by Synopsys.
> +  Port requires atleast
> +    - binutils-2.31 (binutils-2_31-branch: commit 6ce881c15fc4, 2018-10-04)
> +    - gcc 8.2 (gcc-8-stable: commit 0d5ba57508c5, 2019-01-29)
> +    - Linux kernel 5.1+

You need to update the list of supported configurations in README.

Any architecture with a higher minimum compiler / binutils version than 
normal needs it documented in install.texi, with the INSTALL file 
regenerated.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
