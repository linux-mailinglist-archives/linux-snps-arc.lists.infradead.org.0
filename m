Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654404D94E
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 20:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2mmIUoZ3TyKgWwpIKmTSerotBN3h4/sYy/fQ3Ci4cs=; b=uFpDO2ewzqAbcz
	tq7rbNRPVdPCPa+oIL7XBUDDJGD1LcGscZQoRHun8h7/Ftov2bA+/8qn/gD9z0EVrJqJGOj3RfXyw
	xbcrpR0ivcfKoMiNXlVdng4qpegq7uYdiWVbMsxGVK8PuMMHu0V1/qmC8WtPbpoylMwsumx5R+tZY
	l4JAXBaobVxGRzocdR6vtOUsxnk9DyYnd6q80/7V46giLeyPNx0n3fbUvXVgg9FfBOWteUXieO8mA
	gkZlr5CewqPiTJ0uw14GaihZZkarROuRtZ7evK8R4PafxmRTmtwDl0N6s5LaK7XMi6OrrSeF3o85b
	QqAnPAwKB01DwV+mqAow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1tR-00082g-1W; Thu, 20 Jun 2019 18:34:41 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1tO-00081f-Dx
 for linux-snps-arc@lists.infradead.org; Thu, 20 Jun 2019 18:34:39 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9AD2AC1D6C;
 Thu, 20 Jun 2019 18:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561055676; bh=RMr6ohRX57mopTw5g1/aB217SA5Pa5ceHvd4q23pFns=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=CfHYvxVzKYN4Tty1vRXht07cMlgD7zZ8ANk/OqUOu4MnEXayihErckZSuR7iW37XI
 nnEv4XSJnlPL9D2KqGjHdSly9WhC9wffMprZDc9dAP6gLKo+oQn9//rg20tfdlxZhF
 1ZA9LAtLAkcyg510kHzyHqg3mApWdFOaTQ7kksF10CpzX+JTpMSqTYgefemjKe1RJW
 n7Yhw98PjbqYFyt9X9D83jHBrLb6o7SwdRvNabVWQ5st66h8Recg47EzAKj/dUFrBU
 CdEYc5QUu8UiLM3Xipy+KTYWmNhkuH0/xBuSCjUpeCBSEOfM26HqPMW2bFEB53Wdm9
 tmCpNN2/T1XKg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 098A5A0093;
 Thu, 20 Jun 2019 18:34:34 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 20 Jun 2019 11:34:34 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 20 Jun 2019 11:34:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMr6ohRX57mopTw5g1/aB217SA5Pa5ceHvd4q23pFns=;
 b=HktHdRoOiC1n+TM01Cpz3CvhlwYsrRReonsdhAMJjdbKv09c5KoDZ8ERCTapkGMiM5NDDn5D4yR+oYC37SS3P041BieetyjZMhL4e0CCP/26LZBqqisRKwBDsr0FbCL6j9vm5uN4EU1fZaW1LzshreCt4O1WV5PM9q19/Kdr4nA=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2653.namprd12.prod.outlook.com (52.135.103.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 18:34:29 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495%5]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 18:34:29 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "peterz@infradead.org" <peterz@infradead.org>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVItABmoPNpjiRbEyPVk6MS/0psaaip9aAgAJAHQA=
Date: Thu, 20 Jun 2019 18:34:29 +0000
Message-ID: <50a5120f512e7d6784efa403a7597c159074c8c1.camel@synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
In-Reply-To: <20190619081227.GL3419@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 888f84e5-fb9d-4ecc-73a2-08d6f5adee60
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2653; 
x-ms-traffictypediagnostic: SN6PR12MB2653:
x-microsoft-antispam-prvs: <SN6PR12MB2653BF876B5220C628484F00DEE40@SN6PR12MB2653.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(99286004)(6506007)(476003)(446003)(6436002)(486006)(11346002)(2616005)(110136005)(6512007)(86362001)(3846002)(76176011)(6486002)(229853002)(6636002)(316002)(26005)(6116002)(186003)(2906002)(118296001)(256004)(14444005)(68736007)(8936002)(25786009)(71200400001)(71190400001)(36756003)(66066001)(6246003)(7736002)(478600001)(305945005)(81156014)(81166006)(8676002)(102836004)(14454004)(53936002)(2501003)(54906003)(66446008)(66476007)(66556008)(64756008)(4326008)(73956011)(66946007)(76116006)(91956017)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2653;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4DNGjX8hJhtp96kKTCcHMqBJCmYAqFGe1xtENoGiY9kmzunTbFzVEYA/XGIgeWLbDC2Dxv2sx0phnrNos4cqRsu3KtX6owXGG+8J45NJ38cgYc2Dd40PzRaAoxIKtpfMuW2vjr2rB3pl3W6Sxv0ZOJpjgc+6xMdzuthLaPQfCMibDKQyF/WkzbglSTFO4cugaoIjaqVcbXo1lFacC8xdgPBFYyFnh5m4RP8Ag9ZkLUyqFLKefpTxdUCppKR1SNjFxu4sgRzAUHhOL5L9cAp//gKrh8rKhzN9W/xvB5yQQoiZ9q+Mo/MRaTbrv9Sx7mIF7FqjGJ/U1Zch/NdKHlEckZtYdMtTQRzzQSfGDHcFcyjroZouAKHowWLbPBPg4ive0KSHv2QnrQffbZa7jdq0yu6qYe6JqfHmSUI4KAE+3G8=
Content-ID: <B216DBA167D5AE4C97B8EDFB30EA7A2F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 888f84e5-fb9d-4ecc-73a2-08d6f5adee60
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 18:34:29.5620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2653
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113438_486141_CF102A98 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "jbaron@redhat.com" <jbaron@redhat.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Peter,

On Wed, 2019-06-19 at 10:12 +0200, Peter Zijlstra wrote:
> On Tue, Jun 18, 2019 at 04:16:20PM +0000, Vineet Gupta wrote:
> 
> > > +/*
> > > + * To make atomic update of patched instruction available we need to guarantee
> > > + * that this instruction doesn't cross L1 cache line boundary.
> > > + *
> 
> Oh urgh. Is that the only way ARC can do text patching? We've actually
> considered something like this on x86 at some point, but there we have
> the 'fun' detail that the i-fetch window does not in fact align with L1
> size on all uarchs, so that got complicated real fast.
> 
> I'm assuming you've looked at what x86 currently does and found
> something like that doesn't work for ARC?

To be honest I've mostly look at arm/arm64 implementation :)

But yeah it's good remark about i-fetch window.
It's named 'instruction_fetch_block_width' in ARC documentation and it's
smaller than L1 I$ line size. On ARCv2 it's 16 byte.
So in current implementation we need to guarantee that this instruction doesn't
cross 'instruction_fetch_block' and not L1 cache line boundary.

So there is no problem with this code itself but the comment should be fixed.

[snip]
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
