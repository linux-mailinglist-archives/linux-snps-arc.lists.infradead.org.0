Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EC317F743
	for <lists+linux-snps-arc@lfdr.de>; Tue, 10 Mar 2020 13:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEz8PHRPl/Sl6I0rORT6hmLJ00WxWslgKcIjxa5KCn4=; b=B0YGT98iONIFVH
	stGQb0N8Qu27SrTeWF4kBRPH/D/F+R2KShCE7lXiuKWkpzVSjBjs9lyC2jDuNNJ7G1FkywuPsN/8i
	sk1TBYTFFU+74hi+u1ZMHFQaX0A9hfTRoD9p1R5J+lxA+7ffgh3skSSw5lVOvEsCusvLCHkHm85x3
	KbIn8XBGsQak/4v9Df7I2jCliC9ehA3eTyzKN89pmfNoY27JGAu8zLWk9daKdUBHW7GGrvXaOYMiE
	DqLr/eFnkQwP5RK0NzPBfpaTn14iGnSoAccLOHIIU+GLgYcU/56MSVozV0cjB2zwNJQSwNgCMQT7H
	GrCeHZluPFhbQnMJRR0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdqL-0005qC-Vv; Tue, 10 Mar 2020 12:18:41 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdqI-0005ol-0B
 for linux-snps-arc@lists.infradead.org; Tue, 10 Mar 2020 12:18:39 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D0E0DC08E4;
 Tue, 10 Mar 2020 12:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583842715; bh=yNj++G4P+gDySRZKOasJLK05jyU5+SQ5UDE9u+nTMf8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Gsef4vcz3lu92Y42wLhIl8PJeXlIAp6cOP+sHewc7K4Tr4nkRMhsJ9HLw6mPY4Biq
 dl4dVxQgp/RYRFF0paIXPLlcRfMB0r6QbAmjyvdCnSf4Y7darc4NsMra/BN6yFfSo4
 Q0OgZNhC3gFrSNsp/EL0hj++WUSl7/uNEiM9It/sGvnOwTXO3rm5Kp0mf64uY816jL
 HqwSpQiJMkvJAXh8DJfBgkCMvZkVuaaSqU5Wq7Ba/Aanl4YUo/HGXRaWKp9li2byAx
 6lZMeCaDn8twPtzNciePG/PHvV3zOaGr4jDc+usPQj81MFKrs1geLGoVp39NsL1OAn
 c04JL0TWEiYYA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9BC47A0079;
 Tue, 10 Mar 2020 12:18:24 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Mar 2020 05:18:19 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 10 Mar 2020 05:18:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbZX/gUXzAjCx5qg+Ok/Ohis7IohyFkvsvyTkOGxnDZYv/sBGB4zIR7lmia9z960b9QyPP58W+ISteHHL3nyqciZmfOsnhhNbbuc1Z2AHNq50vgHRea6WIq0F61UVbb15uiZ6vn9f63xZrwNK5qs5eXFPfZBz/9v/6HyFPLhJe498mtNWzRNICatqjo4P8eNwi6dEiW76QaBr+au4z6v/HVJZNCv/+1D/o11ncUM6CRJVu+tg5+YZWA3k9Uw3q9zW/OZBQ6hUdaWiIM4SBK6iAtW3R9pIItlDvXxdwyh0vZnTcRHjbja1WMFInt86s1XaDD5ZqqMl08OoAfpFSIPRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNj++G4P+gDySRZKOasJLK05jyU5+SQ5UDE9u+nTMf8=;
 b=AE3mcy55gkv8gg0B/UTJgv4/tmJzEGhdLqBNnZiVJA+bSSl0xscmtveT8PbAdQ4GMEfjbgEF1Ka2qv7G43aVjj2i7xd+SHtk+h126SAc0oxBfXpm4dR2WDfKrL/mY8PPOMY2PP/KZiA0cuPiVMrvu9nFXG2/r+opZ8NqpGw8DPb+zoZY2LHwiQK890CRepuDHXm90EKODsbuGM0jwSYx+IDY7FwZLRNC/jqIbvsIiQviyCxYYrPzGpmJzMtn1HKjW1H5723D7AMjo1LQni15+M4buUzsOdIMdyr88iUjFxHHJ1U+DNIKvrNzs1lgbTNVfZLtk5jvMndFBSBcxYMU6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNj++G4P+gDySRZKOasJLK05jyU5+SQ5UDE9u+nTMf8=;
 b=NhOA9gBCQpPakB5LnqgI5EATx9VEcdda7LNe9Krety1T2coKIT5WSC1QpLxv1vvFUGFSbKTCGP4bo4nCorg7fbDKW+FizyHKbC8cq+LCe515XsOKb/K420hrwqQJO7i4iXQ9ZMAxq8dT5PLMHN3rCHaF+4KGqyvIMXil+HG8B/o=
Received: from BY5PR12MB4034.namprd12.prod.outlook.com (2603:10b6:a03:205::9)
 by BY5PR12MB4035.namprd12.prod.outlook.com (2603:10b6:a03:206::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Tue, 10 Mar
 2020 12:18:15 +0000
Received: from BY5PR12MB4034.namprd12.prod.outlook.com
 ([fe80::3531:93d8:93db:207a]) by BY5PR12MB4034.namprd12.prod.outlook.com
 ([fe80::3531:93d8:93db:207a%5]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 12:18:15 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH v2 2/4] ARC: handle DSP presence in HW
Thread-Topic: [PATCH v2 2/4] ARC: handle DSP presence in HW
Thread-Index: AQHV8ykv/JMPPGHpokOBrJCtc4/bvKg8Q+KAgAV+8B0=
Date: Tue, 10 Mar 2020 12:18:15 +0000
Message-ID: <BY5PR12MB40344989C3CB5881729F660CDEFF0@BY5PR12MB4034.namprd12.prod.outlook.com>
References: <20200305200252.14278-1-Eugeniy.Paltsev@synopsys.com>
 <20200305200252.14278-3-Eugeniy.Paltsev@synopsys.com>,
 <2d11b6d9-a37a-8cc3-1feb-a9dbc345de12@synopsys.com>
In-Reply-To: <2d11b6d9-a37a-8cc3-1feb-a9dbc345de12@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [5.18.243.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dda1ec26-6ecc-46fa-98f1-08d7c4ed1c6c
x-ms-traffictypediagnostic: BY5PR12MB4035:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR12MB40350049416295F9C3B412CBDEFF0@BY5PR12MB4035.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(189003)(199004)(66946007)(26005)(4326008)(52536014)(33656002)(66476007)(8676002)(81166006)(81156014)(76116006)(64756008)(9686003)(66446008)(66556008)(55016002)(91956017)(6506007)(110136005)(7696005)(54906003)(2906002)(186003)(8936002)(71200400001)(498600001)(5660300002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR12MB4035;
 H:BY5PR12MB4034.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VYPkY1/GyUJK1Avh/TDfrFkvK0GzcU+wGQ74KTA889SBVhksHoEFGRlgQobJEAmAqSvSW8mI4CEb3HVwDsSdTVmsQemgbV5Hv1vl/l4+p7FYcwB/VIekdYphk6t2PXjaqcRrLFqY7njAlWNl5vfp8FXxzF1cWOHCkeAjvyOslPlUhDdj0pfoOx4SR2pVf0at0zEwUjSp5O/sL4FRbFdBDeVAHRK1oVYtXDZscJs0/IzfCvM7l1MjSebB42oE7o1lK0MWkv27rukEHrEbZyG/QDXL9wJEuCa+nwVm0ZjlInaXpQtOm5pRHkgnfeRRzkSrot/pExj0RgAcEKXUrMAHq07JtwKvMIgSvwhWUC/JjJsxMjEaYk+1eyhZIMGofPTXJm7FdIJVpCwkPlkqrVVr4BWVOtq2EL26QgOIV0RhjxB5LQ+wtPQF8utyc+s0YE5O
x-ms-exchange-antispam-messagedata: khmwjiJgozrhCdJg/XGkYipzY8r/6JjZtghu1YhFn7dmEmSEk/WXGp1YNmU/Pv41vp+flDPbrLnpfAMJP/aJG/Dl30FFJJZUkQjBADdNAXxbHuGzZkzMATnCKMxoOY5wCKkRJzwB07R3up8ePmnDDw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dda1ec26-6ecc-46fa-98f1-08d7c4ed1c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 12:18:15.8261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WsxxZe6+WncowQJ7yNEW5Z/0oyw3pYIoOwRHX3CUTxnGNgboGmCNw9cVE1qK7g9V7IQYQTsNLZND+ir9WoswQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4035
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_051838_172277_59EC846D 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

>From: Vineet Gupta <vgupta@synopsys.com>
>Sent: Saturday, March 7, 2020 03:12
>To: Eugeniy Paltsev; linux-snps-arc@lists.infradead.org
>Cc: Alexey Brodkin; linux-kernel@vger.kernel.org
>Subject: Re: [PATCH v2 2/4] ARC: handle DSP presence in HW
>
>On 3/5/20 12:02 PM, Eugeniy Paltsev wrote:
>> In case of DSP extension presence in HW some instructions
>> (related to integer multiply, multiply-accumulate, and divide
>> operation) executes on this DSP execution unit. So their
>> execution will depend on dsp configuration register (DSP_CTRL)
>>
>> As we want these instructions to execute the same way regardless
>> of DSP presence we need to set DSP_CTRL properly. However this
>> register can be modified bu any usersace app therefore any
>> usersace may break kernel execution.
>>
>> Fix that by configure DSP_CTRL in CPU early code and in IRQs
>> entries.
>
> How about below ....
> 
> "When DSP extensions are present, some of the regular integer instructions such as
> DIV, MACD etc are executed in the DSP unit with semantics alterable by flags in
> DSP_CTRL aux register. This register is writable by userspace and thus can
> potentially affect corresponding instructions in kernel code, intentionally or
> otherwise. So safegaurd kernel by effectively disabling DSP_CTRL upon bootup and
> every entry to kernel.
> 
> Do note that for this config we simply zero out the DSP_CTRL reg assuming
> userspace doesn't really care about DSP. The next patch caters to the DSP aware
> userspace which this actually saved/restored upon kernel entry."
>From: Vineet Gupta <vgupta@synopsys.com>
>Sent: Saturday, March 7, 2020 03:12
>To: Eugeniy Paltsev; linux-snps-arc@lists.infradead.org
>Cc: Alexey Brodkin; linux-kernel@vger.kernel.org
>Subject: Re: [PATCH v2 2/4] ARC: handle DSP presence in HW
>
>On 3/5/20 12:02 PM, Eugeniy Paltsev wrote:
>> In case of DSP extension presence in HW some instructions
>> (related to integer multiply, multiply-accumulate, and divide
>> operation) executes on this DSP execution unit. So their
>> execution will depend on dsp configuration register (DSP_CTRL)
>>
>> As we want these instructions to execute the same way regardless
>> of DSP presence we need to set DSP_CTRL properly. However this
>> register can be modified bu any usersace app therefore any
>> usersace may break kernel execution.
>>
>> Fix that by configure DSP_CTRL in CPU early code and in IRQs
>> entries.
>
> How about below ....

> 
> "When DSP extensions are present, some of the regular integer instructions such as
> DIV, MACD etc are executed in the DSP unit with semantics alterable by flags in
> DSP_CTRL aux register. This register is writable by userspace and thus can
> potentially affect corresponding instructions in kernel code, intentionally or
> otherwise. So safegaurd kernel by effectively disabling DSP_CTRL upon bootup and
> every entry to kernel.
> 
> Do note that for this config we simply zero out the DSP_CTRL reg assuming
> userspace doesn't really care about DSP. The next patch caters to the DSP aware
> userspace which this actually saved/restored upon kernel entry."
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
