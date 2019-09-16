Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286C6B449E
	for <lists+linux-snps-arc@lfdr.de>; Tue, 17 Sep 2019 01:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FfdJF+ywpaVTg3IIXA20CwO2QweIIQzDbJvuYvb8yE=; b=TLj0rf1XwrWFTa
	VzaFrTj4lP0g/YoVQwagzqPrL+kz8jl94gBzb657LgAMVT+licn3ooA3Gp2lzPdNkMRbEASQIo9Ps
	4fIEbrAQ8MmMj6muYFlQhXm50ZevUQyvgB87lnNa7S4fjgm0q22ZpNMDNfVsl5rKg04j1Dd+93Wdq
	nNtpn0ZgqrTu8ncKnx/ktl/qmg/OO3RAGQyHa2UV2Zf7Me2HzV4EPP6nqJtTQo9WxALGz43RQTfdo
	7RfjJv3OkFmNHYxBfmz6BQvPQ/KaIkBkLFUA9AtjCw+iDa4RK2b0fkS4Knp30mW3+YAh8UkCe07pq
	/hzpf8jNAJRK2Cz4djgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA0XW-0003Av-SF; Mon, 16 Sep 2019 23:36:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA0XS-0003Ac-Ao
 for linux-snps-arc@lists.infradead.org; Mon, 16 Sep 2019 23:36:12 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7BC20C0362
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 23:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568676967; bh=HjfZdz6ll5qbpilc6/htZNcuoCOFnJXphTyx9IFwsGc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Z7lz0G/YOEnpYQmGv/bw5kWwClC5v1TgN1tceuct4jYUUGkn9JeyOEMvIsij+sxL8
 HMZNwBd+yRDfBmaFiNkOzPRZY6SEZJlb8c3kdbH8wO7Jz8r81MRaIdXeZqP+I9bamV
 w1wb5gjvqYd1W5pnAk9Ko8o/I7KSh+4yRBzrdBYV0cTJkca8a7Q47EpGrtaeWtAWQd
 6xLBkvr7gsZLye111cKxlNRACWgf3XQld66xcDegcdsHey1IiilJedbJG2rO7teUFX
 PD03vEmQOSnLcVwQ7x7JE7tq7epzjsKuy/JpHNfaxWaKz4pgJjUge2738f0tJaZJKw
 xF7czQDQlr8EA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0229FA005A
 for <linux-snps-arc@lists.infradead.org>; Mon, 16 Sep 2019 23:36:02 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Sep 2019 16:36:01 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 16 Sep 2019 16:36:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hcGqPUIFHr8uPIHeHKH22/n0ZEjZHhSt77r/cpgsZxfwGJIeQsCvHAWmjNwmPq35awA1YVqnu4OkGBYihdY3zLQaWIdUyuK4fh/DztHvJ4I9c6rzFtL5BHYcSPe446a3F8K0rCnP/jvGe91Yq5twNTzv7AA+SCBIxjrAyUMK215+o/xlx7OLi+HQU8KRMGzDAKP0cK/STITh4Y/NuhC32PXInW1/zel6bC6phaBpX+FYMPAgvg7zUnFDldq43jWPpAJqLvhuxCruBhLhd8niVt78zXZ/gl8UrXLYTbu/Bl8kaa9juFaNeCUX4ltlcslb8T+50329/2BtFKZzQroXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRbrDArq0sWVMECaj4ucQwvMia807fcto01y5N177dY=;
 b=YYMmSgDrAuLo60RrPZV+ojcHcfySxPcwaocaw8tHfsvbw5QfzNuY0RbW6IXoW07YLOwlsWrvOZlvHXIxcqYKn/wCwZqpdayS46WzjvuusQtl9W9a4+OCBZK2BGuzZbPQfeW0Ko8ohe9uXqjo41Onjbgy9oFVLlPuvzMYhR9Sgke57JE5jJUdzJGJMadR5fVkdzRJhx+hXhyo+n8W7WXNFl8VJKjJ2/M9wUsbVu3HLw+muDbNSbbLR22/YDyjfv9kE+MkBbRlCP64IHBxPAjGoEwn49K3/eUVcre/l4qYWzFZjrdvf3STYUQ93DfXHlmAd4ItXpCXINnkUrb31EmBaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nRbrDArq0sWVMECaj4ucQwvMia807fcto01y5N177dY=;
 b=AkicphieupugVprNV+rSeH35HBAg6VoAac8BbU4NIZALtkeDF+rX0tG8rUbTEymIzZHcBTgpTgvWszS2D4fLEem4XJgrueB1cxa8bf3U9f+tydxI2wVz2K4hS1QxZbSUzmyRf4Nf+m9cGXxjAU7eKtHR/7gJvs5jGDA5naisllw=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2519.namprd12.prod.outlook.com (10.172.119.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Mon, 16 Sep 2019 23:36:00 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a%11]) with mapi id 15.20.2263.023; Mon, 16 Sep
 2019 23:36:00 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: RE: [PATCH 3/6] ARC: mm: TLB Miss optim: avoid re-reading ECR
Thread-Topic: [PATCH 3/6] ARC: mm: TLB Miss optim: avoid re-reading ECR
Thread-Index: AQHVbNZIIbVld/S4VEyst3RejCdx56cu9Guw
Date: Mon, 16 Sep 2019 23:36:00 +0000
Message-ID: <CY4PR1201MB0120D19524D7D3F184E2B181A18C0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190916213207.12792-1-vgupta@synopsys.com>
 <20190916213207.12792-4-vgupta@synopsys.com>
In-Reply-To: <20190916213207.12792-4-vgupta@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.56.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c141b280-82b4-46aa-4ca8-08d73afea192
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR1201MB2519; 
x-ms-traffictypediagnostic: CY4PR1201MB2519:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB25190AF29BABE3F741EF4F63A18C0@CY4PR1201MB2519.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(136003)(366004)(376002)(346002)(13464003)(199004)(189003)(478600001)(7736002)(229853002)(71200400001)(5660300002)(9686003)(14444005)(66066001)(256004)(86362001)(55016002)(6436002)(446003)(476003)(11346002)(486006)(25786009)(14454004)(186003)(54906003)(6862004)(4326008)(6116002)(3846002)(316002)(6246003)(2906002)(66556008)(52536014)(64756008)(102836004)(81156014)(81166006)(71190400001)(66476007)(8676002)(6506007)(76176011)(66446008)(7696005)(53546011)(66946007)(8936002)(33656002)(99286004)(74316002)(6636002)(305945005)(76116006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2519;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: clwhhgNj6uQ3Z1ctLz48YuOpeZAvJFF7LnyjmApwDVHN3LVYDrb80QIvnsquuvyXMvbq8Bux8NRBE4CxcAaDHNBrqoF8nwLW9q79IL/jaqHIbFpN/l6cuOm0nXT/cDgdxPzuMR6Bi4jK2TiGhUtZmh97W//86+6uX3TA78XMOV3r2hJd/bC9mkMfvHJSy2p5K+lQPswpZ3zB2iXzdwELD+dBnEPHN//M8bSakWbZ60+O8faAbJLMnWTYIuH3mjus/FHe3+rgxftAg5NTYL3xNOji6TRnL1W7toGuKklPphujPgcjIPsukJBVtRUJe72EF2tXS+eQYCUas/gaSt3JOqvEG7jg68LkEFHAo2gb5dcSWdI+qe2Ijd3khWGDenVP/H4IQNFPrBi5m4k59bpWItLBWp7HWCwif4Rb096gxCI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c141b280-82b4-46aa-4ca8-08d73afea192
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 23:36:00.2058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BBVb6Ux8xI0pCIoIn9DIue0POjdgEE3fGYI2PC1y1Ny/YtSFidlwjir4AJwPjJa1h2nmqZUGpYPk5aH04Ji9sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2519
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_163610_437316_2CD78836 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

> -----Original Message-----
> From: Vineet Gupta <vgupta@synopsys.com>
> Sent: Monday, September 16, 2019 2:32 PM
> To: linux-snps-arc@lists.infradead.org
> Cc: Alexey Brodkin <abrodkin@synopsys.com>; Vineet Gupta <vgupta@synopsys.com>
> Subject: [PATCH 3/6] ARC: mm: TLB Miss optim: avoid re-reading ECR
> 
> For setting PTE Dirty bit, reuse the prior test for ST miss.
> 
> No need to reload ECR and test for ST cause code as the prev
> condition code is still valid (uncloberred)
> 
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  arch/arc/mm/tlbex.S | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arc/mm/tlbex.S b/arch/arc/mm/tlbex.S
> index 110c72536e8b..4c88148d4cd1 100644
> --- a/arch/arc/mm/tlbex.S
> +++ b/arch/arc/mm/tlbex.S
> @@ -380,9 +380,7 @@ ENTRY(EV_TLBMissD)
> 
>  	;----------------------------------------------------------------
>  	; UPDATE_PTE: Let Linux VM know that page was accessed/dirty

I'd suggest to put a BOLD comment here saying that we rely on previously
set condition flag so that whoever reads or (even worse) modifies that or
previous code keeps in mind that we shouldn't clobber a particular flag.

> -	lr      r3, [ecr]
>  	or      r0, r0, _PAGE_ACCESSED        ; Accessed bit always
> -	btst_s  r3,  ECR_C_BIT_DTLB_ST_MISS   ; See if it was a Write Access ?
>  	or.nz   r0, r0, _PAGE_DIRTY           ; if Write, set Dirty bit as well
>  	st_s    r0, [r1]                      ; Write back PTE

-Alexey


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
