Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146551135ED
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Dec 2019 20:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jjb//M2OsasEDJI8df1M24gSG1sa3gZjQeuccAtMh8c=; b=fQ/
	w0L2xtAB1dile5ly4PTn1dlQS+U9RAxYx+vOJnH+MB/zZjwi3KUDpeLnyoJolkcZaGMe/ZwEXPJKk
	cEfaZflGmlKxAkaMbPDL//Ww6mCPWrSDrnGMJN2s7sVLYGU801WtvzlnuH5RLjIPgE8gJNbjwVipY
	BQSKovCxzgIA9J0SSeit2kGaXcTc+o2EFbU7aRcbvP8q/LvwLmxMSzUZ5EHOGLi1FDLZgqHFa+miX
	TDvG4GNedL1Ojw6mYKLOqy/iGSiQrC8Zca2jNvLC6pkRjE6EafF8m2nHgb9XvrfyTw7hveJ0GjDKR
	0Or3se4iVlL3RRZsPv4M6GZEFdGNB8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaeV-0005nV-QN; Wed, 04 Dec 2019 19:49:35 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaeT-0005mS-3s
 for linux-snps-arc@lists.infradead.org; Wed, 04 Dec 2019 19:49:34 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4JeSrY071483
 for <linux-snps-arc@lists.infradead.org>; Wed, 4 Dec 2019 14:49:28 -0500
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2wnp8tc6jj-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Wed, 04 Dec 2019 14:49:28 -0500
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Wed, 4 Dec 2019 19:49:26 -0000
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 4 Dec 2019 19:49:24 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xB4JnNAX52428804
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 4 Dec 2019 19:49:23 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5AD94A4062;
 Wed,  4 Dec 2019 19:49:23 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0AA66A4054;
 Wed,  4 Dec 2019 19:49:23 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  4 Dec 2019 19:49:22 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id 82D10A010B;
 Thu,  5 Dec 2019 06:49:20 +1100 (AEDT)
Received: from 03820ad8799d (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id ED571E00E8;
 Thu,  5 Dec 2019 06:49:21 +1100 (AEDT)
MIME-Version: 1.0
Subject: kisskb: OK linux-next/axs101_defconfig/arcompact Thu Dec 05, 06:48
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Wed, 04 Dec 2019 19:49:21 -0000
X-TM-AS-GCONF: 00
x-cbid: 19120419-0012-0000-0000-000003712F94
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19120419-0013-0000-0000-000021ACF1C4
Message-Id: <20191204194921.1.86537@03820ad8799d>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=381
 suspectscore=2 clxscore=1034 impostorscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912040158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_114933_276659_535B9EBB 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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

OK linux-next/axs101_defconfig/arcompact Thu Dec 05, 06:48

http://kisskb.ellerman.id.au/kisskb/buildresult/14052102/

Commit:   Add linux-next specific files for 20191204
          c7c32c43e831640996f86998452681ff54d17dfb
Compiler: arc-buildroot-linux-uclibc-gcc (Buildroot 2015.08.1) 4.8.4 / GNU ld (GNU Binutils) 2.23.2

No errors found in log

Possible warnings (2)
----------------------

<stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
net/ipv4/tcp_input.c:4386:49: warning: array subscript is above array bounds [-Warray-bounds]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
