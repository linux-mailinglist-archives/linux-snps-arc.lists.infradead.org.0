Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DD317C987
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 01:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wONkxcVXJUqo1ZhUCxbnLb2ZU8ps0+1fOO4DzTiA/AI=; b=B5YtijRk0qb7zi
	HYDBezi/dfrHG49xmDxAcNiGyOCoQ5D2oe5JBQa00QEWy8iyXgudgGGiP5KxR8JMXq4gCsD1aGrOs
	EcTlK/hEjOrxgn4l21IwhNbOHa/7bliwsaMDL0UOtcmrvTSenIroCROR7IZVJhsYrt6ViRCMzC2Be
	qRMGsq98e0vGfJCQ4Ru5GepTqGpH+w6TXivzJZyA+3lLe6i9GPnqwRls+r9z44Xi+q61lTRTeKOKo
	hcJIeBIluNRYMSOk65JVkWBthK79P7JUrIekmHsOJXPcTw51FVAUfEOllVRVYkwUZz9rdGa++Q3zy
	H5oMpFOEiMbeK36YOL4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAN8q-0006TK-OG; Sat, 07 Mar 2020 00:16:32 +0000
Received: from esa3.mentor.iphmx.com ([68.232.137.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAN8l-0006Sp-NG
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 00:16:31 +0000
IronPort-SDR: 21n/XemHsmy296OX7diQrhbmbIOZshZXo/cpAlXWzv0GnbAEdNIeat/rm2xZqQSeaxos6iuq3l
 kBzDcmfnuXxdav1HB5NHPf5KTU9/lwMuyoSkD2CeOtMbdE6FF1IcxMUru7Au/CjRAS2OiWuUdd
 fH76iaQEFB1AuP2Pu2niprjcwXpVmE1jpxCG7uAFnytMDhBm2fJk9hscFUjy7cPHbLwQHRHAeX
 34wLN5jaBL/7N89ltAyUYpe9trxR+5GopFa0kqhXLH9jk8GhSBTUCTe0eMOLyiF2tesUBrluM+
 Qp0=
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="46512299"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa3.mentor.iphmx.com with ESMTP; 06 Mar 2020 16:16:27 -0800
IronPort-SDR: hDzF7pwIkhln4Hh3XCtjTmZcnnrdm0TZU28RqmmclOPlVs5QxcAI+ispeK0kAWYrxgr2D04xjR
 EJexzUEy6XJbGryTfzEtHV+d/oPcNQ4YhRMJROtrSk7sqHyfEzhWt5g0lyjiF96IIPXVJO8uEU
 KhzDyHOBI7x92VSax/CSRvhds3sB36UHiNwdaB7OqEPMDODkgtOi6F2g55aHJZoR6so2Xw3N/0
 BhN741ktL/jU+2KY2+lfCyyRu5+hNoYST9yjabjRT3+/a8MC89pSiZ3A9KEMgZuGw8Unw+RfcA
 GUs=
Date: Sat, 7 Mar 2020 00:16:21 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 14/17] ARC: Build Infrastructure
In-Reply-To: <20200306182419.13945-15-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070015200.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <20200306182419.13945-15-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161627_792143_33897EE5 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 6 Mar 2020, Vineet Gupta wrote:

> diff --git a/sysdeps/unix/sysv/linux/arc/configure.ac b/sysdeps/unix/sysv/linux/arc/configure.ac
> new file mode 100644
> index 000000000000..a9528032d32a
> --- /dev/null
> +++ b/sysdeps/unix/sysv/linux/arc/configure.ac
> @@ -0,0 +1,4 @@
> +GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
> +# Local configure fragment for sysdeps/unix/sysv/linux/arc.
> +
> +arch_minimum_kernel=3.9.0

Surely you mean 5.1.0, at least until the glibc support for falling back 
to 32-bit time syscalls from 64-bit time interfaces is completed?

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
