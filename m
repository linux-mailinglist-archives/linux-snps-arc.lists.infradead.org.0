Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C88E2AA72
	for <lists+linux-snps-arc@lfdr.de>; Sun, 26 May 2019 17:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IHWV+jMk4SR6n7vrirYjkurV6GqPWV3Ryg8yLlbvrsw=; b=nYo
	sBiWLWrfNpz0UcSlSP7X+Hvo2D6Q3zsWvy4S9N1Osct9zfl5SqdUuX8yTU1sEGDPMCJJbillunF6m
	IBKAMHRWO8vEJXDs9N57klFeZZpLo5EtuEbXYCSKdVY6VvNd+ax3xh3gihL5yyk2XqI5Adu9IXt/B
	uiFKa9j0TVFjl9WE43EJuUhJDSjJH9L1sJXX3vBc5UxlCmk9PgmO809GY/88Ao2uRnG+OuQcu8VRN
	fWdSTzjUilXhrpkrSsc5WQtoWKfWqyaobA1Zz77AF/vlshHF2h9qVnCAcXOt+LYsTNyU+jDJF9SLR
	Sb9iAbMmgocJ9xcbOg5CHUewl0Wp38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvEI-0007PZ-Sm; Sun, 26 May 2019 15:38:34 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvEE-0007Ok-NH
 for linux-snps-arc@lists.infradead.org; Sun, 26 May 2019 15:38:32 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4QFVmR6178565
 for <linux-snps-arc@lists.infradead.org>; Sun, 26 May 2019 11:38:26 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sqk7uxgun-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Sun, 26 May 2019 11:38:26 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sun, 26 May 2019 16:38:24 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 26 May 2019 16:38:21 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4QFcJnV61276200
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 26 May 2019 15:38:19 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CD3C6AE053;
 Sun, 26 May 2019 15:38:19 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 746A5AE04D;
 Sun, 26 May 2019 15:38:18 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.206.104])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun, 26 May 2019 15:38:18 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Sun, 26 May 2019 18:38:17 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [RFC/RFT WIP] arc: add sparsemem support
Date: Sun, 26 May 2019 18:38:14 +0300
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19052615-4275-0000-0000-00000338B900
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052615-4276-0000-0000-000038485B57
Message-Id: <1558885095-21540-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-26_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=746 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905260109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_083830_884649_B035541A 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-snps-arc@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

The patch below adds sparsemem support for ARC.

It's really a hack for now, as I'll need to sort out the generic MM bits to
allow creation of ZONE_HIGHMEM below ZONE_NORMAL on the same node.

The eventual intention is to completely replace DISCONTIGMEM with SPARSEMEM
provided the latter is at least as efficient.

I don't have access to ARC hardware I could only check the compilation and
the differences in the resulting vmlinux size. Apparently, I've managed to
have all three memory models buildable, at least with defconfig + override
for the memory model selection.

With the current changes sparsemem build creates a larger kernel,
especially with CONFIG_ARC_HAS_PAE40=y:

$ size -x discontigmem/vmlinux sparsemem/vmlinux
   text	   data	    bss	    dec	    hex	filename
0x348c5e	0xec5dc	0x3b658	4655250	 470892	discontigmem/vmlinux
0x3490cf	0xecde4	0x3bde0	4660371	 471c93	sparsemem/vmlinux

If the runtime results will favor sparsmem, it might be still worthwhile
using it instead of discontigmem.
Otherwise ARC is doomed to keep DISCONTIGMEM forever ;-)

I've defined the constants required for the SPARSEMEM based on the comments inside the code, if the actual parameters might be different, please let me know, I'll update the arch/arc/include/asm/sparsemem.h.

Currently, I presumed that for non-PAE the physical address size is 32 bits and there maybe up to two memory banks: at 0x8zz and at 0x0zz.

For the PAE case, the maximal physical address is 40 bits and the memory can be populated at 0x8zz or 0x1zzz.

--
Sincerely yours,
Mike.

Mike Rapoport (1):
  arc: add sparsemem support

 arch/arc/Kconfig                 |  9 +++++
 arch/arc/include/asm/sparsemem.h | 13 +++++++
 arch/arc/mm/init.c               | 84 ++++++++++++++++++++++++++++------------
 include/linux/mm.h               |  3 ++
 mm/page_alloc.c                  | 37 ++++++++++++++++++
 5 files changed, 121 insertions(+), 25 deletions(-)
 create mode 100644 arch/arc/include/asm/sparsemem.h

-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
