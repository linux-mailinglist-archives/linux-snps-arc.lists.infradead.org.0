Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFC81AE890
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 01:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=825scBEWjcFpS+z2uvOtumsKLCGbuOJw8tZyXR92Q08=; b=CqbGTcmlOVfupQ
	gZqLrxyAJiLrjLjhjZCYBiMCHVFZv+xUTXQxYDtGwi8c6gFYbq4Q3WVTJ65UXcVrcK2SmtT4rBCNf
	c9szMtxfnkUJZi+CSklKatumqi/JacoeyKJEP14yASUqKnjBH74FkJpTQsiz4KWGwGWnQpRghF+7e
	BCm6tIe3g8L/MUtbR4MIcby+qnK/Uyf7GSfgc802JS3Q5JQZV3na2QXC4IWqZjFlQJXnmRfAyS4xk
	YGTQDRaWizmErfpOHSNk6Cm+4ULB4SHs24jYleciSiRaF95LjEliJR6ZZVrVoLcUFpxUiE2r1qqn1
	NR3s6DXeZeJanw/H1sKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPaHR-0001bb-3f; Fri, 17 Apr 2020 23:20:17 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPaHN-000112-Gu
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 23:20:15 +0000
IronPort-SDR: s1WDF3W0axBB68Gmo5n01f64IcOCHvfP4s1lRo7L2IOeiNgE3pW7TydspKILFd4soBTm+hSFzx
 cqrPFL3ZoUEIzCKq50Cxf31tISxF4/j6bqLBruqzWi1i0e4/rc9ctGKItRWUKLP2G9T18r9hcq
 KJFpgH6XH+F31m8lhGeuJs/4cjtVxzKPG3wqmZw3xjkosz72A3bFqJouXNR76oM41ZwEmbyU+/
 +MXdvTv3s3wTw5TS3jfjqlhjEkwviMk2QvLu5guFVYSSvrBqITWCSuZjaS7kC/w6p5uWMkRJzO
 Cbw=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="49930305"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa1.mentor.iphmx.com with ESMTP; 17 Apr 2020 15:20:12 -0800
IronPort-SDR: nP8PJSkNz+J2ZIBspj/eiM6SBLcsxAAqe94SrZUenqUy3T30oFXVg0OXOAGLBP+SsXay3gScE+
 N7HtxAHMJjMAsZz4UKDHLNQbgU86SW3nKVYCJQM8dvXLEEDZ4+rlNvDxscSjBr/mzBb9J2IGEK
 OJk3ON0GVPFMMWS0/OyNOCnd0xU3S+EMY3uvvBzTvVm+cwzbAF29Y3pUI3Z6hYUFrR9kE9Klnh
 4E/T0Xi/fYhZd38sLIim8D5o2Fbhfv4gwLpN/SixEY9y64ZOPYyc/Iu0gOQjRrHqBitwb/3w10
 vRo=
Date: Fri, 17 Apr 2020 23:20:06 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2] provide y2038 safe socket constants for
 default/asm-generic ABI
In-Reply-To: <20200331213208.22543-1-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172320030.1082@digraph.polyomino.org.uk>
References: <alpine.DEB.2.21.2003312122350.30236@digraph.polyomino.org.uk>
 <20200331213208.22543-1-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-07.mgc.mentorg.com (139.181.222.7) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_162013_675019_CCA43766 
X-CRM114-Status: UNSURE (   1.66  )
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
Cc: Stepan Golosunov <stepan@golosunov.pp.ru>,
 Alistair Francis <alistair.francis@wdc.com>,
 linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
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
