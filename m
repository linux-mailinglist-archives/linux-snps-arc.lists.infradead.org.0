Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628B1B42DF
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F/6+wTWBRe1Ii1xgLSPe2HES+y/8DKMNyZDyCnChEIs=; b=leyphl4uayHRkb
	2Rkv7CnBAdQfGWYRaAm0G5p9PysTtAGNe5NO+vgB3Sv2I86ERmEnMOFFQapGoPI9KwfYewrkJW3UJ
	VdXeK0AiXaQhZKssXTIqwMtrw3FBsFWzqxvJ9KHVzDCYsFilJdz3h57kAPQc3WA9Am4HYR1NNeU1/
	E8K7bYTM9wRVW931ikF75WruNf1VsAd7RTNUNI6k93+p61tJiqf8t3kHzJQgqeL4Kxl5OP3cYaMuz
	cbvtnESHrY82S56y+SDwYKNzXQ/SRNTnLO4ObYGD5/I91wuvMg1+JVEanT8aK3crvQi+pDow75F3G
	epSJcgiPgBVBMvsV/h1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yOY-0007Kj-53; Mon, 16 Sep 2019 21:18:50 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yOV-0007KI-Fw
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:18:48 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4147DC010C
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568668727; bh=saWQmtyTR5y9txAq1nXPzyHnB0VdJFX84HFiVttcGZc=;
 h=From:To:Cc:Subject:Date:From;
 b=A8NYbNXkBPNWsXNLZJs2p++FGW1z7/dkoI/fW9YSWtaR2BG5AGvocihMndkTL0c0u
 j9Xcr0sLWDK5L9Wnkae7RqFyPzFt4Nl5Y/cyxFp2UbDRUPLn8oH8tyQ2usOso1PFNS
 RPJrjsNLJYMmaNqFklgiRbpfinVJfKsYDdPRAEPMu9g4+444rKfrTMiFFAH1RvysH1
 1RRP+Lnw6Pdkcrhr7F8MekiVbDOGPYmlYvGBW36OC1AiIBNQFIrY1715svmBE8hFn4
 To9WEa2T/z2BY7d6EB++kKcIDGtbdt1r/T2o1Ah7gqfOHYRRk1NJcwdkvmuJkm0Php
 ynLgaslhZPYBg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 27D59A006B;
 Mon, 16 Sep 2019 21:18:47 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Vineet.Gupta1@synopsys.com
Subject: [PATCH 0/6] ignore @ 2.18
Date: Mon, 16 Sep 2019 14:18:46 -0700
Message-Id: <20190916211846.10252-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_141847_537440_35A8846B 
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
