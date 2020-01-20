Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4495142B14
	for <lists+linux-snps-arc@lfdr.de>; Mon, 20 Jan 2020 13:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2Gl7tpn3tbBNJOgC2ZVmM05I59Fs7g+LJslYPnWt1UQ=; b=Klu
	ENF8X9aW6+WZXiMF+4IQTDie8ITU2jrkMeOKljI3nYrQJut7M1Nui8mA2Ens24mBSde858cX20RO/
	+EDVW9CIUsgTQgZWkQqw8xwGez6jx055NnRs4VMInI0reIpXaUoK5bdtKFJ8jn/r1XKqyr0grPFej
	eAeI0c6Zmtf45YTC6l1ktu1BIZ65mUlV3z3LuVXxzujwm+mRHT2V+rY85KoRXfZ+r165jDgRB7h0E
	lvA93vlHLOfdc6QvXY9+e26hfL6Inbe9CcVL0Gp+Vsp+wnjrkvWa6TFSz94KETKC01/nbhjJvJgGK
	O1Zjot2QKrg6oEPJpRoEhuYyXnzvk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itWPE-0003ei-K3; Mon, 20 Jan 2020 12:43:48 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itWP8-0003dT-AN
 for linux-snps-arc@lists.infradead.org; Mon, 20 Jan 2020 12:43:47 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F34FEC0509;
 Mon, 20 Jan 2020 12:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579524221; bh=UWFecNOb93wNGKxdHDt6TXUP7WNvY6FF01sN6ODcxVc=;
 h=From:To:Cc:Subject:Date:From;
 b=CuyxfP45zkYcDaP0C2OythDFaAZHRoJwxKjJ0zK23pl4xthZX+AF51/BWHPj7DNuC
 YM6UQf3AoFYgn+ejQ2SbahwehLUAXVZoLonW+UsBHp4sEZXFL7WSS4BcLOl4GcU2VV
 LsQbR4f3sWJndMuLFbvZHsEPpcmdQj6UFxpev0czuCHLSSaK3OyY/y/id5xZbuUnxS
 mNu9CKYN6u3zkZACLJKfHxNAA45VGjSZFu3c7zAVQj46Ezc41snxbe2859QYC0nKjp
 /S6+BHEu5iktzzfVdAWHJloNHUoHNLMBCU2aR9+SJLqu5ktSchwUYfr/M6oFHlEYqz
 kAL+SAXpEs71g==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5C1DBA005C;
 Mon, 20 Jan 2020 12:43:37 +0000 (UTC)
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: u-boot@lists.denx.de
Subject: [RFC 0/2] Import and use non-atomic bit-ops
Date: Mon, 20 Jan 2020 15:43:27 +0300
Message-Id: <20200120124329.3001-1-abrodkin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_044342_417390_5C0F8E04 
X-CRM114-Status: GOOD (  10.45  )
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

The following bitops are implemented pretty similarly for many
arches and now when we faced a need in them on ARC I guess there's
no point in copy-pasting them yet another time but instead it might
be better re-use generic version from the Linux kernel.

Since we had non of those bitops for ARC inclusion of imported header
works perfectly fine. As for other arches I do see they use a bit different
implementation but those might be just older versions etc.

Sobefore breaking stuff for other arches I'd like to get some feedback
from maintainers. Or we may just import proposed header and switch to
its usage arch-by-arch whenever people feel kile cleaning-up their bitops.

Alexey Brodkin (2):
  include: Import non-atomic.h from Linux
  ARC: Add support of bitops via generic implementation

 arch/arc/include/asm/bitops.h           |   1 +
 include/asm-generic/bitops/non-atomic.h | 109 ++++++++++++++++++++++++++++++++
 2 files changed, 110 insertions(+)
 create mode 100644 include/asm-generic/bitops/non-atomic.h

-- 
2.16.2


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
