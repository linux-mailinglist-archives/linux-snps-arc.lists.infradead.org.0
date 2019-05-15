Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571531E62F
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 02:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4TpGkPMiZeCpfm4pfc+0vVe3ytMIDn1AGXOef7SPvQ=; b=ABOl3anRcE9am3
	DJhj98AMfgy8p2EQsit0hzckHlvRczfgs/l4asb5KoNd3CYYWQalZRBu0VADBH2WHcigVzLC+U9tp
	ZbkhdE9aSdPn1Rp4uKqIcHbj0N0TozY1qJv2QjcAawCClpHmNIOBmQoszjJ1xP+j9uTVRPmCEJ7yv
	IZZeTyg/OBKChFvbnAF3GENP87Hh3CFOOT68pcw22JOYYGxMjtKa0gYoh7czaTbq+ANia0yN4IbZ2
	RPgDb6cX1bFDsCjG/aiaPAT3+WG/HKnCe0FrfseR6D8SM//gzPpDYnt1zgrizE8RWdxXAPHMCMq5N
	tRS8B3bNhQwKNuxy9nMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhoY-00043y-Uu; Wed, 15 May 2019 00:30:34 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhoW-00042s-8u
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 00:30:33 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8BD27C0A63;
 Wed, 15 May 2019 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557880222; bh=uh9UA+kPv4V1KqsVc+h+XFlXPK5I/tzW1yJ39f1zSew=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=StcpfomiPaz311LQ+zHrKvFpn1jpoRgQ4U5VvLR5jyW8aGuPJHCeLon0S8wLmgwRg
 17UCEsHzUm4FZ5jQf6RTYJWY9IlX5thtxG2FTyNia3olPBk/TajOXBDNaJ94AjDbh9
 od3kqvN9+mrpMqBha1X3hzO2UjSDdfP2tPBrUrOPIy14kL0hjVJL8iAlJr7u0vaHim
 YwT9Y4z9wFzbRDrUb7iYwztf/v+t08GpH8G1Zmk1QgSVsbTw8pClgy7hZdrE4n5ivR
 OER2XW28gq8iJUKjK79wAtEI+SumU+qkEqA0l6QQ8v6UqR0GUTZ5SMOwvG8VvNGCFP
 W7jphfenBauMA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 93E18A0068;
 Wed, 15 May 2019 00:30:31 +0000 (UTC)
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.106) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 17:30:04 -0700
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.103) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.105) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:01 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.13.182.230) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Wed, 15 May 2019 06:00:12 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 3/9] ARC: mm: do_page_fault refactor #2: remove short lived
 variable
Date: Tue, 14 May 2019 17:29:30 -0700
Message-ID: <1557880176-24964-4-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.13.182.230]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_173032_330771_B495F749 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: paltsev@snyopsys.com, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Compiler will do this anyways, still..

No functional change.

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/mm/fault.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 94d242740ac5..f1175685d914 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -67,23 +67,18 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	struct task_struct *tsk = current;
 	struct mm_struct *mm = tsk->mm;
 	int si_code = SEGV_MAPERR;
-	int ret;
 	vm_fault_t fault;
 	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
 	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
 
 	/*
-	 * We fault-in kernel-space virtual memory on-demand. The
-	 * 'reference' page table is init_mm.pgd.
-	 *
 	 * NOTE! We MUST NOT take any locks for this case. We may
 	 * be in an interrupt or a critical region, and should
 	 * only copy the information from the master page table,
 	 * nothing more.
 	 */
 	if (address >= VMALLOC_START && !user_mode(regs)) {
-		ret = handle_kernel_vaddr_fault(address);
-		if (unlikely(ret))
+		if (unlikely(handle_kernel_vaddr_fault(address)))
 			goto no_context;
 		else
 			return;
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
