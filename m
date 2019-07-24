Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2276F72C8E
	for <lists+linux-snps-arc@lfdr.de>; Wed, 24 Jul 2019 12:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRTs+KDnOm0Ue5lcZNVQC3W1Ok8ggvZ+FiTTFDwXYb0=; b=DnYLrZDv3Aap1a
	QPBMD3LZIZhll8IlyeeXAQsYXr3zKidwYkxcra3WLVx2i2eLyV9pHCe932RQsXPVpIrGuuFOIiqHO
	IqELWdmV9U/dtvAki2/0EVHPvspmo/NA/81MsKrnjJP3SYwwXTBryXgUBCV2pR/+IDBkciyC2A97X
	N6HcTI40/KoR08BwrsZ2opvIf7p+slH8lSu6f6bVKopCfow3iyMPp1a41CiVWwwrsAsPMK4au/uJN
	M7MLlDKGLBIG5mwM5dvNjFQoamUx26CL1SJQBF6xJYvYXifn4F3Jg3/pCvkggpuNU9qiaJ1D+p7J9
	jGoNhTPeNJBdwj9Nh01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEoW-0007LN-Vb; Wed, 24 Jul 2019 10:48:04 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEoU-0007KK-ET
 for linux-snps-arc@lists.infradead.org; Wed, 24 Jul 2019 10:48:03 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A7DE1C0177;
 Wed, 24 Jul 2019 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563965280; bh=8SCncZ9d0yiM5NxICKBEFxskB53j5pekm3OWkUQP4mY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=McxbtvD29OSnEo3zx9zYdppC5MzXDRbWdCboPO09tXjN7QBRRl/1zyHc/tQOXNYiv
 6c39NKkRl9JcUgBgYo5m0fDh5OM9h1I4gUb1Qzw3AzDmutDV7ah8phWZnsnjB5v8gU
 LT7WIJqX5otLF8OnXoXgcd+f/6wriX23uqKHTAOeCz2F6ecE3u5SpOIXVNmWGUpMYR
 FI8w0nPzvkxHg4iQjB6bgZhkRRxgFGSfsTYCrDaLKPNBxL8bvjOuBmwrbQ9ieKQ04z
 3aX0D7joecOCzcKhyqVsIA34Tv7aGeLcAC/E7ne1dnnapS4N5ZyqiKwlVhxoIGrpXR
 ibOw9pXfsMf2g==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E57FCA0093;
 Wed, 24 Jul 2019 10:47:50 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 24 Jul 2019 03:47:34 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 24 Jul 2019 03:47:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N49R/gClEBq8JBOhkgcIeQ15PNwOhZlAqNw6RNTGRw8DzWzAGU2LXRQ2HBaAwVhfVUgj4+vWyCt/jBU/8Lsg0tBGOliy4gy3S5MeOp0IIv4A42LubddoEr/wgFtR25KO40yt66Kr1BbSHtQx/d1RUGg3A6ZBHAwAXKEqbzoWXx7SmBKdnCiwj0e4o08lZVA7Wdv2mdB2zcDUD4BZrepsk0SGg9mM5UluWn4F+RTfzqTDZBJIkQRKQcslzaWcVF325ov3rfayKxpcsGdtP+L5pWn3eUX6M4nbjI3k3TLjox1Ro/MiSMBII3ShCLn2VDtlllEvi6qXFF74aUocNZuSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbO3+YOLwp+tDFcvoIHmi4IhGiqpgnG+7rXrGB9yos8=;
 b=TOA8Nk0ui2RgMdG2Ajxh05vaC9WPIPvNCPSRPCD4yDHRynDvaxzg6i00j15a1bgX+nNzZ3eAZYq9UNWaUmOlcX+xfuxMhmwR2lTX0PigRDhNpUK4b1rAOXb23I8UsesBvIjTR4OAoqLT+AF/qODljyRsH8mCU/tTQ8or+zf0zUR2MFxCa8SiO0+4npHJP5AE+N2A6f90bj4ICoqxFhm3AdkAuJjXDWVBff5W4IadZmPcYNaXJeny6OfKGH+6tl9v2dyRQ3XryYbdgJnzBg8xIsXToUSKG2sbOGdBCTWd+OulczJi3q65HfY55kAsFt3hWN9pkQdOvVEi4UTxxprubg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbO3+YOLwp+tDFcvoIHmi4IhGiqpgnG+7rXrGB9yos8=;
 b=Tml0Y6JKvYeiCHDJ3hsNLHZEkfklcOMdmVKTfCYQGjquIZ8SvmTMYc0bHud9CLJrVxxkszjDyuy/2L3V38ZxRC8sbwIJ0NnHH4390uayZKqK2H+d/x6fBfGdrGszBUiIobtGHSbBC3SP0rVyDFeuWFOwX1KKgwHKG5/RReV0KpY=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2501.namprd12.prod.outlook.com (10.172.117.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Wed, 24 Jul 2019 10:47:31 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 10:47:31 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Mischa Jonker <Mischa.Jonker@synopsys.com>
Subject: RE: [PATCH 1/2] ARCv2: IDU-intc: Add support for edge-triggered
 interrupts
Thread-Topic: [PATCH 1/2] ARCv2: IDU-intc: Add support for edge-triggered
 interrupts
Thread-Index: AQHVQUE0HZQCxaDVMkWPRiR2w9FjAabZlNWA
Date: Wed, 24 Jul 2019 10:47:31 +0000
Message-ID: <CY4PR1201MB0120EDD4173511912A9FC99EA1C60@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190723102606.309089-1-mischa.jonker@synopsys.com>
In-Reply-To: <20190723102606.309089-1-mischa.jonker@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [91.237.150.126]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2b40524-c757-4e1e-dd6d-08d71024547d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2501; 
x-ms-traffictypediagnostic: CY4PR1201MB2501:
x-microsoft-antispam-prvs: <CY4PR1201MB250163EB51C8B7210AE94F4CA1C60@CY4PR1201MB2501.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(136003)(396003)(39860400002)(346002)(376002)(366004)(199004)(189003)(13464003)(66476007)(74316002)(53936002)(6246003)(76176011)(25786009)(478600001)(305945005)(4326008)(14454004)(33656002)(68736007)(229853002)(186003)(7736002)(6506007)(102836004)(2906002)(26005)(256004)(486006)(55016002)(6862004)(53546011)(446003)(7696005)(14444005)(11346002)(9686003)(476003)(81156014)(3846002)(66066001)(6116002)(52536014)(76116006)(6436002)(71190400001)(6636002)(8936002)(316002)(86362001)(54906003)(99286004)(66946007)(66446008)(8676002)(66556008)(64756008)(5660300002)(71200400001)(81166006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2501;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wn+2RXjXVsmx1Ee4AIl+t6GTrEcy0D5OlqsebUzY4Odolv4E2N5vTql7rjhUeQdaneiveTQe9gRxVkGrsaeQRxb1fJgEH6c1lfk/BJBjPXBEV3PBT7STkmMwjUO6b5qG+U087NSUZbdQGQF4dvyeAEWb/kJr9X3T4zdG9l0xWF42RdKbyVSJqhjDTDz9VBhVCu4KCLWil+RTkoAmyKwm8AqP1g/nZ7E8FwR5403ERec0O3s2YO4HsG27DUy3n5X8xW+mWU/lGM7NXbgRxqutSFAm3zqn1jyAnjC3CSkswcTtQuJ/gucd9ncnwCVRUCLAp2sFBc5EHbWIhQvZiWPYZUcSMKLy/bseoXmkXkdceMrGAKy9G4s0yjDKeKiDPXUAXBjTAdpko+3cmKMzRndF14Y3yucWAtUbT1LP1HAMiNc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f2b40524-c757-4e1e-dd6d-08d71024547d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 10:47:31.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2501
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_034802_555247_0A54A775 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Mischa,

> -----Original Message-----
> From: Mischa Jonker <mischa.jonker@synopsys.com>
> Sent: Tuesday, July 23, 2019 1:26 PM
> To: Vineet Gupta <vgupta@synopsys.com>; Alexey Brodkin <abrodkin@synopsys.com>;
> kstewart@linuxfoundation.org; tglx@linutronix.de; robh+dt@kernel.org; linux-snps-
> arc@lists.infradead.org; linux-kernel@vger.kernel.org; devicetree@vger.kernel.org
> Cc: Mischa Jonker <mischa.jonker@synopsys.com>
> Subject: [PATCH 1/2] ARCv2: IDU-intc: Add support for edge-triggered interrupts
> 
> This adds support for an optional extra interrupt cell to specify edge
> vs level triggered. It is backward compatible with dts files with only
> one cell, and will default to level-triggered in such a case.

In general LGTM. Still a couple of comments.

It might be useful to explain changes
made to idu_irq_set_affinity() as it's not immediately clear what affinity
has to do with IRQ modes (in theory it should be orthogonal).

But what happens we're actually fixing previously implemented short-cut
when instead of a separately set IRQ mode we were doing it together with
setup of distribution since it's done with the same one command
(anyways we relied on the one and only IRQ type being supported).

And now we have a proper implementation with separated setup of IRQ mode and
affinity.

>  static int
>  idu_irq_set_affinity(struct irq_data *data, const struct cpumask *cpumask,
>  		     bool force)
> @@ -263,13 +285,32 @@ idu_irq_set_affinity(struct irq_data *data, const struct cpumask *cpumask,
>  	else
>  		distribution_mode = IDU_M_DISTRI_RR;
> 
> -	idu_set_mode(data->hwirq, IDU_M_TRIG_LEVEL, distribution_mode);
> +	idu_set_mode(data->hwirq, false, 0, true, distribution_mode);
> 
>  	raw_spin_unlock_irqrestore(&mcip_lock, flags);
> 
>  	return IRQ_SET_MASK_OK;
>  }
> 
> +static int idu_irq_set_type(struct irq_data *data, u32 type)
> +{
> +	unsigned long flags;
> +
> +	if (type & ~(IRQ_TYPE_EDGE_RISING | IRQ_TYPE_LEVEL_HIGH))
> +		return -EINVAL;

Maybe add an explanation why only these types are supported?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
