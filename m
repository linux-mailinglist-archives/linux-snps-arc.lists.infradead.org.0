Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C3D141545
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Jan 2020 01:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aqYh36vcnosn+0SwzKZzMu3rjx8YpfGPiv7Sl3PVqRc=; b=iHLB1W2JRjcZ9m
	K9fAXWYqUhnjsSXxVV2hRPw+5pWskDbf+Z9HL7sG1DgM12V/hA0/D8Y311cTSPKZwYKPiMN7DUW7O
	XpmzwtRCg5isXNlpvhqc/JtsSXz4NPcZ6+OYaX4xhP42JlF88X4iexw5jsAVK+oZjU4tjYLKQwiuz
	Gi8s0kogb5fdc1lA7M7Af8QXsrBus4pRAAcU9Fa79dSvI9qe1579ZZZxUBnNWgHuSPlZgsBsRw+4w
	IfDWVTLMN7y0E18+sqc4KDJ3kaTizO0LzfHR70JXeZaNzlXzUpwSF+4WSRGITr75g0yCjpmeXjEbp
	QUsAf/7u2nKPlxIk6y2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscIg-0001gv-9s; Sat, 18 Jan 2020 00:49:18 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscId-0001fg-0F
 for linux-snps-arc@lists.infradead.org; Sat, 18 Jan 2020 00:49:16 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E138CC00DE
 for <linux-snps-arc@lists.infradead.org>; Sat, 18 Jan 2020 00:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579308552; bh=22eu4lOKnXeYOMUB8qFzTphau1tgmyQ2X2GDqxtxU4Q=;
 h=From:To:Cc:Subject:Date:From;
 b=WKk2qKk2hIF6HXlQr6WXTzoAyI7vBuVwetOyG8fEjhP1pZs3kAI8aVRnWvHRO9zuN
 lNRt4Yao1UuqHO1hXoGA6htP/aFJCd9KEqtFRygnPqzFELl92i3+X2xmwtyrtejPhH
 0B9xx7LqHHAuuGzOuEmFaTRFYH2USqJNau+T4NBAcoKkcwhyFdJypd7zAUsrF8U+on
 /l0GnWRViStr6DrJyzLi0GvCKLNkuS7C5+h15qlh42CAVBTH0anDP2XS3qy78++5t4
 D9zPljxonUEwWRgX9iUyUvV5L8KZzCCa0WKN4WkcGgaNnuDwlWaJ0NOVgwbNdGlEMg
 ZkSGWygiYKiGg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.29])
 by mailhost.synopsys.com (Postfix) with ESMTP id B941BA0076;
 Sat, 18 Jan 2020 00:49:05 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: linux-snps-arc@lists.infradead.org
Subject: [PATCH 0/2] ARCv2 FPU registers save/restore
Date: Fri, 17 Jan 2020 16:49:02 -0800
Message-Id: <20200118004905.30201-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_164915_103831_237F7EA5 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


Vineet Gupta (2):
  ARC: fpu: declutter code, move bits out into fpu.h
  ARCv2: fpu: preserve userspace fpu state

 arch/arc/Kconfig                 | 15 +++------
 arch/arc/include/asm/arcregs.h   |  2 ++
 arch/arc/include/asm/fpu.h       | 55 ++++++++++++++++++++++++++++++++
 arch/arc/include/asm/processor.h | 10 +-----
 arch/arc/include/asm/switch_to.h | 17 ++--------
 arch/arc/kernel/Makefile         |  2 ++
 arch/arc/kernel/fpu.c            | 29 ++++++++++++++++-
 arch/arc/kernel/process.c        |  6 +++-
 8 files changed, 100 insertions(+), 36 deletions(-)
 create mode 100644 arch/arc/include/asm/fpu.h

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
