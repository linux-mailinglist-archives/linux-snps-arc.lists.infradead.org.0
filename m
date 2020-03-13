Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C1B183F44
	for <lists+linux-snps-arc@lfdr.de>; Fri, 13 Mar 2020 04:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43mW2paKCewFTLM5NhUGGblAWOHvyCp6jYmm6QvLL5g=; b=FDumxwDdpr9yNx
	6Sj+nX3Hr6X1XIYQf8b5jOTYvqTiHYR1fBk+HxJaTWifApp1yS/t74lMGI6/QMGrOPQpm+0Vb/DYK
	9A1SQHL/mwCEv/9RVi1Dz0AM+bQ8l3L8jbmzesTIZE2zHo/KW9tID1wNvJoxyQnmPfpfKz+A8qKs9
	G+CFEyT8xeiLAVv7oj5ckOgS/g4GOKU/pw8lQyJ9GpDbNnBWKdO6NkOniNB1gn6Y6FQm6vqcBNHbi
	wHqyq31/Ru7vhJbQKfP+LCxr9ga/uAsQKXCZKG2e+ZEGOiNYjj9jIyI5ahuvv4FEpYPd1wEeoFTPp
	2NKaEMc2X3B0/v7nAd5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCacu-0003Zl-1G; Fri, 13 Mar 2020 03:04:44 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCaci-0003Tm-FE
 for linux-snps-arc@lists.infradead.org; Fri, 13 Mar 2020 03:04:40 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 530D140255;
 Fri, 13 Mar 2020 03:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584068672; bh=FpzH26+XHhQ4MnRVPEvTRe9J5/GD/h8nVipsmT0AXRY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YhFa2nOEcK90bofVUuLodLnkwgiuDZZT36rSD1zE4AuTP5/rej1qNWCyiZrnKFIcz
 xyolsRK0rU4ouVfYEndn4iC6SnPEhGxLQ5lDmpSO1RwHMAcau56v4TSvclIsO7a2FN
 BOIlvTZQmnItfilKOuivhe6S0ioWZ+ZWrqWu7SyHG38mHpAPDmxqSERafLOWa3tqv2
 Sjneet7RF12IOVoIempuOgJeDe58AMevP/Fp7K9fKpQTQJGg80tLcdIPWS+xPPJwmN
 3/MMW0pi0PXozF/WFZw9aKPHugyaX3WJYJC2nHOuNPj2QlyGMVC8BsZF1Qe/YYNFwL
 wxbf/pLCNDk2Q==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 16318A0080;
 Fri, 13 Mar 2020 03:04:32 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v4 12/15] ARC: Update syscall-names.list for ARC specific
 syscalls
Date: Thu, 12 Mar 2020 20:04:16 -0700
Message-Id: <20200313030419.15843-13-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313030419.15843-1-vgupta@synopsys.com>
References: <20200313030419.15843-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_200432_529961_FE4746A3 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 sysdeps/unix/sysv/linux/syscall-names.list | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sysdeps/unix/sysv/linux/syscall-names.list b/sysdeps/unix/sysv/linux/syscall-names.list
index 3d89814003a2..758b50164103 100644
--- a/sysdeps/unix/sysv/linux/syscall-names.list
+++ b/sysdeps/unix/sysv/linux/syscall-names.list
@@ -41,6 +41,9 @@ adjtimex
 afs_syscall
 alarm
 alloc_hugepages
+arc_gettls
+arc_settls
+arc_usr_cmpxchg
 arch_prctl
 arm_fadvise64_64
 arm_sync_file_range
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
