Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DECD17C99F
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 01:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJY4hsdURD01NBUnzAbg2LWTXG+JkfUHKNUnMkgCXfk=; b=J3y+22rK8ccI+Z
	DY7xL/TZW1CxrU1x8Jw0KqzxEc+kuA1DCgaCYaJoC6NH6q6xKYj/DXD414UYM0PTeMwEXPfIiMQ74
	pRnarvFyZG25U88PssQy4Rhdm7zctgpvOT1GkJtXY27Xq9qzr1Tu790NDVRcBcGogw+JY1Yun65EC
	V76J0EXnXzhtnEi6FdvPjBo/aeiNVGqUBy7krhVw7FIx14jFaMAoHBvDTqEgiL279Onfc+1vW8qlu
	k0Unj3cXbJWk0LH3eV0uYJiCtXnct9KfiWWnlaK3ltE+jvQmbyf+P94/rTQASMlVel7dP6JK8Dm5I
	tI6zCkUD6CGIOplcOM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANCE-00078u-8U; Sat, 07 Mar 2020 00:20:02 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANCB-00077D-EH
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 00:20:00 +0000
IronPort-SDR: nAVxiGZ17+J3l6RXtl1HmlTL2Z5+ca1PmIEmZjWbseE5H63qTk8DKKYVGoyEGFxA0GRyDs5XWH
 G8uGTHBAymno9uqrKzrGww4/9zUJZOkeABKR2qxEyaLFOD2IZ8Fh35l8l5MjfZe9ViWbhjTCvV
 8nUEhLsHeVQQ8YRUN5UKr9XCPyQGQ5nmzlMFub0Fk6IU7Su8ZZq5jYPN0wq/ozbSy5y17ItqD2
 BSdMK8KOWHqRLBVfcssmZNKSZPE3PsoDMiEFO23c3zJDvCFyrGW5E9y/P8Ll01f1iKs3RwMlhy
 hLQ=
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="46542332"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa4.mentor.iphmx.com with ESMTP; 06 Mar 2020 16:19:58 -0800
IronPort-SDR: 3S+TyJ7yK5MhJ8z2RL/qG4Tuj/6uZEJdkdtFg2tVuKoAGWL6BpZLoz2lkty8sxnUlPIlTBi9AQ
 U+6pBwTHqF80xwH+HB/BGh7oqxbPMNMiCbWpL/fsXwTCI8W0uQxq2DyI74ckWAMIo0yOLDpjm2
 XD/gm1YFJnppSFKPyyUzrLrxKBAIyV0v0d0ZyccRAUXgnjCMKGlWsmfY0sT8GJYvsNAIneSII+
 xTJuGN52v7FUVPc6I5BCkmsZ8OzkM9eMFjyX2N7AQnyjMaUnCKdUVgWb00TwOQ6FfLeOzBPESi
 yKs=
Date: Sat, 7 Mar 2020 00:19:53 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 17/17] ARC: changes to enable 64-bit time_t, off_t,
 ino_t etc
In-Reply-To: <20200306182419.13945-18-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070016420.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <20200306182419.13945-18-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161959_508836_223433A0 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
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

On Fri, 6 Mar 2020, Vineet Gupta wrote:

> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  .../sysv/linux/arc/bits/socket-constants.h    |  4 +--

There is a general principle for patch series: you should not have later 
patches fixing up things that were wrong with earlier patches.  Each patch 
should add files in the form desired to be reviewed, not in a form that 
gets fixed up later.

(Sometimes a patch series might change a file that was correct in an 
earlier patch in the series, as part of adding additional features, if the 
first M patches add feature X and the next N add feature Y on top of it.  
But that's not the case here - such later patches should not make 
incompatible changes to earlier ones.)

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
