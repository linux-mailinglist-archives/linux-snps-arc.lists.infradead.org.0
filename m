Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EC130C70
	for <lists+linux-snps-arc@lfdr.de>; Fri, 31 May 2019 12:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrbfsmtYd6JzRDg+V35iyRTeisQ3nyhQL6reWi/TtfQ=; b=Wjw6p28CP6kHq4
	Api+FQKp7XHPyAhh0jzjjbW7nMz0EiC7rIANg4DSQxJBB7TaOdzgPpyqW00YiNyfjvnqhiskL9PxZ
	80r9mhUjx16KWVEQOMw/HMZFyYahBWrOO6IzfkTv3JskeIIkLebK2vy3VhwtemY9nZLRvIWFxBnw5
	PEmHd7mwwfnwfTxl5/Ow3EungpQfjM5HekwLoK3xYWg6kG5nLX5QVOf2fl09zoun0Tj/M1fA2tSPY
	ax8H90rvWVpN0thN8aw7czt2RExO482S8ul42ySUEpGoCKQ1+m6gKAVYWQxxQZcP10x2SOQJDvrOL
	RvOPlAwyhafR8tQwq6nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeZ3-0000ML-1c; Fri, 31 May 2019 10:15:09 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeYz-0007ff-9g
 for linux-snps-arc@lists.infradead.org; Fri, 31 May 2019 10:15:07 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1316EC0021;
 Fri, 31 May 2019 10:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559297710; bh=oYMFaWBXpsctHuwvT8PYf7pwmNvR/3q8b9V/pmkpnpk=;
 h=From:To:CC:Subject:Date:From;
 b=bDyRpe8xub9Nad+rFAatFesY/uc2i/9Zxumvw6Ps8H4XHeWBLNivIrzWDypQhxr/f
 gSdInQHGb/j7EFRn5ryV2DtcBEAV9ScUTIaQX3PU+GaZHzGqhaXzLXuIARh57//HFd
 6cCCjoXmDsrRBXF83/mxmH1nHfxHtCA3+N2Qh7sP7InxQB08eX/HmUUrpXTv0goBcA
 6UyTurdsarq8KcKKXGqlZXTZzCkWjiXMvuVzth/9pksYCb+PRSKlPl2lwi9xhERnRI
 DdLYLAxycn0Qg8C4jeW1EeVtQra2QND98+K7o6jeEdddzSBqdC+/JUpmNQ9Ekh8GeQ
 FrbBXFGBYq87A==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id DB25FA005D;
 Fri, 31 May 2019 10:14:59 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 31 May 2019 03:14:59 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 31 May 2019 03:14:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMqnFZY0dOsfb0kFY9eW1SNhibmL1nnW4s0s9JPhSdM=;
 b=mF6LDTpvNYQUoBDwPxmfXNh7PEBDBkToUpqJ74/nxboO+B/iyRK/FRiA4dNU9ndkRzugXvyQETY+XKy3JhIn+zHGl78RctEEQWdWwafWheEEcerh4TiYD5ZxI6Vdx0vMtm3fOam6ebolUbS0cMa26JoatKMwXM41blYoBdyrTSg=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 31 May 2019 10:14:57 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 10:14:57 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Andreas Schwab <schwab@suse.de>
Subject: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
Thread-Topic: Pass config-time variable to LIBC_SLIBDIR_RTLDDIR 
Thread-Index: AdUXl2gFdH9S+EfRQSeLWnM3B8KM+g==
Date: Fri, 31 May 2019 10:14:57 +0000
Message-ID: <CY4PR1201MB01200F5CBFD010ADC371E89EA1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b9ff925-9075-46bc-be00-08d6e5b0d583
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0120; 
x-ms-traffictypediagnostic: CY4PR1201MB0120:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR1201MB0120A8178EFB999107E03484A1190@CY4PR1201MB0120.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(376002)(346002)(136003)(39860400002)(199004)(189003)(68736007)(476003)(33656002)(55016002)(99286004)(6306002)(26005)(316002)(7696005)(2906002)(81166006)(486006)(81156014)(8676002)(9686003)(8936002)(25786009)(86362001)(102836004)(14454004)(4743002)(6506007)(52536014)(966005)(6916009)(66946007)(66556008)(54906003)(73956011)(64756008)(256004)(66476007)(76116006)(53936002)(71190400001)(186003)(4326008)(5660300002)(71200400001)(305945005)(74316002)(7736002)(6116002)(66066001)(66446008)(3846002)(6436002)(478600001)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0120;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6Jp9ocRoCiBMEYRLY+y/qPoCTrqyUhmiGyUoeMnjjAFVMMpOkRW6h/qzC5SYd4SEKzxcFuY9z3Q1SDhhS5ULUrg9hHQUshD4tE7l6nBnHZlJztCL3PDIjKGBlcI5ScPXQR/KahSLyGQkThUDX/eAvL6QPz/cXY4MjxkyDHcakV5tODObSldgPdXvCNM/B7eMMQvnPw5fMq2Dwxup91iSim5APEssRNL18A3ZI5Wm+Tt7dxbjUEphDljstFpHvGt/D9cQwDeLjpAlDhetfsuFGXqMlN2LHxXUB6LPyYDFY84vR8bi1xdZJyUK6kWVlpVZsnTZ0f9eXZvYmej40+79vKWxhWPKd3yarqWMSbowI/wfNKGYrKiatqe9w7RvgU+/j6v/xwke4AmK+MOH9f1dBo1etMJ4Zu47Fq7LGhb1VYs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b9ff925-9075-46bc-be00-08d6e5b0d583
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 10:14:57.7408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0120
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_031505_442479_8E6842B6 
X-CRM114-Status: UNSURE (   7.23  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Andreas,

I'm trying to implement multilib support for ARC port of Glibc
and for that we seem to need to have unique slibdir/rtlddir pair per
each machine flavor. In our case these are at least:
 - ARC700 (legacy ARCompact architecture)
 - ARC HS38 (new gen ARCv2 architecture)
 - ARC HS38 with hardware floating-point
 - ARC HS48 (binary-compatible with HS38 but with different pipeline so
             compiler schedules instructions differently)
 - eventually there'll be newer generations like ARCv3/v4 etc

Given we have in GCC a dedicated "-mcpu" value for each of items above
my first thought was to "automatically" setup slibdir/rtlddir
based on "-mcpu" value passed in CC during configuration.

Something like that:
---------------------------------->8------------------------------------
+++ b/sysdeps/unix/sysv/linux/arc/configure.ac
@@ -2,3 +2,10 @@ GLIBC_PROVIDES dnl See aclocal.m4 in the top level source directory.
 # Local configure fragment for sysdeps/unix/sysv/linux/arc.

 arch_minimum_kernel=3.9.0
+
+# Extract "-mcpu=xxx" value from CC to install libs in a separate folder
+arc_mcpu=[`echo $CC | grep -Po '\-mcpu=\K[^ ]+'`]
+
+if test "$arc_mcpu" != "" ; then
+       LIBC_SLIBDIR_RTLDDIR([lib/${arc_mcpu}], [lib/${arc_mcpu}])
+fi
---------------------------------->8------------------------------------

But apparently that doesn't work due to your change [1] in
commit 128c43a2d630 ("LIBC_SLIBDIR_RTLDDIR: substitute arguments in single quotes").

I guess mentioned change is not supposed to be reverted but then
how do you think it's possible [if at all] to implement that kind of
"automatic" setup of slibdir/rtlddir?

[1] https://sourceware.org/git/?p=glibc.git;a=commit;h=128c43a2d630

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
