Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17188193EC5
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Mar 2020 13:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jo7EhWIfvE2u5HNXEKjU7XzO+HOXV50zHhIrFpv0FMI=; b=tviNlYF/wy8QuK
	rIIJts+gB0Hrs7zXTAs2Q5LG4KyiEmYRuzm9f4vkwk1stBhssqg/HGjIiYmZh01zBjJecBFpR8l6M
	VqFF79AwcQX0ixgJZIgmiPg5MA+VRYNH4+bT4MMSI1IV3JxRWMOrO5y0ML4ANk3/9AF+HXydkE9+G
	qBN9RrPV/yK85/6DvUPQRbT/YNfYBesddxD8UNw3bqjniNaIuNvjB0g3OaYQXnWazz0UxymF7N9dl
	BZ+MOuwnC6cs5MZRqABqJJ1TyGlz1TQwCSl2cyUmkNn/NDqRNKPyR13riNL/3fzcEF0LMyJEP4sKB
	oX+NIESGttiAJxOWABzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRYs-0005w7-AE; Thu, 26 Mar 2020 12:24:38 +0000
Received: from isilmar-4.linta.de ([136.243.71.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRYo-0005Ox-KT
 for linux-snps-arc@lists.infradead.org; Thu, 26 Mar 2020 12:24:36 +0000
Received: from isilmar-4.linta.de (isilmar.linta [10.0.0.1])
 by isilmar-4.linta.de (Postfix) with ESMTP id 0E98320008C;
 Thu, 26 Mar 2020 12:24:28 +0000 (UTC)
Date: Thu, 26 Mar 2020 13:24:01 +0100
From: Helmut Grohne <helmut@subdivi.de>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: ARC rebootstrap prereq (was Re: switching ARC to 64-bit time_t )
Message-ID: <20200326122401.GA5669@alf.mars>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "debian-arm@lists.debian.org" <debian-arm@lists.debian.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Vineet Gupta <vineetg76@gmail.com>
References: <CAKmqyKMyf2psPp+-EHoidvbPbSXv0=dP26GjVQnT5BUriLc1gA@mail.gmail.com>
 <alpine.DEB.2.21.2002120123230.3988@digraph.polyomino.org.uk>
 <CAKmqyKOgFRfMOws_-48GqMnuS3ygmN9A4DzLg6UtEjRXVoM82A@mail.gmail.com>
 <8a9784b3-fc52-adc3-4595-33142b059388@synopsys.com>
 <20200220001136.2f14236e@jawa>
 <CAK8P3a1b73K+RjfHONWLy_dFUucXxwd+0jTnHmkf6YqwRjit4w@mail.gmail.com>
 <20200220162735.GA26634@alf.mars>
 <2c3d76a7-fa94-d16e-2803-a98a4761e427@gmail.com>
 <20200326055408.GA31088@alf.mars>
 <CY4PR1201MB0120B23B823811B061CFCCFDA1CF0@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR1201MB0120B23B823811B061CFCCFDA1CF0@CY4PR1201MB0120.namprd12.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_052434_827863_D5196518 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [136.243.71.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "debian-arm@lists.debian.org" <debian-arm@lists.debian.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 GNU C Library <libc-alpha@sourceware.org>, Vineet Gupta <vineetg76@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Alexey,

On Thu, Mar 26, 2020 at 11:51:44AM +0000, Alexey Brodkin wrote:
> I guess almost all of the packages you mentioned already have
> needed improvements for ARC.

I didn't mean to imply that anything was missing. I just mentioned those
that usually need work without having checked any.

> 2. libgpg-error has ARC support since v1.33, see:
>    http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libgpg-error.git;a=commit;h=48c8f8ddfc80

This is only the native-support. For rebootstrap, we also need cross
build support, i.e. recording the generated lock-obj header (once glibc
is done).

> And only for "libatomic-ops" & "guile" nothing has been done yet so if there's something
> that really needs to be done please let us know.

I suggest that you focus on libatomic-ops then. And on glibc of course.
I guess that the other issues are easily solvable when they arise.

Helmut

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
