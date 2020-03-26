Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0400E194730
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Mar 2020 20:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KeftoTGTABu0bC+lCUm1F2jNyGyb6n01aJvLCNhbdCM=; b=MWJQzQvYmPondVOEsarU4XFll2
	FrwbACRP8z1wuleXU9+K2HeihAOJfPIwVHhKmquf45LONOuSPT0n3yczpssLNWGZWzOyZxrUIfRaf
	CfOGIhbHAne7FGsW7t4AgcOZcbFu28ssaYv2jxseTczPvbfRYOd6gVpbNHbtNWmpOqgmaEBzowNel
	KKuRFNcsIe6p4/+dUb6Eh5VboijoxlpjxKwyKi5S/BnDsXURdstOtkx73G5BM1OmMPJ8/4SdzY/NG
	ytmOTEHiEFLprwP9WI/6Iu2tvV9FKkzvrURqvzFkPG7DVLvtPlpv3ITwo63EJuR0Q0nf0WVga0zf2
	Di2k90rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXtp-0007P1-KC; Thu, 26 Mar 2020 19:10:41 +0000
Received: from caffeine.csclub.uwaterloo.ca ([129.97.134.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXtn-0007OS-IX
 for linux-snps-arc@lists.infradead.org; Thu, 26 Mar 2020 19:10:40 +0000
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 0387B46166D; Thu, 26 Mar 2020 15:04:28 -0400 (EDT)
Date: Thu, 26 Mar 2020 15:04:28 -0400
To: Helmut Grohne <helmut@subdivi.de>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "debian-arm@lists.debian.org" <debian-arm@lists.debian.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Vineet Gupta <vineetg76@gmail.com>,
 Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: ARC rebootstrap prereq (was Re: switching ARC to 64-bit time_t )
Message-ID: <20200326190428.dxgq6vetirgq5ixy@csclub.uwaterloo.ca>
References: <8a9784b3-fc52-adc3-4595-33142b059388@synopsys.com>
 <20200220001136.2f14236e@jawa>
 <CAK8P3a1b73K+RjfHONWLy_dFUucXxwd+0jTnHmkf6YqwRjit4w@mail.gmail.com>
 <20200220162735.GA26634@alf.mars>
 <2c3d76a7-fa94-d16e-2803-a98a4761e427@gmail.com>
 <20200326055408.GA31088@alf.mars>
 <CY4PR1201MB0120B23B823811B061CFCCFDA1CF0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20200326122401.GA5669@alf.mars>
 <CY4PR1201MB01202B2FF493C221420F422DA1CF0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20200326142836.GA24503@alf.mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326142836.GA24503@alf.mars>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_121039_680825_90D42C23 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [129.97.134.17 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 03:28:36PM +0100, Helmut Grohne wrote:
> One part of the question here is "why do we need libatomic-ops?". The
> answer to that is, because libgc uses it and libgc is used by e.g.  gcc,
> gnutls, guile, and make. Possibly, some of these could be built without
> libgc, but this is how they are packaged for Debian at present.  Package
> dependencies currently say that we need libatomic-ops.
> 
> The other part is "what is missing in libatomic-ops"? If you look at a
> more recent implementation, such as riscv, you see that it basically
> says "trust gcc". So I guess all you need here is an arc-specific
> implementation that says "gcc knows what it is doing, use its
> primitives".
> 
> Given sufficient work, I guess libatomic-ops could be removed in favour
> of using the gcc built-ins directly. Not sure whether that'd fly with
> libgc upstream though.
> 
> So no, this is not a stupid question. Thank you for asking.

The way I read the details on libatomic is that it provides functions
to implement the things a given architecture can't do with intrinsics
in gcc directly.  So on some architectures it does nothing and on others
it implements missing bits for atomic operations.

-- 
Len Sorensen

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
