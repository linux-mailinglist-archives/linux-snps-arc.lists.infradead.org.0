Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D9A6D606
	for <lists+linux-snps-arc@lfdr.de>; Thu, 18 Jul 2019 22:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5/dP8m6HLdDUDK8x+Xx12RnY9bCOeF4HlJCMCOL4Zw=; b=V1kb0jKmUN/qKx
	7FdigQBz3UXCWvq630Vuly14HQiZ3I1qmk/TZBUMoCPhxArJRQMZa+tZdeFe0GD1LsME4exeOuRf1
	GbwZqA5B3OLCvpsTc3UmKaGBs+lRH9tgtbDmHIKcBJFJ5VeVcPEl65XfQgKedjHcTHDeLwolZC6O6
	6wGWaH8rsevxQQ6SiJs3SDRXkeiu6SUz6xQF9rgYm2/RNki6r9KbQ5ONsA0VeDw+ClHMs/kuDjsCW
	mqHIFm+a34/IiEfKeEzyB6rOUj+uxS8xmkxzb1lmyNHEfY0qej51T6/HYFiZpPBaYkFMOUx3T8ntg
	oplgZETDwrSiHT3ChyUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoDNa-0008Mw-NV; Thu, 18 Jul 2019 20:51:54 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoDNW-0008M8-7B
 for linux-snps-arc@lists.infradead.org; Thu, 18 Jul 2019 20:51:52 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 68FB3C0A75;
 Thu, 18 Jul 2019 20:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563483108; bh=n6uWkuvjhu3Hdf5gkmZc44j9tCtYMS9DvhGOul33ooY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Brw0uk9VeypXYpplEYUJCMKNXUfzNlcN8sHAINMh230juNe5fG+e/KdggCPmCNg2g
 HnGv0KFyJ5lUasAFASD8DWlka8pjDjOObQS1KDQeQQeG4Nc46luyH7KXgPEWsAhxOQ
 gKKb+TV9Nm6LVGEwJJNjO31ZKgLhUrYokqPeop4lpu99RWvrOLTYGAhNqJV1ZtMjVf
 XB4zxg+Jacb3r+VQiP0Nk/eCtqUmn+iojYWA3NADinwi1D/HTUUxkLXbVK3YRMYX4A
 eT378AMmQue8DzT3JvhvdKe9sg/LW4XbSK2/vz5YXc3TLS4pMdPVbOUYpd9W8i5psu
 SjZTPk+7ZZgUQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2FDD0A009A;
 Thu, 18 Jul 2019 20:51:42 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 18 Jul 2019 13:51:26 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 18 Jul 2019 13:51:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9Tin9B7imO1x67LyU3FGnJprhIkaxQIuSaZAxsPxQbq6Oy9SDW4TfD20Yvk9N1EkDppkD43DvtFiJLbLhy8yXdTIBNNSmMSNRlpzj0gzMWqtTQ/cjfkjdErNsIBnuaMIOVKRZT7H/UUuUgrFVCEXf7s4JTIriXLP78ToijbYFpcTTZuKNTbUev/leUC30P+XEk2Zw5Nvxi4TWSMgbtZpkPiqjHURVyzxye30Jkg4uCI+wdioaskqAlsOd4wp1Yhwh7WmgDXmr1bOut4q4KsG1Z6vBsQZOt9BclfOSfg7Jh7Rey75eQ+wnrbMz8A1BxZj6TBGWLWOGdGzuFpcbsVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLbsui8LwC4H3ZPZbAfPK7eKWOlQwvA8/Zx/7ZMRxQU=;
 b=W5cQd14YIIKhhMg2hBRWx1im1FvX855SPBDOmBtoBoYn78M9h7uvR708a+kkCsSbIKIuyUyqCceQsbYGk9XE/ybNlk94v1bZXFyfv/MmC6bU/nWqCLWyk3grHC6F87fnbGiiMFzAKrjInnSCFlAE6swTgnEus/Yi/BmGbl2QOrmNGnvLRr4UsuzhNJAtrd8RDpHnVyytILM8pd2Q4o55TKMrLBScGxKnq21xTiEV8W+//SL3zVSMN3ukNwsmTVpfyVG3fFTff6MeJ/gsCgcjajVBugnYa5fsDEyMEbGO9qfmjyF13cOM8SVa2QOO/XQxkQ2Gsf31wNePg2YegcyEBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLbsui8LwC4H3ZPZbAfPK7eKWOlQwvA8/Zx/7ZMRxQU=;
 b=cDdNWV81+AHIL+fNaM56meNzXfWqO6leNHdjK5HhaUMgJrM+WZly8tBb4vCfyynzG3csQezwiCBHNSsp41tB7Y99za1hZ6xIiEX93BtgpVDk28laWHUnWeFcgpw8PvB27qn/soEI2ZKl8UXrTVT6AF/5mKCP1n5hPZ7m9KdsslE=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4SPR00MB2380.namprd12.prod.outlook.com (10.173.43.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 20:51:23 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2094.011; Thu, 18 Jul 2019
 20:51:23 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: linux-stable <stable@vger.kernel.org>
Subject: RE: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Thread-Topic: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Thread-Index: AQHUxHcRQQpuVpv4ikGdBs8+CyKThqbRyW7g
Date: Thu, 18 Jul 2019 20:51:23 +0000
Message-ID: <CY4PR1201MB0120530B12273DDC5B06D823A1C80@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190214150745.18773-1-Eugeniy.Paltsev@synopsys.com>
 <20190214150745.18773-3-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190214150745.18773-3-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9014e51-f4a1-4452-c3b5-08d70bc1b1c9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4SPR00MB2380; 
x-ms-traffictypediagnostic: CY4SPR00MB2380:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4SPR00MB2380071444F2C6067F202264A1C80@CY4SPR00MB2380.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(39860400002)(396003)(136003)(376002)(13464003)(199004)(189003)(7736002)(6246003)(6306002)(81156014)(55016002)(81166006)(9686003)(66066001)(74316002)(71200400001)(14444005)(53936002)(486006)(54906003)(5660300002)(478600001)(99286004)(3846002)(2906002)(102836004)(305945005)(53546011)(6506007)(33656002)(14454004)(7696005)(11346002)(8936002)(25786009)(66476007)(6116002)(76176011)(966005)(68736007)(66946007)(52536014)(256004)(86362001)(446003)(186003)(316002)(229853002)(4326008)(6916009)(8676002)(476003)(66556008)(71190400001)(64756008)(66446008)(107886003)(26005)(76116006)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4SPR00MB2380;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HS1371qlQJ1bZ9Bc5KB8v1l0fcMynZ99CZKV6PKmIU9jTjrXCRmcOPreu2c2s0awIhxIU7TZvcsuAwTmc/mUsGR7gIKh2uTdDVvsNooSvkZKSq+1ibKc/HPkk9JJ12raHsZphojn11WRiUgF7z85w+zAJQBZ5lCRHAtyoP8GyPYOHQ1N6sOy6lUPHFXR3LERjghryveoo5WTpwFqDTu3wYj1XQgdQ4WELIY/ZydprCfjnp5z68knuJxdqDm6ED+2UhMWb5qi5KTo7xzWFfpUBR1RU9d8yuw3Gb6DavegvqmAWmsVuJhAA6tYX5NWrh4fpgPgpeJpFD2Xw04Tv3gpR1Io/Kdbwn3Gt+5O8S3rbYXQYKtt/LWBYA/8yhq/tzQl5AoWmhdnhFLNB3bCen9rN1JbBj+4GhcqCgFbKnE/Bx4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a9014e51-f4a1-4452-c3b5-08d70bc1b1c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 20:51:23.2079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4SPR00MB2380
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_135150_331273_A6D270F8 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Corentin  Labbe <clabbe@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Greg,

> -----Original Message-----
> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Sent: Thursday, February 14, 2019 6:08 PM
> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Corentin Labbe
> <clabbe@baylibre.com>; khilman@baylibre.com; Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Subject: [PATCH v2 2/2] ARC: enable uboot support unconditionally
> 
> After reworking U-boot args handling code and adding paranoid
> arguments check we can eliminate CONFIG_ARC_UBOOT_SUPPORT and
> enable uboot support unconditionally.
> 
> For JTAG case we can assume that core registers will come up
> reset value of 0 or in worst case we rely on user passing
> '-on=clear_regs' to Metaware debugger.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

May we have this one back-ported to linux-4.19.y?

It was initially applied to Linus' tree during 5.0 development
cycle [1] but was never back-ported.

Now w/o that patch in KernelCI we see boot failure on ARC HSDK
board [2] as opposed to normally working later kernel versions.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=493a2f812446e92bcb1e69a77381b4d39808d730
[2] https://storage.kernelci.org/stable/linux-4.19.y/v4.19.59/arc/hsdk_defconfig/gcc-8/lab-baylibre/boot-hsdk.txt

Below is that same patch but rebased on linux-4.19 as in its pristine
form it won't apply due to offset of one of hunks.

-Alexey

------------------------------------>8--------------------------------
From 3e565355f6a2d1a82bc9ecd47a46d1fa3c0cd2c1 Mon Sep 17 00:00:00 2001
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Date: Thu, 14 Feb 2019 18:07:45 +0300
Subject: [PATCH] ARC: enable uboot support unconditionally

After reworking U-boot args handling code and adding paranoid
arguments check we can eliminate CONFIG_ARC_UBOOT_SUPPORT and
enable uboot support unconditionally.

For JTAG case we can assume that core registers will come up
reset value of 0 or in worst case we rely on user passing
'-on=clear_regs' to Metaware debugger.

Cc: stable@vger.kernel.org
Tested-by: Corentin LABBE <clabbe@baylibre.com>
Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 arch/arc/Kconfig                        | 13 -------------
 arch/arc/configs/nps_defconfig          |  1 -
 arch/arc/configs/vdk_hs38_defconfig     |  1 -
 arch/arc/configs/vdk_hs38_smp_defconfig |  2 --
 arch/arc/kernel/head.S                  |  2 --
 arch/arc/kernel/setup.c                 |  2 --
 6 files changed, 21 deletions(-)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 85eb7fc2e241..97b45fe8f0c2 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -199,7 +199,6 @@ config NR_CPUS
 
 config ARC_SMP_HALT_ON_RESET
 	bool "Enable Halt-on-reset boot mode"
-	default y if ARC_UBOOT_SUPPORT
 	help
 	  In SMP configuration cores can be configured as Halt-on-reset
 	  or they could all start at same time. For Halt-on-reset, non
@@ -538,18 +537,6 @@ config ARC_DBG_TLB_PARANOIA
 
 endif
 
-config ARC_UBOOT_SUPPORT
-	bool "Support uboot arg Handling"
-	default n
-	help
-	  ARC Linux by default checks for uboot provided args as pointers to
-	  external cmdline or DTB. This however breaks in absence of uboot,
-	  when booting from Metaware debugger directly, as the registers are
-	  not zeroed out on reset by mdb and/or ARCv2 based cores. The bogus
-	  registers look like uboot args to kernel which then chokes.
-	  So only enable the uboot arg checking/processing if users are sure
-	  of uboot being in play.
-
 config ARC_BUILTIN_DTB_NAME
 	string "Built in DTB"
 	help
diff --git a/arch/arc/configs/nps_defconfig b/arch/arc/configs/nps_defconfig
index 6e84060e7c90..621f59407d76 100644
--- a/arch/arc/configs/nps_defconfig
+++ b/arch/arc/configs/nps_defconfig
@@ -31,7 +31,6 @@ CONFIG_ARC_CACHE_LINE_SHIFT=5
 # CONFIG_ARC_HAS_LLSC is not set
 CONFIG_ARC_KVADDR_SIZE=402
 CONFIG_ARC_EMUL_UNALIGNED=y
-CONFIG_ARC_UBOOT_SUPPORT=y
 CONFIG_PREEMPT=y
 CONFIG_NET=y
 CONFIG_UNIX=y
diff --git a/arch/arc/configs/vdk_hs38_defconfig b/arch/arc/configs/vdk_hs38_defconfig
index 1e59a2e9c602..e447ace6fa1c 100644
--- a/arch/arc/configs/vdk_hs38_defconfig
+++ b/arch/arc/configs/vdk_hs38_defconfig
@@ -13,7 +13,6 @@ CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARC_PLAT_AXS10X=y
 CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
-CONFIG_ARC_UBOOT_SUPPORT=y
 CONFIG_ARC_BUILTIN_DTB_NAME="vdk_hs38"
 CONFIG_PREEMPT=y
 CONFIG_NET=y
diff --git a/arch/arc/configs/vdk_hs38_smp_defconfig b/arch/arc/configs/vdk_hs38_smp_defconfig
index b5c3f6c54b03..c82cdb10aaf4 100644
--- a/arch/arc/configs/vdk_hs38_smp_defconfig
+++ b/arch/arc/configs/vdk_hs38_smp_defconfig
@@ -15,8 +15,6 @@ CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
 # CONFIG_ARC_TIMERS_64BIT is not set
-# CONFIG_ARC_SMP_HALT_ON_RESET is not set
-CONFIG_ARC_UBOOT_SUPPORT=y
 CONFIG_ARC_BUILTIN_DTB_NAME="vdk_hs38_smp"
 CONFIG_PREEMPT=y
 CONFIG_NET=y
diff --git a/arch/arc/kernel/head.S b/arch/arc/kernel/head.S
index 208bf2c9e7b0..a72bbda2f7aa 100644
--- a/arch/arc/kernel/head.S
+++ b/arch/arc/kernel/head.S
@@ -100,7 +100,6 @@ ENTRY(stext)
 	st.ab   0, [r5, 4]
 1:
 
-#ifdef CONFIG_ARC_UBOOT_SUPPORT
 	; Uboot - kernel ABI
 	;    r0 = [0] No uboot interaction, [1] cmdline in r2, [2] DTB in r2
 	;    r1 = magic number (always zero as of now)
@@ -109,7 +108,6 @@ ENTRY(stext)
 	st	r0, [@uboot_tag]
 	st      r1, [@uboot_magic]
 	st	r2, [@uboot_arg]
-#endif
 
 	; setup "current" tsk and optionally cache it in dedicated r25
 	mov	r9, @init_task
diff --git a/arch/arc/kernel/setup.c b/arch/arc/kernel/setup.c
index a1218937abd6..89c97dcfa360 100644
--- a/arch/arc/kernel/setup.c
+++ b/arch/arc/kernel/setup.c
@@ -493,7 +493,6 @@ void __init handle_uboot_args(void)
 	bool use_embedded_dtb = true;
 	bool append_cmdline = false;
 
-#ifdef CONFIG_ARC_UBOOT_SUPPORT
 	/* check that we know this tag */
 	if (uboot_tag != UBOOT_TAG_NONE &&
 	    uboot_tag != UBOOT_TAG_CMDLINE &&
@@ -525,7 +524,6 @@ void __init handle_uboot_args(void)
 		append_cmdline = true;
 
 ignore_uboot_args:
-#endif
 
 	if (use_embedded_dtb) {
 		machine_desc = setup_machine_fdt(__dtb_start);
-- 
2.16.2

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
