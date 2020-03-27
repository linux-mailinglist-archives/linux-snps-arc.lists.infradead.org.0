Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E221D195DBF
	for <lists+linux-snps-arc@lfdr.de>; Fri, 27 Mar 2020 19:39:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mathFepOXmAjXni84I3W5l+PYmb5ef03imfOxbBszug=; b=dJCqv3wrqvdgDw
	eRAbAQJkHdbMEN+UgxQBbt7s0oXroyUfsCUihT+4dlooQ6hKkZ+8xOqQmecRTDlVFPcxlO7gyQ/ve
	AdsA+xY+SlP2fO8lELPPnqoepb3s2R/ShGbL/B8/jmAI9O2Je5+q1sKFgy2UAZ+W1K1YMXOKHNTR4
	pzsoEXrS2WMFt+aiR8CuBqOfb/68axTmDYd0nl+1G9g1Aoq/6gSmWcIDBoeZMyF6jfwJAeVzdlzmm
	jhIO+Df+Wq/42Ph3peJ3S/lgFVyoBwVUjBlInahIPiH1RWt1VQY+DfR5pDz6KgHBdGJzO/vFRsp+n
	q3NDaegOhlpl1R0nUkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtso-000198-GT; Fri, 27 Mar 2020 18:39:06 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtsm-00018h-3g
 for linux-snps-arc@lists.infradead.org; Fri, 27 Mar 2020 18:39:05 +0000
IronPort-SDR: /2Dt14MOPV6ColD4ERsLbSYK4B1YTg3tn2xrzqDw9raC84ttDsGpDEMDjsiPgThlcwvwaC4ZrE
 oFkozids+nJ8hk8nPU2jl6w6tYdfYELxAKn/ZrJbKLRohyj4OmeyDCBRN0fm/C2oTZ2+eWKUPZ
 fC9shfZXzk/p5FSJW+KvYAQIld+Xf0nLTOtAzaUnzD1OrdKEkboEkjOu1BYB1Fygr7SuiGCYo8
 9/wdlcWXmVb/N/iTbv9S0yxWMZ/ibyA0v1mnftBdkRfSfbxBCNDL7+0REPm1u/nGKo8qijdv19
 y4I=
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="49161134"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa1.mentor.iphmx.com with ESMTP; 27 Mar 2020 10:39:03 -0800
IronPort-SDR: W1aiFQcqXAowTeoAfwbiX18MsBaSPixXFzhFrYH34HeteWD47lKG5IPWxAqIQkBGBKZrijo6nl
 9V/i+5a3Irmt4lVxWgItwXlOM2rtc41rLICRAeDQpW+VrdigFK4MKgETFd3NXGwqO7/2qA4dpM
 pRSHtSZ4SK/HKonkAFoG7yEgaFQk1PunuU+TU8w0YAlM12ty6zB/FaNrqLYF5sH/ZxttnL88mN
 XAuKv/Msnkt1C7PVkSdGP2p4ye0YzxIgfCG3N1BJM2dTMGijqW6rxImmf1TtbTY6tJBHSyY6nZ
 tVI=
Date: Fri, 27 Mar 2020 18:38:58 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v4 08/15] ARC: Linux Syscall Interface
In-Reply-To: <f0fd1b9f-d1fb-6492-18d5-2c1bed0941e3@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003271838070.5132@digraph.polyomino.org.uk>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-9-vgupta@synopsys.com>
 <alpine.DEB.2.21.2003262342490.24611@digraph.polyomino.org.uk>
 <f0fd1b9f-d1fb-6492-18d5-2c1bed0941e3@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-07.mgc.mentorg.com (139.181.222.7) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_113904_155274_04D997E8 
X-CRM114-Status: UNSURE (   3.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.129.153 listed in list.dnswl.org]
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
Cc: Alistair Francis <alistair.francis@wdc.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 27 Mar 2020, Vineet Gupta via Libc-alpha wrote:

> But in grep'ing I see a weird thing: SO_RCVTIMEO in user exposed 
> socket.h has a totally different value from socket-constants.h - how is 
> that supposed to work.

The top-level bits/socket.h is only for OSes without their own 
bits/socket.h.  Thus it's not currently used, as both Hurd and Linux have 
their own sysdeps version.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
