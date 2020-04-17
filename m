Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C70B1AE87F
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 01:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=825scBEWjcFpS+z2uvOtumsKLCGbuOJw8tZyXR92Q08=; b=ldZ90qSgtvYKFh
	dT0PIVEIJQ4RtTGCOAMvXCpJ28OonzXdag851ZQTTv13X/jryTRP6VUAXgI4Gf6jH5XNpIFJ5cN+d
	etQZvjaZGFCsBdjhkH71NDRYNoF3slSHyXntnQM0Hou6TVQRW+l9ltUR3yP9ud9LI8ryOGQRqROtu
	47do00/v+x266PAr7q0Gw6DIsxUq2Tt/F6itBmes07NN9zbWpNMgUFNOzv/+a56iFVJ7gjlxSCSOU
	Qbr1ICrECJnsfnoRY1vDRRQmx7AniDUh8JP/WTZwYsoNAjXzffFrmLh/Uhh9FrMWcnISwhciNLUO6
	EjvIH44VKHBh7qU96Nng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPa3j-00010U-IJ; Fri, 17 Apr 2020 23:06:07 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPa3g-000100-Ln
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 23:06:05 +0000
IronPort-SDR: q+0eyefK/WnnJEqwe7OZFYtLwp+GZh07FjxVxUgxKu2YFwkKJuo5TXOkem7bQwVfGyqDJBjMmR
 IGOiU137KAs63THabrTWt4WMy7viHtXiPzRY2a8qmsog99UlYy0yZ2HHFfJJ+CSBpLE6BbgGyT
 SXqxJMNzFWldPI0GGWCyorjW9gG+TINvLzxSciIC7RUzln0mjC510diU2ZpWRuWbUYqBirAnG8
 kU4s+gVOKm6u/joggMkN7/PuPOC97wuvdfofqIbCQgu1nbAOtjyI3cmff4DoLAmvYO2MItvm6p
 vSY=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="49929801"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa1.mentor.iphmx.com with ESMTP; 17 Apr 2020 15:06:04 -0800
IronPort-SDR: VBf5cGs6HvURYCa1OT4OwRjICGMnZy4+fjadwyS8sBih9vlVgz4EMNRJHQ0+2j9OokdYze+ivZ
 5uSC2wJHxyxHl9DSd/xeePxA7uSCFxGiOCJ+AwsSrRN+69gIFw7egK/DN/CnPMOncbkzQDHIv7
 nW0LnxtIgaFLsZnpbzPDFH+d3J/5Lv0t9MelIHzfDArlLXWU0mRDRJD+X+I94xRJoNBrQ7EMeG
 1XY1r8X1Zlyd4PB6mebAgEAd3qsWDiw1uOwmkzqLnvWHnl35bsLew90bkXvbIlXXmBccnIjdHT
 W5g=
Date: Fri, 17 Apr 2020 23:05:59 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 11/14] ARC: Update syscall-names.list for ARC specific
 syscalls
In-Reply-To: <20200409025615.27003-12-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172305550.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-12-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_160604_717910_34B2E9C7 
X-CRM114-Status: UNSURE (   1.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.129.153 listed in list.dnswl.org]
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

This patch is OK.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
