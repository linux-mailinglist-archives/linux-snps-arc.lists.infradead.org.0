Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F031F8D5
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 18:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=frJ/42Rfa5LdNUusYYBFX2dH0EMmRLxgR1pW/GwM2lo=; b=Y2c
	8VSs49dftGIQUFq46V4gfqb3Cc4bA8DnNTQbe7RFO5MOzRkoalGTPvGDBiIe4LzkeBSrWzfJ/U3O6
	5jCmKJ0zgoyVbiFOaFgrR5ZgRo/+SVGN2TXj4NYzrlpSBOo0wFic3yrigCjB7pqQl0Ha0kRLuh/v3
	vnpwOcRCShnsbxu6ma/6Tu+UviwCgOPh21+aTl51yEWMdzUb4gyeE8LdGbKyoDjWl0UCof2HsNgFz
	O8Uq81R6ya/wnE6DXJ7aR5QV/9nE9TA31CNVTlaYQ2PaHJDXRzFs0ou8clSxDgo51RHZSwfOi451O
	5qks4IwP4iNtzMQzee3PTENKIbmozmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwzF-0007ba-Ay; Wed, 15 May 2019 16:42:37 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwyg-0006t9-AM
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 16:42:05 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4FGbghE150406
 for <linux-snps-arc@lists.infradead.org>; Wed, 15 May 2019 12:42:01 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sgmfkq2em-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Wed, 15 May 2019 12:42:00 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Wed, 15 May 2019 17:41:58 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 15 May 2019 17:41:55 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4FGfsq649283286
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2019 16:41:54 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 40CB2A404D;
 Wed, 15 May 2019 16:41:54 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E69E4A4053;
 Wed, 15 May 2019 16:41:53 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 15 May 2019 16:41:53 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id A1F92A010E;
 Thu, 16 May 2019 02:41:52 +1000 (AEST)
Received: from 64d84000ca61 (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 97FABE00D5;
 Thu, 16 May 2019 02:41:52 +1000 (AEST)
MIME-Version: 1.0
Subject: kisskb: OK linux-next/axs101_defconfig/arcompact Thu May 16, 02:41
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Wed, 15 May 2019 16:41:52 -0000
X-TM-AS-GCONF: 00
x-cbid: 19051516-0028-0000-0000-0000036E0CC7
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051516-0029-0000-0000-0000242DA427
Message-Id: <20190515164152.1.40197@64d84000ca61>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-15_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=511 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905150101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094202_902188_1063E288 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

OK linux-next/axs101_defconfig/arcompact Thu May 16, 02:41

http://kisskb.ellerman.id.au/kisskb/buildresult/13806022/

Commit:   Add linux-next specific files for 20190515
          239d779dc0623b606a2c9e63fa0bcf817a834151
Compiler: arc-buildroot-linux-uclibc-gcc (Buildroot 2015.08.1) 4.8.4 / GNU ld (GNU Binutils) 2.23.2

No errors found in log

Possible warnings (8)
----------------------

<stdin>:1388:2: warning: #warning syscall open_tree not implemented [-Wcpp]
<stdin>:1391:2: warning: #warning syscall move_mount not implemented [-Wcpp]
<stdin>:1394:2: warning: #warning syscall fsopen not implemented [-Wcpp]
<stdin>:1397:2: warning: #warning syscall fsconfig not implemented [-Wcpp]
<stdin>:1400:2: warning: #warning syscall fsmount not implemented [-Wcpp]
<stdin>:1403:2: warning: #warning syscall fspick not implemented [-Wcpp]
net/xfrm/xfrm_policy.c:3494:15: warning: array subscript is above array bounds [-Warray-bounds]
net/ipv4/tcp_input.c:4321:49: warning: array subscript is above array bounds [-Warray-bounds]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
