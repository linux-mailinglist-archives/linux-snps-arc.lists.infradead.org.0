Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1FD1CEFB
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 May 2019 20:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1h4i+8bUWCeEl8LMu8RAXgvmwasmK0+/RSeYDlWUJM=; b=RB6vD9TABUNPwN
	T1LaJKSd8g4y8XzwtEs0tOdtCEKqp0rnUWy0YEUcQ/sK3/iQHQkg61lICv8wZZAH2q7UrM4V4GTdt
	ls09IIh73bUT/QMP1TLalx0hLUaZeyHDnXb0b4XYWn3/PznMK03xdjbSE94A2/cmJijTZMtrsSIwJ
	2O8zFdhZ6034dmoTWzDsiM9TyWsjrjBvgi8MNd046bbotSWE+8UdsHb387dBHW7pa8W6vxAzY9DO/
	6JdxoLLB+8w0BxRVnr+mC6OIWfP+OKHzmK/aZc2dStSg0OfFqClA6chYem61aWywEEZfxphFuUU3i
	DkBz9nZml1IAKeAWQYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQc4z-0001j4-UK; Tue, 14 May 2019 18:23:09 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQc4w-0001iY-Et
 for linux-snps-arc@lists.infradead.org; Tue, 14 May 2019 18:23:07 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9C430C01A3;
 Tue, 14 May 2019 18:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557858172; bh=1mzBwqsMBxd6ZVinW+Ty0b9eYD63Uwo3bfCM6TcaSR4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RwYpqu/WP3BPqnWN7ilIDBwCFI5ec0DPzHrGPH8r02Dgr6OFvhDKA6SAsVJOihgi1
 7NWVxI3f5rj85AhKClx4fxmq2vCVohiAKOMvJ6Ek138qrlc3fRG3K7MSIdiIzjdn2T
 JOpTABJWRruxtu5aLxB+VTc0+tJP8gK6EWfwxLLi0XYEMbof3cNQ/0FLh9fJBgnMug
 k6YsaTfiRenRHSBCqomf/mldhTv7OzPyxIcU4oTRUGRJAbzlHNIXNetZEg57qFB4Fr
 wmcDrO/EmNLoGFPXgksY+Bf3j04X0xXcNY9VKqxDVMVNLANDVViqnsG0s2hTpvCBhI
 MuUOwtUrhM8xQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 784B3A0097;
 Tue, 14 May 2019 18:23:01 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 May 2019 11:22:56 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 14 May 2019 11:22:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1mzBwqsMBxd6ZVinW+Ty0b9eYD63Uwo3bfCM6TcaSR4=;
 b=lr+Nqb9tbcpDA/TXFwgeae8dRefTB3V+YL1ciaBZ5yXrKIM1OU4dOoJzuwGAcYs3W8sEw8oKXWt5Tx5Uf6wtnDf7/Eo2tQC7p4YG+JFtvJUfgFobFDqZhiXKpA46TA7iwEGBp0LpkGd6YUgeRuAWEyturgiedSibe6+jlMamItQ=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2468.namprd12.prod.outlook.com (10.172.119.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Tue, 14 May 2019 18:22:21 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::adca:add8:5f2f:b8c1%7]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 18:22:21 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Trent Piepho <tpiepho@impinj.com>
Subject: RE: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Topic: [PATCH] ARC: [hsdk]  Use rgmii-id mode for ethernet phy
Thread-Index: AQHVCnwWZvHY/aB82kKLhDqmJpCCsqZq6Fsg
Date: Tue, 14 May 2019 18:22:21 +0000
Message-ID: <CY4PR1201MB01201A8B76EE3A4D2094B646A1080@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190514173941.20046-1-tpiepho@impinj.com>
In-Reply-To: <20190514173941.20046-1-tpiepho@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd30a5c8-3fed-4904-3898-08d6d8991b24
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2468; 
x-ms-traffictypediagnostic: CY4PR1201MB2468:
x-microsoft-antispam-prvs: <CY4PR1201MB24681DF8E7B59533DDBB8223A1080@CY4PR1201MB2468.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39850400004)(396003)(376002)(346002)(366004)(199004)(189003)(13464003)(4326008)(74316002)(446003)(66066001)(486006)(33656002)(55016002)(99286004)(26005)(6436002)(7736002)(9686003)(6246003)(68736007)(71200400001)(71190400001)(3846002)(6116002)(8676002)(256004)(14454004)(14444005)(11346002)(25786009)(186003)(7696005)(53936002)(76176011)(316002)(52536014)(8936002)(476003)(86362001)(81156014)(81166006)(54906003)(6506007)(102836004)(305945005)(53546011)(5660300002)(229853002)(76116006)(73956011)(6916009)(478600001)(64756008)(66476007)(66556008)(2906002)(66446008)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2468;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2bS50sfRb5iZc58ns/rrakDr2GKFGSEWx013vdLNoUmn87Bb90YTw5k+421zaA8C/Pa6uriIRMxIRzvIdG++0/vtLpbqTcDf8UxshAFNg0hfdMkQQdIB4YAT3n8lNepydbw3f6gQSPjHqdS6CbcvCLwHueRsfZ5oUqvb0wlDMDeLWTl4lPzXmg9RgxBAOcTCC4yIjmbFuCJgeeIi0VHlCSDaR5JyoA824BrTY98LFLuUqJt+3QLv16T6LGM7E5K3wz41WBjURVYgIduCL7qIrZdK9FdUcanSZvzNrHGwjkU9d0V6dnV1sComGkar0t6kR3JG/qivgaiPgd00jPZfmhrLDsOf/Sr7VsKn+A4iWIT/nlwRTgjdWVGLlaiwqthq8pJy4AE983xwqUP/pzxZbs4pMPzAmhbm8Zjz4SFfH8I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bd30a5c8-3fed-4904-3898-08d6d8991b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 18:22:21.4987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2468
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_112306_560377_2313C3E8 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Trent,

> -----Original Message-----
> From: Trent Piepho <tpiepho@impinj.com>
> Sent: Tuesday, May 14, 2019 8:40 PM
> To: linux-snps-arc@lists.infradead.org
> Cc: Trent Piepho <tpiepho@impinj.com>; Alexey Brodkin <abrodkin@synopsys.com>; Vineet Gupta
> <vgupta@synopsys.com>
> Subject: [PATCH] ARC: [hsdk] Use rgmii-id mode for ethernet phy
> 
> If internal delays are desired on the RGMII link, "rgmii-id" should be
> used as the phy-mode rather than "rgmii" .
> 
> This dts has properties to set the delay values, but they are ignored.
> I suspect this is a mistake.
> 
> While the driver should disable delay based on the current DT, it does
> not, and instead leaves the PHY in the pin strapping default.  Which is
> usually to have delays very close to the unused values the hsdk DT.
> Which is why the phy would work even if the delays in the DT are
> ignored.

Thanks for this patch!

Indeed there might very well be something incomplete in that .dts
as I didn't know all those details.

I did check and Micrel KSZ9031 Gigabit PHY on HSDK supports on-chip delay.
That's what its datasheet says:
------------------->8------------------
RGMII Timing Supports On-Chip Delay According to RGMII Version 2.0,
with Programming Options for External Delay and Making Adjustments
and Corrections to TX and RX Timing Paths.
------------------->8------------------

And with proposed change I don't see any regressions so far, which is good.

Still a couple of questions:
 1. How did you spot this problem?
 2. With some Ethernet cards (especially 1Gb ones) on the other end we do see
    from time to time auto-negotiation takes that much time that
    udhcpc fails to get a lease because 3 discovery packets sent in
    a row get lost since link is not established (i.e. > 5 seconds).
    Do you think if it has something to do with that particular issue?
    Unfortunately I cannot reproduce this behavior right now so cannot
    verify it myself.

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
