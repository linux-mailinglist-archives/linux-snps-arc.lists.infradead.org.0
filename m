Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4071B146A
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Apr 2020 20:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVYCHugzsZbfL3puXZytkIMI18i57hS1NR1PF9ejhh4=; b=CgQSK6YEsOITgp
	2xki0O5XCEE/cdz5b1Zvvp5Opn8bCSKgY6eiwEAb89GJl6HtAPv0AmaCPIWd79QrODG6G/kIKmLqo
	ny22ZlTM7KRTihAj1FwYD5liMe3ZV9cGfpsFo1gyfN9u8hg9ujm3my5s6sZIEbKKD1mjWJT23OC01
	RyjD0ap0sLEI3rmmvkrOsVRv24Xfp4lpn5UMDaD6Iw2qSJxsOfpIjpm12rCyFYfBrm1lUhTIi5hAS
	ZVae+bOgzr1SpjWancSw9MRiF7kpo8348qwy84Tsu9BRnaqIZwtgykKHPxY5dCwly/HVTS6FKr8aA
	Do64W5ECtSa9kMSO29Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQb5Y-0006Fo-A6; Mon, 20 Apr 2020 18:24:12 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQb5V-0006FB-OI
 for linux-snps-arc@lists.infradead.org; Mon, 20 Apr 2020 18:24:10 +0000
IronPort-SDR: +APjpmNUMooqEcNJiI+JSEWqcX6tDeaf9tYzmzh2QrxAZWkOSajcwLPLouGd0u/t8HKWYvX416
 ZxBSIdWFg63CPu+ICWo8slCdTHv/lVKu9PJo36T3xKd4LfsFdl0XLrYUjxUY77Odv+Fc6qCYYX
 i7UNRhskE81eSc3q10Ug2oV3pt1MzlUX4OBn11atZptuyAvdC558k8ymHcdu9Q6j4jkeYKXWv3
 caKMUTCU5f24ISzocg2mv3C0wApxcaO9AeVYiMYOChnrX9ADyT0xL8yiCGepxKfXJWvl67Hiox
 cOQ=
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="47953285"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa2.mentor.iphmx.com with ESMTP; 20 Apr 2020 10:24:09 -0800
IronPort-SDR: 3YrDN1zVdRO7L+JftFqWRTrE2MJUEnTKEU7o1nUkNzgkY5oBFSpzKPoHsIXQpQAmbFSZ9aVSsJ
 kKVvi/ZyeAUBL7WkO2R8zd4N9F8WVrPSNOsrIXxHjbJLxhvVHeXYr64Sq2W2pxGson+Ba4Awwh
 kSdPwIoUczYmPYouGNTz3I5Mf2OppT0fkqtw2RY8MGVKq9Uw2ku3MvkJMyjhNTtiGhHqduOGz8
 A0r+JzOUlCNx4vrpe2kojpPoFWHEca7QE3F9nUGGGPdpKtluiY73mrexYi93eO16/H4+/0ndAj
 QWg=
Date: Mon, 20 Apr 2020 18:24:03 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 11/14] ARC: Update syscall-names.list for ARC specific
 syscalls
In-Reply-To: <b763c8c7-470d-c22b-52b9-76c29f414e44@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004201822560.13476@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-12-vgupta@synopsys.com>
 <alpine.DEB.2.21.2004172305550.1082@digraph.polyomino.org.uk>
 <b763c8c7-470d-c22b-52b9-76c29f414e44@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_112409_797055_86220451 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.98 listed in list.dnswl.org]
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> On 4/17/20 4:05 PM, Joseph Myers wrote:
> > This patch is OK.
> 
> So when the rest of port is ready, this will be part of main commit ?

I think it's reasonable to commit this patch before then, much like the 
relocations in elf.h, so making the main commit and future submissions of 
the port smaller.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
