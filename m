Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9286E37F60
	for <lists+linux-snps-arc@lfdr.de>; Thu,  6 Jun 2019 23:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sx1yQ9Z5zqdF/UNprJGb5p9aLL8jneOSx+pRGyCzJ+I=; b=lPN8bvJ85XCe/r
	ZmLwKSE7hcqT612qYarBz8027hqeND3wVhspd9fYc/LneLvv/APUeQeVTQInHwAEXIV43/QdyDnCD
	EGAxHn1kQP5LjrhIU4zYc55DvWnpRL/jdQtxLXstMDaMXfIlJ+H+Cq26xElP3cD+gtbR71jWEXlj0
	fiXtYZ0vRIjqozYFuVUKPQjJE6CohAsu4S3VJhEHl+O7gJOD55kA9igSh9V7M7PJNjXCDqGcZAuje
	sCK3r3BA5B/l88VmbUkcj04/vE4t9kg32GElvU/mOK2yygRFRk3H26Wn5HCs4nIq70fuhkg6iUBTG
	IwItFyfrfoXhR3K0hL4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzlh-0002t7-4X; Thu, 06 Jun 2019 21:17:53 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzld-0002rq-UZ
 for linux-snps-arc@lists.infradead.org; Thu, 06 Jun 2019 21:17:51 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56L7MFk094113
 for <linux-snps-arc@lists.infradead.org>; Thu, 6 Jun 2019 17:17:43 -0400
Received: from e11.ny.us.ibm.com (e11.ny.us.ibm.com [129.33.205.201])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sy86xpj11-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Thu, 06 Jun 2019 17:17:42 -0400
Received: from localhost
 by e11.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>;
 Thu, 6 Jun 2019 22:17:41 +0100
Received: from b01cxnp22036.gho.pok.ibm.com (9.57.198.26)
 by e11.ny.us.ibm.com (146.89.104.198) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 6 Jun 2019 22:17:38 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x56LHbXc27066732
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 6 Jun 2019 21:17:37 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3A6B5B2064;
 Thu,  6 Jun 2019 21:17:37 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0B183B2065;
 Thu,  6 Jun 2019 21:17:37 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.216.200])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Thu,  6 Jun 2019 21:17:36 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id D275D16C362C; Thu,  6 Jun 2019 14:17:36 -0700 (PDT)
Date: Thu, 6 Jun 2019 14:17:36 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
 <20190603201324.GN28207@linux.ibm.com>
 <CAMuHMdW-8Jt80mSyHTYmj6354-3f1=Vp_8dY-Nite1ERpUCFew@mail.gmail.com>
 <20190606094340.GD28207@linux.ibm.com>
 <8d1666df180d4d01aaebb5d41370b338@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d1666df180d4d01aaebb5d41370b338@AcuMS.aculab.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19060621-2213-0000-0000-0000039B2E67
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011224; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01214223; UDB=6.00638248; IPR=6.00995302; 
 MB=3.00027212; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-06 21:17:40
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060621-2214-0000-0000-00005EBF501D
Message-Id: <20190606211736.GW28207@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=992 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906060143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_141750_096018_56982059 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
 lkml <linux-kernel@vger.kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 04:34:52PM +0000, David Laight wrote:
> From: Paul E. McKenney
> > Sent: 06 June 2019 10:44
> ...
> > But m68k is !SMP-only, correct?  If so, the only issues would be
> > interactions with interrupt handlers and the like, and doesn't current
> > m68k hardware use exact interrupts?  Or is it still possible to interrupt
> > an m68k in the middle of an instruction like it was in the bad old days?
> 
> Hardware interrupts were always on instruction boundaries, the
> mid-instruction interrupts would only happen for page faults (etc).

OK, !SMP should be fine, then.

> There were SMP m68k systems (but I can't remember one).
> It was important to continue from a mid-instruction trap on the
> same cpu - unless you could guarantee that all the cpus had
> exactly the same version of the microcode.

Yuck!  ;-)

> In any case you could probably use the 'cmp2' instruction
> for an atomic 64bit write.
> OTOH setting that up was such a PITA it was always easier
> to disable interrupts.

Unless I am forgetting something, given that m68k is a 32-bit system,
we should be OK without an atomic 64-bit write.

							Thanx, Paul


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
