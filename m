Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF15E1DD063
	for <lists+linux-snps-arc@lfdr.de>; Thu, 21 May 2020 16:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hWh6vuOZVu5p3N1O6ayVOfmC6ylBoRrimHcbuHJeqiI=; b=mdT
	DmLAo6eVB3fwOt+0oNhfTgJ9o8GiKAsfMqSC37mLNFCXtY5K33aiLh5DTnAyAyHPmEys9VrXNfylr
	g0k5IF9Q7o6jTyhp/mSWKkQOI2GRShZaY9P3lOI6/9vJn8tJ2GzpYuf2X8K9iVhyjd73vPLdR2N2z
	qtmd2MIuCS40PV6uCqOojFYr3kkPUsGhglM0PwDhrKiUI+26C2t6hJqIe7cyLw/F57oN79Q4LBwK7
	jVxBQLM1ZmQ8PlMeY/f1lncTBsVvAiF9qUbyw8wn1KsvORzaTq78xxgzudzdaQWTKITkwOk0Z8X8F
	aBILtIpepBc3R4W6wVFC+9h7LTZN4cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmQU-0002pj-L2; Thu, 21 May 2020 14:44:02 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmQQ-0002eM-Tm
 for linux-snps-arc@lists.infradead.org; Thu, 21 May 2020 14:44:00 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B87DF40933;
 Thu, 21 May 2020 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1590072236; bh=rgL44EnEgrpVVzhE3b5dAwCouZZTfZFny+fv4sxR10g=;
 h=From:To:Cc:Subject:Date:From;
 b=MbNJli3rsFLOYILTocxmw4hGxLMGpRQ/dx3kRpIi6AUiLGkOYxMrGRFVubygMVnNs
 2KAdczyTpCjeni42oDinNO8FvMeD/Zt+cWMRnrN4oy2zOS4E+ZVfaB6y7W4AjvpoYy
 uAnbXV4zQviuTIINuXBBEeKCmdQmIV2nn03gG115YXQjXEctreEbGbp5Rdsrh+dC59
 +bPGQYtdTFF+I1iuJv7p95NTHExCLuduYi4c4ZZNQhQ6gpz056DQlTNr7XZQxGz3oC
 mAOycLf+70XNk7YlnT1vUAfC+xstdfiPBm8rYEI7T+m4DlAo2WX9Ah17v/zZWPDcFQ
 RFLNSgfoznnmw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id CB578A005B;
 Thu, 21 May 2020 14:43:46 +0000 (UTC)
From: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
To: Shuah Khan <shuah@kernel.org>,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v3] Kernel selftests: Add check if TPM devices are supported
Date: Thu, 21 May 2020 17:43:44 +0300
Message-Id: <20200521144344.1886-1-Nikita.Sobolev@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_074358_986904_257C20AA 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tadeusz Struk <tadeusz.struk@intel.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Nikita Sobolev <Nikita.Sobolev@synopsys.com>,
 Joey Pabalinas <joeypabalinas@gmail.com>, Petr Vorel <petr.vorel@gmail.com>,
 linux-integrity@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Peter Huewe <peterhuewe@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

TPM2 tests set uses /dev/tpm0 and /dev/tpmrm0 without check if they
are available. In case, when these devices are not available test
fails, but expected behaviour is skipped test.

Signed-off-by: Nikita Sobolev <Nikita.Sobolev@synopsys.com>
---
Changes for v2:
    - Coding Style cleanup

Changes for v3:
    - Commit text message cleanup

 tools/testing/selftests/tpm2/test_smoke.sh | 5 +++++
 tools/testing/selftests/tpm2/test_space.sh | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/tools/testing/selftests/tpm2/test_smoke.sh b/tools/testing/selftests/tpm2/test_smoke.sh
index 8155c2ea7ccb..663062701d5a 100755
--- a/tools/testing/selftests/tpm2/test_smoke.sh
+++ b/tools/testing/selftests/tpm2/test_smoke.sh
@@ -1,6 +1,11 @@
 #!/bin/bash
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
 
+# Kselftest framework requirement - SKIP code is 4.
+ksft_skip=4
+
+[ -f /dev/tpm0 ] || exit $ksft_skip
+
 python -m unittest -v tpm2_tests.SmokeTest
 python -m unittest -v tpm2_tests.AsyncTest
 
diff --git a/tools/testing/selftests/tpm2/test_space.sh b/tools/testing/selftests/tpm2/test_space.sh
index a6f5e346635e..36c9d030a1c6 100755
--- a/tools/testing/selftests/tpm2/test_space.sh
+++ b/tools/testing/selftests/tpm2/test_space.sh
@@ -1,4 +1,9 @@
 #!/bin/bash
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
 
+# Kselftest framework requirement - SKIP code is 4.
+ksft_skip=4
+
+[ -f /dev/tpmrm0 ] || exit $ksft_skip
+
 python -m unittest -v tpm2_tests.SpaceTest
-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
