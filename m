Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6776B05F
	for <lists+linux-snps-arc@lfdr.de>; Tue, 16 Jul 2019 22:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3+/JPGgZQ7u1G9g+OpyeQB0la4/mDHE+k7/BGE+S8o=; b=q6E38426K8S0Dv
	YiVgFhOCAzrM64xomivlB2GSSxh7hkh7mXZzeJpF8Z2CXNluj4Dp4CeJ3lYDq1SvO1pKu9YyK++pl
	IW414Pmicc/uMpcnp/jHfZb5JlF5gN+w8lmfKVkthpKNJljZ8j8naWcEgSm3lADOUSv9OmW1phfZi
	RxttM3ahmiMJRQSjuIdRT84vXPUxKhuVthv5ehE2DCod+aqWAGPJrGRlsLmUneyt8ZplYMJ1dTjIO
	4+2AUpHYMkt19aqMoluoNgpJeeMCJYGfBX/vkV03hNoFVjutkSdixjsQKqIyulm9x6VMMJB7AUuWa
	xY+lWiYV/iVoT6KHQY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnTz3-0003wY-2B; Tue, 16 Jul 2019 20:23:33 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnTyz-0003vh-UP
 for linux-snps-arc@lists.infradead.org; Tue, 16 Jul 2019 20:23:31 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 52795C01D7;
 Tue, 16 Jul 2019 20:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563308604; bh=CG0uLvziQuRhYQEQ927zN/+rv7rwcVJ1fR/mpnS3VyY=;
 h=From:To:CC:Subject:Date:From;
 b=MHx4fb8zzg4KC5QkrxmuqlZJdwAMHQjb6z77U1pO71aHKV/6H7FjwDgnvFBfuVuXt
 GkPTl37ZacwoispME90O4j/ZRRPCWdtgkErnxlzbjYU8r9dqGezeKe/CISRXniIint
 XZzsadxuwGqWlxueBJ3fUIhxob58q2AnCKa6Lzsnz6JCxfLf9Ilms+4udcgMEpJSwx
 3ZILFfIY5yMiUnnEK5RrkijcYob+pgXtAEJ8+Xd8yvpkO2V74j4YSsFsyasek8Ftdf
 dPSt2bnPO7WJGCEPsrb9Yi1MOM39v2GAT2dR7ZL1XwNhCkp8JiWann18yDDhZHylG4
 0JDn8QTNE+3DA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E1A9AA006D;
 Tue, 16 Jul 2019 20:23:11 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 16 Jul 2019 13:23:01 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 16 Jul 2019 13:23:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2J8UNbWTdn2FZuhT+JUAbjkc6cuocDF2jrRYoI8fiBpLi6d6lTgKJ0DhxUlSwieVKcjgpllI+3RihjsGNy+CKaGKDEwxWd0sop+eGCCqoq61WJan0vOpVbBqtTVD3OxAlpPG0R/0hnDINCQGOrkuIHX6xFR2/0bYGdzh1XylARXaKmxqXOBur8cfo8WJ0sWHNrHPli45tsj58yKa2qLDPLTsuO7nE/VLN3g2QH1+dm6c0itbtAZanoVO13GbRzlB2nQseVFdxhe5lMeKSx5tDYfP9pbN/1GaF1ZpYsaNjFuln7TpZfZzK7K2v+dJ4/TieVpnLSuFE9syG03Nzk02A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CG0uLvziQuRhYQEQ927zN/+rv7rwcVJ1fR/mpnS3VyY=;
 b=ZULAnuPO1gcecWCmcskHtQr40r70yztPmWYN/Pr7d2v26ZTcKPCo5PqUwvY4mAfR5pU/Lm8UTUOOtLMPUIZts+ZqBqFmHYaNInBFt0QrConxOPmCgamxp5hBnaMgWz+bozfs+xFfOY/XbyyvEmVfqnMDQGG1dVkXecbwFBJCVVx2akqt9Axn+yNsqRMFTiMjCw+KOzCFzOBQF4pgUj5dOKCCuPHNQqDlK+U0XbHOYb07Yd1HaQaJ1EHLdRAjAtx0rx4GZlWL6Yq6oSUZN4tdTF/rihf4qToe2ZNaM3muX2xn9xEKA4Ka9KH0q+8IqDkHLuaNKfE9w1G//xEcMZ9zrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CG0uLvziQuRhYQEQ927zN/+rv7rwcVJ1fR/mpnS3VyY=;
 b=E3MHzowp++e4w2Z5JmSaZvEfwAe2bRvyLQJ+aHZOVhPUU9Y0ZoWBhPmbK3wi+gVr6bQ5HvaRnctW2ohS7AKtqSA79nwgaY+3TaXYICWl4n+R51t4LDon0KDQRA6zC88+98d3MeETVAgpUZXXq1Gg0eAQtJdxbEGUboRGjRrw/Fo=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0130.namprd12.prod.outlook.com (10.174.116.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 20:22:58 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::24a0:9726:b1f7:fb3c]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::24a0:9726:b1f7:fb3c%11]) with mapi id 15.20.2073.012; Tue, 16 Jul
 2019 20:22:58 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] ARC updates for 5.3-rc1
Thread-Topic: [GIT PULL] ARC updates for 5.3-rc1
Thread-Index: AQHVPBRCHpBudYy3jUKEd/4lOklWzg==
Date: Tue, 16 Jul 2019 20:22:58 +0000
Message-ID: <99fc2ead-d7d8-1c54-b493-02e79e2fc24e@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BY5PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::14) To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mozilla-news-host: news://gmane.comp.lib.uclibc.buildroot:119
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2dc1aba6-fe58-4c90-4a7b-08d70a2b6491
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0130; 
x-ms-traffictypediagnostic: BN6PR1201MB0130:
x-microsoft-antispam-prvs: <BN6PR1201MB01303856C7226012CFC42918B6CE0@BN6PR1201MB0130.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(136003)(396003)(199004)(189003)(5660300002)(65956001)(3846002)(54906003)(6116002)(14454004)(305945005)(66066001)(25786009)(36756003)(65806001)(6916009)(7736002)(68736007)(14444005)(58126008)(256004)(316002)(64756008)(66556008)(31686004)(52116002)(2616005)(66446008)(6506007)(102836004)(386003)(15650500001)(186003)(26005)(66476007)(99286004)(2906002)(65826007)(81166006)(6512007)(81156014)(53936002)(8936002)(71190400001)(478600001)(64126003)(6486002)(476003)(31696002)(66946007)(8676002)(86362001)(4326008)(71200400001)(6436002)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0130;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZiivyXrEGRU46+R9h4Qw6C9Uk8ylK5NY4YpoNwKNPdnOL2v7m73UNQy2/lndYa5u3m9DQWAFE8tX476GsH4CAm00Pl0kI1AmdXY1JUjcnMzKtJQY2QxdSDb93uJWCryY1o19SWyBAN9nCgkmmt1lglvwz9WLklV2sk93K47vyMz/jxC7m43tvURaVcMVU2Uv/zuh0No3oJN3Nj1gKMYOAZOKD7sbbKXaS1XGxTNTvMIoaxJjM+gGoHYuwNtU75r1u7fglm2El4iJ+mG7/uoiFQuSN00HoSfQbNZue3sllI2FvzJiQaxo1MQfqWunZK+Fbtm1kyi19SWCukdyrK+NthJSIZbc/RahV16IrXsJyoKA/5k3gIpTt9TkhV3yQJa9BVfHmq4bLQoyeTFOjTb6LzJglFZpUm5bqOdIB6JWWHg=
Content-ID: <AF1BC1D8C4EED74194E7553D842DD627@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc1aba6-fe58-4c90-4a7b-08d70a2b6491
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 20:22:58.6527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0130
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_132330_073125_033A6E28 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Linus,

Bunch of changes for ARC, some long due, for the new release. Please pull.

Thx,
-Vineet
------------------------>
The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:

  Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.3-rc1

for you to fetch changes up to 24a20b0a443fd485852d51d08e98bbd9d212e0ec:

  ARC: [plat-hsdk]: Enable AXI DW DMAC in defconfig (2019-07-08 09:24:47 +0100)

----------------------------------------------------------------
ARC updates for 5.3-rc1

 - long due rewrite of do_page_fault

 - refactoring of entry/exit code to utilize the double load/store instructions

 - hsdk platform updates

----------------------------------------------------------------
Alexey Brodkin (1):
      ARC: [haps] Add Virtio support

Arnd Bergmann (1):
      ARC: hide unused function unw_hdr_alloc

Eugeniy Paltsev (2):
      ARC: [plat-hsdk]: enable DW SPI controller
      ARC: [plat-hsdk]: Enable AXI DW DMAC in defconfig

Vineet Gupta (14):
      ARC: mm: do_page_fault refactor #1: remove label @good_area
      ARC: mm: do_page_fault refactor #2: remove short lived variable
      ARC: mm: do_page_fault refactor #3: tidyup vma access permission code
      ARC: mm: do_page_fault refactor #4: consolidate retry related logic
      ARC: mm: do_page_fault refactor #5: scoot no_context to end
      ARC: mm: do_page_fault refactor #6: error handlers to use same pattern
      ARC: mm: do_page_fault refactor #7: fold the various error handling
      ARC: mm: do_page_fault refactor #8: release mmap_sem sooner
      ARCv2: entry: comments about hardware auto-save on taken interrupts
      ARCv2: entry: push out the Z flag unclobber from common EXCEPTION_PROLOGUE
      ARCv2: entry: avoid a branch
      ARCv2: entry: rewrite to enable use of double load/stores LDD/STD
      ARC: entry: EV_Trap expects r10 (vs. r9) to have exception cause
      ARCv2: entry: simplify return to Delay Slot via interrupt

 arch/arc/boot/dts/haps_hs.dts        |  30 +++
 arch/arc/boot/dts/hsdk.dts           |  14 ++
 arch/arc/configs/haps_hs_defconfig   |   5 +-
 arch/arc/configs/hsdk_defconfig      |   5 +
 arch/arc/include/asm/entry-arcv2.h   | 361 ++++++++++++++++++-----------------
 arch/arc/include/asm/entry-compact.h |   4 +-
 arch/arc/include/asm/linkage.h       |  18 ++
 arch/arc/kernel/asm-offsets.c        |   7 +
 arch/arc/kernel/entry-arcv2.S        |  62 ++----
 arch/arc/kernel/entry-compact.S      |   2 +-
 arch/arc/kernel/entry.S              |   4 +-
 arch/arc/kernel/unwind.c             |   9 +-
 arch/arc/mm/fault.c                  | 185 ++++++++----------
 arch/arc/mm/tlbex.S                  |  11 ++
 14 files changed, 377 insertions(+), 340 deletions(-)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
