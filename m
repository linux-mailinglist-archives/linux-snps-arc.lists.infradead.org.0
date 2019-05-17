Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2DC21E56
	for <lists+linux-snps-arc@lfdr.de>; Fri, 17 May 2019 21:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtDKeLoh9hWfHA/iLtZ9NZF0bBFN2llNk5L5/7r8e7Q=; b=UmWKOofIyb+8Ix
	44ApfNPK5bQTTzK8UyXfpzA7z0O2I3PMV8piqSmXSS6zwWn5RQLTjhkhKgCdTG/u9vrjXAVqK8xLC
	SHPc3iUrMAwSExunqGq4HnLmKGNaFohB0w1Y7jdX0ogFDrq6KvYHYcGxxjfobho4yBfSoa9xr7cWP
	GDdTX7UyW+7nuS8+9lbvjDSNcDnC0z7eVPSqGsuoxihOuw/qowBtpYachd6ExMVoO4avwwWmOUYVi
	zjldVuu2V8n7iMHTuQRkEoQkyvuyaN7dQCD24WuKLF0O105k3SPmQA3ThEHw9Y+SxUtSjn/zjxWXe
	+hAhhMHDn6tC+35zyN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRiaq-0005RZ-KV; Fri, 17 May 2019 19:32:36 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRian-0005Pl-Pq
 for linux-snps-arc@lists.infradead.org; Fri, 17 May 2019 19:32:35 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 72D71C0089;
 Fri, 17 May 2019 19:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558121559; bh=fJs/HSiAhXUEn2Cz8WRmlEPH8/xvYZ14fMXCFI524Ts=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=dNekFo8czcbjoji+F6/Bfn+oN+EN0UEZjOikgritLfYv6cwgPuO2mXlAbotqNEY82
 VZuEvwLY5TWiA5kIWPZRbB+Ct4AFHdfuRSHw8JeDkKh9fzDjx8FFWJ/+PrV6jC0yJU
 CP43GpvNQPjGjCuapjuZvKx0jHeYGhPzFYwXxdJwcnkg4G6objvIptckZascFO574O
 ZM7Pb1qQ7klzIC3CusnpjC4XET595c6JJTRv5W8HE7PWRFu5pL78YS4uk89E/CWjPn
 B4CG6PZkKeLsg18u+wd4SjryT68OBsDE4+d5S9EoRoYT8T0Q9oqfdEd2EmS+AM5/5H
 pUNKZMMBA2CrQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 68973A0070;
 Fri, 17 May 2019 19:32:31 +0000 (UTC)
Received: from IN01WEHTCA.internal.synopsys.com (10.144.199.104) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 17 May 2019 12:32:31 -0700
Received: from IN01WEHTCB.internal.synopsys.com (10.144.199.105) by
 IN01WEHTCA.internal.synopsys.com (10.144.199.103) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:39 +0530
Received: from vineetg-Latitude-E7450.internal.synopsys.com (10.10.161.89) by
 IN01WEHTCB.internal.synopsys.com (10.144.199.243) with Microsoft
 SMTP Server (TLS) id 14.3.408.0; Sat, 18 May 2019 01:02:27 +0530
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: [PATCH 3/5] ARCv2: entry: avoid a branch
Date: Fri, 17 May 2019 12:32:06 -0700
Message-ID: <1558121528-30184-4-git-send-email-vgupta@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
References: <1558121528-30184-1-git-send-email-vgupta@synopsys.com>
MIME-Version: 1.0
X-Originating-IP: [10.10.161.89]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_123233_863445_2A59A203 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/include/asm/entry-arcv2.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arc/include/asm/entry-arcv2.h b/arch/arc/include/asm/entry-arcv2.h
index 3209a6762960..beaf655666cb 100644
--- a/arch/arc/include/asm/entry-arcv2.h
+++ b/arch/arc/include/asm/entry-arcv2.h
@@ -100,12 +100,11 @@
 	; 2. Upon entry SP is always saved (for any inspection, unwinding etc),
 	;    but on return, restored only if U mode
 
+	lr	r9, [AUX_USER_SP]			; U mode SP
+
 	mov.nz	r9, sp
 	add.nz	r9, r9, SZ_PT_REGS - PT_sp - 4		; K mode SP
-	bnz	1f
 
-	lr	r9, [AUX_USER_SP]			; U mode SP
-1:
 	PUSH	r9					; SP (pt_regs->sp)
 
 	PUSH	fp
-- 
2.7.4


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
