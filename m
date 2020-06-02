Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFD61EC161
	for <lists+linux-snps-arc@lfdr.de>; Tue,  2 Jun 2020 19:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtpGSzmEMPvdz5S5GrRP33JYSAsgcH8Ien4Y5XA4Ing=; b=mNayMIKDJfM1EP
	0U3z3j/3F8LFJhnCISkAU/1D2UmnGbTjgdecvpfGvs+z1xJBjCi0ZDxV3U0G6NNe2KPu0FYT27nwU
	W1KSZASJ941DLlCyAer29XeW5dEaNg6XjnAbmh/1pEtAXkUCIgnYK8YPQrJp4fZkoCrRVw1LbBUnc
	wDvSjNJ21TFLNIn/up+zr8r6KXJj9UCPj4sgXebcdQs719i7iVj2kGbWhfDR0AopdcK59HrFfwvaL
	5ClukfN6z+CGyKodDe2EN/yZgPQo6MJ9L65oYHqHz3jCXm/7oS+MZqJ2x9ttDpEdSNPOVA6HiAaIk
	aCE3bA8xn2hTrAemnsLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgB4W-00047D-1h; Tue, 02 Jun 2020 17:51:32 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgB4T-00046i-VD
 for linux-snps-arc@lists.infradead.org; Tue, 02 Jun 2020 17:51:31 +0000
IronPort-SDR: PktXmUJsV97bXP13DRZ1+QoiXPjRtZjLHJ5G+OpPxcbWeT56M5ATrd/Gmg4Iy2eGMPWu6bTGOv
 uVTAcqoRxhpb4/WFQZTeDbXd75yDvkb6OdbCJTEQdxOJH653fLHBoojpM3n61n44D6IEptOWdC
 4tC0hl6MPBa96SPR297/G96QfX8osPH865SOeNSnbzPU3AJoy5haHCoUnSGj0g1ByRdhDoyUv/
 eTdcY73DYTW+AFwDnnS/KAqpz6+rMJo9FoVZ+EW67CqX6Pj3ua8/wmmiS3G+k2T6LmuInKLQuv
 22s=
X-IronPort-AV: E=Sophos;i="5.73,465,1583222400"; d="scan'208";a="49502241"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa4.mentor.iphmx.com with ESMTP; 02 Jun 2020 09:51:29 -0800
IronPort-SDR: 72gMF+gqzZq5R5aySRaFbNX6QANRzUzDMcY6fqgbjJba3zq6jhoxZ34SS8PWDvQiYcclTifyGk
 +RT9qxEC0KjLfy/ORRrJcP77JcEJLxB9Tp7Z65QxDy+kg87aP+t1gnWBhe7mkMilFLILGDKfwU
 wslM3TJ/qQ5bhLsd/qSgy6+4SCk8ljZoXHuPYpNYzKNW0RzOZ5QfknopiQk3LDSoVt5v/oLR7o
 ufllhdIdeNw1w/hsJcc5VsxrxFHZ/c+XXnfH+/zu0b1fhldFMsEIODNUzJR9VP04u6rqKfI9uN
 h98=
Date: Tue, 2 Jun 2020 17:51:23 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v6 06/13] ARC: hardware floating point support
In-Reply-To: <5b06914d-acb3-4404-4ff2-93bb7a04f8f5@synopsys.com>
Message-ID: <alpine.DEB.2.21.2006021749170.3673@digraph.polyomino.org.uk>
References: <20200423014126.10417-1-vgupta@synopsys.com>
 <20200423014126.10417-7-vgupta@synopsys.com>
 <de8975a0-bb03-8cec-be97-56f8c4e2a2f3@linaro.org>
 <91c2aba8-bff5-5ddc-7a95-c93c90883150@synopsys.com>
 <5b06914d-acb3-4404-4ff2-93bb7a04f8f5@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) To
 svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_105130_062580_DDF1FC44 
X-CRM114-Status: UNSURE (   4.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.252 listed in list.dnswl.org]
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
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, 29 May 2020, Vineet Gupta via Libc-alpha wrote:

> Something like below ?
> 
> +# define _FPU_FPSR_FWE		0x80000000
> +
> -#  define _FPU_GETCW(cw) __asm__ volatile ("lr %0, [0x300]" : "=r" (cw))
> -#  define _FPU_SETCW(cw) __asm__ volatile ("sr %0, [0x300]" : : "r" (cw))
> +static inline unsigned int arc_fpu_getcw(void)
> +{
> +  unsigned int cw;

Even for a header that's not defined in any standard, as an installed 
header you should avoid names in the user's namespace that are not 
explicitly part of the API for the user to use.  That is, unless you 
actually intend the name arc_fpu_getcw to be a supported interface for 
users including <fpu_control.h>, you should name it __arc_fpu_getcw, and 
you should use __cw to avoid conflicting with any user macro called sw.  
(Function definitions also need to be in GNU style - function name at the 
start of a line, space before '('.)

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
