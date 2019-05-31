Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973D730D75
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 May 2019 13:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOamOC1hA7OcNeJnnhnBx7q6JJvW3AwOji9MyuckMS0=; b=N7TTb1Bbftg1v3
	enAJfoeElIGEILsXFGxxdozm7vF7oU7Leq2xBPY9B1pOnLg3UtQL/Qx2Juw4sn0byupZ0V8co0pet
	52DXmPgY1I5fAgmE1+qKlOstZLQ2MYiAdBsjqqr5p5dWdVBB5tylOn05ThXQCMrAORBghsMB/Djga
	vg9nVitmTDZgL/qMOGZdnWGQGjIu+Bu9fVK4QOfBdrlr3/e7DXXgCKqEfx0xfzicx532b9K1YF49N
	xG9n7729SfT8VQEo+6dyjSZXkbIC3DZPmoqzsNUeaJdHdJo+UGfeLoO+0oicH3HAQuEAIRMpviZDD
	Zsy5PacEzHO7AAHkkR9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfyl-00072s-96; Fri, 31 May 2019 11:45:47 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfyi-00070v-4G
 for linux-snps-arc@lists.infradead.org; Fri, 31 May 2019 11:45:46 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4VBZwuc135709
 for <linux-snps-arc@lists.infradead.org>; Fri, 31 May 2019 07:45:41 -0400
Received: from e17.ny.us.ibm.com (e17.ny.us.ibm.com [129.33.205.207])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2su3hq09sj-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Fri, 31 May 2019 07:45:41 -0400
Received: from localhost
 by e17.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>;
 Fri, 31 May 2019 12:45:40 +0100
Received: from b01cxnp22036.gho.pok.ibm.com (9.57.198.26)
 by e17.ny.us.ibm.com (146.89.104.204) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 31 May 2019 12:45:36 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4VBiKap41353694
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 May 2019 11:44:20 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BA546B2065;
 Fri, 31 May 2019 11:44:20 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9DD40B2064;
 Fri, 31 May 2019 11:44:20 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.70.82.216])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Fri, 31 May 2019 11:44:20 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 98B2B16C5D81; Fri, 31 May 2019 04:44:21 -0700 (PDT)
Date: Fri, 31 May 2019 04:44:21 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <895ec12746c246579aed5dd98ace6e38@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <895ec12746c246579aed5dd98ace6e38@AcuMS.aculab.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19053111-0040-0000-0000-000004F6FBE0
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011190; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01211199; UDB=6.00636407; IPR=6.00992235; 
 MB=3.00027130; MTD=3.00000008; XFM=3.00000015; UTC=2019-05-31 11:45:38
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19053111-0041-0000-0000-0000090316D9
Message-Id: <20190531114421.GJ28207@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-31_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905310076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_044544_276283_752254D2 
X-CRM114-Status: GOOD (  24.97  )
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
 'Vineet Gupta' <Vineet.Gupta1@synopsys.com>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 09:41:17AM +0000, David Laight wrote:
> From: Vineet Gupta
> > Sent: 30 May 2019 19:23
> ...
> > While it seems reasonable form hardware pov to not implement such atomicity by
> > default it seems there's an additional burden on application writers. They could
> > be happily using a lockless algorithm with just a shared flag between 2 threads
> > w/o need for any explicit synchronization. But upgrade to a new compiler which
> > aggressively "packs" struct rendering long long 32-bit aligned (vs. 64-bit before)
> > causing the code to suddenly stop working. Is the onus on them to declare such
> > memory as c11 atomic or some such.
> 
> A 'new' compiler can't suddenly change the alignment rules for structure elements.
> The alignment rules will be part of the ABI.
> 
> More likely is that the structure itself is unexpectedly allocated on
> an 8n+4 boundary due to code changes elsewhere.
> 
> It is also worth noting that for complete portability only writes to
> 'full words' can be assumed atomic.
> Some old Alpha's did RMW cycles for byte writes.
> (Although I suspect Linux doesn't support those any more.)

Any C11 or later compiler needs to generate the atomic RMW cycles if
needed in cases like this.  To see this, consider the following code:

	spinlock_t l1;
	spinlock_t l2;
	struct foo {
		char c1; // Protected by l1
		char c2; // Protected by l2
	}

	...

	spin_lock(&l1);
	fp->c1 = 42;
	do_somthing_protected_by_l1();
	spin_unlock(&l1);

	...

	spin_lock(&l2);
	fp->c2 = 206;
	do_somthing_protected_by_l2();
	spin_unlock(&l2);

A compiler that failed to generate atomic RMW code sequences for those
stores to ->c1 and ->c2 would be generating a data race in the object
code when there was no such race in the source code.  Kudos to Hans Boehm
for having browbeat compiler writers into accepting this restriction,
which was not particularly popular -- they wanted to be able to use
vector units and such.  ;-)

> Even x86 can catch you out.
> The bit operations will do wider RMW cycles than you expect.

But does the compiler automatically generate these?

							Thanx, Paul

> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
