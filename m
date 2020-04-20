Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F231B144F
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Apr 2020 20:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3y6Tz54CdV/xD66F30TRFwq28/XBIV5sBz1NDl0RioQ=; b=Jl4Qb9+dRrhbPK
	ec5KiiuPPlnOJ260u8AvH7a4yBWdkX/EVTZqtZyHx7m9InWHDH9qOGqwufO6bYqjXIbw8m0VUVhrX
	559NlkVQEz9HtJCstXGSbWK+FHOaX8+up45Gm7AwnalGsJAaVsT+FNM1r61NkIG9cs/FUwkfryAhd
	lS2IuPz09SLXpqZ74RcB2USj9YZaKhlgdKNdcnOP71gmElZW8nkwyMRr3WUzQ19YemE1ebVQbrnMP
	IHKjNXistH4Z3zOm+xuDvnoWjN+halLPbSxdGElm7kFHVPWSDH8iS1tb0CW5NN6R+eG6uAqt6ktob
	HpoQK9qbiE4ueU0iGr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQb2o-0005cI-3z; Mon, 20 Apr 2020 18:21:22 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQb2l-0005bR-64
 for linux-snps-arc@lists.infradead.org; Mon, 20 Apr 2020 18:21:20 +0000
IronPort-SDR: AxX/Y0A+32X2RKCUEQqyhCEEzrhCDXY2PJyZ48NWgTWxWGySyfQJW2YAffAbCjSaqIaV8XRl2c
 C75xO17ijpVqqH2k7YwiQNaMnLHmRqCJSKPLMmyOEJDCHPFP0BgwcNQnrSzvZBAELCEt/GrjOY
 8wdW/+SgiByK98PBVgYqIcS9W61g+968zyCZciL0SSGhLXhhphm8kuBcw8YGnNNyUDOdZZvdSO
 7vPoSBArCARoLOWLx6fMflGNLXJRJX+LUL/jxYgs4A3nyVTE7aRNTu9dL3W1Wq78+lPXDnlI33
 tGc=
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="50034811"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa1.mentor.iphmx.com with ESMTP; 20 Apr 2020 10:21:18 -0800
IronPort-SDR: d5T5UFq6C3FUCPWn2I/KXXNAwoet3kBAfrQa7/otUj2JmR8tqy9t8knzEejXZRXfrz1zDIvey5
 kZBJdKxqITE+Xl0lxIa7+8+znyHcIylL2AxGoZpBgH4z7u5wWdrt68fQi4E+4frIFD3JA8JqIj
 +leydV3fNqDPqRuYvhYmLQMBnEfi/tulnGt7xowOex5pzDjOQ9zZyfvzBDOffEn/r8oyS3tW5O
 j5VT9on5km130XfwKKN2vfQChiM7yFp4uH2B+BAXt1CRJ3u3QN3VrHe2DznpQF8Q1eAqiNCnFa
 fa0=
Date: Mon, 20 Apr 2020 18:21:13 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 06/14] ARC: hardware floating point support
In-Reply-To: <081fa944-9428-b5cc-40a3-d97a96b4cd1c@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004201818570.13476@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-7-vgupta@synopsys.com>
 <alpine.DEB.2.21.2004172254500.1082@digraph.polyomino.org.uk>
 <081fa944-9428-b5cc-40a3-d97a96b4cd1c@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_112119_238171_978A6467 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.129.153 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> >  My suggestion would be to define the 
> > macro (using do { ... } while (0)) to copy the argument to a temporary 
> > variable, and do the bit-set operation in C code on that temporary 
> > variable rather than as part of the asm.
> 
> I can certainly do that if you think so.

As a general principle, if an operation is something that can readily be 
expressed in ordinary C code (and setting a bit certainly is), it's best 
to express it in ordinary C code, and make the inline asm something as 
short as possible only doing what ordinary C code cannot, so giving the 
compiler freedom in how it generates the code (unless the compiler e.g. 
generates bad code for something performance-critical, but that shouldn't 
be an issue here).

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
