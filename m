Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC7E1AE889
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 01:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryIuOCA6Abw1FdFhGx43gTC+z7z1u5L4fwq5izzkAL8=; b=Hs5QoiZYAivyYi
	aHF13x74CYYXDs7JrYh+C3Tl1grDJkSlcC/SLwvOzTd9lnoy8MKPy86pciLtInJOq4vN45o4KTnHQ
	ERQ/7A+t3zYj5SBbye9eeYJI0nMeiJXp32SNRy//oRRRwaoFMYgrQHt8M3RkjiEGoP30uYv3ArBS1
	n6ekHAKv81SpkPJakVr3KSY5uxF+okyzQ8MXserUt0QAbSYiODstQd4/AQo4XeKsa+8MgRkowxDvx
	tj+37BhZRovO2+kivi5fi6iI/jW6Nnt/KGikcc/OMUfVz6EAxSUhhYAqQGBOGI5zg0/C2g2K5/0jS
	SKiGzJghpPpyFs6zlzJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPaBD-0004Do-W6; Fri, 17 Apr 2020 23:13:51 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPaBB-0004DK-IP
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 23:13:50 +0000
IronPort-SDR: 64YBxX4/090QfLOXcabCKqsU0qo9QglFz6IJIZGLDfk1NcuK6diraFpywzdi5Ly7g8ZQe0b0Tm
 NfjFPW18feH6h40r4knUW1W2qoincmgF4kazrn5a65c//jHmKI4nXbcMIltuYaUBtTSRO0Xr5v
 Nqgvp4J+sFvwLh3nz9rcJcU0VGBaOmi/kXIFHfgs8Rhh/u30dljuTUTT+GRvTX7ZQTYwv121qS
 pohqn/XKVcnx4upXtAnTRIEuLTchwawIgTOGc5scogi4IGjKIPXNh6nH9HrzQiFC010JpEKgCp
 SWc=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="47847817"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa2.mentor.iphmx.com with ESMTP; 17 Apr 2020 15:13:49 -0800
IronPort-SDR: el86zQVfYMLZOVetBDXV/ki2RHLHLZmdsB68U6W4emqH3COpr8heMoz1clXz0cjDLyImpv7/uF
 wg6GLtRQV9mQWo4xi2MjfTywq4cvICT9/0wQHgZqUpmGyihzSOJMV6Q2y0g4fvayJ8KrIYZCFk
 cL8mApTRDV39xxUSljpsXokdgWJsXliGYACy3ApIvdSCZDbg640LFLHwOprBrOQCuTkIP7iyQJ
 lujeDlwYdbzupz+NVcAGAuBooFGNxFGo3PrYJDA8ITpGHj4dcNZ5EEJj+piGHexn/aRVLyFmlc
 yq0=
Date: Fri, 17 Apr 2020 23:13:43 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 14/14] Documentation for ARC port
In-Reply-To: <20200409025615.27003-15-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172312430.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-15-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-08.mgc.mentorg.com (139.181.222.8) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_161349_610257_0FCF4053 
X-CRM114-Status: UNSURE (   2.34  )
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

> +* Support for Synpsys ARC HS cores (ARCv2 ISA) running Linux.

I think there's a missing 'o' there in Synopsys.

> +  Port requires atleast

And a missing space in 'at least'.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
