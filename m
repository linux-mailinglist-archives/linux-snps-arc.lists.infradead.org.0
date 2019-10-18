Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392BDDC3B1
	for <lists+linux-snps-arc@lfdr.de>; Fri, 18 Oct 2019 13:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=32JgCSQUS1Ww1gMIMbBU665XUU0xT3b4O0eCB3QgiPY=; b=ZAue1h8LbFvPuc
	y5FvlGqMG4y/DDTBS93Ion03mxMJd2YYtP1lieeoH25Jo6jiTouna0Co4Q1AJXdbP29PkQTLYuNu1
	39B/v/E/CRClB2f836/iiu05GlNXrhYsnSGowvz0INDi/zxD2enbXge7KK8tykGUldfDI2YxSSA3p
	cNB3dorMT+AhIS+bc/HEHSrl+JPvAkX1sE98IG77hBiYOioeKUq/qQfw0vcTjcFjjcZlB0jfb95bF
	Da7xZn4qfJedD7MeSy7c2DQbglHqsivooYKghyw44Ya2eLX8+m4rabqur+EXKBA/KUXPxLD1U3FoS
	/6n8z4OM+sDwSwywWsFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQAW-0006qK-0R; Fri, 18 Oct 2019 11:11:40 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQAS-0006oH-QH
 for linux-snps-arc@lists.infradead.org; Fri, 18 Oct 2019 11:11:38 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 77C90C038C;
 Fri, 18 Oct 2019 11:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571397096; bh=e8yggv0btZRuFr6l3qUhzUGs2B07uTUAhsF6E9pwFQ0=;
 h=From:To:Cc:Subject:Date:From;
 b=JAfzKRqJN/knBHIhtODeGolVsw1cKqnMa1YJSUxdFInIDBEhcjf2RnOv3fPheaafQ
 104PIuQEajrdUI4Ubn2r10ogn+aNYlNbCqbTX3aEVflgU/lqwcs5rhk9pGIvM+by3J
 6wcEi7pao5nwpINOCkjQJNfjn2eew+f3yCgwRRjLV/HvQCxoX579aNdElExrV4ReTk
 NJmxVcAQbpx9tHMHl2JSuSO1F/AnL6BZdlJmVY5dhQpp4FVcWt1RyUh+nVel35VdeI
 qn4zRKRuHQjm3JeZrhmwC3vJ5DiEFVokTf88garIOFubFPfPwdM6H5FxC+mQdqkQXx
 4ca00S6sIV5lA==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id EAF6AA005C;
 Fri, 18 Oct 2019 11:11:28 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [PATCH 0/2] ARC: [plat-hsdk]: enable on-board SPI peripherals
Date: Fri, 18 Oct 2019 14:11:24 +0300
Message-Id: <20191018111126.5246-1-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_041136_866369_D123BA12 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

HSDK board has SPI flash IC and SPI ADC IC. As all SPI-related
blocking changes/fixes are finally applied we can enable them.

Eugeniy Paltsev (2):
  ARC: [plat-hsdk]: Enable on-board SPI NOR flash IC
  ARC: [plat-hsdk]: Enable on-boardi SPI ADC IC

 arch/arc/boot/dts/hsdk.dts      | 23 +++++++++++++++++++++++
 arch/arc/configs/hsdk_defconfig |  6 ++++++
 2 files changed, 29 insertions(+)

-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
