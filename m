Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEC780B6D
	for <lists+linux-snps-arc@lfdr.de>; Sun,  4 Aug 2019 17:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hmMdty6hgyjNVZu5aji0H2rp4yl5LlvszotWL2XyfzM=; b=AcL
	3YoQ3Esxa+Tku8PtuYD1C2bvrpjJkRIBErDJsdHNCr7gpYYBG/pFpODtS3vWVdPcCmVSeF9nVQZkf
	bI3UD16wuOOcHBEeu5I2ggdXmCF5fJnUAvkfYi/teuVGo9Mu/jioDNHI25Of2X2qAm7pYctYHTW5f
	kzwC6/CDywBdtX5CbVSZbuP+zR9fxLUuknjYB4Olbe1AHN6gfcx5nJFJ5eXxyrBSb5FE59ju0Awrr
	fD2y3TPX9QILJT990rfe0PH1mVJ/fIav8RC+OMTzYxNknsO0kyzyZZm+gYWzD0AIBmghNxk24qRhA
	+IoO9h1aCL33bJcfBaWdduSCaHPkV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huIN2-0000FT-KF; Sun, 04 Aug 2019 15:24:28 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huIMz-0000F3-DS
 for linux-snps-arc@lists.infradead.org; Sun, 04 Aug 2019 15:24:27 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x74FMe2C020652
 for <linux-snps-arc@lists.infradead.org>; Sun, 4 Aug 2019 11:24:21 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2u5qxkfvdn-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Sun, 04 Aug 2019 11:24:20 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Sun, 4 Aug 2019 16:24:19 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 4 Aug 2019 16:24:18 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x74FOH4a60162262
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 4 Aug 2019 15:24:17 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 016EA42042;
 Sun,  4 Aug 2019 15:24:17 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A298542041;
 Sun,  4 Aug 2019 15:24:16 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Sun,  4 Aug 2019 15:24:16 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id B2869A01BD;
 Mon,  5 Aug 2019 01:24:15 +1000 (AEST)
Received: from 78c6c811cd18 (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 703FEE00D8;
 Mon,  5 Aug 2019 01:24:15 +1000 (AEST)
MIME-Version: 1.0
Subject: kisskb: OK linus/axs101_defconfig/arcompact Mon Aug 05, 01:23
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Sun, 04 Aug 2019 15:24:15 -0000
X-TM-AS-GCONF: 00
x-cbid: 19080415-4275-0000-0000-000003544B72
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19080415-4276-0000-0000-0000386542BD
Message-Id: <20190804152415.1.70098@78c6c811cd18>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-04_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=549 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908040178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_082425_580497_074E89C5 
X-CRM114-Status: GOOD (  11.76  )
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

OK linus/axs101_defconfig/arcompact Mon Aug 05, 01:23

http://kisskb.ellerman.id.au/kisskb/buildresult/13906279/

Commit:   Merge tag 'xtensa-20190803' of git://github.com/jcmvbkbc/linux-xtensa
          d8778f13b73f1cde08be0ece18571dee495b92f1
Compiler: arc-buildroot-linux-uclibc-gcc (Buildroot 2015.08.1) 4.8.4 / GNU ld (GNU Binutils) 2.23.2

No errors found in log

Possible warnings (3)
----------------------

<stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
net/ipv4/tcp_input.c:4341:49: warning: array subscript is above array bounds [-Warray-bounds]
net/xfrm/xfrm_policy.c:3494:15: warning: array subscript is above array bounds [-Warray-bounds]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
