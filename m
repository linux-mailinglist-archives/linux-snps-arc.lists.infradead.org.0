Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69367181E0A
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 17:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEY7gm6bZIVMGDTau+9mhntqjls6A2V7vWAJ8OKeXmU=; b=SAOY3reJItqp8H
	RILy5VkDw4j2ZoNe2uh0tUWYsxp1HYpyG+9FSfV1tZal8Pp69s+pcQGHgXr5da0mAwXY2amblhGBH
	4yEJCY6fhGWxNo3j0UA9ejkHajHbDEjChOQif07p84Y0G7A7/JzbnAop9YMo0PbLj/5l4E7ROGYf7
	B1teZIgRj7OqU/MngYa2mndZYCjnWvvaD21Oh9lCmZfXTdbXtWyc5fqgc2HtoZ/+sn9gHRSjLUOHr
	H/4tK/uMicQWsnmMkvaqPep6oh7NRHFpReCzMlJbvbvw+PX2rlNg0YxxB+wsYfMmolFxuxl+iTGNC
	aKsIAbaadygfai7LO6NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4L5-0006GU-4s; Wed, 11 Mar 2020 16:36:11 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4L2-0006Ft-NZ
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 16:36:10 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5FB2E43B75;
 Wed, 11 Mar 2020 16:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583944568; bh=QY54OvyEORnwNXGGs5dbPDvosroT2dVspYOudcgf+eI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Q6WzN/57/LSjKPiDNt7elhBFEzjz6qvB7rYpAyhsEDJJZfN0gZriIe1mvev+OnjI+
 hjsHS0DyqF8863mQLvNnpG/2NTu5WeIaPhd56GBK/Y8FFEfODORlsuco5ZLkxtjthW
 beBc6lGDG7oazr+CBvGagT2UugvSL+Oe9KkrZfiUfznkMqz+YPGqk9mYHvOwFvLkC1
 II+wRU1OmUcRJ3L6PgYMsb8QbjJRzjFrtrWwlQHmDZpwbzoUPGDOwQP78b5VkEmjMO
 5ieJsHDMkgSEqvoHUn+eXuuxncuKBtiyPFq5/5WMGkQeOE9XhuJ4Nf2LVH4WqYCJd3
 eD6oaexBSdEsA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 416D4A0085;
 Wed, 11 Mar 2020 16:36:03 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Mar 2020 09:35:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 11 Mar 2020 09:35:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bO6Tagy03tAOxzivU0gwhlPiZrjrT1rjB7siYXRTaJiLE73IeeB2WooHv4sNTQ20HnqV9eA1pnoVE2WtzO17P+jcLlgwXhds9lT+x8JVsGMikA5015uLsKH7V/4H3vPhsxCl5W451G3exVmgcptNztDuK9XelxQZoNF9KZeDB4noM+fDp79ZU7EEz/nbivciqhWI7Tpewcyh9eAMwm1aQysrQA1H+PRAUa4yG6Vf7OZbqLNazbuPUQgk9f2pU+WMvulflvJDAlsbSbKa7gmRa/EepCAyRFecCFzCtYf2QqkRSzyHyAUcUfICkUKoaPXAzNgj/df/DrvQoF20224bDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY54OvyEORnwNXGGs5dbPDvosroT2dVspYOudcgf+eI=;
 b=KbiAjO0vx8eOuhf0mYjHhJz6rh5K7IGLlBf8qhT7Vg2EzhSYNijRHWarWSUDhf+qeQ1glaX31L0FX6GzNjh6zfsS4kmmxE/NNh9nhRjV7IoUDAvGG33sNbMPB5OyRlrriApAFI64/HyvFT9ZSX2zNt9LC8xuCIV3LWHXXdhLpnHTErE77wFZqyi1BIQve6xRXUjL/9+6IAqWJc+8wSCYp89cPxH3N9vP4GCt1VnDnhBRpU+1BGb88Ok+u18IuScww7fqPU783ZWs5x412PSks8bmYD4uMmcsk/3v7ttHRMzOD/yOtg4yjeGhwQTeEmBWx50BFE5YDMAo3f5iz9uRMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY54OvyEORnwNXGGs5dbPDvosroT2dVspYOudcgf+eI=;
 b=mGYEb8osrknZaNr4SRieTQLfeQdc+Tc9CBQ7pBl+m0w4PD25CVyaO9BKIeKeppLsvqsRCqIOC0PnlUeRHv5diC430OIUtxDmikId2jcJMICZYGWwKPuza/4jhypSt83p5au3bWa91J/Mvi4Tqpnh7WHfGnkkbxiig1V8Ue1ykbE=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (2603:10b6:a03:db::25)
 by BYAPR12MB2949.namprd12.prod.outlook.com (2603:10b6:a03:12f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Wed, 11 Mar
 2020 16:35:41 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7%7]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 16:35:41 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH 1/2] ARC: define __ALIGN_STR and __ALIGN symbols for ARC
Thread-Topic: [PATCH 1/2] ARC: define __ALIGN_STR and __ALIGN symbols for ARC
Thread-Index: AQHV98Hzr2RKMRF2AkWZBgFmQdoYxqhDlq8A
Date: Wed, 11 Mar 2020 16:35:40 +0000
Message-ID: <e7b583c8-6189-cf4d-1df5-402fdc2e896c@synopsys.com>
References: <20200311162644.7667-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20200311162644.7667-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [149.117.75.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84284cb7-770b-40cc-6f7d-08d7c5da3cdb
x-ms-traffictypediagnostic: BYAPR12MB2949:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB2949E87965CDBCEE11D511C9B6FC0@BYAPR12MB2949.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:179;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(376002)(136003)(366004)(346002)(199004)(6512007)(26005)(6486002)(478600001)(186003)(4326008)(53546011)(6506007)(4744005)(64756008)(66446008)(2616005)(110136005)(316002)(8676002)(36756003)(76116006)(66476007)(5660300002)(66556008)(66946007)(31686004)(71200400001)(54906003)(86362001)(107886003)(81166006)(2906002)(81156014)(31696002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2949;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pGZuq7zzyPE1dflA9gS+BCe62o/4F122ELgn+QzJhaw8d54dSkAlQdEeXwGsnTACHKNfN+CltzLI1gTktkbr9SYriSlX78jf6QI9paqFj+jF64Os0GZDqx5YZhC1y38syDtHxWpgoLuL7Gp+g2P1o9Jy83vd/lJmhxmDbiclBvQv1mUy+B2qELDreKWTHwfbpVvWgqPlFg80J4yPGAOGZx0YpChVdnolu/BMyrnpA4HNfzrO2eiNQ1zElXsfTpRHdfzi3PFeZX5Ell53v8Y+A+/GaNaSMEie5Uqyrv69a9YgkY0oOgK0XQ+2J3sZslD1ng6WxvXB6yagZJWgJRKSRVLgcRgp4KLkOtvMVqYNMQW+Cf8ZsO6qIC8f2AiFVC3iS0HgQzwISTDVX/uwXSlYKEnzzvMUytobVE3X/gDi+mt1I/8BHGyQlzacZOofdly1
x-ms-exchange-antispam-messagedata: TeDcsRzTBBc4hJU7JSStCOi4Caa7by9V9y0RLmPEs0Zb7YLlyunBAGG3zdxE4L+YFgL7dyhdfI3jKHq2crk2eyXICN0nE4IeXgvCARyjP7U1v9zzybzuS2/j+w2mAmmy9OUQHGfJ5x6Ncbf1dcL2YQ==
Content-ID: <9FF97FDEE15A044FA388AB0F0025DDC9@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 84284cb7-770b-40cc-6f7d-08d7c5da3cdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 16:35:40.8372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dqtzltia8/GUYY2b79n8Ot+B5bVcTUAT48pvfSdnlG0J3DsskR/wgivdLVhikQpeaekFHFQ6dmg+DED2IwpM2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2949
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093608_823829_AE9C27C3 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 3/11/20 9:26 AM, Eugeniy Paltsev wrote:
> As of today ARC uses generic __ALIGN_STR and __ALIGN symbol
> definitions from "include/linux/linkage.h"
> They are defined to ".align 4,0x90" which instructed the assembler
> to use `0x90` as a fill byte when aligning functions declared with
> ENTRY or similar macroses. This leads to generated weird instructions
> in code (when alignment is used) like "ldh_s r12,[r0,0x20]" which is
> encoded as 0x9090 for ARCv2.
> 
> Let's use ".align 4" which insert a "nop_s" instruction instead.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>

Acked-by: Vineet Gupta <vgupta@synopsys.com>

-Vineet
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
