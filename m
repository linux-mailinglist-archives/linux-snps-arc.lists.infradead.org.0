Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0576CF1DD
	for <lists+linux-snps-arc@lfdr.de>; Tue,  8 Oct 2019 06:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p0b2ER1RV0bHGQ8b3DazXwAIvLaqGvYzCpAZw3x6T4w=; b=BcA
	cIVtNXGurbQz5ttDJ4db5bA9teHjxjJj5Ft2CiIeRiuhZYWr5HyKfiinlTEDwJRMfSrCwI4Z551mQ
	IRNGDZ3sRVvcOeR92k68BDY95aTD7g1ubzbQxBTb1vlaNj5flHuygBLCctik3DuUY7sxkKFTukMMZ
	WwHODY4ZK1P7sEHSoJ4UEgd1BOY2aiuv+NbY3yhxzZGjzmeR8I28StVHFoZjNXOHTSREtg9FJ76hF
	2lxjIwYudpzBjxAA224WgDWXaKulaZLEIX2DzRRWE38JxGX6b/Jy9jmi1za+Apc55oteGXokndJl8
	84SEm9n/yHg/PD6tYdQ7fznDYMwnMuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhKI-00086n-5r; Tue, 08 Oct 2019 04:42:22 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJa-0007OX-0c
 for linux-snps-arc@lists.infradead.org; Tue, 08 Oct 2019 04:41:39 +0000
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x984aq3n132304
 for <linux-snps-arc@lists.infradead.org>; Tue, 8 Oct 2019 00:41:34 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vepu0g75u-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Tue, 08 Oct 2019 00:41:33 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Tue, 8 Oct 2019 05:41:31 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 8 Oct 2019 05:41:29 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x984fSIQ52297874
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 8 Oct 2019 04:41:28 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AA9DB52054;
 Tue,  8 Oct 2019 04:41:28 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 5A7B95204E;
 Tue,  8 Oct 2019 04:41:28 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id 4117CA026A;
 Tue,  8 Oct 2019 15:41:26 +1100 (AEDT)
Received: from 78c6c811cd18 (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 821DFE00E5;
 Tue,  8 Oct 2019 15:41:26 +1100 (AEDT)
MIME-Version: 1.0
Subject: kisskb: FAILED linux-next/axs101_defconfig/arcompact Tue Oct 08, 15:40
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Tue, 08 Oct 2019 04:41:26 -0000
X-TM-AS-GCONF: 00
x-cbid: 19100804-0028-0000-0000-000003A70673
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19100804-0029-0000-0000-0000246918DF
Message-Id: <20191008044126.1.22741@78c6c811cd18>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-08_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=623 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910080046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214138_074335_FE8DFADC 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

FAILED linux-next/axs101_defconfig/arcompact Tue Oct 08, 15:40

http://kisskb.ellerman.id.au/kisskb/buildresult/13985222/

Commit:   Add linux-next specific files for 20191008
          442630f691a1537b7e0cc35e3d580222077549cb
Compiler: arc-buildroot-linux-uclibc-gcc (Buildroot 2015.08.1) 4.8.4 / GNU ld (GNU Binutils) 2.23.2

Possible errors
---------------

include/linux/bits.h:24:21: error: first argument to '__builtin_choose_expr' not a constant
include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
make[4]: *** [scripts/Makefile.build:266: drivers/base/regmap/regmap.o] Error 1
make[3]: *** [scripts/Makefile.build:509: drivers/base/regmap] Error 2
make[2]: *** [scripts/Makefile.build:509: drivers/base] Error 2
include/linux/bits.h:24:21: error: first argument to '__builtin_choose_expr' not a constant
include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
include/linux/bits.h:24:21: error: first argument to '__builtin_choose_expr' not a constant
include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
make[3]: *** [scripts/Makefile.build:266: drivers/clk/clk-multiplier.o] Error 1
make[2]: *** [scripts/Makefile.build:509: drivers/clk] Error 2
make[1]: *** [Makefile:1649: drivers] Error 2
include/linux/bits.h:24:21: error: first argument to '__builtin_choose_expr' not a constant
include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
make[3]: *** [scripts/Makefile.build:265: kernel/time/sched_clock.o] Error 1
make[2]: *** [scripts/Makefile.build:509: kernel/time] Error 2
make[1]: *** [Makefile:1649: kernel] Error 2
make: *** [Makefile:179: sub-make] Error 2

Possible warnings (2)
----------------------

<stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
net/ipv4/tcp_input.c:4384:49: warning: array subscript is above array bounds [-Warray-bounds]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
