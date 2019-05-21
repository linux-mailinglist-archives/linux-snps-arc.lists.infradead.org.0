Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A2524964
	for <lists+linux-snps-arc@lfdr.de>; Tue, 21 May 2019 09:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZVmtcJfwzeT1OJM+c8XLmXynErdekOmD8nOUgJZ+bA=; b=m8GDQ/VOT06Zba
	C1FbwNN86YREUA3gH02bkJqmVTjvyx/BFcEJTef1QhC9XAVnzAokwFchClYblCEYaqxaCzEr4/vNH
	JGeYkU07wBTBPHfCCdue+LumYaVgPa7H2pWvNjDLASQ2V5yviGD5Pc8YBxQUF63YOHd5PgokibjDu
	KED8+6QhcIp3NLcTA5VKn+MSzRQL4SOf/AH9Y4CJkCCKbfmB7/VmNLH3LCQ7NjEf6HwWMYFfk+wO5
	q/UokSo+wmXFbIVgYftzsbZ8qg05MkgU0ARoDuL/WRj6rSV9PH3s1WgYJQZMymb5lTiBjSFaxkzoe
	1nSug3AFnW+e+IyAzUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzZn-0000bb-2c; Tue, 21 May 2019 07:52:47 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzZk-0000ak-Fy
 for linux-snps-arc@lists.infradead.org; Tue, 21 May 2019 07:52:45 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 60D66C00AE;
 Tue, 21 May 2019 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558425149; bh=s8XN/EhOSmwGat4OW2+eFKKDp02sZ4IQ/0b7DjzlAzI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=EBzgOB75wIFH75dNUehPl8ewjEzO/Y4REduBsGh3rCrujn/bWg5QEk02t+Wm3qfHj
 yPqJ+HO8tOQ+6i/lAte+/ZH3DgXrq0xHFRlacKYCYRnMw41Cn87fMC2zSi3wTAifG4
 7ToAeK0n4phtwRw1vKT4oWZI+fWwmxd/1w0aKJLvs2chCuQJYg2vI8iPJyS9nZlyyk
 rMm+yXQ7hP2DHgs7qimCx4w3I2NxgsXD4F8P+DjNesxPmMwPdYz/7nzolEiuV9WHf4
 c0OjuJANoGFo30wF7aTzaYP32kGbs5m0n3MSWaOi0OywHuJwrEetHfmcpLG98NN28F
 Yo2CWHreVMRMw==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id DBC10A005D;
 Tue, 21 May 2019 07:52:40 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 21 May 2019 00:52:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 21 May 2019 00:52:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s8XN/EhOSmwGat4OW2+eFKKDp02sZ4IQ/0b7DjzlAzI=;
 b=Cvpah8g9DnmPT0/vAIFo9lqS+frPjk45nI0G+S1i8IqXauIKZZHklU+qKrN+FWTKHOAf2S3s+DFEy3udoUBJicRIeUVIpX/Z8djmkF0tuHAPdDpSELHjsyIoS9Edxfoeeu721uCH0IWcD9YntxIXs3fqtWmWD7kljeGbQG4JW80=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0088.namprd12.prod.outlook.com (10.172.79.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 07:52:38 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 07:52:38 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: RE: [PATCH 0/2] ARC: [plat-hsdk]: GMAC DT Bindings Improvements
Thread-Topic: [PATCH 0/2] ARC: [plat-hsdk]: GMAC DT Bindings Improvements
Thread-Index: AQHVDxIGi6fn1ALJVkCST5lv1eQLC6Z1Neig
Date: Tue, 21 May 2019 07:52:38 +0000
Message-ID: <CY4PR1201MB0120DD24A9BD3AB54F94F5B1A1070@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <cover.1558359611.git.joabreu@synopsys.com>
In-Reply-To: <cover.1558359611.git.joabreu@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: vgupta@synopsys.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 095f0832-907e-45be-ff1f-08d6ddc14b63
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0088; 
x-ms-traffictypediagnostic: CY4PR1201MB0088:
x-microsoft-antispam-prvs: <CY4PR1201MB0088B7A61BC175B389BB6E2BA1070@CY4PR1201MB0088.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(396003)(366004)(136003)(376002)(346002)(13464003)(189003)(199004)(71190400001)(74316002)(14454004)(7696005)(71200400001)(486006)(53936002)(476003)(76176011)(6436002)(11346002)(446003)(110136005)(478600001)(9686003)(55016002)(2906002)(54906003)(305945005)(316002)(33656002)(99286004)(52536014)(86362001)(8936002)(6246003)(256004)(4744005)(229853002)(102836004)(66446008)(66476007)(66556008)(64756008)(7736002)(26005)(186003)(73956011)(76116006)(6116002)(25786009)(66946007)(66066001)(3846002)(8676002)(81166006)(81156014)(6506007)(2501003)(68736007)(5660300002)(4326008)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0088;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iW26AuconMQAztBQOk1hoQxxF/pG9jCngoVecFkxllExeRsTI4OyucKvTxGFKsd/GY4d12XqYjTK88kyIkAJ7XG/vEM1drqLc1Xx97a6NS5pWO52txYm7rcD5mvAW5U1dB4q3xdMzYPGmyq9bx3PfmJoEdIjz/a7M7t+OG6WTj1yv6pAAWuGK6Xvm6kW7uwXG47+z2NM3M0qeN1K4tdsG/yH6D/Zjc2V5LrrtC7JK96JcbSe35IX7ykz36DPM/yahfr9/+/51YEJKvYguSW22v1I9ZQo4EIKb/34scHG/qYP5+mYjLyiS+M4L1su23U4UAyFac0pn+inYu8fiXJtTKlqlo10eyfKiQ/6haXaMFqihWu+SRUTm8VJgYbX4jlIwPA3iujI5yWzfS8wML1sJh4HLji2W8E8lBhxNYBy41E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 095f0832-907e-45be-ff1f-08d6ddc14b63
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 07:52:38.0983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0088
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005244_579625_9C2007A9 
X-CRM114-Status: UNSURE (   8.26  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Mark  Rutland <mark.rutland@arm.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob  Herring <robh+dt@kernel.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Jose, all,

> -----Original Message-----
> From: Jose Abreu <joabreu@synopsys.com>
> Sent: Monday, May 20, 2019 4:43 PM
> To: devicetree@vger.kernel.org; linux-snps-arc@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: Jose Abreu <joabreu@synopsys.com>; Joao Pinto <jpinto@synopsys.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Vineet Gupta <vgupta@synopsys.com>; Eugeniy
> Paltsev <Eugeniy.Paltsev@synopsys.com>; Alexey Brodkin <abrodkin@synopsys.com>
> Subject: [PATCH 0/2] ARC: [plat-hsdk]: GMAC DT Bindings Improvements
> 
> Add two missing bindings.
> 

For entire series:

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

@Vineet Gupta could you please pick this on up?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
