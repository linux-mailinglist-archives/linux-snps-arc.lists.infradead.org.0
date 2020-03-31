Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD88199FDE
	for <lists+linux-snps-arc@lfdr.de>; Tue, 31 Mar 2020 22:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACP8derO73qjHx8aF/RkRKdhKiCEZTKhvELfGCJ13c4=; b=dr1KmHRMNih/PN
	xm7yzlGwQJ3tZSpY1o8Rwd1LaSBUCU3X20UW5QsHBgR5ESePwzm1EyOvBXSeVDYFy04r0OAnw2gD6
	ad4TpwK3m8ZkMjkdGmNtiX8O6VQt+sgZcLkPe2trfTSscOX4Rrkd7shM61AOeY4dkAENMrUU+1J6b
	RWLWlpGc06G4ve7BggeZmwJzh8GEtbrpjB3ctHGoLVhJZcq2J3qQRXJty37awxJw0Pz++CGOHtQJo
	GTzLUHfWnvVgBpfOb6NyWvLR41X+qXGshIQ04zccAy3aqhFjFddM3iQ4STdlfdPbADw0WhgQIbSzV
	l7UnDQTxIxCqUiZzNa+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJNLL-0005WV-Na; Tue, 31 Mar 2020 20:18:39 +0000
Received: from albireo.enyo.de ([37.24.231.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJNLI-0005Vu-Hc
 for linux-snps-arc@lists.infradead.org; Tue, 31 Mar 2020 20:18:37 +0000
Received: from [172.17.203.2] (helo=deneb.enyo.de)
 by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jJNLD-0003Dy-5d; Tue, 31 Mar 2020 20:18:31 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
 (envelope-from <fw@deneb.enyo.de>)
 id 1jJNLD-0004me-3Z; Tue, 31 Mar 2020 22:18:31 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] provide y2038 safe socket constants
References: <20200329041612.4071-1-vgupta@synopsys.com>
 <87r1x8qpx6.fsf@mid.deneb.enyo.de>
 <dc454c9b-d947-5fcc-6a27-1e6da8faecb5@synopsys.com>
Date: Tue, 31 Mar 2020 22:18:31 +0200
In-Reply-To: <dc454c9b-d947-5fcc-6a27-1e6da8faecb5@synopsys.com> (Vineet
 Gupta's message of "Tue, 31 Mar 2020 20:02:58 +0000")
Message-ID: <874ku4qnvs.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_131836_583096_09CDCBDF 
X-CRM114-Status: UNSURE (   5.58  )
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
Cc: Stepan Golosunov <stepan@golosunov.pp.ru>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alistair Francis <alistair.francis@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Vineet Gupta:

> On 3/31/20 12:34 PM, Florian Weimer wrote:
>> What about the parallel changes to the sysdeps overrides? I would> expect changes for hppa, mips, powerpc.  (Not sure about the alpha
>> situation.)
>
> This patch fixes the existing/future asm-generic ABI enabled arches
> and the ones you refer to are not. So IMHO that would be a separate
> patch if at all.

Ahh, I think the commit message could make this clearer (although it
it's somewhat implied).  The commit message also lacks a period at the
end.

But is the conditional correct for x32?  It has to be keep using the
old macro definitions.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
