Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20146EB0F
	for <lists+linux-snps-arc@lfdr.de>; Fri, 19 Jul 2019 21:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wyhbrtm9mauKDxE5QxLX8Hmz+w6cnR12WMpVtTxoBy0=; b=ktowtD8TYersPU
	GbXM/jObqq1ISR2tUNf1mGGmh5nQRtt1tc0xSRBvemU/idspDZfjub1os1CdmGh2Ct7u/T7BZ1iuc
	JtiOvi2Ph4S/9+Vwwa37N3nn9eMSGq/cQJAVqbUy8tvI3ETQipBw30rMyAW3uV2BOAwAnvapIM5Jx
	wRBy/Dj9AFIzdme29/7i170H1xXlRrmTCPNvS+352T4wdKfIw/qcurm29yli/llbAxiSU4StTj4YL
	iYxJwexzQz+ZlGinNMSH0/JJGGB2LmJRQ7tlSeRp0jDAEcFE4nZZcZw0axmXoelkSnO+D0DbEEuZF
	d0M/OzXHOTWgJ3jam55Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYYU-0001ml-Gp; Fri, 19 Jul 2019 19:28:34 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYYR-0001mQ-Mm
 for linux-snps-arc@lists.infradead.org; Fri, 19 Jul 2019 19:28:32 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 99EF0C0ABA;
 Fri, 19 Jul 2019 19:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563564510; bh=Hdp/JPcL7+oZycXcOcMtk5gY76vQ+jEs/4pUwlrEtss=;
 h=From:To:Cc:Subject:Date:From;
 b=DFBj8XV0B/QuQE8aOgizpLS/br+cSX4K3124yNr6VkULKY9+CPMDapq+h3JPUpAOd
 v48bGz7ugdpJgBV/C2r44iKci7U/4fC/VWapZWK151pqxzQpPK5wJQZTxnejEkkBxb
 FgNFXRXjDOoIkfPIA2cxUcXdJmsgJgSGKRB2vjxeEfxTBnwpCtNEKxD0ZXcFnzsUOH
 7rlCUyuxnPQJ5XOTQrZ8x1A49hZ0UoNpCTm44eahzbiOl4Bso1QDvP2mDr3GT/eepi
 NXpCbmMpuMuVC/Ji29j5hCBD9XcOB0Y4+b0/Tp9pLJW7UlWBTnt/D6wkCyQwqRkAjg
 8M9uUbI69imuw==
Received: from paltsev-e7480.internal.synopsys.com (unknown [10.121.8.79])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0E70FA0057;
 Fri, 19 Jul 2019 19:28:27 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-kbuild@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Marek <michal.lkml@markovi.net>
Subject: [TRIVIAL PATCH] of: per-file dtc preprocessor flags
Date: Fri, 19 Jul 2019 22:28:24 +0300
Message-Id: <20190719192824.24639-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_122831_752702_1BDA9D74 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As of today we are able to pass custom flags to dtc compiler but not
to dtc preprocessor.
This ability is required for including some board-specific header files.
It allows us to pass defined constants to dts without their duplication
in several places.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 scripts/Makefile.lib | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f1f38c8cdc74..f2595a608dce 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -166,6 +166,8 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+dtc_cpp_flags  += $(DTC_CPP_FLAGS_$(basetarget))
+
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
