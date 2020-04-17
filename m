Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C18F1AE876
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 01:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fECV9yaTrU2hHpj4pKBQIeZs9aIGbtYhO/aYCMiwghA=; b=UHSK2in9rHkxOg
	jALYDf2xbp/H54M3DW+NXA2NmFvYN6HRaPp1od5iwux0jqkPX6suBGJzX8Ybc8lwag4KiRA67s1sp
	l98KD5+MDlIFwq40lhm5cMDskp9dxY5YIhA2l32HSDsWzzGkQwKuGK9L/FnjQ4D18Pl40LafqBBHB
	R7WMp9VTpwOoc4rjjDETmk5goDG2JCaxc1RsQra+ERQYHIv8OEGGeLfXZ3Ttsh+BIR08F/m8uqdq2
	Xh7OxwDg76x5+mzMsMQw1SwdVizwpL4QpJQasVdtCwOcuhT4VLfoZAdryuhpt+CziC9o4CVUAFrrG
	WrfyPbTasEOM2nFNE2rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZzw-0006Nm-Ra; Fri, 17 Apr 2020 23:02:12 +0000
Received: from esa1.mentor.iphmx.com ([68.232.129.153])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZzu-0006NI-31
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 23:02:11 +0000
IronPort-SDR: 71v9m2x0jDZ1/pf05OAK+aAb/OQq9Vzhmu2aiOqR3NbO+c0NgsbpfQzTXgY1XW8l6f/vV2du6C
 fXoJc7mnWEBPLXIDC+YeQPCM9C2pIxfZKbrBsr6JU1RScW7Oj75MlIAPppmBGIBsjA9O1WD3W1
 Ke/FB13lSC+w4FlLvd/o0EwOagiKrsDfezxgcdbZeaGs/kWyx0r6kHetq5uX5G8uz+v1leLAoQ
 zjoW7VV1L5Yp4IxXD6Iz7+ApnKzf1yi9hOdnkW8Q570MohzSoAgXUXX3yvuWtxxRzUv5fQXvru
 N+A=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="49929632"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa1.mentor.iphmx.com with ESMTP; 17 Apr 2020 15:02:06 -0800
IronPort-SDR: 4QhPrMGc2Cw5lb4V6std/80o7kMPDx5KJ0OeacPfNtoBEfSUvwwF+XZardQnCJJoNvI6jBr5nF
 7C7fTlNKWLKZMtesmBcNs3fK3yj7XgWoZOvzuKzDtpzfkUGiBhWJ4GPoMO+qw0aPGetseklzjg
 u72EGu1yLUZaMXdfMwgXsqX6NPjjMl1P0J9v2Nfs4DuXIAynG4mPQdrZJo5afB2cLDWohfMknU
 RjSbNP7pamyY/94+HMqxptSfZfSsMfT/+YECWKnt6LPnoF3srFXvNoieVgNcEJlduvDdXoVGZm
 gFg=
Date: Fri, 17 Apr 2020 23:02:01 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 08/14] ARC: Linux ABI
In-Reply-To: <20200409025615.27003-9-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172301140.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-9-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_160210_135247_D93F1E38 
X-CRM114-Status: UNSURE (   2.55  )
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, 8 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> +      for (i = 0; i < stack_args; i++)
> +        *r++ = va_arg(vl, unsigned long int);

Missing space before '(' in call to va_arg.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
