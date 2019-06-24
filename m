Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5995750401
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Jun 2019 09:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twgazBwqGVAsUFRh7PbDfHfdw73Xo1PcwAn77Nw+RM8=; b=gJZaHN/vFeUSra
	ZrBpwWzZFW/1u3j9L3ZHrCkL5etDMvpAve1ascceC3HA5XbcjjfEfrGsjRnI9FW1UapgRbHmUOxi4
	BUXuSO5xyj8fiuI4Ic+aH90s0cuY0CRJDKGrgiwBoMXA6igGCyb7dWQVNaZsHrpvnultwT9z6t1k0
	Iv9eqs4UHrVfLDuaGXTbO6fgZUT1O8V62ql3J9bCb1pHAzOoCSU28VEz/oCNgqlbmSJvi5+4E054S
	NLdeO+3tGZ0QR7N7qLHPrNsrfcsuABRvBzVRXtbsi3BkTqg8q22vyF/63rOhkmC4Di9Xa93tI+X5M
	pFdxTbbL0Q9xLco2O5ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJnn-000089-EC; Mon, 24 Jun 2019 07:54:11 +0000
Received: from helium.openadk.org ([2a00:1828:2000:679::23])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJnj-00006t-M8
 for linux-snps-arc@lists.infradead.org; Mon, 24 Jun 2019 07:54:09 +0000
Received: by helium.openadk.org (Postfix, from userid 1000)
 id E7F0810090; Mon, 24 Jun 2019 09:53:56 +0200 (CEST)
Date: Mon, 24 Jun 2019 09:53:56 +0200
From: Waldemar Brodkorb <wbx@uclibc-ng.org>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [uclibc-ng-devel] state of uClibc ARC soft-float support
Message-ID: <20190624075356.GC29045@waldemar-brodkorb.de>
References: <8544debf-dfb6-ebb5-a80e-aa9f860949ff@synopsys.com>
 <20190621102538.GZ29045@waldemar-brodkorb.de>
 <CY4PR1201MB012024B8104F1540F0DBB10BA1E70@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB012024B8104F1540F0DBB10BA1E70@CY4PR1201MB0120.namprd12.prod.outlook.com>
X-Operating-System: Linux 3.16.0-5-amd64 x86_64
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_005407_874735_4B0628EA 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Waldemar Brodkorb <mail@waldemar-brodkorb.de>
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Waldemar Brodkorb <mail@waldemar-brodkorb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Alexey,
Alexey Brodkin wrote,

> Hi Waldemar,
> 
> > -----Original Message-----
> > From: Waldemar Brodkorb <wbx@uclibc-ng.org>
> > Sent: Friday, June 21, 2019 1:26 PM
> > To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
> > Cc: devel@uclibc-ng.org; arcml <linux-snps-arc@lists.infradead.org>; Alexey Brodkin
> > <abrodkin@synopsys.com>
> > Subject: Re: [uclibc-ng-devel] state of uClibc ARC soft-float support
> > 
> > Hi Vineet,
> > 
> > I tried to sync the libm tests from glibc to uClibc-ng, but I think
> > I broke it. May be we should revert the commit?
> > 3384c45e66ddf18f235654b67ae34ac7dcb07534
> 
> There seems to be no commit with such hash:
> https://cgit.uclibc-ng.org/cgi/cgit/uclibc-ng.git/commit/?id=3384c45e66ddf18f235654b67ae34ac7dcb07534
> 
> Did you mean something else?

This one:

https://cgit.uclibc-ng.org/cgi/cgit/uclibc-ng-test.git/commit/?id=3384c45e66ddf18f235654b67ae34ac7dcb07534

best regards
 Waldemar

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
