Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A20E72CA5
	for <lists+linux-snps-arc@lfdr.de>; Wed, 24 Jul 2019 12:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKg3FOCkpN6vF+Uq+5hFkIxytSm+Dns4nfYqQM60Rhs=; b=QmMsW7iEt7j2Vo
	zZ3JB9ExJ6xZzH7c8meMO1RKCYfWljo6kZ7azDpibA2LZXzjeqohRFqC6W5B2nuOhprl3C3jKxmCA
	9lURwelpsbXCGMnIKFBQRULUV4oaaJGf8f/16fJEvi+VpCnOGt9rXmTAUEfNqCnfdYwOx659eXTxE
	D5xKkmnKY5BLO8ZR4OlrnvTN2urUMvRB2ctjDYRE0qKEiCRBJ2KlM9S1iQWRj7Od+VROsQwXaQjuo
	k+wfsoRwSxYxFAYWy+6KrCwqMdk1n3zm+ixr1hk5FD2nWBq3momDPtKbJV257SftoBcMreJpeYiDI
	s6Bmq8nfYSIAs8clYqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEu4-00016X-6k; Wed, 24 Jul 2019 10:53:48 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEu1-000163-8e
 for linux-snps-arc@lists.infradead.org; Wed, 24 Jul 2019 10:53:46 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EB59EC1CBF;
 Wed, 24 Jul 2019 10:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563965625; bh=x+X8XVqNO040qCQDxkN7WTPk+qKGZgowkQOj5TrSivw=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ZD7uOhD/Bs7D4uCEJ2P78CQQrnYu9HUIQtC91PlOxmMcxqGRS+ZDqWyrfX83bcKIB
 pyAOhqPbaIEBwtLmRWWNVsfmLNMxaZW320mtNBXU0TCtSiyIve+9ykEgX1lYkwB2Rc
 +ewEIPW1QobArPLPjzaAyqyHY3K2ATTqoZ1udujrpuacPMSjKennfFXnUlR2pX0AZt
 24inmbS8gf5dz0FD6RG2Uxz5mxiNGjqjkATtrN0slMrEVxQEPWRSpsIvgnv+iNX27h
 TF20GPCNvCkHRIerXFBP34q8rrStN/6HDTnH3KKrCvVNdiLfKFkik2+vyXgCOnm+vf
 rgZlwxkw+22jg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id BA098A024D;
 Wed, 24 Jul 2019 10:53:43 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 24 Jul 2019 03:53:32 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 24 Jul 2019 03:53:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsXVRjucoYVPlrGIIX808YPInscUzIKwaHzONJcDPyEAw1cyJiJdNlMSiDqcQ3ZLDUsVGUyipERBl/LiOHkvzwL4jELG+vJRLG5pQknDVYqsp+jqjDb9tsM7u1RK9iJKagn+nPevP2MatAU0ELurAOvHh77op39ovgq0ZNrCJ6wpqR9aNoSqQ9Ph7PJlutIt9UPdAQDhoL/LwKDzTX5JOSUwk5tt6pNsiuHd2PgCxVwWHE8eT+2w++mX1F1SmTx+pmITkWACTneCzDiNFcUFPh4gvBCNHwE5tPJeeixtmm/LCo8mIUasXUyk+gdC/Y9E/kJq2Y7LI8M73QKIzm8RBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ym2DsbaElAOQBkBJly4B5h1w+sD4U+54VRu7m7oTkLg=;
 b=McMhdCkCNoonyjs2RMQUX6CFjyktEbaYU6m5dCEhaioZvgd4iLBt1g+jYwxD+84LRRm5vQcLRcPzNCYGAQ5GoJ7lwHSSRTwekILuOjyrHTi22peeoHzhX8Y1Cy1rxWdpkJwqom4CzLkKflld1wcjGSUDZ69B2rsg7nA8CU5x9sQj5siG2zAwcefQum/ufiVBXoZjSQbCivr8mS1oZ24x9vrMqW/PotCBkG67RL9S1R6yU3bj+2MSN5l1jAFissM+cyX7rhBUJKDotFQbJ6cLQDlFjEaUPuokr5rP7IkYYj4uzYM6/vv6NaW/bPppN1sD0k03CC9Sc0eQyCQvI/s74g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ym2DsbaElAOQBkBJly4B5h1w+sD4U+54VRu7m7oTkLg=;
 b=XI1ftVJiagytENpi4t7o+JlLY502LN6KEWParFojpgmJKXwSVq1Z31s300g2BXLjdN+HN1t+s0F/GzeXsSyTOWl5NcM/Dd1VGkD5g7LQft/VInDEfsIqrO5i0EVhu+x9tV4KZ3aPjptJwMgvz5yJpD17Z5RdJaeDUm1aZm6GyJk=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0101.namprd12.prod.outlook.com (10.172.78.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 24 Jul 2019 10:53:30 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::1c8d:9b3c:7538:477b%4]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 10:53:30 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Mischa Jonker <Mischa.Jonker@synopsys.com>
Subject: RE: [PATCH 2/2] dt-bindings: IDU-intc: Add support for edge-triggered
 interrupts
Thread-Topic: [PATCH 2/2] dt-bindings: IDU-intc: Add support for
 edge-triggered interrupts
Thread-Index: AQHVQUEzAQ/tp3Rog0uMyghOGq1HdqbZmNPA
Date: Wed, 24 Jul 2019 10:53:30 +0000
Message-ID: <CY4PR1201MB012055687BED617CB2689678A1C60@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190723102606.309089-1-mischa.jonker@synopsys.com>
 <20190723102606.309089-2-mischa.jonker@synopsys.com>
In-Reply-To: <20190723102606.309089-2-mischa.jonker@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [91.237.150.126]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3fbbb64-c95a-4680-dc32-08d710252a11
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0101; 
x-ms-traffictypediagnostic: CY4PR1201MB0101:
x-microsoft-antispam-prvs: <CY4PR1201MB0101C84D21F97D644E7437BBA1C60@CY4PR1201MB0101.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(346002)(366004)(39850400004)(136003)(189003)(199004)(13464003)(446003)(53546011)(6506007)(74316002)(102836004)(186003)(6636002)(53936002)(476003)(33656002)(76176011)(6436002)(5660300002)(26005)(229853002)(52536014)(7696005)(55016002)(9686003)(8676002)(6116002)(2906002)(68736007)(11346002)(305945005)(7736002)(71200400001)(6246003)(71190400001)(66446008)(66066001)(66946007)(4744005)(66556008)(81156014)(486006)(3846002)(64756008)(81166006)(76116006)(66476007)(14454004)(316002)(6862004)(99286004)(54906003)(4326008)(86362001)(25786009)(256004)(8936002)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0101;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6WnUobqlNk1g7lR+K6L855uRnKZY65bHC0jH6d8EZb/NveSFWUXyuGxk7IrCXdEHYLmF8m6YT0aGExC894QeoWeVJ3QE32Plh0qA6GyJwiEM7nc278ElRHPcaCKFJu5xQyT4LkVwIZ/f+3QpQxZtiVjeaR23wJUA0n+w1QBySlul+z9y4ZR6MynW+2mVd8IEGednLfF8YyjXugpLREsQ/qjij5GRNHO9QnMA/VLQNpHT5PXc2hwH6w2jRawRLM3EzXjjKO0myC5wg987LDn1h/vvaHM1mNceYKDQT0KMWwVb3gJNMTA1ebD9CRps4gBlpsnBeZi7MkLl3UUYGqTmoZ0PNfZmpTYIUsR+GD25uurkJtj/4j0Nt+Ijd9WoFWPlJJoFhnFMvMpZonuNCkVzHO7mIzfj9rUuEitAGOBE2zg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f3fbbb64-c95a-4680-dc32-08d710252a11
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 10:53:30.0523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0101
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_035345_311835_B332943E 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
> Subject: [PATCH 2/2] dt-bindings: IDU-intc: Add support for edge-triggered interrupts
> 
> This updates the documentation for supporting  a optional extra interrupt
> cell to specify edge vs level triggered.

LGTM as well. But maybe split pure clean-up changes from addition of
the new property description so that info about addition of new property is
clearly seen? Otherwise it gets a bit lost among nice and useful generic fixes.

-Alexey


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
