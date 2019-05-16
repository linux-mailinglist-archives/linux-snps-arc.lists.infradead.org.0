Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD720061
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 09:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Uku5h76X5bUaSWIFkRVC55xdGuLATPp+XyI37fieM9U=; b=QU0
	QF6fX4PaE+Mjr/8NPZq3AMPP08Q9F4pT2ni4PmzZvPeuXmPfBIW6M9mvcmC/9lCGmYS4XXFi/IPH2
	n/Rd1ZV+ogYzwf9pimvAqjKx7medqxO2wgHNyzIKS0NydRJI8DBQDNJTg9eOqsHO/TfmsvVu+cArA
	6NglATpgQYzBy8eiyuHj7WhmRjxgIZnE1c7Dl0zjqSTdJBi5X9QbLOnLZ1Byy5Vc0Ka5jE2r6IFCJ
	wWDvmfs9s7nCYZ958bhOGKu/xFmE5yyxB4Bxn0Np0kJu7uO+T9TMowpTufxVVhBULNxNIIVj2TxSh
	duu+IlVU8LX5N4VnOrs6NBfrmroniTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRAut-0003DW-OG; Thu, 16 May 2019 07:35:03 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRAuq-00031Q-7v
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 07:35:01 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4G7XI0R074833
 for <linux-snps-arc@lists.infradead.org>; Thu, 16 May 2019 03:34:59 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sh0db7495-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Thu, 16 May 2019 03:34:59 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Thu, 16 May 2019 08:34:56 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 16 May 2019 08:34:53 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4G7Yq0C57737390
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 May 2019 07:34:52 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AE3B542054;
 Thu, 16 May 2019 07:34:52 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5E9EC4204D;
 Thu, 16 May 2019 07:34:52 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 16 May 2019 07:34:52 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id 5C789A01F5;
 Thu, 16 May 2019 17:34:51 +1000 (AEST)
Received: from 2ad4cc473807 (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 529A7E00E6;
 Thu, 16 May 2019 17:34:51 +1000 (AEST)
MIME-Version: 1.0
Subject: kisskb: OK linus/axs101_defconfig/arcompact Thu May 16, 15:39
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Thu, 16 May 2019 07:34:51 -0000
X-TM-AS-GCONF: 00
x-cbid: 19051607-0012-0000-0000-0000031C3C6C
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051607-0013-0000-0000-00002154DC72
Message-Id: <20190516073451.1.38133@2ad4cc473807>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-16_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=541 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905160051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_003500_390824_9A6D516C 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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

OK linus/axs101_defconfig/arcompact Thu May 16, 15:39

http://kisskb.ellerman.id.au/kisskb/buildresult/13806908/

Commit:   Merge tag 'ktest-v5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-ktest
          b06ed1e7a2fa9b636f368a9e97c3c8877623f8b2
Compiler: arc-buildroot-linux-uclibc-gcc (Buildroot 2015.08.1) 4.8.4 / GNU ld (GNU Binutils) 2.23.2

No errors found in log

Possible warnings (12)
----------------------

<stdin>:1388:2: warning: #warning syscall open_tree not implemented [-Wcpp]
<stdin>:1391:2: warning: #warning syscall move_mount not implemented [-Wcpp]
<stdin>:1394:2: warning: #warning syscall fsopen not implemented [-Wcpp]
<stdin>:1397:2: warning: #warning syscall fsconfig not implemented [-Wcpp]
<stdin>:1400:2: warning: #warning syscall fsmount not implemented [-Wcpp]
<stdin>:1403:2: warning: #warning syscall fspick not implemented [-Wcpp]
arch/arc/mm/tlb.c:914:2: warning: variable length array 'pd0' is used [-Wvla]
net/ipv4/tcp_input.c:4321:49: warning: array subscript is above array bounds [-Warray-bounds]
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]
net/xfrm/xfrm_policy.c:3492:15: warning: array subscript is above array bounds [-Warray-bounds]
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
