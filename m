Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBB6F82ED
	for <lists+linux-snps-arc@lfdr.de>; Mon, 11 Nov 2019 23:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5C4LpeZaodm093DqAKaclA/kZMz2a2NKAZfaNde4OU=; b=Xm/MIdORSNUXR6
	wIPMBIQv5aIoH7WSD0cPD328aema1XmHbAUySBaHexz3LAjkF2vVpR6bH384EamesTwqZVyLfF/lY
	Rc+KaCmaEmPdsBhsQlvR206CQkiflSQAH1Zd+MpX8stA6wfcUVrJvrRZ4SVGDUWHjUGEjKWP6izia
	TUytzZ384s2IjT/Dzb7iDYh9FW3yUt9Gn4LWCvdl+s4RVmqbBVybHoICsO2JN5/Swdg09Wprk7Qoe
	VQPLyd7H4CoZd2uc20KQOhCevsUVocWjr+cXABbOgII8f1OLmI3gYgwAODJX6ZTkUi5JWpagY+VYb
	gyUcCouObZqRbVzDXT1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIFw-0003tu-9P; Mon, 11 Nov 2019 22:33:56 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIFt-0003tV-Gp
 for linux-snps-arc@lists.infradead.org; Mon, 11 Nov 2019 22:33:55 +0000
IronPort-SDR: W5cWduA9UAj6Js4S6r5S77Expj60K9bFgQaJ5OQHXxqN3o6wnQ36x4dJmZGe1BHYrNrdY4y7mG
 mKjudEEdnKqiAyJsE14j9j9U9kGDxxAEkAICDtAEbn/g7NL59WYf8Yuaf7WGmbPDsiU41mhhfY
 zPCiEebRui1q7xFc0yoocZ5B2CkpUpJjJUogf5kgAMnnBFKJzGi0m2V3oAIUAZXZaaBDkKYDjR
 YZCpAkYgOCuej3Lqa6HYjXAVTjubW4FOohv1ow7cL5Trr1edO/Qe7IXGGMagAWrqjYg6ANF1+Y
 UZM=
X-IronPort-AV: E=Sophos;i="5.68,294,1569312000"; d="scan'208";a="44924107"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa1.mentor.iphmx.com with ESMTP; 11 Nov 2019 14:33:51 -0800
IronPort-SDR: E5tyO5b2Y5oLSq5LJffoSDbv2TYsfKDKHffPZe6LeZHCpVH7YlL9MIztWsMtqTfJj7b+iUL0Bc
 a1BPwqe/3k/f/T2/17WZvcMEgYiDlH2cih+viOYLDy/5gBPG0DmHzRF/8igYtL2KMuom/1Zg1f
 +uW6EBwgVfVRI7gDumtOGT1qk6bC8p1fc6FpYXYJuUJMJHLsmHSsXmg7HrsG9F+hi8CjDkL2J4
 /eOFZSy9ZD1e/W+i95mQ4E4RsqDaUfy4tOIuUY8gjYGcX4DZpIUGMTcIQfQD+oFcpvz9rPYuSM
 0fo=
Date: Mon, 11 Nov 2019 22:33:46 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ieee754/dbl-64: Reduce the scope of temporary storage
 variables
In-Reply-To: <20191111194349.21813-1-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.1911112228550.30786@digraph.polyomino.org.uk>
References: <20191111194349.21813-1-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_143353_564132_014E7941 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019, Vineet Gupta wrote:

> Functionally it should not result in code gen changes and if at all
> those would be better since the scope of those temporaries is greatly
> reduced now

This feels like the sort of thing where "should not result in code gen 
changes" should be tested by running build-many-glibcs.py --strip with 
unmodified glibc sources to build a full set of stripped glibc binaries, 
saving those binaries and then running build-many-glibcs.py --strip again 
and comparing the two sets of shared libraries (something I did a lot of 
when reworking how libm function aliases were defined; static libraries 
are expected to change because of timestamps, but shared library binaries 
can be usefully compared like this).  If the two sets of stripped binaries 
are indeed identical, that is strong evidence that the patch is safe; 
otherwise, review of the patch will require more detailed inspection of 
the types of the arguments to these macros, and the uses of the temporary 
variables, at every call site, to make sure that semantics aren't being 
changed.

(In any case, please specify when submitting a patch how it was tested.)

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
