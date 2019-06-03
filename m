Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE8F33991
	for <lists+linux-snps-arc@lfdr.de>; Mon,  3 Jun 2019 22:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VupGvEZl5ZIU4a4rpUcAZ71nfGXEzn2rjeE/zqf4IA=; b=ArpgGFSXa6ojMB
	ZHdq+RES1cEVGbHO/tZ3vsx09tORk7jajtFXHY52hQBXOC2kXRgDrrrQO3dzXK2a0AU/Iy55RkrXb
	HGh6B9HtpTG1+L/WMIM+4wW4ZAC7QHfPO2RuoFaP7RfyyoCkQ8BsUcIpvpwUPfIyXCK51HTHGxssd
	CXwgvThXlP37ASKdOXzlUca5puoW9mNmuxOVaQcAiJxUiQCKJ/0DFjw062jy1bBlVaaKw9Armdv+P
	+FAcyvJB3u08X6EVW8MEPIpZRF945kUXEwotdPE7Sv0zJMthbAuTsbImTFH7+wSRv/IoF0/s5W31K
	eS8VrgcjRdwqD40qcCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXtKp-0001SE-9Q; Mon, 03 Jun 2019 20:13:35 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXtKm-0001RM-U2
 for linux-snps-arc@lists.infradead.org; Mon, 03 Jun 2019 20:13:34 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x53KDUZl015340
 for <linux-snps-arc@lists.infradead.org>; Mon, 3 Jun 2019 16:13:30 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sw9m1j1vq-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Mon, 03 Jun 2019 16:13:30 -0400
Received: from localhost
 by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>;
 Mon, 3 Jun 2019 21:13:28 +0100
Received: from b01cxnp23032.gho.pok.ibm.com (9.57.198.27)
 by e12.ny.us.ibm.com (146.89.104.199) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 3 Jun 2019 21:13:26 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x53KDPLJ37355998
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 3 Jun 2019 20:13:25 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3805DB206A;
 Mon,  3 Jun 2019 20:13:25 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 08559B2066;
 Mon,  3 Jun 2019 20:13:25 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.210.156])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon,  3 Jun 2019 20:13:24 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 7742816C5DA0; Mon,  3 Jun 2019 13:13:24 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:13:24 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2522B5B@us01wembx1.internal.synopsys.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19060320-0060-0000-0000-0000034B921E
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011209; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01212784; UDB=6.00637371; IPR=6.00993844; 
 MB=3.00027168; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-03 20:13:28
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060320-0061-0000-0000-0000499BBCCD
Message-Id: <20190603201324.GN28207@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_16:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=839 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906030135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_131333_072967_600C4350 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, Will Deacon <Will.Deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 06:08:35PM +0000, Vineet Gupta wrote:
> On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> >> I'm not sure how to interpret "natural alignment" for the case of double
> >> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
> >> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> > Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> >
> > For any u64 type, that would give 8 byte alignment. the problem
> > otherwise being that your data spans two lines/pages etc..
> 
> Sure, but as Paul said, if the software doesn't expect them to be atomic by
> default, they could span 2 hardware lines to keep the implementation simpler/sane.

I could imagine 8-byte types being only four-byte aligned on 32-bit systems,
but it would be quite a surprise on 64-bit systems.

							Thanx, Paul


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
