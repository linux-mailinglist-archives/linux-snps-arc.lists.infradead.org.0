Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1250A779A
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 01:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HgMdV71+AtUjQ8a0sa3bvPQScVUhW9qQPWWrX++XNwc=; b=TFPmHrRTmFP5bc
	8Kvibbf+N5DB8PKnecOTaLpeHKfMmKqe/kWQcxqDIc8C4Oyji800ypuKpyoiyApL6q8V1NMvUHSGd
	orU2iWdSuMwfskdg4ys/bzHTIyr6FGJsV4SMDvThaq33XX3rM1sFcL3c8B64zCs7K8qWKl7rjJ+UR
	+IS+MjshQWi4Ini74BsN4oxTlbuKsTseC/6QIv1vV3wwUidJM3YPcrQdc+/J1ITawq7zNwcxTRIPQ
	9Jux1P+0TdnjRHBSr+ySBMkRQIKq6yrsI4+dWQRx24McRZJF/5lkQUDaxn0pPu23A5fNkkreB4rrZ
	yIGAcoQoccoEK4aY1q5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ILU-0002ii-7I; Tue, 03 Sep 2019 23:36:20 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ILR-0002i1-44
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 23:36:18 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 40A4EC0AD3
 for <linux-snps-arc@lists.infradead.org>; Tue,  3 Sep 2019 23:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567553776; bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 h=From:To:Subject:Date:From;
 b=bnYN1XYFNk4mAgg1XMmVqRRCEpej6hrLRNrRIoQFxre+cgscekf0FkdFfaAF3wNz9
 u9CsgfPXYsTiZDaAnhl5wOIC9b2sRheHb+9CVEzBlgtAUBRvaNm7TBne6f6JVPeend
 rNmwDWi1IIWdfTROQPp77G4+GqI9iseSYDwHUR0CgWOb3A5IxC2CW8gOWlrL8nZdbo
 XCCcVqlQJP29D0dM2ghGtwWyXROh9qLdtiRsKkvTpn64by2OPSPRn0WwrUajlysfra
 kM4yQMXZtP7I29et3QUN3q+nQkJG8eIReE2IKuen2AOMV9IHra/zh9Jl7PIgulk9Zn
 RM1tyRsBe/Xeg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2094FA005A
 for <linux-snps-arc@lists.infradead.org>; Tue,  3 Sep 2019 23:36:14 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 3 Sep 2019 16:36:14 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 3 Sep 2019 16:36:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IctIa9Vz9QoKcrMAz3WEiPf3sf7+Zn3R6fe6GUpOSFck31NvLbwh6b0N48KMlUDr9Z1R7ZgdaVFclmFKinrbyAzxVtugiiirl+6Z+FV3i7eCOUzT6MtckL2eZLlUfwQ6ZVCiPaMunS6cdErOGcT5zlASiBFp5hYmNVvGoRRyR0gidQMhtxyPLo7LswMNQOlJrp8PD72EF83ehj5GVCLoI4N53N4D9oU4PMydTF96SJjWvOvmR09S4k+olSDAjRSzjKcpLDacP64dAd/K0AFVXBhQ0xL81LgzPrDIFFQZrHoomxP32hmDjwkvpOtf9+cqa9TAFgtA5OVFF78ngL0mIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=nzOn6eyznUWkEugMzCJyayTR++LPIhdirFgOC/xsDZoAPe2eK7mZLORQQpSLR0OVbJ92E8ZKVW40j2KP1fWj0pd9DPRtviLCn3qr2t2WF9MEShFNd2qeWS5oB1Jh5adkJR/wSNLY7ukGA+O4bbG+VqBhX8DVIYHTWIuKY55ngOR2OjfrbyroTAqifk6K+1gUaJ8GwQyG3AHe8EB7Ul1Q70U6UHu3yCePQByp9hDl2uQ/gwXRsifiG6jZYazzMk5iOJ/GlMvYobvKfU92X9joWxLZQRLTOc73+EicgeVJbzav5dXeOQbV+47UStAeN5BXK+PBR8cfBfYwhVzvS8kPSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=mCjzwEZbMEUMCL4Xl4q2lnBEgPgR7AXSK8bVQC6kfZxaEDiztUNhAGf1c/dCDZGE3sUxS578XZkrSB48lANAqDluQYVDpqQJXBOLLiv6RbqH57gDQmF3ooLJ8+A4H1osUOMiBbivcLlSULjjJAjFX3h/UI2jQdFCY+wTMofbDh4=
Received: from MN2PR12MB3648.namprd12.prod.outlook.com (20.178.240.92) by
 MN2PR12MB4144.namprd12.prod.outlook.com (10.255.224.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 23:36:13 +0000
Received: from MN2PR12MB3648.namprd12.prod.outlook.com
 ([fe80::609c:702b:746e:3599]) by MN2PR12MB3648.namprd12.prod.outlook.com
 ([fe80::609c:702b:746e:3599%3]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 23:36:13 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: test email 2
Thread-Topic: test email 2
Thread-Index: AQHVYrBfdxUFTBnjS0eCHLw014UrPw==
Date: Tue, 3 Sep 2019 23:36:13 +0000
Message-ID: <MN2PR12MB364885AA9DB0069AE86A5242B6B90@MN2PR12MB3648.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [198.182.56.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35ade250-befc-4803-945e-08d730c78217
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR12MB4144; 
x-ms-traffictypediagnostic: MN2PR12MB4144:
x-microsoft-antispam-prvs: <MN2PR12MB414458CAFC1DC664D01ACCC4B6B90@MN2PR12MB4144.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(396003)(39850400004)(136003)(366004)(189003)(199004)(5640700003)(3846002)(476003)(2906002)(76116006)(316002)(66476007)(66556008)(486006)(66446008)(64756008)(52536014)(66946007)(25786009)(53936002)(6436002)(7736002)(2501003)(102836004)(7116003)(6116002)(99286004)(2351001)(305945005)(14454004)(55016002)(6506007)(66066001)(9686003)(74316002)(6916009)(7696005)(81156014)(81166006)(8676002)(186003)(71200400001)(33656002)(256004)(8936002)(621065002)(73894003)(478600001)(4270600006)(71190400001)(86362001)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB4144;
 H:MN2PR12MB3648.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ALTsS6Ds6PBG6KqnxgznnjYKYLwddgxgngwWG9C1ZbRZdgMr0Q0fICTg5TV96g2cFqlTOhBbrVMmN5HRXOQVDRUNg6WfpfApTiu1n/y60XoiC1mWfNYOqtGl3ajANWWgQAFjMFJAON4c8hEHwgjWBJ3QRzX4/2qGXwQKO8ACECVcOhWb/ZJwCrhIFGm2G5p8C4leUwTxp7vFXp6A6d1juUuz3VqGmi2St6PgnDqP8m6Dn/fhA0PWw7UDfiDyiNe+XO5kn/NTz0+FQk2d2bMs7znhIEiQKDLn59oWzwzyRsc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 35ade250-befc-4803-945e-08d730c78217
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 23:36:13.3054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fyrEtH2s8CeG86Qd3HT5W7t4uo/ZzZSfc0rDnDWvJwrXi57F0ZD9LRXZm0q7+Bx8hn9EQsr4416v+XpLu6LmYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4144
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_163617_171631_E73BE899 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
