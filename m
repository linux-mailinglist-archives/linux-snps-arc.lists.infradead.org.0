Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D85B7FE92
	for <lists+linux-snps-arc@lfdr.de>; Fri,  2 Aug 2019 18:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOp24dpiiF7+FmgiHB9MUGEu5lwUrZ/f/Fk1yFKDzCw=; b=lvzezdZCVa2tzq
	MdPZ2itFxOze/7IJ8SaDLyL9vnH8s0LTkM9eQN/VNzZWmXk391xz7X3ch/X2JTbiRjV0/fduyfUAP
	/DbMjowOzwkjrSXatLu21agl3TVxWtDdmuHN8LnH0IHPMqv6vGL0z76KEytX06mcByT7cb0gsD8V8
	sQ6250kQ83YR8mR3VLeVfCb9BC1W3ubUePyOifxISXKF3BOahUG1SohW6SAfSIwqJwc7eQmNgKSDW
	20r359meKvIa6ApWOtN3Y0Ifx078KyXOgSjDyszVMJKQxgQ9yBqf6ue0Y68wIcFy8bNttIXxb/12a
	ZEz0Jt8oMOZr+33hn5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaNK-0006cN-14; Fri, 02 Aug 2019 16:25:50 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaNH-0006a9-6p
 for linux-snps-arc@lists.infradead.org; Fri, 02 Aug 2019 16:25:48 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CD6FDC012A;
 Fri,  2 Aug 2019 16:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1564763145; bh=uBIpbIMkjQPHe1eYXOA8hnl29dLbphkHRVNhN8228DA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lHPkl/8uKw7qlxxBJKV5kyhe/KKOP4gYX4syRWJbGIMaizeKS9q5kXDZevQpHMiCp
 RYI12/k4MgAHEuwUYWA/t5K0hSI/qoJyIpnArNYEHGy0oaa4a5Cp0dm6uijH/RMeb+
 AnxRnoEmnuIruBxB0iUm6A8JOBud0o01dnowPTd4QyYOjsq20RxC+QsYjJtpAiXhHQ
 Axies6GiU/bTXOvSccWSzTxU3E9fQVlA40EWSVZU8Wgakz3A9tz1UAr2MQLxSzX4I7
 rgcntXe3P1NGR7RS1G3oHGHsgkAIki7SQnvidIxkJWVvYbHmu0SIpp6OMoKv1urNtN
 UWInlhZkC5yQQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 90BD8A0065;
 Fri,  2 Aug 2019 16:25:41 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 2 Aug 2019 09:25:40 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 2 Aug 2019 09:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TkjPynuauwS1Nt6I2gipftUBg/ecu1TNrm0BAeDKW6zctSA6/9vrWOkjd251bNTTggAGvTtJhThlNhcFFqRROf5ZoKzkQMeDY59mP5rfzU5bCMjiqu7CZVHDl7Vo61abxC0/b0qYYQdFkq5PvOhU1jpBhoF2o1SyIXodpbLyZQHzBzjttPgN7uHjqLdMgHBFcWbRJMlnDC6LRl3BTb0L5gSTHeVyXT6cvMO1TdrdSA5ho5bgbd/nIF276ZKqpNN+Hy5uyDegRoh4eBSWI1eY8lwoFY8/XR03LgKMjAqgC1jZGyiGNNg3BJOd+Hp2Dcujf9v2p3SDikcYXW9Y8tVusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ut3qKsDWkieoBaqSLUvc6x5L0+GAYTqRTCy80AsMYk8=;
 b=dcfu18IXx98Yt0N7kSXFacHWybY6Zrru0K3WUCP5VTXrUKK52V4tby6MnH0Q5hYA+4zmK8Njm+GQB1a9imUv+jcjksmjczivhIo+hvSj0YOTX5fxbVRFwp+SDvu6+Y2YqatYJ41EBa4AXRHkY68PdzOXL6VcOUS0meG7CxX2qwPB3+uvGozgBLnFVOTdO1x3Qgr9XxBVmkY3BNHCPJXX19LnUWWESbzAJGcaoOUP4F4Dt1/tRI88/rLpYRQ9iNMesXGNyLkMcwBZJr1lA9OFFEeReZhUE/jpD9LkoWjq+kAUYycnFusC7jNkvqVhQnDLx/nNk7EP3fnTlEZq3btONg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ut3qKsDWkieoBaqSLUvc6x5L0+GAYTqRTCy80AsMYk8=;
 b=PEcDYGP2TAvnkcnPC1ZSAGN8Oh9+preR4Eob8o3+uvy0HcSs4srG/7toL/zEyEPOqOxywiUUgP9i2WKlcUI0QpwyBCDHw2iKIwaybBKbeOpzoZwVfSB6PhoZVGjkTC+C9rLy0vSdKzYnbncgMzZrpfN4rLGeatwiOuNM5CCXIyg=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2516.namprd12.prod.outlook.com (10.172.121.141) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 16:25:39 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2094.017; Fri, 2 Aug 2019
 16:25:39 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: RE: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Thread-Topic: [PATCH v2 2/2] ARC: enable uboot support unconditionally
Thread-Index: AQHUxHcRQQpuVpv4ikGdBs8+CyKThqbRyW7ggBa43YCAAICDsA==
Date: Fri, 2 Aug 2019 16:25:39 +0000
Message-ID: <CY4PR1201MB01209C2D14AEE1A81164FE99A1D90@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190214150745.18773-1-Eugeniy.Paltsev@synopsys.com>
 <20190214150745.18773-3-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB0120530B12273DDC5B06D823A1C80@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20190802074053.GE26174@kroah.com>
In-Reply-To: <20190802074053.GE26174@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bd6715b-2ab6-45e1-6486-08d717660e90
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2516; 
x-ms-traffictypediagnostic: CY4PR1201MB2516:|CY4PR1201MB2516:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <CY4PR1201MB251699361F26C0241FAD27BFA1D90@CY4PR1201MB2516.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(52536014)(3846002)(6916009)(71190400001)(26005)(68736007)(2906002)(6116002)(446003)(7736002)(33656002)(305945005)(74316002)(76176011)(8936002)(8676002)(186003)(81156014)(476003)(6506007)(81166006)(11346002)(102836004)(66066001)(5660300002)(66556008)(66476007)(478600001)(66446008)(107886003)(486006)(9686003)(6246003)(64756008)(66946007)(25786009)(76116006)(14444005)(14454004)(6306002)(966005)(71200400001)(86362001)(256004)(6436002)(99286004)(55016002)(53936002)(54906003)(316002)(4326008)(229853002)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2516;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HvLBR/4nhSlBfVgG39o+3sVN4tzAdR6SH2nvRUUtThX/1b9mILOiKRgpeZ1ZI/zaczzkU825GbyFZyn9akTX5iKAlBKzUG2+y4aSRNd0xhV/JuCkVu0QJ7V3oQHeutOXfJjLFQNBxhZpYNHzGjnwpuJkbjp3obqtbiaVCUwYTr4jMwprCn4QmyFyqZNqOEYyk2ah/tkBmiLoSv7OYgKQt4FcbUs4Afohr0j/wasoJ6JgrBve0zKX0aUkWBShU3fBV/pS3Xi/2B6ccQ7IsrKGWd3F5yLeYzx3Qseif08er13kiAoHyVPZPIu016qlhPyuF3l7PPZwltGF43GFSZYRBeol9F5uxS+ToF6Ui5kbt+qJh+xiuSN1TDws7NQ+rk9EP5YhJ1XEFDUpXhufSjz8dolHanNeDO2ohe30NIg76GE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd6715b-2ab6-45e1-6486-08d717660e90
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 16:25:39.3761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2516
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_092547_314683_95475E45 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-stable <stable@vger.kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Greg,

> > May we have this one back-ported to linux-4.19.y?
> >
> > It was initially applied to Linus' tree during 5.0 development
> > cycle [1] but was never back-ported.
> >
> > Now w/o that patch in KernelCI we see boot failure on ARC HSDK
> > board [2] as opposed to normally working later kernel versions.
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=493a2f812446e92bcb1e69a77381b4d39808d730
> > [2] https://storage.kernelci.org/stable/linux-4.19.y/v4.19.59/arc/hsdk_defconfig/gcc-8/lab-baylibre/boot-hsdk.txt
> >
> > Below is that same patch but rebased on linux-4.19 as in its pristine
> > form it won't apply due to offset of one of hunks.
> 
> Why is this patch ok for stable kernel trees?  Are you not removing
> existing support in 4.19 for a feature that people might be using there?
> What bug is this fixing that requires this removal?

This patch removes a Kconfig option in a trade for properly working
detection of arguments passed from U-Boot.

Back in the day [3] we had to add that option to get kernel reliably working
in use-cases w/o U-Boot (those were typically loading kernel image via JTAG).
But with a couple of fixes applied to linux-4.19.y already we no longer need
that explicit toggle as we may rely on data passed via dedicated registers
and thus automatically know if there was U-Boot which passed some info to
the kernel or there was no U-Boot and we don't need to mess with garbage in
those registers.

Main reason is to make vanilla 4.19.y kernels usable on HSDK board in KernelCI
environment. Now they don't boot, see [2] as in HSDK's defconfig ARC_UBOOT_SUPPORT
is not set. So we have 2 solutions:

1. Add ARC_UBOOT_SUPPORT to arch/arc/configs/hsdk_defconfig
   But we cannot do it for vanilla kernel because we simply cannot even submit that
   change to the Linus' tree as that Kconfig option was removed.
   Which means we cannot back-port it, right :)

2. Back-port proposed patch which already exists in the Linus'tree and thus is
   perfectly back-portable.

Makes sense?

-Alexey

[2] https://storage.kernelci.org/stable/linux-4.19.y/v4.19.59/arc/hsdk_defconfig/gcc-8/lab-baylibre/boot-hsdk.txt
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=036b2c5664281e7da5a89c9f742491f30966485f

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
