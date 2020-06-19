Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DABD201E96
	for <lists+linux-snps-arc@lfdr.de>; Sat, 20 Jun 2020 01:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++Lu8NkjeH53KguVe+PImI56xAKErEFcRb7DtdgDiz4=; b=YCLfLo3nOpv5Ff
	vdoxQH7KhxB2tcJKCGmyTOcEqKeV6YgT7tZrF8PtOryLrQ7HZSdE0ru3mJactEIdRt9ZMOCaa+e9g
	I6NN08k4fhIwiYhHcY+NPcCKiEfE2sZJ2A73kcGpFJq5SAF8oJp+0Kp/8dAeYyk5qR0eRuyINfkjK
	M7va0OsAKRlXeW1tALhtC4hSxjRw6+1Utn0ge1GrbKFVGwWguMoOZLQ4V7ddTrF2w67XNYdcxcMz1
	CTD7W65IqWoYM3+w607rFkG1eAc1OVXjXSsa61GemoO5UZelWq4wxRFBfupAnFz95CpXsOZ4HhUgz
	9/30q1JJNnRFfoAXaylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQOt-0001Tr-TF; Fri, 19 Jun 2020 23:26:23 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQOr-0001L9-0u
 for linux-snps-arc@lists.infradead.org; Fri, 19 Jun 2020 23:26:22 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 18E21C007F;
 Fri, 19 Jun 2020 23:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592609179; bh=+fSt7TXNfkQqOIt4mfAZQSOzzkGLs2eChIEuCSC+HjU=;
 h=From:To:Cc:Subject:Date:From;
 b=Gcbbtkt3E9tPbOyAj9URCwdsl+GiuZkHB73cY0zI6JWcQoqvbVyL3xkh/46k34YpV
 aFwkikaFcYaBYca5GSQV+gBtXOH8RlnWr5vE61w2y/p1wv5kB1mICzxaHlIemD9a2p
 1QN+P7F8TdKMmI/a5gCmie4kuGx75rYiNv6O6mNM/BjoJZEJMG/1cUz5Zj2FFKlS8a
 abblf77CJ4i1FKT+PFgadSqJo9WRrZON+zZU1dZS3fKhbF/I3p1OMizkfgJBlH4xQX
 FbOP5d+spun8Se9xdLhZSDjWpkI0rH4aWnTaEinxPBJk3qWnjxY5CNWCP7OIv0bc7S
 vVG1lpSCdVicg==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0500CA0246;
 Fri, 19 Jun 2020 23:26:13 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: numpy-discussion@python.org
Subject: [PATCH] Revert "FIX: no FPU exceptions bits on ARC glibc"
Date: Fri, 19 Jun 2020 16:26:07 -0700
Message-Id: <20200619232607.4873-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_162621_108367_C847181E 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

ARC glibc has supported fenv.h for quite some time, for either
soft and hard so this workaround is no longer needed.

This reverts commit 1125f1ee33324bc91b4e8dd9da49163af572d04a.
---
 numpy/core/src/npymath/ieee754.c.src | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/numpy/core/src/npymath/ieee754.c.src b/numpy/core/src/npymath/ieee754.c.src
index 3f66b24a4c84..f3f15f84152b 100644
--- a/numpy/core/src/npymath/ieee754.c.src
+++ b/numpy/core/src/npymath/ieee754.c.src
@@ -682,7 +682,7 @@ void npy_set_floatstatus_invalid(void)
 }
 
 #elif defined(_MSC_VER) || (defined(__osf__) && defined(__alpha)) || \
-      defined (__UCLIBC__) || (defined(__arc__) && defined(__GLIBC__))
+      defined (__UCLIBC__)
 
 /*
  * By using a volatile floating point value,
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
