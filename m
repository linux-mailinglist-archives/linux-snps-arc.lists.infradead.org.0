Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2699DC488
	for <lists+linux-snps-arc@lfdr.de>; Fri, 18 Oct 2019 14:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH+2Wqi+7y+Nkui6uU2viyjfmY1Iq5MyoNZfsSwi4dY=; b=mrw2B/yGBSGCxk
	2i25Ag0+sekJTIa6YRjTBrsi/pH2UHnvtoiUK5XJqIyE5Ck6Qf5bqG6/06NrmAnoCMlhXJSeLKNkJ
	JgRIcxWsXp9uQhx5uNjXKrdrAV0clj0oUJh5350xiZEOYlj7Epz1IIAlt5nd1eiE/Ej+tGJ2O5zaM
	3SWsX6NXxwomoKTs8yHlNfw6sHb3MVc17HyF1NTrPWtM9hS9m0IwgAEJ02nQXyv2d6+pgvxXieMB9
	Hyfb+SSE1wdx1BBbUTj9d+G7QQffQuRbAiwJP87dCdF1E2C3ECpYqg6kPrXN06omQOD7Yud3cNT3W
	yrS7G+m46rPVhitvioaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRAj-0007De-Jr; Fri, 18 Oct 2019 12:15:57 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRAf-0007Aa-PS
 for linux-snps-arc@lists.infradead.org; Fri, 18 Oct 2019 12:15:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5975EC04D7;
 Fri, 18 Oct 2019 12:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571400951; bh=oQQShnjm5R0MR/xjv312sQ6gQ7J+z4O6hvMy/a53QQ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Evvf5DHGG7VfVLWRKmvc8rRiZVi3Qxi7atXeNgJ54Nl/mqE4NqWeq8GWpaKNh2tsy
 BmolhZsh4uSf1pTIQFm1TkXsBY79ZAaeeAvlWY2hU2W11GkF9EdS12yot+l+NNfOUN
 A7ZmrLEKK9A3BAJxy2FWcA+FQqNU29zCRaNpRClzANrBwJSUd8Cv/BBLKQz17L5VAY
 HA4w2K/DtimhvZt1LB5fJIDzlLeTbcMqCpt6eYkyznpISkCDrNut+uuFoanr+I0+cf
 uJ4tKECNqKNpGeEM1uDUQNMMLpLTv8fxkopmSkISUD/fceknO7B1pjNcCOWm+FK5Zw
 oZroCuxRoVOvQ==
Received: from paltsev-e7480.internal.synopsys.com
 (paltsev-e7480.internal.synopsys.com [10.121.3.73])
 by mailhost.synopsys.com (Postfix) with ESMTP id 542A1A006D;
 Fri, 18 Oct 2019 12:15:49 +0000 (UTC)
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: linux-snps-arc@lists.infradead.org,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: [RFC 4/6] ARC: HAPS: add HIGHMEM memory zone to DTS
Date: Fri, 18 Oct 2019 15:15:43 +0300
Message-Id: <20191018121545.8907-5-Eugeniy.Paltsev@synopsys.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018121545.8907-1-Eugeniy.Paltsev@synopsys.com>
References: <20191018121545.8907-1-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_051553_873959_8BA3E975 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This is required as a preparation of merging nSIM and HASP
defonfig and device tree.

As we have HIGHMEM disabled in both HAPS and nSIM defconfigs
this doesn't lead to any functional change.

Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
---
 arch/arc/boot/dts/haps_hs.dts | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arc/boot/dts/haps_hs.dts b/arch/arc/boot/dts/haps_hs.dts
index 11fad2f79056..60d578e2781f 100644
--- a/arch/arc/boot/dts/haps_hs.dts
+++ b/arch/arc/boot/dts/haps_hs.dts
@@ -9,13 +9,15 @@
 / {
 	model = "snps,zebu_hs";
 	compatible = "snps,zebu_hs";
-	#address-cells = <1>;
-	#size-cells = <1>;
+	#address-cells = <2>;
+	#size-cells = <2>;
 	interrupt-parent = <&core_intc>;
 
 	memory {
 		device_type = "memory";
-		reg = <0x80000000 0x20000000>;	/* 512 */
+		/* CONFIG_LINUX_RAM_BASE needs to match low mem start */
+		reg = <0x0 0x80000000 0x0 0x20000000	/* 512 MB low mem */
+		       0x1 0x00000000 0x0 0x40000000>;	/* 1 GB highmem */
 	};
 
 	chosen {
@@ -31,8 +33,9 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		/* child and parent address space 1:1 mapped */
-		ranges;
+		/* only perip space at end of low mem accessible
+			  bus addr,  parent bus addr, size    */
+		ranges = <0x80000000 0x0 0x80000000 0x80000000>;
 
 		core_clk: core_clk {
 			#clock-cells = <0>;
-- 
2.21.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
