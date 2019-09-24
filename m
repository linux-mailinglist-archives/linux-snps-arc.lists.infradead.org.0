Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B72CBC7E4
	for <lists+linux-snps-arc@lfdr.de>; Tue, 24 Sep 2019 14:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s15ZOR9I2lYZS0E7ek6nxXjEIRdXuuI3uEDwivBD7HE=; b=ohs77A79loY9e2
	po+y0fjvFhY44vdqr0PurCS0dV/3OLCQR+2bB4JDr3SkruA7J0CNV9v4TnNhiNbvK6LlRcJTzSW5W
	9bTGN+7r0fEWRu1FrjBJYlCVG961hM6TxHBazX2U1bK/Djd/SM15TwIasTgQODDLzBtM8Kc/J/i+N
	1tySQ6j/6lCQyGZ0kxIDieRXtyV5yexeNVeervsoj8YDRKgfU1W+jtrJN+8DCdvsdNIsTBp4ou0B2
	JCBYKYFpEDvlwTSK3RbyQ/Hq/OxEjT9baRhqbUy5OxNStHgjD6kOeS0t2lVTFNoiNYDtUYMS/MoUJ
	EZozKWZER2BYubUbJlvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjzH-00072k-Sc; Tue, 24 Sep 2019 12:32:11 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjzF-00071p-Hj
 for linux-snps-arc@lists.infradead.org; Tue, 24 Sep 2019 12:32:10 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8OCMbbh077020
 for <linux-snps-arc@lists.infradead.org>; Tue, 24 Sep 2019 08:32:08 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v7jm2huup-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Tue, 24 Sep 2019 08:32:07 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 24 Sep 2019 13:32:04 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 24 Sep 2019 13:31:54 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8OCVrqt49414322
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 12:31:53 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 32A1FA4060;
 Tue, 24 Sep 2019 12:31:53 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1E2E9A4062;
 Tue, 24 Sep 2019 12:31:49 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.8.153])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 24 Sep 2019 12:31:49 +0000 (GMT)
Date: Tue, 24 Sep 2019 15:31:47 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH V3 0/2] mm/debug: Add tests for architecture exported
 page table helpers
References: <1568961203-18660-1-git-send-email-anshuman.khandual@arm.com>
 <20190924115101.p6y7vpbtgmj5qjku@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924115101.p6y7vpbtgmj5qjku@box>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19092412-0012-0000-0000-0000034FFF16
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19092412-0013-0000-0000-0000218A8EF4
Message-Id: <20190924123146.GC5202@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-24_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909240125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_053209_595186_8002918B 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 02:51:01PM +0300, Kirill A. Shutemov wrote:
> On Fri, Sep 20, 2019 at 12:03:21PM +0530, Anshuman Khandual wrote:
> > This series adds a test validation for architecture exported page table
> > helpers. Patch in the series adds basic transformation tests at various
> > levels of the page table. Before that it exports gigantic page allocation
> > function from HugeTLB.
> > 
> > This test was originally suggested by Catalin during arm64 THP migration
> > RFC discussion earlier. Going forward it can include more specific tests
> > with respect to various generic MM functions like THP, HugeTLB etc and
> > platform specific tests.
> > 
> > https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/
> > 
> > Testing:
> > 
> > Successfully build and boot tested on both arm64 and x86 platforms without
> > any test failing. Only build tested on some other platforms. Build failed
> > on some platforms (known) in pud_clear_tests() as there were no available
> > __pgd() definitions.
> > 
> > - ARM32
> > - IA64
> 
> Hm. Grep shows __pgd() definitions for both of them. Is it for specific
> config?
 
For ARM32 it's defined only for 3-lelel page tables, i.e with LPAE on.
For IA64 it's defined for !STRICT_MM_TYPECHECKS which is even not a config
option, but a define in arch/ia64/include/asm/page.h
 
> -- 
>  Kirill A. Shutemov

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
