Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3575A7D4
	for <lists+linux-snps-arc@lfdr.de>; Sat, 29 Jun 2019 02:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WMWhBl3AP9LHyDlVODzsK5UoHBvO/6f2O10uFsJfqHs=; b=VDJ8VgCoTbJUTI
	kZJ7qqntivcTlfR4bYjbBx1s/7eY2W+ggwFk8KPKH3UQVien/QHXFQmPdRNmBCYeGapA4NyAevm3W
	6p7E2tuveAQcXPrkwJFapjcaMkXl8odxDSGgJdrrZQp7ka+tZDINazuNOQYD0e4Ir7Nmw1ev0KB2C
	WrChY2dl3xWbxM48YEACOtUkY6PdhZZc0GoDlzcBwi+u/fFlGkkqvH+F16LF40ZmG9dgFeNUbnglj
	pSWZIso7UNmHs75O9q2dyk125wcBzdBYrmdXRkRwNrsQ0Eea8hym5xFyuhfa2PhTP5rJ/3Tpz1BRS
	4FEpB+W97ryUb93eTUjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0ye-00051j-Gl; Sat, 29 Jun 2019 00:12:24 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0yb-00051E-90
 for linux-snps-arc@lists.infradead.org; Sat, 29 Jun 2019 00:12:22 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A73FEC01DE;
 Sat, 29 Jun 2019 00:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561767138; bh=nOlAlWpNo01BWL56qYLMRy80e2bYa0D0wpfdGRMV7G8=;
 h=From:To:CC:Subject:Date:From;
 b=F47D4IZz6ipwsUFiak2SpylEpfUTjycO708TCpwoU+MgdciAOnNJb/fRtx/cmV2n9
 XQYJ7SfHrHacbvH5KJ8mwAabMh349e+4LMmEj8NoBYyJmrgmiHp/NVIMFE/ltoYMJD
 PIhBhEmV6TFdrG8jmTQsppKEefdjrVCSaS5wPpg3txXvolA54x66rF3FAIvsrWt65O
 LDmzg+RAlM6CcAXZDCugawNtuS2ZQVy+SA7M4/kzq5RQUFzNufioFTOk3B+A6DetFz
 jzKWZTfFxR9qB9rTx0x8oAoiw/RWcS3W93tRAH37hQV4YPAo4MUUreqORqb9Wu6jmd
 5AwPVjz6NpsHg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id A45F9A023B;
 Sat, 29 Jun 2019 00:12:12 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 28 Jun 2019 17:12:11 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 28 Jun 2019 17:12:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=wF9late9MJGgkaCXOFYzlzzxaMvamPmBLdFnE/V4+elRpFy58NxnAlmxez8tfNYI/Hc6ZRV2Idh2ZCL5+pvkRA9cWCRMb1IFgwHPZ6T0zaE6S6HVcrxQof5Gp7CiX9WHIk/cxMxpuctDhyHbiPshTmQFr77xcAJKFw/ghK5RbSY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOlAlWpNo01BWL56qYLMRy80e2bYa0D0wpfdGRMV7G8=;
 b=CWx0lls2tmRN3HN3LbnM8+xAgNXoKvGX+SqsU2r9uGARi6xNb9jAMao/fNQ5najTkUnaoRXuP0hWz3Hpd3uxGVu89s/ZUrMCCzEsXgfTI+v0rZI6UoXPahxsCepXxhBcOOHcbZnUCk8Cj3ncZfwODzT08CYiRqZtyzlxV7R8d5A=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOlAlWpNo01BWL56qYLMRy80e2bYa0D0wpfdGRMV7G8=;
 b=EZCYyz6Y2ZFpP/QAuOFxINz7SrdoV5crWAvLkVNObQlK9A8SWuEL5VTeApfcSmPPrnPwjWiPrxlWK/ix7UrF0lVk7Gld8uIVZxm3kYmKE2gCO5fGEQnd6x/rYtS/dYEffEH9QLTyT65a9Jq7xZooWa4ZGpxYOJLmvDpHm2wnKo4=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0114.namprd12.prod.outlook.com (10.174.238.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sat, 29 Jun 2019 00:12:09 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f%10]) with mapi id 15.20.2032.019; Sat, 29 Jun
 2019 00:12:09 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] ARC fixes for 5.2-rc7
Thread-Topic: [GIT PULL] ARC fixes for 5.2-rc7
Thread-Index: AQHVLg9KYUZa5XxzYUiJYcdcibUv0w==
Date: Sat, 29 Jun 2019 00:12:09 +0000
Message-ID: <b799ad4e-cafb-bf1f-3d92-34a5035ea7b5@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BYAPR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:40::40) To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mozilla-news-host: news://gmane.comp.lib.uclibc.buildroot:119
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3e07468-810c-4901-ad5f-08d6fc266d0a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0114; 
x-ms-traffictypediagnostic: BN6PR1201MB0114:
x-microsoft-antispam-prvs: <BN6PR1201MB0114F098419DA8216203FF4BB6FF0@BN6PR1201MB0114.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0083A7F08A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(346002)(136003)(366004)(376002)(189003)(199004)(6512007)(31696002)(186003)(65806001)(31686004)(14454004)(65826007)(54906003)(6916009)(316002)(64756008)(65956001)(4326008)(66946007)(66446008)(66066001)(73956011)(66476007)(6116002)(3846002)(5660300002)(58126008)(4744005)(53936002)(36756003)(25786009)(2906002)(256004)(6436002)(66556008)(71200400001)(64126003)(52116002)(478600001)(486006)(71190400001)(99286004)(6486002)(7736002)(476003)(68736007)(102836004)(107886003)(8936002)(26005)(81166006)(6506007)(386003)(8676002)(81156014)(2616005)(86362001)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0114;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jymTKMSDMDxr2QDS32ROYqH/h/fj4S1qb8LSQDAQF8EwxV28oMGVoPCzK6Td0xysawtkp1IYwHcQfVrWDNzqgjabmQvA0UE2SCIotA4lZXQFnUO/WIij3mNjK8YeMpRwkeL6p4s0EaIgCrWvJW0vP4GlLOVaEB0Vzf5lRgD9y0+t5P1ltFs/t7g5qaED82fNugUhef3MJMpDXuJDiTXWOXOLC58+ylgk8lsUKC8f1umyr4vdqcxteafGxdqePdogu7bPEW/gY/qGvXaq6BNeVURcrqqGJOqMg7qS9K4Jgneod68YeWcRT8TAsiA+mf4bihIO0Qzy1iV9dl/KjKvTUXT2B91hXoZR86TSGuiMvX2pxmgj5zN2+vjqVJLh3ANKCsZAh9mx6R0A6T0V6VhLRMnvsqDOjFs90EMevBexsIc=
Content-ID: <C6C99DB56E21B64FB46A4FCDC12B094C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e07468-810c-4901-ad5f-08d6fc266d0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2019 00:12:09.2010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0114
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_171221_415774_397E774B 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Linus,

Please pull some fixes for ARC.

Thx,
-Vineet

------------->
The following changes since commit d1fdb6d8f6a4109a4263176c84b899076a5f8008:

  Linux 5.2-rc4 (2019-06-08 20:24:46 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc.git/ tags/arc-5.2-rc7

for you to fetch changes up to ec9b4feb1e41587c15d43d237844193318389dc3:

  ARC: [plat-hsdk]: unify memory apertures configuration (2019-06-11 11:48:34 -0700)

----------------------------------------------------------------
ARC fixes for 5.2-rc7

 - hsdk platform unifying apertures

 - build system CROSS_COMPILE prefix

----------------------------------------------------------------
Alexey Brodkin (1):
      ARC: build: Try to guess CROSS_COMPILE with cc-cross-prefix

Eugeniy Paltsev (1):
      ARC: [plat-hsdk]: unify memory apertures configuration

 arch/arc/Makefile             |   4 ++
 arch/arc/plat-hsdk/platform.c | 161 +++++++++++++++++++++++++++++++++++++++---
 2 files changed, 157 insertions(+), 8 deletions(-)
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
