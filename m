Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA40E1FA0CE
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 21:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcN/kfO9wkdhLJVyCfPubCTmMRfcqUu0AQ9gnKKJJ5w=; b=KNk4kyDlMsX5Bu
	ahRTXapMLDc5g4yyBZHTRxBQNUICRVx+AKepmoHsoO6StqMLwKjgslJdtCSrETr+yG7nv1BNIx2KP
	pc5/TozPBst5Fatl/sQ0ygGCqtiQGhIa5lerV/GZmHXAJR3MeLldC1GN7pe8/C8B6qCnjEE7Pa8mK
	u6MFwQkTNKBdX5WIMGAeDtPQSgzU7+gL+a1ebClYmqKrjoMR9+rLRikPwhtRVFAjjbcBixTFZgmUv
	XrygUzop3r1iBrWgBWIzzUSE/JWOvLi9VGIIyZV9Dpdnd91r2OzOdghaeHVR6HR2EmzIbft33mfrz
	g5mVcya8hj2L4VsF57kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvAn-0005tf-24; Mon, 15 Jun 2020 19:53:37 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvAk-0005t3-TC
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 19:53:36 +0000
IronPort-SDR: vE+bz7ireciByyZm7xIBmBEZUWBzPZbXGrojtIFVn4ZLJmRdnVsB1muoEsDUIjZDcUrGDL7oaM
 NHtTt5Nnf/tg/WsRGW9ZAuA9pdGoYuv+7GHu8VVtrcjO5lOfbqvedNZYtzS/2fyyUf8ozqYNm1
 OkcqJlQf58CsFBRVCEypMyq6N9hy2XtgvmwqVq4a/cNr6Ibv/ukose7K2L/0g79DjBAShPMvHO
 5Lh4IjM5i1WfyKB5huqopNxZUru2rbt+LlCTpkloKZ5fl7dISzLGr5tSdhfYKaqkqKxDO6umqu
 t+A=
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="49955255"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa4.mentor.iphmx.com with ESMTP; 15 Jun 2020 11:53:33 -0800
IronPort-SDR: x19FK3SeA3h5OM82YSXRwjp6pecrGN+glcG8iXVqP3710L3HJwXFlv8vbyjXQZyol3KM7NvUPq
 vxxEAGEs4zEWAUk7MXt2jlc/6+/Unnw+NXL2tf+nZ1+TlRXNBaFBbaBaSZlZQPqOlQ8Gx6NCCp
 TeHNPXuMQV0TGM53HEm+1tJM5s8KCaaKSd8wh1KKG55iacfH7Sdis+cQ2wcPyQO1E+bOHKH1kj
 77lR7eoZYLknATCywrOM10H/OXg0WvyKhjHqaDWW7wrqYsItPK+7cGturtOt+T4hjZIYUbuXLY
 PYM=
Date: Mon, 15 Jun 2020 19:53:27 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2] ieee754/dbl-64: Reduce the scope of temporary storage
 variables
In-Reply-To: <04e95814-5f81-1ca8-f0fb-1f6bb53eff78@linaro.org>
Message-ID: <alpine.DEB.2.21.2006151953110.1874@digraph.polyomino.org.uk>
References: <alpine.DEB.2.21.1911112247180.30786@digraph.polyomino.org.uk>
 <20200602023223.13823-1-vgupta@synopsys.com>
 <alpine.DEB.2.21.2006021814210.3673@digraph.polyomino.org.uk>
 <d38b8dfe-5caa-5884-8843-0a845afbbb67@synopsys.com>
 <115b2236-e994-cdfd-d96e-2e8d354b7fde@synopsys.com>
 <6d22b849-e27d-9843-90e3-7ea635c6d863@synopsys.com>
 <04e95814-5f81-1ca8-f0fb-1f6bb53eff78@linaro.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) To
 svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_125334_996585_7BB9E727 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.252 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020, Adhemerval Zanella wrote:

> >> Is this sufficient for comparison ?
> > 
> > ping !
> > 
> 
> This analysis looks good me, although I can't voucher for Joseph.

This patch is OK.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
