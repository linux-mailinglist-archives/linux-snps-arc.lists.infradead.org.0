Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02E5128C1E
	for <lists+linux-snps-arc@lfdr.de>; Sun, 22 Dec 2019 01:47:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=axJwJ31kvwkI+tAErNWO1PdJim+KMsVjkddZmwd5V18=; b=a0L
	WM97r89XQ4ohfLZlk4LbCjLyyuQtbqCko4Jrma/xXxTXCoL64mmXiXWnpR9lNMWFXLCUjYWOmohTp
	pSRMtn8ZOn8kPdloiPvxdImqBZ+OcwJqZXE0Vyc3regWuVzGlJke/HkeSdWe6/BGhx6WDdh4R0RMY
	f9pE5C2NVvGxpIibOTO4Kp4BPriegj8jtQGuv8OY4xaW2ZFBhhMlHqjc0qOV9V4QLvLo5izR5scQr
	YmFxgUwwje7tZ1vED/me7qgEeTLYG8ku641NsegDPGBoogTC8cmzFkxIh4qu37Ktw6diRH/g5+QBx
	0Y2YYncbgG6No+IyzaXISWw4YH0OGDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iipOg-0002It-Dr; Sun, 22 Dec 2019 00:47:02 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iipOd-0002IN-2u
 for linux-snps-arc@lists.infradead.org; Sun, 22 Dec 2019 00:47:00 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBM0gb9H139546
 for <linux-snps-arc@lists.infradead.org>; Sat, 21 Dec 2019 19:46:58 -0500
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2x1g8wfkh3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Sat, 21 Dec 2019 19:46:58 -0500
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Sun, 22 Dec 2019 00:46:56 -0000
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 22 Dec 2019 00:46:54 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xBM0krQs53543048
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 22 Dec 2019 00:46:53 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B5D30A405C;
 Sun, 22 Dec 2019 00:46:53 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 669A7A405B;
 Sun, 22 Dec 2019 00:46:53 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Sun, 22 Dec 2019 00:46:53 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id 60B8CA0131;
 Sun, 22 Dec 2019 11:46:50 +1100 (AEDT)
Received: from 03820ad8799d (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 56221E00E9;
 Sun, 22 Dec 2019 11:46:52 +1100 (AEDT)
MIME-Version: 1.0
Subject: kisskb: OK linus/axs101_defconfig/arcompact Sun Dec 22, 11:45
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Sun, 22 Dec 2019 00:46:52 -0000
X-TM-AS-GCONF: 00
x-cbid: 19122200-0008-0000-0000-000003434177
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19122200-0009-0000-0000-00004A6361A7
Message-Id: <20191222004652.1.87165@03820ad8799d>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-21_07:2019-12-17,2019-12-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=2 clxscore=1034
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 mlxscore=0
 adultscore=0 impostorscore=0 mlxlogscore=676 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912220005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_164659_248858_6AA12BA3 
X-CRM114-Status: GOOD (  12.02  )
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

OK linus/axs101_defconfig/arcompact Sun Dec 22, 11:45

http://kisskb.ellerman.id.au/kisskb/buildresult/14077660/

Commit:   Merge branch 'sched-urgent-for-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
          fd7a6d2b8f1d67df76d0e863f003162b931074a1
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
