Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009C0142B16
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Jan 2020 13:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=az3//r8VMGcef/gkgxjqMWcTFbRqR956bm5d+cnbXHY=; b=gu+cOJA/W10gSbmATCLAaND3gY
	maBwcZyAhyWAVS8dxrrwTA0Dh9yHt2lrPJAPWzADMupQmFcOSN/u0wFI/yv35nHwmvd9hF3JnXr8E
	Y2TnZHGtDF9b3LW5L3ghhoJpqZebQaLo11zB4vdXxj4YWsaho25PUGMntDHtW6WzyF1O9uhnxkOw6
	P9ALAfUEleZThpMnseiUmUt6FPWsku0a1XHyqILx2BfgwjzB1zZjhvrtV5ohjK84zfFFTCr+BGHF4
	YSavWY9YLi30EKQDhl3P8M4j+UkqlxC2+nHP6ivSb9Rw+bHu7PNCbypGaZrw5Z5Pejkym2Pn7NlCJ
	ypftNFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWPE-0003es-P0; Mon, 20 Jan 2020 12:43:48 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWP8-0003dU-AP
 for linux-snps-arc@lists.infradead.org; Mon, 20 Jan 2020 12:43:47 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BB5B3C0516;
 Mon, 20 Jan 2020 12:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579524220; bh=oXvOkv/g+DSB9s9memGnpe42yEGS+yYzyPp/csrhI5o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hXlD8N22EJWcBWIA1PXVOJoM/MaP/Q/QW2G6w7zipGYAMCLRkjAHLL4gqRlaOpqjp
 kBQl3aWSAjAgvPQbifvZtVp5ZkhAdiT/GEKhTJmL332z+B7xMyvGPCbWUfKQkj0x9D
 17TnSqnhv+Dv+tpz5jrMTKxbhf3xNn2SzVOhcAmoxhC5NuNftkE9PKZJjwq/Xh/Tld
 GHRMX03phrqydoRj3SxmqZo/H0PSLT9n3dUrM2pGMAWLbV8cxw2MobLOlne1FAFhbA
 Xcwtdm/U8k3JogY+vudd7MdBRUlZmmmJtDU/CPcR+epSgEkGGvJYV9yZu43nlisJi7
 ow3I2jVKXlIGA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 18756A0067;
 Mon, 20 Jan 2020 12:43:39 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [RFC 2/2] ARC: Add support of bitops via generic implementation
Date: Mon, 20 Jan 2020 15:43:29 +0300
Message-Id: <20200120124329.3001-3-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200120124329.3001-1-abrodkin@synopsys.com>
References: <20200120124329.3001-1-abrodkin@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_044342_474130_2288AB53 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tom Rini <trini@konsulko.com>, linux-snps-arc@lists.infradead.org,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, Rick Chen <rick@andestech.com>,
 uboot-snps-arc@synopsys.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This allows building more things. In particular with
CONFIG_PKCS7_MESSAGE_PARSER=y we saw this:
------------------------>8----------------------
lib/crypto/pkcs7_parser.c: In function 'pkcs7_sig_note_authenticated_attr':
lib/crypto/pkcs7_parser.c:489:7: warning: implicit declaration of function '__test_and_set_bit' [-Wimplicit-function-declaration]
  489 |   if (__test_and_set_bit(sinfo_has_content_type, &sinfo->aa_set))
      |       ^~~~~~~~~~~~~~~~~~
  CC      lib/crc32.o
  CC      lib/ctype.o
  DTB     test/overlay/test-fdt-overlay-stacked.dtb.S
  CC      lib/div64.o
lib/crypto/pkcs7_parser.c: In function 'pkcs7_sig_note_set_of_authattrs':
lib/crypto/pkcs7_parser.c:572:7: warning: implicit declaration of function 'test_bit' [-Wimplicit-function-declaration]
  572 |  if (!test_bit(sinfo_has_content_type, &sinfo->aa_set) ||
...
  LD      u-boot
arc-elf32-ld.bfd: lib/built-in.o: in function 'pkcs7_sig_note_authenticated_attr':
.../lib/crypto/pkcs7_parser.c:489: undefined reference to '__test_and_set_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:489: undefined reference to '__test_and_set_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:501: undefined reference to '__test_and_set_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:501: undefined reference to '__test_and_set_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:510: undefined reference to '__test_and_set_bit'
arc-elf32-ld.bfd: lib/built-in.o:.../lib/crypto/pkcs7_parser.c:510: more undefined references to '__test_and_set_bit' follow
arc-elf32-ld.bfd: lib/built-in.o: in function 'pkcs7_sig_note_set_of_authattrs':
.../lib/crypto/pkcs7_parser.c:572: undefined reference to `test_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:572: undefined reference to `test_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:573: undefined reference to `test_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:573: undefined reference to `test_bit'
arc-elf32-ld.bfd: .../lib/crypto/pkcs7_parser.c:579: undefined reference to `test_bit'
arc-elf32-ld.bfd: lib/built-in.o:.../lib/crypto/pkcs7_parser.c:579: more undefined references to 'test_bit' follow
------------------------>8----------------------

Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
---
 arch/arc/include/asm/bitops.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arc/include/asm/bitops.h b/arch/arc/include/asm/bitops.h
index c6dd28ecef..daa07e80a8 100644
--- a/arch/arc/include/asm/bitops.h
+++ b/arch/arc/include/asm/bitops.h
@@ -19,5 +19,6 @@
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/fls64.h>
 #include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/non-atomic.h>
 
 #endif /* __ASM_ARC_BITOPS_H */
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
