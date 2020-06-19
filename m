Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D61201374
	for <lists+linux-snps-arc@lfdr.de>; Fri, 19 Jun 2020 18:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/cXLN3KYE4Mu4q2smiwgsWwlB11j6Xl+whOomZgFIs=; b=lMHLPC2oGAFEhA
	lhp8XyRpWnN2g6W2sAW3nC3DjTs3nzhA5ZGfth4SrUCenG/UDCyK9vGXoa53BdqgL0h/MXYn+SWZq
	i1d2vpi6cJRZSzC/riumxBLHrMxJRRbnGS8Yyn8Uf8u6RyseIR2bjrUt1aa7/GdHeB31adlHSGd5E
	yCdhAQqLRXg5N63FtbVYU7WpdaKdAO9zhM8a8Snj2A+Jcu7AzA2pqREYP3oTmjDZFlC3PZOIoh9xQ
	z8x8hslOU5I2b5KFP+PXYbn1C3/uPrp2i+yW+X4qKpDBCc76dmO077i/uGGIMlPVyYLJYmaPr6pWp
	paKuWZrYFmDeRSxUIQzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJWf-0007Ov-Qe; Fri, 19 Jun 2020 16:05:57 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJWb-0007Nf-0u
 for linux-snps-arc@lists.infradead.org; Fri, 19 Jun 2020 16:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592582752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZrEBS+6D6tr7sKM8RKvuVARuC8ujPdG5Fi1hrXsWHAc=;
 b=SHPN9+D331+uSrDn2oOFymtyjPGhu6LHYltB1CqdNzsGJBeZ+2xwKKTZSVgLcXBj7Nw6C7
 QaaPV+WV/2zLS/CRJ+9LIEvsr6WMbs3vN7lZhDy4EJWzkRXSBDwv95IlGtWyD4U+M59ggX
 JZGBSeiqmxlRY6Hic2jdHmPMk72Dhe4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-AWc1CxRhPGiyBNIW3PRRJA-1; Fri, 19 Jun 2020 12:05:45 -0400
X-MC-Unique: AWc1CxRhPGiyBNIW3PRRJA-1
Received: by mail-qk1-f197.google.com with SMTP id 204so7439810qki.20
 for <linux-snps-arc@lists.infradead.org>; Fri, 19 Jun 2020 09:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZrEBS+6D6tr7sKM8RKvuVARuC8ujPdG5Fi1hrXsWHAc=;
 b=QiWr60K4xK6O55YDx3y5Qsao9t47SMg0AQ0sWA9b67pxK5o28GtXYvrcjSBm6/al9Q
 h3Of00D6qVCITs31GAp+d0WcAL915AEiI7TFzimsjLN12Dxl7dni8Z1uLrTPSZYhq2ni
 szVsDa1KDHTl1eAQFG105jekuE2T3NcXx7DPmmpNvanPoaT80dHFhE2QoPUXTWxRPzKU
 trPqMYLBOm0cMPkwtx+NxZh/qblJNfTWY09vNgd4oZD724grJQ3f6DqQZY2jj6VuYwN6
 WMfHmIkfwjdEq+2A1HcqHJMTqxVPdB4nQwAoLx20BNFTc0oJfGmcEcIpmBXvAjNrJwXw
 G5uw==
X-Gm-Message-State: AOAM5320K1KkZQwDkJhMqPbvgQcFHi9GZXrYLf32T8SJ1ZjsHy71Jg9U
 Ktu7cpQzIliqmKO7RAnY/eO1Z7rv49IDiGx6DhGELIBZYyuyh2rf/A6RYaiZTDCM3qlM/o9VNcj
 aM31+GoslA2kw1TAoVXglTXi9XNyR9DBs
X-Received: by 2002:a37:6d4:: with SMTP id 203mr1558334qkg.62.1592582745381;
 Fri, 19 Jun 2020 09:05:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1Ah5qSbhiFYhHGzi97I57hEEaVVSsMBbZi7Nga0UAUiVp9Ck6HGvQPSjZ83MKPB5TgG3lyw==
X-Received: by 2002:a37:6d4:: with SMTP id 203mr1558310qkg.62.1592582745151;
 Fri, 19 Jun 2020 09:05:45 -0700 (PDT)
Received: from xz-x1.redhat.com ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id g11sm6412604qkk.123.2020.06.19.09.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 09:05:44 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-mm@kvack.org
Subject: [PATCH 03/26] mm/arc: Use general page fault accounting
Date: Fri, 19 Jun 2020 12:05:15 -0400
Message-Id: <20200619160538.8641-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200619160538.8641-1-peterx@redhat.com>
References: <20200619160538.8641-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_090553_131531_383E558D 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, peterx@redhat.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Vineet Gupta <vgupta@synopsys.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-snps-arc@lists.infradead.org, Will Deacon <will@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Use the general page fault accounting by passing regs into handle_mm_fault().
It naturally solve the issue of multiple page fault accounting when page fault
retry happened.

Fix PERF_COUNT_SW_PAGE_FAULTS perf event manually for page fault retries, by
moving it before taking mmap_sem.

CC: Vineet Gupta <vgupta@synopsys.com>
CC: linux-snps-arc@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/arc/mm/fault.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
index 34380139e7a2..68e6849cf086 100644
--- a/arch/arc/mm/fault.c
+++ b/arch/arc/mm/fault.c
@@ -106,6 +106,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	if (write)
 		flags |= FAULT_FLAG_WRITE;
 
+	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
 retry:
 	down_read(&mm->mmap_sem);
 
@@ -131,7 +132,7 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 		goto bad_area;
 	}
 
-	fault = handle_mm_fault(vma, address, flags, NULL);
+	fault = handle_mm_fault(vma, address, flags, regs);
 
 	/* Quick path to respond to signals */
 	if (fault_signal_pending(fault, regs)) {
@@ -156,22 +157,9 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
 	 * Major/minor page fault accounting
 	 * (in case of retry we only land here once)
 	 */
-	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
-
-	if (likely(!(fault & VM_FAULT_ERROR))) {
-		if (fault & VM_FAULT_MAJOR) {
-			tsk->maj_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
-				      regs, address);
-		} else {
-			tsk->min_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
-				      regs, address);
-		}
-
+	if (likely(!(fault & VM_FAULT_ERROR)))
 		/* Normal return path: fault Handled Gracefully */
 		return;
-	}
 
 	if (!user_mode(regs))
 		goto no_context;
-- 
2.26.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
