Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B91AB4306
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F/6+wTWBRe1Ii1xgLSPe2HES+y/8DKMNyZDyCnChEIs=; b=NFjwsWFyD9CAff
	vCbPKCCSZIbqILkJKm6g5lCv1q8MBPcF8jReXPLbVzTZ57dAY31SfMTCC7BuVcNKSpqvItTCUcT1V
	UZTQ4X0RCnAL+AjjaAXze9EpyHqPdyFoKcu9Wz0rzLWmYSr782KG77m6DvGMRw0j0XPoji4Zw/8AU
	rACaHGMtlNBjItHe8jKfuPTOrMRSkJieJ0sdgXQxhPnH0kQRWlh/EeORz+pzPQjz5Sz4z+bJLxp0l
	/tN1E6b9LAs+FUBpQBJ+znpYIrLSzqZ0Rhjh2y+qJtJoHvYdFzm8efgheIzBu/aQcQmzqeVk7hpjF
	ke3O8uFIeUtFq7nUOm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yWr-0002HD-CF; Mon, 16 Sep 2019 21:27:25 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yWo-0002Gm-3X
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:27:23 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1E462C0399
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568669241; bh=saWQmtyTR5y9txAq1nXPzyHnB0VdJFX84HFiVttcGZc=;
 h=From:To:Cc:Subject:Date:From;
 b=jp6RbiBXvV0eSm3XwWQU2/XjAssEKxUmVTco4P8MXsdPtx3iRhc+yYK/eVW5VV8l+
 bxksVhq68WCnNZKHgrGHHg4OarJ0wRhHM32X1KNjUGaHVYYKa9nB7SCcZSJjBJkh8m
 +JUWecbiXPuTlLepiRvVPEIPd7KRR5JTdJ9GJECv8fr5muw/to4pezVu++t920V2sA
 EW0HYz1Oe8nkiArwBNnWEcLMwWgOYb/UQrXoQGNtLPokoVqITd80IGT6+KEUK/OBZT
 rJX+gudQc/hgtYd+nzHdtbmxXEInWQXvzkHMKsQNOydULdi09XbP9//uw4Bs82tvlF
 liwPyl3iOoMbw==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id D4975A0095;
 Mon, 16 Sep 2019 21:27:20 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Vineet.Gupta1@synopsys.com
Subject: [PATCH 0/6] ignore @ 2.26
Date: Mon, 16 Sep 2019 14:27:19 -0700
Message-Id: <20190916212719.11916-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_142722_158875_EE74EEE1 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Ignore

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
