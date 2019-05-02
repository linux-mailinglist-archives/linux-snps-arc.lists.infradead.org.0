Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4B6123B7
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 22:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rX5U6fyk12eEn7X+yv00YwTfN7olylVYWS96vpasDow=; b=ZTE
	rpJ+COf0sdmQM9n0h4RlziJRQBbDAvmF7NaPwgYWJm3kNtzxxZxeOEQ2nNFIayjMTKncduyORWRb7
	3BHXn2eSoaWWIKemJCWf5EU64qBGgbRPZn+Ds8og5O0jrgqcXN9OWAAA7Sp3Y2nx2vVlJPD5RANe8
	TgRQfxRM2iGB6mt+u7NVQxjOCmAMkjOB+9GOL9P+CGTH5D7THM2oixMjtQSBXhm+0tCCC1VAA7po/
	NcqyNxaDMk9KaBP+EBEewysJNBEVS/LqNuwkScD+42ds4VeAzvBWhS7UoIWs309eH3ug6O0JawQI9
	6r9+SbAoK0nzNrPuH26U6fxAzEi4z7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIlU-0007JX-R8; Thu, 02 May 2019 20:57:12 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIlR-0007JE-7h
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 20:57:11 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42KqM9p007756
 for <linux-snps-arc@lists.infradead.org>; Thu, 2 May 2019 16:57:05 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s84ma7sfs-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Thu, 02 May 2019 16:57:04 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <noreply@ellerman.id.au>;
 Thu, 2 May 2019 21:57:03 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 21:57:01 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42Kv0Pg56688640
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 20:57:00 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BAE9211C04C;
 Thu,  2 May 2019 20:57:00 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 28F5A11C050;
 Thu,  2 May 2019 20:57:00 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu,  2 May 2019 20:57:00 +0000 (GMT)
Received: from bran.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 by ozlabs.au.ibm.com (Postfix) with ESMTP id 46D94A01D4;
 Fri,  3 May 2019 06:56:57 +1000 (AEST)
Received: from 07b04a9130af (ka2.ozlabs.ibm.com [10.61.145.21])
 by bran.ozlabs.ibm.com (Postfix) with ESMTP id 2E8B5E00D3;
 Fri,  3 May 2019 06:56:57 +1000 (AEST)
MIME-Version: 1.0
Subject: kisskb: OK linus/axs103_smp_defconfig/arcv2 Fri May 03, 06:56
From: noreply@ellerman.id.au
To: Vineet.Gupta1@synopsys.com, Alexey.Brodkin@synopsys.com,
 linux-snps-arc@lists.infradead.org
Date: Thu, 02 May 2019 20:56:57 -0000
X-TM-AS-GCONF: 00
x-cbid: 19050220-0012-0000-0000-00000317AF3C
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050220-0013-0000-0000-000021501FCF
Message-Id: <20190502205657.1.79524@07b04a9130af>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=562 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_135709_401522_E949A424 
X-CRM114-Status: GOOD (  12.37  )
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

OK linus/axs103_smp_defconfig/arcv2 Fri May 03, 06:56

http://kisskb.ellerman.id.au/kisskb/buildresult/13786931/

Commit:   Merge tag 'pci-v5.1-fixes-3' of git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci
          b7a5b22b05472704ca3e891a3a3c7769c057413a
Compiler: arc-linux-gcc.br_real (Buildroot 2016.11-git-00613-ge98b4dd) 6.2.1 20160824 / GNU ld (GNU Binutils) 2.27.51.20160928

Possible errors
---------------

 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */
 #define KERN_ERR KERN_SOH "3" /* error conditions */

Possible warnings (96)
----------------------

kernel/dma/direct.c:40:4: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
arch/arc/mm/tlb.c:914:2: warning: ISO C90 forbids variable length array 'pd0' [-Wvla]
init/main.c:380:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
init/main.c:384:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
init/main.c:388:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
init/main.c:787:37: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type '__kernel_size_t {aka unsigned int}' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
drivers/base/regmap/regmap.c:1531:22: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
drivers/base/regmap/regcache.c:719:20: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/base/component.c:196:24: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1109:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1124:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1131:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1137:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1399:17: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1399:17: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
 #define KERN_WARNING KERN_SOH "4" /* warning conditions */
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
 #define KERN_WARNING KERN_SOH "4" /* warning conditions */
mm/percpu.c:1965:27: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1965:32: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1965:37: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1965:42: warning: format '%zu' expects argument of type 'size_t', but argument 6 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1965:52: warning: format '%zu' expects argument of type 'size_t', but argument 7 has type 'unsigned int' [-Wformat=]
mm/percpu.c:1965:56: warning: format '%zu' expects argument of type 'size_t', but argument 8 has type 'unsigned int' [-Wformat=]
mm/percpu.c:2099:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:2105:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:2111:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
mm/percpu.c:2117:35: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 6 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zd' expects argument of type 'signed size_t', but argument 3 has type 'size_t {aka unsigned int}' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kern_levels.h:5:18: warning: format '%zd' expects argument of type 'signed size_t', but argument 3 has type 'size_t {aka const unsigned int}' [-Wformat=]
include/linux/overflow.h:53:15: warning: comparison of distinct pointer types lacks a cast
include/linux/overflow.h:54:15: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
drivers/gpu/drm/drm_dp_helper.c:823:18: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/gpu/drm/drm_dp_helper.c:856:18: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/gpu/drm/drm_dp_helper.c:910:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
drivers/gpu/drm/drm_dp_dual_mode_helper.c:201:16: warning: format '%zd' expects argument of type 'signed size_t', but argument 5 has type 'ssize_t {aka int}' [-Wformat=]
drivers/gpu/drm/drm_dp_dual_mode_helper.c:220:16: warning: format '%zd' expects argument of type 'signed size_t', but argument 4 has type 'ssize_t {aka int}' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
fs/ext4/inode.c:3647:12: warning: format '%zd' expects argument of type 'signed size_t', but argument 6 has type 'ssize_t {aka int}' [-Wformat=]
fs/buffer.c:233:10: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 3 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
net/sunrpc/xprtsock.c:2560:16: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
include/linux/kern_levels.h:5:18: warning: format '%zu' expects argument of type 'size_t', but argument 2 has type 'unsigned int' [-Wformat=]
drivers/usb/host/ehci-q.c:365:2: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/usb/host/ehci-q.c:365:2: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]
mm/dmapool.c:96:46: warning: format '%zu' expects argument of type 'size_t', but argument 6 has type 'unsigned int' [-Wformat=]
mm/dmapool.c:96:51: warning: format '%zu' expects argument of type 'size_t', but argument 7 has type 'unsigned int' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
fs/ext4/page-io.c:164:5: warning: format '%zd' expects argument of type 'signed size_t', but argument 6 has type 'ssize_t {aka int}' [-Wformat=]
fs/ext4/xattr.c:482:8: warning: format '%zu' expects argument of type 'size_t', but argument 6 has type 'unsigned int' [-Wformat=]
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]
net/sunrpc/svc.c:1342:33: warning: format '%zd' expects argument of type 'signed size_t', but argument 3 has type 'size_t {aka unsigned int}' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/drm/drm_print.h:110:24: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
include/linux/kernel.h:827:29: warning: comparison of distinct pointer types lacks a cast
arch/arc/include/asm/cmpxchg.h:95:29: warning: value computed is not used [-Wunused-value]
net/ipv4/tcp_input.c:4315:49: warning: array subscript is above array bounds [-Warray-bounds]
drivers/gpu/drm/drm_gem_cma_helper.c:115:21: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/gpu/drm/drm_gem_cma_helper.c:510:18: warning: format '%zu' expects argument of type 'size_t', but argument 4 has type 'unsigned int' [-Wformat=]
drivers/gpu/drm/drm_atomic_uapi.c:131:21: warning: format '%zu' expects argument of type 'size_t', but argument 5 has type 'unsigned int' [-Wformat=]


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
