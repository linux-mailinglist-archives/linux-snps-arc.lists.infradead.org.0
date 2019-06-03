Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A773932AAC
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 10:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxKGjX35znhGJAvrwXCVs8wJrn/4NiYHBEe2KA9lKxs=; b=jIHRO+hZAqDGty
	kObSSU/NY8N34eFvNSdvBeFgCZQ3ZCHBFE1Y/6rpuuvplC2vdwA0QGTvPFCfOmrFt9TGFn3IUMpDi
	MCpBuDjxCrt02aCBsex47LBEklPY551isgO94gNvS4plEL+Dxw+CCEjrZhiIJ/f1XpPwuPsgtbPpE
	CfJ7bfA9+HVH3JshOUqHI0TxffOy7Cbm3DPz1NvlRxdyNkWLMM9utkuBkQp2Nkaoj/FTbWON5nojm
	ncltrmubrHUJsvP6xlREiH1kLxa0Tm7faaUYRUakPi2hyyMKnT9D53vBNVm5uxpmBWHgPGcs3gJWN
	4s1JJ0ssjwF7U4biI9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiFE-0002yb-Dd; Mon, 03 Jun 2019 08:23:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiFC-0002y6-AL
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 08:23:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 11826AF50;
 Mon,  3 Jun 2019 08:22:56 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR
References: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
X-Yow: O.K.! Speak with a PHILADELPHIA ACCENT!! Send out for CHINESE FOOD!!
 Hop a JET!
Date: Mon, 03 Jun 2019 10:22:55 +0200
In-Reply-To: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
 (Alexey Brodkin's message of "Fri, 31 May 2019 10:14:57 +0000")
Message-ID: <mvm7ea39ixs.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_012302_506180_CBC54BB8 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Mai 31 2019, Alexey Brodkin <Alexey.Brodkin@synopsys.com> wrote:

> I guess mentioned change is not supposed to be reverted but then
> how do you think it's possible [if at all] to implement that kind of
> "automatic" setup of slibdir/rtlddir?

As the commit message says, you can reference makefile variables in the
value.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
