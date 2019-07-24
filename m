Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C70972E6B
	for <lists+linux-snps-arc@lfdr.de>; Wed, 24 Jul 2019 14:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tt8oIGzTTr865ImAg6zcPdNwuaoqztVIw3EMsOExoGM=; b=Vwcks2kN2mRGq0xWQkapD9KQZV
	ol8oRiRdS2Cuh6bmFNOj+xEHEL5PsvfUUf/vx04Vm4w0jomIq9cGuuYKw7/q2pcsAst71tcX7gd7c
	8mMnXIBMo3dzwEqesPuK5vvwcTvY7tj7LKb38OzPdKJtg+MWlvNOaJFxZwY6EFIQ++ujEoT3x5rZC
	lZsZYv0fjcsz+ABFVZ24m3XI0UEWzzk3he+/E6u9LU2Le7SF3AFq5jC6kN0oyHO3v++xxZfKQEThD
	xnNIUExb3jgAXX9H5MHJIOCPvRTfmONUaFP73G+SAgficeqVhurlHk7tAYLOVc15x5uroEjFHmCAF
	iBFGQj9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqG2w-0007LJ-BO; Wed, 24 Jul 2019 12:07:02 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqG2r-0007Dv-UK
 for linux-snps-arc@lists.infradead.org; Wed, 24 Jul 2019 12:06:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 22468C0BBF;
 Wed, 24 Jul 2019 12:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563970015; bh=Ig0atlwmgsMQV1c6ZCNpQe54UzgoUiNk3gRiTOLNySk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DYgW/+PGir4wJeVTED6d027cLJNBKFHIMUF4s8zDniqkNqSyPmFcL6k+fw57rUPKC
 edLvbWoqSYg0fZO2wnoNAGKs3GUGeLjoPx41H5PcIohEE7jSCZkRJUjW/yC4hsfK68
 8K/r4C6c7hJamRGl6iV7kb4coTTHC/zG8ZhNAEIQZBJPuJG0kO2P2DvJX6VSzjdJlt
 42l6VHwIACoIZ3eYBWwjcWp2E2yRY/K7ArMxYVHuaGgyJ5QlJnYMfh0LMPN8b3fsNr
 lDbempoY48jJCR8I/vZCXU6F1kTpgNjXfx2jQXfPXNyb8Z3+67g+KsCiZxaxkt28XJ
 EWBBJUlkUls2A==
Received: from de02arcdev1.internal.synopsys.com
 (de02arcdev1.internal.synopsys.com [10.225.22.192])
 by mailhost.synopsys.com (Postfix) with ESMTP id F3EDFA0057;
 Wed, 24 Jul 2019 12:06:51 +0000 (UTC)
From: Mischa Jonker <Mischa.Jonker@synopsys.com>
To: Alexey.Brodkin@synopsys.com, Vineet.Gupta1@synopsys.com,
 kstewart@linuxfoundation.org, tglx@linutronix.de, robh+dt@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] ARCv2: IDU-intc: Add support for edge-triggered
 interrupts
Date: Wed, 24 Jul 2019 14:04:34 +0200
Message-Id: <20190724120436.8537-1-mischa.jonker@synopsys.com>
X-Mailer: git-send-email 2.8.3
In-Reply-To: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
References: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CYPR1201MB0120.namprd12.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_050658_103329_7BF56841 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mischa Jonker <Mischa.Jonker@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

This adds support for an optional extra interrupt cell to specify edge
vs level triggered. It is backward compatible with dts files with only
one cell, and will default to level-triggered in such a case.

Note that I had to make a change to idu_irq_set_affinity as well, as
this function was setting the interrupt type to "level" unconditionally,
since this was the only type supported previously.

Signed-off-by: Mischa Jonker <mischa.jonker@synopsys.com>
---
 arch/arc/kernel/mcip.c | 60 +++++++++++++++++++++++++++++++++++++++++++++-----
 include/soc/arc/mcip.h | 11 +++++++++
 2 files changed, 65 insertions(+), 6 deletions(-)

diff --git a/arch/arc/kernel/mcip.c b/arch/arc/kernel/mcip.c
index 18b493d..abf9398 100644
--- a/arch/arc/kernel/mcip.c
+++ b/arch/arc/kernel/mcip.c
@@ -202,8 +202,8 @@ static void idu_set_dest(unsigned int cmn_irq, unsigned int cpu_mask)
 	__mcip_cmd_data(CMD_IDU_SET_DEST, cmn_irq, cpu_mask);
 }
 
-static void idu_set_mode(unsigned int cmn_irq, unsigned int lvl,
-			   unsigned int distr)
+static void idu_set_mode(unsigned int cmn_irq, bool set_lvl, unsigned int lvl,
+			 bool set_distr, unsigned int distr)
 {
 	union {
 		unsigned int word;
@@ -212,8 +212,11 @@ static void idu_set_mode(unsigned int cmn_irq, unsigned int lvl,
 		};
 	} data;
 
-	data.distr = distr;
-	data.lvl = lvl;
+	data.word = __mcip_cmd_read(CMD_IDU_READ_MODE, cmn_irq);
+	if (set_distr)
+		data.distr = distr;
+	if (set_lvl)
+		data.lvl = lvl;
 	__mcip_cmd_data(CMD_IDU_SET_MODE, cmn_irq, data.word);
 }
 
@@ -240,6 +243,25 @@ static void idu_irq_unmask(struct irq_data *data)
 	raw_spin_unlock_irqrestore(&mcip_lock, flags);
 }
 
+static void idu_irq_ack(struct irq_data *data)
+{
+	unsigned long flags;
+
+	raw_spin_lock_irqsave(&mcip_lock, flags);
+	__mcip_cmd(CMD_IDU_ACK_CIRQ, data->hwirq);
+	raw_spin_unlock_irqrestore(&mcip_lock, flags);
+}
+
+static void idu_irq_mask_ack(struct irq_data *data)
+{
+	unsigned long flags;
+
+	raw_spin_lock_irqsave(&mcip_lock, flags);
+	__mcip_cmd_data(CMD_IDU_SET_MASK, data->hwirq, 1);
+	__mcip_cmd(CMD_IDU_ACK_CIRQ, data->hwirq);
+	raw_spin_unlock_irqrestore(&mcip_lock, flags);
+}
+
 static int
 idu_irq_set_affinity(struct irq_data *data, const struct cpumask *cpumask,
 		     bool force)
@@ -263,13 +285,36 @@ idu_irq_set_affinity(struct irq_data *data, const struct cpumask *cpumask,
 	else
 		distribution_mode = IDU_M_DISTRI_RR;
 
-	idu_set_mode(data->hwirq, IDU_M_TRIG_LEVEL, distribution_mode);
+	idu_set_mode(data->hwirq, false, 0, true, distribution_mode);
 
 	raw_spin_unlock_irqrestore(&mcip_lock, flags);
 
 	return IRQ_SET_MASK_OK;
 }
 
+static int idu_irq_set_type(struct irq_data *data, u32 type)
+{
+	unsigned long flags;
+
+	/*
+	 * ARCv2 IDU HW does not support inverse polarity, so these are the
+	 * only interrupt types supported.
+	 */
+	if (type & ~(IRQ_TYPE_EDGE_RISING | IRQ_TYPE_LEVEL_HIGH))
+		return -EINVAL;
+
+	raw_spin_lock_irqsave(&mcip_lock, flags);
+
+	idu_set_mode(data->hwirq, true,
+		     type & IRQ_TYPE_EDGE_RISING ? IDU_M_TRIG_EDGE :
+						   IDU_M_TRIG_LEVEL,
+		     false, 0);
+
+	raw_spin_unlock_irqrestore(&mcip_lock, flags);
+
+	return 0;
+}
+
 static void idu_irq_enable(struct irq_data *data)
 {
 	/*
@@ -289,7 +334,10 @@ static struct irq_chip idu_irq_chip = {
 	.name			= "MCIP IDU Intc",
 	.irq_mask		= idu_irq_mask,
 	.irq_unmask		= idu_irq_unmask,
+	.irq_ack		= idu_irq_ack,
+	.irq_mask_ack		= idu_irq_mask_ack,
 	.irq_enable		= idu_irq_enable,
+	.irq_set_type		= idu_irq_set_type,
 #ifdef CONFIG_SMP
 	.irq_set_affinity       = idu_irq_set_affinity,
 #endif
@@ -317,7 +365,7 @@ static int idu_irq_map(struct irq_domain *d, unsigned int virq, irq_hw_number_t
 }
 
 static const struct irq_domain_ops idu_irq_ops = {
-	.xlate	= irq_domain_xlate_onecell,
+	.xlate	= irq_domain_xlate_onetwocell,
 	.map	= idu_irq_map,
 };
 
diff --git a/include/soc/arc/mcip.h b/include/soc/arc/mcip.h
index 50f49e0..d1a93c7 100644
--- a/include/soc/arc/mcip.h
+++ b/include/soc/arc/mcip.h
@@ -46,7 +46,9 @@ struct mcip_cmd {
 #define CMD_IDU_ENABLE			0x71
 #define CMD_IDU_DISABLE			0x72
 #define CMD_IDU_SET_MODE		0x74
+#define CMD_IDU_READ_MODE		0x75
 #define CMD_IDU_SET_DEST		0x76
+#define CMD_IDU_ACK_CIRQ		0x79
 #define CMD_IDU_SET_MASK		0x7C
 
 #define IDU_M_TRIG_LEVEL		0x0
@@ -119,4 +121,13 @@ static inline void __mcip_cmd_data(unsigned int cmd, unsigned int param,
 	__mcip_cmd(cmd, param);
 }
 
+/*
+ * Read MCIP register
+ */
+static inline unsigned int __mcip_cmd_read(unsigned int cmd, unsigned int param)
+{
+	__mcip_cmd(cmd, param);
+	return read_aux_reg(ARC_REG_MCIP_READBACK);
+}
+
 #endif
-- 
2.8.3


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
