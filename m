Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472AF1EA7A1
	for <lists+linux-snps-arc@lfdr.de>; Mon,  1 Jun 2020 18:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNkc9CCq1M4VrAFYCYuAL9LdBuyoK3TjIlWs2pw0NbM=; b=Bvh03cIlLEMsIf
	9M2RyF3l7WkXRjnO+A8s0LtKa7GUk0LPOgBKXsaon0Amu+7BYlzkYKUlu6EO27nFkGpNMlh39WUvM
	sRS5kVLoJXxwQ4GaXXsbTH8Jwz+wHYKHSavKu4FKpE0kQvYwVMoym6LhpTFRmRGutaE9VI+xhmv26
	T1/gsUyH2+ZqT9pP+P1G/hUOz9rG+mVbiKzh8MUjvH6oKa4pyt12/llgU3IbOFDUhJtcPBrPYpsxf
	A6qDOuJBVVoeOEKO13Su2uhu6Ou5uds6SfYMm2yRarkVUifiwh70MH7imRPe/ZlKT4B5RYEbLW4e1
	SuzG83loZuQn9smzWy0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfn4X-0005gT-1T; Mon, 01 Jun 2020 16:13:57 +0000
Received: from albireo.enyo.de ([37.24.231.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfn4U-0005fn-8u
 for linux-snps-arc@lists.infradead.org; Mon, 01 Jun 2020 16:13:56 +0000
Received: from [172.17.203.2] (helo=deneb.enyo.de)
 by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jfn4O-0007i1-MX; Mon, 01 Jun 2020 16:13:48 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
 (envelope-from <fw@deneb.enyo.de>)
 id 1jfn4L-0006OF-IO; Mon, 01 Jun 2020 18:13:45 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Vineet Gupta via Libc-alpha <libc-alpha@sourceware.org>
Subject: Re: [PATCH 3/5] iee754: prvoide gcc builtins based generic fma
 functions
References: <20200530020047.5490-1-vgupta@synopsys.com>
 <20200530020047.5490-4-vgupta@synopsys.com>
Date: Mon, 01 Jun 2020 18:13:45 +0200
In-Reply-To: <20200530020047.5490-4-vgupta@synopsys.com> (Vineet Gupta via
 Libc-alpha's message of "Fri, 29 May 2020 19:00:45 -0700")
Message-ID: <87k10qydae.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_091354_326347_7287BB91 
X-CRM114-Status: UNSURE (   1.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.24.231.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

VGhlIGNvbW1pdCBzdWJqZWN0IGNvbnRhaW5zIGEgdHlwbyAo4oCccHJ2b2lkZeKAnSkuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1zbnBzLWFy
YyBtYWlsaW5nIGxpc3QKbGludXgtc25wcy1hcmNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXNucHMtYXJjCg==
