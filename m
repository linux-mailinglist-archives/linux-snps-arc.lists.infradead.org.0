Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3586F9462
	for <lists+linux-snps-arc@lfdr.de>; Tue, 12 Nov 2019 16:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Snxi0hNpH4gcewmsogKr5Rv03mBjFgztquucgbJ1u0=; b=ZSMgmHiawFwrOP
	XBKLwHlp1Li0gd43KvL+d/yA4l2Tp/avSY0o64oYM4trO5KcktHAoqZCXJs5cB+j199Z92BO4/ldL
	7yJ9DeiK+rH7vse+U1xBaWLeGG2e5dciFNVhGAlReoqzTTFGNUJHf1qBRfmyCVx4P4VOFaD+wrz2u
	YZrW6jiVkwPAKYtHTgy9OaAQ1hYicwLuZy8fqb4+n5AzTFvb046nIPgRDl/COf+EIrAPW579DekIw
	UCB9FTSy6cKMa8/Yb/k0LyWoNFPoNDqOizy30iFbaIygdZa9E9ziIHO+Cj3Vun67aJByhfMG3meRh
	d4Bwd+CqKhHDoKW/S9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYC0-0002vc-CK; Tue, 12 Nov 2019 15:34:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYBx-0002qc-Fc
 for linux-snps-arc@lists.infradead.org; Tue, 12 Nov 2019 15:34:54 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A8312C08DE;
 Tue, 12 Nov 2019 15:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573572887; bh=tEpVRt3ZCcfwzbFRLrvzhIyoWE+nER6SaV8WyUX+SSc=;
 h=From:To:Cc:Subject:Date:From;
 b=bpL/CbCl5W8bF+txgz0+10xqcbAOOnGWVvaCdW8X6QjPIXxKTEWcUp5EGUp6xp9dC
 If/fC82OZLkfjhw11RolkQHJxESzr/qAk3YlDL6fwuaHKeV1X0r/Dxz//rKOSM84Nv
 CyUCEjj5G7PQZdxR9RtTKiNWOiG1XTLcbcgJ7+fy+5PVgeSRzY3kr9h88oLU0WeNwD
 DScci+JcV1w3Ja9gTBIbbIzJJyTh+HQ/HItoAcUx/ZToWNQZW4m17oWq7Mj5O/lfZk
 ouS1njPm3vFT38PYI8sAk341zBEKRLpA6SkrEws3+mfs7x/V0eDLml5Crp1N1lZo+n
 02u88CYXSNkAg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com (unknown
 [10.13.182.230])
 by mailhost.synopsys.com (Postfix) with ESMTP id 061D9A0066;
 Tue, 12 Nov 2019 15:34:44 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: buildroot@busybox.net
Subject: [PATCH v2 0/1] ARC updates/fixes
Date: Tue, 12 Nov 2019 07:34:42 -0800
Message-Id: <20191112153443.15715-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073453_559449_5F8B8FA8 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

I have some fixes/updates from ongoing glibc work.
Please review/apply.

P.S. retaining the cover letter despite 1 patch to capture the revision
history of original multi-patch submission.

Chances since v1
 - 1/3 reworked as suggested (details in patch itself)
 - 2/3 dropped as it didn't seem to be adding too much value
 - 3/3 dropped as it is accepted upstream

Thx,
-Vineet

Vineet Gupta (1):
  arch/config.in.arc: Introduce the ARC optimized hs38 config

 arch/Config.in.arc | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
