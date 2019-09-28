Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1934C1012
	for <lists+linux-snps-arc@lfdr.de>; Sat, 28 Sep 2019 09:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xTUZTaUQAeKPGimbQ65F9TlYt1YjL7iMx7W3fTRSLM=; b=uPDCRz8ivm4Im9
	g+IaK4ft4FQC4vvtdEqRQt5Z1fgUiqXev875X7OVXrDUr1TB71w+1mEMTSHHbRMS05uvZ0yS69QnR
	SFOQgARHz73KpEkKJ49pClp27tePI+/Xk1Xr4iXyhnV2sKPTTjIy9EgoSeYvLzRgCISSqlRKydYOk
	B0PDLZ6zVT0fhopFn2ZbeAWbKvA7O7bpPkaO2jIKnjCvWKFQpaopYS38Xfjao7VROfeySQtyWPkfA
	8lJYAtUMgyNAc7rpOMaoGoun1P/9guvu3JohNiiGSfEpj3rVxEOIAKx1u2Ne9KQrSzu72kDfrlsN3
	QRdMTuxccHBke45+CiOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE7Ev-0002WE-1h; Sat, 28 Sep 2019 07:34:01 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE7Er-0002Uo-Nc
 for linux-snps-arc@lists.infradead.org; Sat, 28 Sep 2019 07:33:59 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8S7WtGo071366
 for <linux-snps-arc@lists.infradead.org>; Sat, 28 Sep 2019 03:33:55 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v9y6j4nf0-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Sat, 28 Sep 2019 03:33:55 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sat, 28 Sep 2019 08:33:52 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sat, 28 Sep 2019 08:33:39 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8S7XdOa53280776
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 28 Sep 2019 07:33:39 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EA026AE051;
 Sat, 28 Sep 2019 07:33:38 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6CE5CAE045;
 Sat, 28 Sep 2019 07:33:34 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.50])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sat, 28 Sep 2019 07:33:34 +0000 (GMT)
Date: Sat, 28 Sep 2019 10:33:32 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
References: <1548057848-15136-1-git-send-email-rppt@linux.ibm.com>
 <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
 <CAOMZO5A_U4aYC4XZXK1r9JaLg-eRdXy8m6z4GatQp62rK4HZ6A@mail.gmail.com>
 <CAHCN7xJdzEppn8-74SvzACsA25bUHGdV7v=CfS08xzSi59Z2uw@mail.gmail.com>
 <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
 <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19092807-0016-0000-0000-000002B189F7
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19092807-0017-0000-0000-000033125EFB
Message-Id: <20190928073331.GA5269@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-28_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909280079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_003357_768886_76F3542A 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Dennis Zhou <dennis@kernel.org>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, Chris Healy <cphealy@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Petr Mladek <pmladek@suse.com>,
 linux-xtensa@linux-xtensa.org, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 linux-m68k@lists.linux-m68k.org, Rob Herring <robh+dt@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, xen-devel@lists.xenproject.org,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, openrisc@lists.librecores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 02:35:53PM -0500, Adam Ford wrote:
> On Thu, Sep 26, 2019 at 11:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > Hi,
> >
> > On Thu, Sep 26, 2019 at 08:09:52AM -0500, Adam Ford wrote:
> > > On Wed, Sep 25, 2019 at 10:17 AM Fabio Estevam <festevam@gmail.com> wrote:
> > > >
> > > > On Wed, Sep 25, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
> > > >
> > > > > I tried cma=256M and noticed the cma dump at the beginning didn't
> > > > > change.  Do we need to setup a reserved-memory node like
> > > > > imx6ul-ccimx6ulsom.dtsi did?
> > > >
> > > > I don't think so.
> > > >
> > > > Were you able to identify what was the exact commit that caused such regression?
> > >
> > > I was able to narrow it down the 92d12f9544b7 ("memblock: refactor
> > > internal allocation functions") that caused the regression with
> > > Etnaviv.
> >
> >
> > Can you please test with this change:
> >
> 
> That appears to have fixed my issue.  I am not sure what the impact
> is, but is this a safe option?

It's not really a fix, I just wanted to see how exactly 92d12f9544b7 ("memblock:
refactor internal allocation functions") broke your setup.

Can you share the dts you are using and the full kernel log?
 
> adam
> 
> > diff --git a/mm/memblock.c b/mm/memblock.c
> > index 7d4f61a..1f5a0eb 100644
> > --- a/mm/memblock.c
> > +++ b/mm/memblock.c
> > @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
> >                 align = SMP_CACHE_BYTES;
> >         }
> >
> > -       if (end > memblock.current_limit)
> > -               end = memblock.current_limit;
> > -
> >  again:
> >         found = memblock_find_in_range_node(size, align, start, end, nid,
> >                                             flags);
> >
> > > I also noticed that if I create a reserved memory node as was done one
> > > imx6ul-ccimx6ulsom.dtsi the 3D seems to work again, but without it, I
> > > was getting errors regardless of the 'cma=256M' or not.
> > > I don't have a problem using the reserved memory, but I guess I am not
> > > sure what the amount should be.  I know for the video decoding 1080p,
> > > I have historically used cma=128M, but with the 3D also needing some
> > > memory allocation, is that enough or should I use 256M?
> > >
> > > adam
> >
> > --
> > Sincerely yours,
> > Mike.
> >

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
