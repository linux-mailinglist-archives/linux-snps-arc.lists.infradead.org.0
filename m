Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE24CE0B60
	for <lists+linux-snps-arc@lfdr.de>; Tue, 22 Oct 2019 20:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioPpTJ0TTm8HtIH9KNEug/jVMGMLbaj6hy+SMLL/v44=; b=TzUdrioNm+Oip+
	igiw/jE36ek9KLB/uiNYo53bnLMUYAfY47A4nlLa3L2BkcVUDWwFChn2KmjLEVsQjoPe78FIgo6N/
	xeH1FK6lWsVe8hFie9r0flJTj0xVOXbXW553wxP+AX24zkL0rvuOwZBPKnwnmIS0sZotMIG7ikCc/
	VUOPMH5921yat+aJ+dfJQg+naY5uZkKccAzPPevwXytD1LZoMIj3wd146DPhXlUEArF0dUEq0+nvR
	LHfC0c9HBwXJdf0p16hdeCgbMyvboHwNxQHRGLTQb3HAc6BBL1BFEs622NpJALBK9/ggLgmDNu1BX
	YrMwGFXTdE+qXZporxVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMypv-0007P8-Gm; Tue, 22 Oct 2019 18:24:51 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyps-0007OF-7C
 for linux-snps-arc@lists.infradead.org; Tue, 22 Oct 2019 18:24:49 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8D0F8C0CD9;
 Tue, 22 Oct 2019 18:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571768687; bh=sH+Q4l+BTVpSsoGKeBHryxl+mw/F3DNXdrJGB3EzmKc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=DyrCEJE2k3sIG8paemExmI4rk6QvV97yiXsKeNOHHQ1ioAN1NcBYmzOOKYFZt1PV9
 xXn77KQMV/tp9KfWllajC6Z4UqqCdRRD4OicsJUIyJeRhL2R6hvmriwpn0pzbL+ABN
 tkUPW2fPsAwa2GTpCo3IkkXHMvQeYZ5Mgw0oWYi7yfnqZYe+i5BZYFuZI1jjzCvZrE
 MaSEGMyjpuCPTFh5qussf9qGgdXkwfETAGs1fsm+AhlDSfSnrKzKrYSglkmaj65aW1
 P1CzLL8F/vAQUmoZFQHMA7W1zc8BxIMdawQFXxTvocFHLEenouxMlk3laOJg8UX2nP
 nVyV9t1aYj6Tw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 43953A007F;
 Tue, 22 Oct 2019 18:24:47 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 22 Oct 2019 11:24:28 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 22 Oct 2019 11:24:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KRuhvq+ewspQr4LJYJ6GK98AopafIT8S7tHipMPo0ItJEDB0BgzLBGILbsbUVbKD8CGeb/OUd3k3AvLYkPKqnyJXDDyyD122VKxg4jn4nZK2727q9ePt48Fd0ui5bxlOKC9fE2I0yknksnHO7f/s4tUN3rcE6aZfNs9KXq7Ecv/ETK0O3nqeU5k6fR94Ilnjm6pa5Ip+tp47ZfAs2YuxbPo/tFF3rE+3qejnCJnvSoLxHQYJK0sH+IFYgNcGiX5zxNtaKP6aYREz/+Mare8QH7ROG5LHvzxiqRFkpkGecJ7ArDRu9mFnIod6ZSlo7ruh0n3n/9DTfuo5JFiU1MLJjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elz2uWhhcPiq/dk2d1O+z0rCVEeAKeIjFizwxBRnkpM=;
 b=SHPNwvLUTDBf0OkBokMQsK5KLpANCTDFGQD8d6MTTQ92x+Z8EvOlempALHxY4Xf6suIOtpkg0u40gHETL7uDCDA/Kh75bNOQ8rzvKv4cI4KdIz+DuL1UgSyrY7tn/fbgrr6u7flpfm7mipROg5kU7ToLaKqYt/kMPCbm9ixyd7gEqLpMcLYardkaVxtj06XSYMW+2mP4+s6BkeN15oFVtbip+p9KYwOHYRyNn9ovN1nwWP/an647a7esIx0+ZisyqMWWsvqKlxL+iUe6Fjel1v1Vb13EnsuhRB+L+5BzSYJzXYdzcBOsMnj2wfDe230KyHq/uZ7stTW/gVPe2qPhlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=elz2uWhhcPiq/dk2d1O+z0rCVEeAKeIjFizwxBRnkpM=;
 b=O/G+cT+fPyI2Jd8mslHnbO5qq0kI6I4H5/hfFJVV4WH+BKpQQ6o0I2edp3qj/pPykUigqw7bgDuIeT4M6tDjF2C+d+HzvhaSU+bc8LJHLg12wh85gxUgeAMmlk4X4sXoUcpghzSFCWAnSnOWYz9ogrmvz4LmLa7Epzj//jmBOrU=
Received: from DM6PR12MB4089.namprd12.prod.outlook.com (10.141.184.211) by
 DM6PR12MB2763.namprd12.prod.outlook.com (20.176.118.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 22 Oct 2019 18:24:26 +0000
Received: from DM6PR12MB4089.namprd12.prod.outlook.com
 ([fe80::19df:560:b8d3:e1cd]) by DM6PR12MB4089.namprd12.prod.outlook.com
 ([fe80::19df:560:b8d3:e1cd%5]) with mapi id 15.20.2367.022; Tue, 22 Oct 2019
 18:24:26 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Vineet Gupta <vineetg76@gmail.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [RFC 0/6] ARC: merge HAPS-HS with nSIM-HS configs
Thread-Topic: [RFC 0/6] ARC: merge HAPS-HS with nSIM-HS configs
Thread-Index: AQHVha3ZXHlIwwLIZE2VERfslIAXqqdgvduAgAZA5wCAAABinQ==
Date: Tue, 22 Oct 2019 18:24:26 +0000
Message-ID: <DM6PR12MB40897388883F4441C65E60B4B6680@DM6PR12MB4089.namprd12.prod.outlook.com>
References: <20191018121545.8907-1-Eugeniy.Paltsev@synopsys.com>,
 <8fd4f94b-c0e5-ed2c-ede3-5c4e77a5a0e4@gmail.com>,
 <BY5PR12MB4034AE62AA5C70794526A981DE680@BY5PR12MB4034.namprd12.prod.outlook.com>
In-Reply-To: <BY5PR12MB4034AE62AA5C70794526A981DE680@BY5PR12MB4034.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [149.117.75.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fba49c46-c846-4a8e-e515-08d7571d11ed
x-ms-traffictypediagnostic: DM6PR12MB2763:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB2763B09E8398A2992617E8F7B6680@DM6PR12MB2763.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(136003)(396003)(39860400002)(366004)(199004)(189003)(66556008)(229853002)(76116006)(3846002)(476003)(64756008)(54906003)(74316002)(71190400001)(71200400001)(6116002)(55016002)(478600001)(9686003)(33656002)(25786009)(66476007)(66946007)(110136005)(8936002)(446003)(305945005)(8676002)(76176011)(66446008)(316002)(6246003)(486006)(99286004)(7696005)(11346002)(4326008)(7736002)(81166006)(256004)(81156014)(6636002)(6506007)(14444005)(102836004)(86362001)(26005)(5660300002)(14454004)(2906002)(53546011)(2501003)(186003)(66066001)(6436002)(52536014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR12MB2763;
 H:DM6PR12MB4089.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dk5Jl4rdnMm+uLPSFlY51CkcIWJFdb93m58ogOb7TXZXpkvZy4ELMACNmNeiS88bUzkhM7alLJRq8c8egZH2OU2npRQ+l6toeDpkcIdFJml4gK72eO4e9wSnkM+robatMmb9lp4++6sY4PKmEErxb4XfMg379VzAq+HeexLr4iesoJOJCehS3CREeXcFmpU+xRTWg2AtZv+r5kqtb2k3WyWTB4V2NflELvuDJwB9V91ZJio+PEOqwzIYqpAOyhsUhLsd7fXhQ6SGegwWRopOm61056oToyjwt8lpnp4bCcZ9IXK/HfaALumnwcHSKt4ELlWAWyBvWOyvAPxDNJWIwV9i/en6oTepUaFA2d4mvwmwkJKl68jyi5Rj9FzKXq3THfHSXrtqB0dhL8jDET3uZE/PiSVAhDxkY5THtgNNsys=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fba49c46-c846-4a8e-e515-08d7571d11ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 18:24:26.1212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoiT6RjsPrFW8tXldIMeZJFCMP1N7EPJVf0oefE2PiKnXK83CjZSUWDLDA0V4RL52VOm4y52o8/bNDGSNjMMCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2763
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_112448_269414_1E41B164 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Ok but this if off topic and not directly related to patches - or am I missing something.

Indeed if we run UP only for nsim we should add pseudo SMP and also a true SMP.

For uClibc-ng regression, it doesn't matter what they use and not for us to decide anyways - we just need to tell them (or point to wiki etc) that starting with 5.x kernel,any nsim uart config needs to change of they are using the defconfigs.

-Vineet

________________________________________
From: Eugeniy Paltsev <paltsev@synopsys.com>
Sent: Tuesday, October 22, 2019 11:18 AM
To: Vineet Gupta; Eugeniy Paltsev; linux-snps-arc@lists.infradead.org; Vineet Gupta
Cc: Alexey Brodkin; linux-kernel@vger.kernel.org
Subject: Re: [RFC 0/6] ARC: merge HAPS-HS with nSIM-HS configs

Btw, about nSIM regression runs:
We are using UP configuration for all nSIM runs and I propose to use pseudo-SMP  configuration (SMP configuration with only one CPU online) instead as our main target are SMP systems.

So -
run our verification jobs on both UP and pseudo-SMP nSIM
run uClibc-ng regression on pseudo-SMP only

 Any objections / thoughts?
---
 Eugeniy Paltsev


________________________________________
From: Vineet Gupta <vineetg76@gmail.com>
Sent: Friday, October 18, 2019 21:48
To: Eugeniy Paltsev; linux-snps-arc@lists.infradead.org; Vineet Gupta
Cc: Alexey Brodkin; linux-kernel@vger.kernel.org
Subject: Re: [RFC 0/6] ARC: merge HAPS-HS with nSIM-HS configs

On 10/18/19 5:15 AM, Eugeniy Paltsev wrote:
> Starting from nSIM 2019.06 is possible to use DW UART
> instead of ARC UART. That allows us to merge
> "nsim_hs" with "haps_hs" and "nsim_hs_smp" with "haps_hs_smp"
> mith some minor changes.
>
> We eliminate nsim_hs_defconfig and nsim_hs_smp_defconfig
> and leave haps_hs_defconfig and haps_hs_smp_defconfig
> which can be used on HAPS / nSIM / ZEBU / QEMU platforms
> without additionall changes in Linux kernel.

Thx for doing this, I was planning to do this myself.

But remember that doing this will disturb existing nsim setups
- Our internal linux/gnu regression jobs one of which tracks my for-curr and will
  fail immediately
- uClibc-ng maintainer who also seems to use nsim AFAIK for regression runs

So we need to notify parties involves (and it would be best that we align this to
a kernel release which anyways will be next one.

Also go thru the github wiki pages and wherever applicable please add the config
info for nsim (keep the old settings there for reference as well)

Thx,
-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
