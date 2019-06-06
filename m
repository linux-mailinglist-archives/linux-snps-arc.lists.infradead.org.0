Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1015037080
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 11:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vl/fpPP8Tkr12WO5XRtZ2Pe2ThUr+DtKMLt5c4Ygdg=; b=nCbq9D4y6HNLuk
	2S+7Jp6EecxxTkiPqlXnDLblpYdAiynPGUluM+1GgnskcVdJH6175/N2XJWuhaZMsRcv5WMc/AIS7
	l2KnKYnpnMncDZRiSKzpPJzLzG0/MiIf28bQLWoSr1on7Cx/IhfUIZsn0g64E/2nDjQ7HCCMbnt5E
	vXJUGTWBh7HwoX9O5xwqgVuDhZWnFyc+0OdzGqSUpAtflQ5XwXTn6AaZepybh/l+jI0lyod+3XN3L
	nmwFDR6Pha4TZF74DiCc8gshwRHH1K5XxdReGPwwhLz2lscf8JRVTuSt7A2ktalpE0ap1TxgSuGzk
	+Il31RHRUIAM+r52a4gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYow3-0004Un-PN; Thu, 06 Jun 2019 09:43:51 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYow0-0004Tc-BU
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 09:43:49 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x569bVbV181148
 for <linux-snps-arc@lists.infradead.org>; Thu, 6 Jun 2019 05:43:45 -0400
Received: from e14.ny.us.ibm.com (e14.ny.us.ibm.com [129.33.205.204])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sxyqvjbnv-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Thu, 06 Jun 2019 05:43:45 -0400
Received: from localhost
 by e14.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>;
 Thu, 6 Jun 2019 10:43:44 +0100
Received: from b01cxnp23034.gho.pok.ibm.com (9.57.198.29)
 by e14.ny.us.ibm.com (146.89.104.201) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 6 Jun 2019 10:43:41 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x569heXG27787628
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 6 Jun 2019 09:43:41 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D7E76B2066;
 Thu,  6 Jun 2019 09:43:40 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A7394B205F;
 Thu,  6 Jun 2019 09:43:40 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.136.182])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Thu,  6 Jun 2019 09:43:40 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 25C7916C3A57; Thu,  6 Jun 2019 02:43:40 -0700 (PDT)
Date: Thu, 6 Jun 2019 02:43:40 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
 <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19060609-0052-0000-0000-000003CC2620
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011223; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01213992; UDB=6.00638109; IPR=6.00995071; 
 MB=3.00027205; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-06 09:43:44
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060609-0053-0000-0000-00006134604B
Message-Id: <20190606094340.GD28207@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906060070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024348_514943_9C0F06A7 
X-CRM114-Status: GOOD (  29.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: paulmck@linux.ibm.com
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:41:04AM +0200, Geert Uytterhoeven wrote:
> Hi Paul,
> 
> On Mon, Jun 3, 2019 at 10:14 PM Paul E. McKenney <paulmck@linux.ibm.com> wrote:
> > On Mon, Jun 03, 2019 at 06:08:35PM +0000, Vineet Gupta wrote:
> > > On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> > > >> I'm not sure how to interpret "natural alignment" for the case of double
> > > >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> > > >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > > > Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> > > >
> > > > For any u64 type, that would give 8 byte alignment. the problem
> > > > otherwise being that your data spans two lines/pages etc..
> > >
> > > Sure, but as Paul said, if the software doesn't expect them to be atomic by
> > > default, they could span 2 hardware lines to keep the implementation simpler/sane.
> >
> > I could imagine 8-byte types being only four-byte aligned on 32-bit systems,
> > but it would be quite a surprise on 64-bit systems.
> 
> Or two-byte aligned?
> 
> M68k started with a 16-bit data bus, and alignment rules were retained
> when gaining a wider data bus.
> 
> BTW, do any platforms have issues with atomicity of 4-byte types on
> 16-bit data buses? I believe some embedded ARM or PowerPC do have
> such buses.

But m68k is !SMP-only, correct?  If so, the only issues would be
interactions with interrupt handlers and the like, and doesn't current
m68k hardware use exact interrupts?  Or is it still possible to interrupt
an m68k in the middle of an instruction like it was in the bad old days?

							Thanx, Paul

> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
