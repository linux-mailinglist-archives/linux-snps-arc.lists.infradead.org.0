Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8943B1FFC21
	for <lists+linux-snps-arc@lfdr.de>; Thu, 18 Jun 2020 22:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZLGPGHxVVGdlTJIkCIcaZMn5zBPYVR3nxVu3bqKbT8=; b=TGuSIwj42ibJTi
	ITatPPwTRylVYrUvH61ZwMM1vU+JQamf7ScCCVkzWEHNnyJFKRRmZs69TWYGvaiM783JznrvU+R6a
	gfPXeegv++UPkqkXmY19HqYAlCg8cJMhKDic323MU1tPncnWGDFIf3Ez00OBHGTZB4mVmCYFFA5PG
	UewLx0FTudmVJ2c+4pfA/Qlko7vGDjhQFxZBRQOni+/chFKQLyQitT77EE4PUM5zhV917+5q1Gaqs
	Pu91WO7YVraZMkzkxAwSoq/Y4kl5BvI0e9lIDaHIrVgng6ePeRy+HXl5iHJOLXEiTlNuWAXIrnVxO
	CrZn44jH2IOgBceZuK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm0hy-0001T4-PK; Thu, 18 Jun 2020 20:00:22 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm0hu-0001G3-Tf
 for linux-snps-arc@lists.infradead.org; Thu, 18 Jun 2020 20:00:20 +0000
Received: from mailhost.synopsys.com (us03-mailhost2.synopsys.com [10.4.17.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3FF17C00A4;
 Thu, 18 Jun 2020 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592510416; bh=mhiDFpD0ojrj/5WT3pWw8gK0XfkkDDZ0iphPJ8WNfmw=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Ly98240XaczqLnhGgpl0Aad+4Fv/6Bs3PT+eOFre0v9nTPL5Gszhj6Or7e4CK4VHO
 agsnjaq8FfArKit7Y+8bJ2HVl5drBESjJVoHcogaEgZBcPAHrhGwEGV/zsrDkN+Uvy
 Pma4UNw0gYBm61cJy/SQJJB4uL4UPQdAaS74hAQPQrSnWWOhm0WpKSPsjnySJSU4mq
 lvwwSh2DAtanqS4yHTKmC7SK6vV3f9pGtHcyXJcHeICDRJBuG/PJy2iDjd/imlIWMT
 2u3Z13JuHO4bkxDpB6ebn9nVdApDnhDiUbJrdKEp2TVgPozCXJwKKTe1XB8dFTKgSR
 uFa4eRGYhVMmQ==
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com
 [10.202.1.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B2C9AA0087;
 Thu, 18 Jun 2020 20:00:11 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "GlobalSign Organization Validation CA - SHA256 - G3" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 1972A400B7;
 Thu, 18 Jun 2020 20:00:10 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass smtp.mailfrom=vgupta@synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="NE4haLM4";
 dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNVpUu2iZA2X6v38BC0dtoYa/YRDp6vay1kZb8X/S9DC0ULWqvlpytjOn06TK/NeOL5IPuHvArzp7z2A9Mrg9AJ2zDICjk8Y7h05blC0AYhL/E6duWAGKcCIqMvORhXVW3vy9Mpa5Wbmz2C6KlSBF12ciA5bv2zTg+tRmcuMzeivQDnLZiFDEs7Uxkb3RDK9J0oFZxMIn2c/+ZqfD3SdfLluBVFP4L9w7TaPSahAhDdejMDYCrv12ldk7J5JtzHxUsQQ5eKC0AA7yrVBhDR/CWkQsubU6OpEMkrGOC/BdO2CWPE7CjYl3EEPfFC88prw1Ke5uQ+7+cAxDa+4hEQdNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mhiDFpD0ojrj/5WT3pWw8gK0XfkkDDZ0iphPJ8WNfmw=;
 b=XrmmOItvQAHs4t+BD/2fsbJ35mm1r58Dly1IxE570wauTQlnrAHuL6DPPLwYq5rC9Z5k0w7z8c4frucnywqG7mD/K/n+uXPqfmhxoUi97WteyHNRMFSaMKyIVUH/TDo5giu4iZqDKAKQfQ8N2NmShVjgZpYQFNFCdZ/JypeU4nGweno1a/ikn41ZWyDrnq7yx8NfK78CW5z78skNOqbgZcBOEbLJA4du7oelg6TnaU/jHWnqVMf2Muqg1QtklHbEn7jkwyZuTCtRlH8rGm8p5p+8mur8S7bDrpTqHlQMPb1uBhdxfwp1ZWLN7G2M7pP1Rt9KHwIha/mHINkax71Y+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mhiDFpD0ojrj/5WT3pWw8gK0XfkkDDZ0iphPJ8WNfmw=;
 b=NE4haLM4/QITK/X/s8Zl/auDuZh1OHkJoJ0w2YbBLNyXUC60/vyJYd8LV74EJCBUkqIOnBo43eTcyAS4syb6enHzyRSxZ2zaw00oonSYXNTDt17fgBduBRw/QDzoqWMzNABBtCydi2V1+uA5XkM1Nf5KuHz99X1NI4Ld6dCFpBg=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB2710.namprd12.prod.outlook.com (2603:10b6:a03:68::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Thu, 18 Jun
 2020 20:00:09 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 20:00:09 +0000
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH v2 2/4] ARC: ARCv2: support loop buffer (LPB) disabling
Thread-Topic: [PATCH v2 2/4] ARC: ARCv2: support loop buffer (LPB) disabling
Thread-Index: AQHWOpc4cHjIBgRVG0W8gJZ90tyziKje3mEAgAACkgA=
Date: Thu, 18 Jun 2020 20:00:08 +0000
Message-ID: <d22bf697-b23d-d0a8-9db7-1f0bba4b2b82@synopsys.com>
References: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
 <20200604173927.23127-3-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB0136B3C5A25EA943379FFCD0DE9B0@CY4PR1201MB0136.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB0136B3C5A25EA943379FFCD0DE9B0@CY4PR1201MB0136.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: synopsys.com; dkim=none (message not signed)
 header.d=none;synopsys.com; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [73.222.250.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 823d02df-e5a4-4f4b-221b-08d813c2340d
x-ms-traffictypediagnostic: BYAPR12MB2710:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB2710190F057A432225788BC2B69B0@BYAPR12MB2710.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kDtaqV7OWnmLVgiw9pROwSNLRAVGnPSc/adycUAf6ilFQkJ+NnH5S7LUEUSaq80CsBQ+b6ndo4LnGrC1aGiY2ru3jtB5cvU5IzuqCF9jWIlAduAXOOLuoyw6DzuTPsdJFx26+oRajdMqUBoqxro/U6Tm41/Xqs75+kPDQhbV+njP3DLf8AVgmtVQBtC0HTZBD1D2dbGeKpEMnILadWx6UnvbtfmuseU5sQNp98hRUJYSiZ7wHZg3ta1I78K9XOt//qK6vFLy+X8cgQBrOPMcUAqOGiMdeVuWkrP/pxqSK5F3zSiacPqVkKyzBN+RZU8iIozBafQ7MwDdaHx4JuK8iMsA1iGQAuZfThbr3KiAkDIqUTYK+c4fa1OzQ1fZ3Mop
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(376002)(346002)(396003)(39860400002)(316002)(76116006)(6506007)(31696002)(53546011)(26005)(66946007)(86362001)(8676002)(64756008)(6512007)(107886003)(36756003)(66556008)(66446008)(66476007)(6486002)(8936002)(71200400001)(2616005)(54906003)(478600001)(31686004)(2906002)(5660300002)(186003)(4326008)(558084003)(110136005)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: HbIEM3PY9uVVhN9pD7mgUJIdp1GNFdqGSHPizucHgBRVVrATxN5myYgPKpBS0juLKhNbEJ3MbQW7s2JM8MG5/iC7HIwoM0q2OVtx49/NnlY+SvX66A1HYGDfR6cht7PTVPywr/7YtP1hXdxfFTGpm6sz7J+aYFnkI5nmczLYQfYLpKKpFl4D+vhS3/eOLPKsFEc1uMlLDsNvqrNltbn88u7M/JCSGybdVtshvewkEdIJXGxrsLPNhQSdd5p/lDnzpGaQ/SW5t2asLDl5Yt6NpZeSDl9ZTI7SLLMcuWgBa7Taxrvnr3COe2RObAoRZq+bTrCFhkcdeG0KMf3XVfN4eUtoJQEAiQgX1awk75EEgRJHWAuYsJgk0MkWYXjd/6qC981JODu7tr5DxlTuBp9qZQ+9XlpbP+hjzpc3qx0NOaHSQbZdgFYTO2Dd+n8Sm6yUJozPB0wwF37NpHpRMGIkukC/4wlBK84xay2/SljXavU=
Content-ID: <1C1FA016376AEB42BE9FC75E4F62F87B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 823d02df-e5a4-4f4b-221b-08d813c2340d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 20:00:08.9564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TwFxYrSzBmDy015rhvCwsBFjNE7s7+d3CB9AjKsLDhd7ioJpdSKwPFrsdLzgKLHyWpfdtgJxViME9m2QT9UDtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_130019_027489_D30A924D 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 6/18/20 12:50 PM, Eugeniy Paltsev wrote:
> Hi Vineet,
>
> could you also peek this patch to for-curr as we don't have any disagreement about it?
>
> I'll respin the rest of the patches later. Thanks.
> ---
>  Eugeniy Paltsev

Added !

-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
