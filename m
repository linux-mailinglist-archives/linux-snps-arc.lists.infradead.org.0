Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3A4708D1
	for <lists+linux-snps-arc@lfdr.de>; Mon, 22 Jul 2019 20:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edAT1qb5z2jzyHMBaXcZFbmI+khnp2KoIkYePEBJbrE=; b=EV6EALTA2a5+q1
	82P7j8TgenCqDQWD7Ki9tqVqph7MkBwJ1cqtfs8SzXzGhij+pQ3G2TJULAgGZJwTrHzT3oKuBS0Dh
	qdgGiqVUcwfWKJ8hWOcDw49NIzR9TyKuQ+ArIXHO4wv42bFHk81L9UZVBk0dTTy8vmKivxJlPlnBg
	hJcGVHEKYXeDT9EZpVp8uguCteJVfCGwIW6Y4yCAO8otrBZmgZWw+MLAZtMj/4zvLKwVozp2ZkiTC
	Ku64Pte4290hDAkvfThT20eq5HNGNGQZrF5HQZDbMuTk3D7WaEMb6AGIVnU2KVhuPGVn5e9NGHo+Y
	5Q+BPr2zTmFCowdZFp/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdGq-00008D-AL; Mon, 22 Jul 2019 18:42:48 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdGm-00007N-I6
 for linux-snps-arc@lists.infradead.org; Mon, 22 Jul 2019 18:42:46 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8397AC005A;
 Mon, 22 Jul 2019 18:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563820962; bh=tNH5tsaR0JmqmukXVonlPiuQ8hHf3cN1HhJigsjU7Fc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=KUIOyI0fzcpVLgdwlZ1nuAzzJlD1yxgNHbBBH4yWknUMdJ2NVvljosLcgqKlQSpmF
 gQ9hFoSR4OLFhdJ6FY7l1jxi1epNIhvx2ZlzGAdjEhAVOilpowFFqsgUWspNtpUK6W
 VNuVn3omw7PzFcb0C0YMd8JNmv1o99/izKQUdhDehwfpRdw8ZAsrRUuV/xJAI/vbMm
 CHWLV1MdN7ZENmeu3Whp27h2hS5/UP5NVxU1fzDsLlIyDaiWueHep2eaU++QU+2udc
 4HFE2zQ7hB+Bju6mFZ/CRLUlasqWQzS6eEXWirBQGzBInLD8kZvAmaHxsXZfC6sJHN
 FJL/kvnMa6x3w==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E7C4CA0093;
 Mon, 22 Jul 2019 18:42:41 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 22 Jul 2019 11:42:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 22 Jul 2019 11:42:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2EGvnMazxF19CeLhxEJp9Tfn0H78H0Rna/mW7n2mZOqSKvaWWwu82gJqGyHWmfve74dve0qnjWfpxP5rZrbSbc+rizog8T6Q5n6YWZKajOjVDc+1YzFs1oL/pwV5fIXi0hY/FlS83yj5uzIUKVqyDZ34J7fkAsuCp4n67n/zXYZilTb3G4u4+iRNB/tYO70uXc3Yn2i9PuXRb+E4Kzl/nLmbSAcIXctTq3GOBtCDhk6Yvg5Mw7oplQr4A9vR4aZ/Y+oT5Y6eeE4YydAFILGZ/vFWyrp0XxZnUgXRjX4NosxME7BoftE6HbUbk+PA8t6oVoDeLcrRuv/s1h1pavQWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iXinc1RdWr5khGfJW8P09VjRcK/tUHmeMf7gmc9nDFc=;
 b=Or5IiKDkRLNn7duHB4KDNyzJXBiSu9UQo6xoAAAfu5rr/d8ICoW0uCdpqEGOOlXI6CseqqSVaficZGTAau3rbZEAXf1uxZWqsCHifnf+XRykpTCEsfKPO8MF/8fcPiVUcR1301otu1M79umi6bEf69ceMq/eIu7T3/dDs6FFVD9LDJZmoM8aAOr0BxqhKzZwhyMgaAUHiWLbNioZHsI/B85Fk9bdOxLm+b9/SKP7BrgctI3lLYX9GZtnx4tytZu15//gkuNYCmJClKMYWVaZUlmrPtgS0192fthqBsch3eIj7HqxdlZsCc0gSSM3Fo4EqfkTyg2OjOIxWk0BC+qcaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iXinc1RdWr5khGfJW8P09VjRcK/tUHmeMf7gmc9nDFc=;
 b=LDYAMe8JMSWE0G3whaKW1W7gIisIVJKWuj5tYc0N2lqZD6JAcOOwCBxszkcWVPVryPivTQfWyVvX/oZXOm4MirGk6F8DuwP3Uofm6UVRlLfhf38cNVt0uSTXUqcYuwsiY4XSwhREy8DvbFhxbMcWenwXpruN3b4men3ekqQ4JWw=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0023.namprd12.prod.outlook.com (10.172.79.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 18:42:38 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2094.017; Mon, 22 Jul 2019
 18:42:38 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: RE: [PATCH v2] ARC: [plat-hsdk]: allow to switch between AXI DMAC
 port configurations
Thread-Topic: [PATCH v2] ARC: [plat-hsdk]: allow to switch between AXI DMAC
 port configurations
Thread-Index: AQHVQHBc5olcQ9vPUE+JBpQJPWk7tqbW+VQw
Date: Mon, 22 Jul 2019 18:42:38 +0000
Message-ID: <CY4PR1201MB012020E6C3416DC9F4A5AF19A1C40@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190722093145.4626-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190722093145.4626-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d44eb7be-75df-4b2a-1ac5-08d70ed45f33
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0023; 
x-ms-traffictypediagnostic: CY4PR1201MB0023:
x-microsoft-antispam-prvs: <CY4PR1201MB0023D42BF00AF4E4AB3408CCA1C40@CY4PR1201MB0023.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(346002)(39860400002)(396003)(13464003)(189003)(199004)(66476007)(64756008)(66556008)(66446008)(81166006)(66946007)(81156014)(76116006)(8936002)(25786009)(256004)(107886003)(4326008)(14444005)(86362001)(478600001)(66066001)(99286004)(14454004)(54906003)(110136005)(486006)(316002)(76176011)(26005)(476003)(6246003)(7696005)(2906002)(6436002)(5660300002)(186003)(53936002)(229853002)(102836004)(6506007)(53546011)(33656002)(52536014)(74316002)(2501003)(71190400001)(71200400001)(8676002)(305945005)(3846002)(7736002)(6116002)(446003)(11346002)(9686003)(55016002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0023;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZcuAKdmcZCmwdAtTvx5Q4dU+JF2rHogtIpflWGCT0ayIOQHgLZmYqw5HM/qfcv7kcR5rMUydO6N3adjZfBGxYWREAh5qHTDLyuGzm1KlpJCQJjAm3EH3R2IKa2veKbj8+yAKELLD640zaSzxDEu0UKudWkps6/HgyHeOOm/6Q942dYjN1UxU3MbdIXHfm7ytKhHsVj5/tcZ5ZE6RP41JVVCLMbZDnXU1yZwivKNiQL21L0TfqwbL1XlezGnwbJUVbv/ayYXJcELN8VzyumLDYuWEPqCoU1il0S/OVRRTz82jxlK6cAMY7IV1GYQa5AD368lKleePX3USIAcxSSecchBUOGH5Nvlum9sHEHm/EcD+4fmus9UaY7FI+O8ZfcmifLy2WYMrB7J5tyhUni97f0LLYFQcnIqnTAmxr6D9UT8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d44eb7be-75df-4b2a-1ac5-08d70ed45f33
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 18:42:38.7915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0023
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_114244_666294_45EFB3E5 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Vineet  Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Eugeniy,

> -----Original Message-----
> From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Sent: Monday, July 22, 2019 12:32 PM
> To: linux-snps-arc@lists.infradead.org; Vineet Gupta <vgupta@synopsys.com>
> Cc: linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com>
> Subject: [PATCH v2] ARC: [plat-hsdk]: allow to switch between AXI DMAC port configurations
> 
> We want to use DW AXI DMAC on HSDK board in our automated verification
> to test cache & dma kernel code changes. This is perfect candidate
> as we don't depend on any external peripherals like MMC card / USB
> storage / etc.
> To increase test coverage we want to test both options:
>  * DW AXI DMAC is connected through IOC port & dma direct ops used
>  * DW AXI DMAC is connected to DDR port & dma noncoherent ops used
> 
> Introduce 'arc_hsdk_axi_dmac_coherent' global variable which can be
> modified by debugger (same way as we patch 'ioc_enable') to switch
> between these options without recompiling the kernel.
> Depend on this value we tweak memory bridge configuration and
> "dma-coherent" DTS property of DW AXI DMAC.

Looks good to me.

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

-Thanks


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
