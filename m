Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E49617CA2B
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 02:10:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wObCQl7UksRYxjHqHeJ7HmmD88E5VE2/CsRcvWha0w=; b=nYwStkqFuzSeTG
	LoORzi4Ab6GwhOUEqWY8+yaUH0E/JIzoZrbRrtpsAK9M0+xWqpVDwXuerIkGHBIf5dO9h9s0eu3On
	AAMutf921WHzSI+ujvFyg3zmfkO2u+EOwO1veO8GBW5hhTT083h1SEfstu5ISnIbyJ3vKykMMYVaf
	AWvzEiVmzxONnuh3XkquhIifTfTeccGhyBms7oWotYrcF5JIoJuLO+1g2JjxPCMxbuSDxJjfaMRny
	VBohFh+C2gkO+N6tzvbmka5tC/SxQVfBLoYlsILDwixQmFqa1XEjwqNd97SI0ewxOlVpqYo30HnjO
	WTUJYGETmC28fhKFu/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANz8-0001Fg-SN; Sat, 07 Mar 2020 01:10:34 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANz6-0001FA-5B
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 01:10:33 +0000
IronPort-SDR: X7zEFqFp4hm2yFX5yOUbpjpZ6Ir/uVWgndxQSaqhMoOQ5mk9rDkjJrJ6CXpMMmcn+jl8UK4uUt
 71PVVUZagdJFXHtQ1gLeRlkyoKbSp28Y1S6F+N9Z0RIgnsqwUUhtkI6HbQwf9nAh9XoT636CaJ
 atmcEFQFzAmIJppyibfNLKRTdIOqm5lWac793UWha8+K+aurX29PhKFqXuD2XwNu2Hg2o+D4bf
 uvyGKFym64EK34n3irINXf+mKbGLhsbGng7A8yZwHjMMN/avvP532RW0omE2Sv5JHQoQHeN/rd
 UUs=
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="48455839"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa1.mentor.iphmx.com with ESMTP; 06 Mar 2020 17:10:31 -0800
IronPort-SDR: Mu+m1Gb84CyF3eJ7o1/4syDKxGOJySvZOcJ8+uzaIS1OiFlOLqj7l6JaqxgZKWZ/oeJVl9T0Ph
 9KYuTOcBmdt7pFQU60fAKQI3gs0HZxRwVtAeUytnpqXusuQvO634G5kl8FyagAv1xxOSjTofwa
 ab0GVc8OWxQKM29PUqy8rc+1dWl13LqP/25S7Vpmaolw0tpQ4T25jCv13DQf3Giz+ASwoJ5YyT
 MIkCJAValURh7NTpTDXGll/ydKMnVBg6Dg1GhqTYysYyaBBmP4te55cBWzGFmm96P/L3c+8HMi
 j/4=
Date: Sat, 7 Mar 2020 01:10:27 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 00/17] glibc port to ARC processors
In-Reply-To: <cc9d1b80-1568-f658-ce65-fdacad669956@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070108590.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <alpine.DEB.2.21.2003070020370.26274@digraph.polyomino.org.uk>
 <cc9d1b80-1568-f658-ce65-fdacad669956@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_171032_207023_407D73C2 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.129.153 listed in list.dnswl.org]
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sat, 7 Mar 2020, Vineet Gupta wrote:

> On 3/6/20 4:21 PM, Joseph Myers wrote:
> > Please give details of what the entries would be for 
> > <https://sourceware.org/glibc/wiki/ABIList> and 
> 
> ARC
>    * 32-bit, hard-float, LE: /lib/ld-linux-arc.so.2
>    * 32-bit, soft-float, LE: /lib/ld-linux-arc.so.2
> 
> (soft-float ABI is compatible with hardware-float builds in terms of calling
> convention, register-file etc)

So that should actually be one bullet-point entry for soft-float ABI, 
rather than two entries, because it's a single ABI, with a clarifying note 
following like those for some other architectures.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
