Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43492B42D9
	for <lists+linux-snps-arc@lfdr.de>; Mon, 16 Sep 2019 23:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F/6+wTWBRe1Ii1xgLSPe2HES+y/8DKMNyZDyCnChEIs=; b=Ax7Ko+LnXk8yzE
	//d09GP1VufQWBvYir7etD5ZL1bGiaWueP7JSTKG/MPrja4/wogN82PBR01Wlsgrk28YsqgrtUwcm
	/8t2iKMxcalXKMaAhqJHjQgFDw0FriGWFYNA4SvrOfz7BFIwDG8YZiKar1JI6zbUq5VCue2uOZCd8
	j9jzxs3OxGt029H1CW1YB0u9ipf9JwnqmwC5YID+uqoKH4z9WbrKbNBCbPOPMaKqWPX/lh7AwktUC
	F58jzjq/5Risy19hTyLm/Wb2Qfy8w6IFr0LQlzfKRktbKtzvUW+7YamZWi2OwgT7Yf5rDGQsKfvCS
	ZQhFHKUfbMchQYEhT9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yMr-0007Eo-Nc; Mon, 16 Sep 2019 21:17:05 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yMp-0007EN-3h
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 21:17:04 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 48D0FC014D
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 21:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568668621; bh=saWQmtyTR5y9txAq1nXPzyHnB0VdJFX84HFiVttcGZc=;
 h=From:To:Cc:Subject:Date:From;
 b=k7DUJNMKvDLbCU9DLF7m3zAI+RZNgWxGTSPgrhWmoOIYwQ/V6DiSxqbe1SDSveA2I
 NKfjI+ymNYrSmIRpKecToSGI374ryNc7E7gCNWSrMb1eL21RED8gsBUdv8A2wz5r/8
 rbyrGJNI0fa4ttDkB+gyUThyqVfzni0i/CTJqi5nozzr9Mp0/msb6xpobIrzHP2/GB
 x8IuqVGpiooBA1IG6OEgH/tnf4gHT9Ffl+NVqJ46GKn3w1coelGdpoh5RkG6HEMBfW
 D23WH8xzfe8sxmbYrCsnSfnS4EkM9k6ay8hEexlo0AVxGUDh/7sn44XXebjrO/A6MW
 4MBdjvX2a0GTg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.61])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0C156A006B;
 Mon, 16 Sep 2019 21:17:01 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Vineet.Gupta1@synopsys.com
Subject: [PATCH 0/6] ignore @ 2.16
Date: Mon, 16 Sep 2019 14:17:00 -0700
Message-Id: <20190916211700.10170-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_141703_159195_FAF40A5C 
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
