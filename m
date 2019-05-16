Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8F20E2C
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 19:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4sNQUDijSCLiftWRMYusNzTm7XeyNcbUALCqZ0Giig=; b=qYOPeL8VHBegEZ
	xDoocqNdVEUxugnPbZMs/DRaIijHshOXZ3NN7kd8hVbPaeRdtDhG5fGN+BpbK50kBQeMmF1H19FGa
	Nk3Vuegzh3Vi6oYKYMNplDkr2Dy1VCpl6IVgUwqY1T4KZ4nI3SFa/34UoMGrOA3+S+u4x+fPYTSjo
	cHnmdl3R1IqZckuEwE1LNSZ0Az2rVf/m+JEG7b88bUZEDx/18b67/+SKoSzl2Uj+2eD6zZLC63ZEX
	FIaM0Aark9v+Ooj/9ubTo65/Uc8NBwu1v7KBzZGsDn/mT6JHLRw+vnwlP7fCPl7JbAac7XN6xSTLa
	+NHgsuFFekAaSERZSP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKR8-0002OE-R3; Thu, 16 May 2019 17:44:58 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKR6-0002Ns-RY
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 17:44:58 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D013DC0B97;
 Thu, 16 May 2019 17:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558028701; bh=crxjKHxEpieoI+cLpdzkqh0oUiM/l9M6CXzyCwZkdhI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ggFBjkGijkfoJM5Ozcqz40PK3kEr8j+yzWnHuC55qsD6vDzi/hT2NIIyUgppm8OXn
 vIrQpfK2DP9FCWYPunx1l3yVkmVP69SYIt6XD8IizAnZCYc6xy3itGglXaOLAh43X9
 ykRA44Z9qWCp1vTmJpESTbB93gwrIREsUnJBorpKtKLziSL9P6rPDM3BdPV+yQfFSC
 GawVZCKT9GZOEp0y3L7sM+of+QdCTsYojJFSdJmAx12F2v340uNvkVOcEC9epD2Rwa
 /G0Sbsoixy3akafk9pC9KywwdH6tN6hUEPpg+C8bzIlmbBTHsQoRhRmdHnDvedr279
 s+MiWI0dfO/Zw==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C0B1CA009B;
 Thu, 16 May 2019 17:44:50 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 16 May 2019 10:44:48 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 16 May 2019 10:44:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmN+AYK9mAKfOlO6Te8/lSQdYymNXwo+lfd4hh7gwRo=;
 b=XWvtEmS/5T+96RkA7s6+z+Mvcii4oqrb+kQ3YYdxhfj2iBc03PUvegQwG9nzcRnb2iS1EVazfGx+G4ktzkrQUYiMcOxAJhTcaPLr+qvLf1sYq85oe6ExfLU1O20b+mIWGVtPuTkviMYnH4Q/tH+iIdlwjA8O7aeaFkStDjkxbVo=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0024.namprd12.prod.outlook.com (10.172.77.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 17:44:45 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 17:44:45 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: RE: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma access
 permission code
Thread-Topic: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma
 access permission code
Thread-Index: AQHVCrVzPLg+oAEwCUOQqcYrmCMW8aZuCFmg
Date: Thu, 16 May 2019 17:44:44 +0000
Message-ID: <CY4PR1201MB0120A3C58405DD60FF6B4359A10A0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
 <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
 <1558027448.2682.11.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2517B16@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1077b586-acf5-412c-092c-08d6da262ee8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0024; 
x-ms-traffictypediagnostic: CY4PR1201MB0024:
x-microsoft-antispam-prvs: <CY4PR1201MB002463280129A553DFE80501A10A0@CY4PR1201MB0024.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(366004)(376002)(346002)(39860400002)(13464003)(189003)(199004)(256004)(14454004)(14444005)(66066001)(7696005)(66946007)(76176011)(73956011)(66476007)(66556008)(64756008)(66446008)(476003)(71200400001)(11346002)(446003)(71190400001)(486006)(6636002)(4326008)(316002)(99286004)(86362001)(54906003)(68736007)(478600001)(76116006)(26005)(186003)(53936002)(6246003)(4744005)(3846002)(6116002)(33656002)(2906002)(102836004)(6506007)(53546011)(55016002)(25786009)(9686003)(305945005)(7736002)(107886003)(74316002)(6436002)(229853002)(6862004)(81166006)(5660300002)(52536014)(8676002)(81156014)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0024;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pdL7VN2asrODAZs1KAZmRuYYW1bxsPnqamB6kHGgDhZpjNHzS1qpVvD+oebPpQLvSM+mehomemiXO2c/NuC4Ja/b6WK50TwOuzDPn5DVQto2qWB59/wfYVF4kTeRkYNm1T6tsfWgiJtdny/4YuTuu6C6T9DpBtHildij8kogUF3IG9sgEOomWwgqmnv5hWlWipCEMjvHib5HzyzA6H+vsiVuVawXOCH6wtPqXryAxCGrG78kNGLAq8z5b6olRYPJr6tdmzaWxP4/QB4hfICPw4HHauaAO/64c+H7S13K9uAbXj3e1MUZokXsRWnN34e6xWL+48tRfRIakjxiNZVEmpIA8u2tPFS+0H511mD54+rojAEIOLj2lmyXhduNhhrgQWF+YELc987tgVUZzKloOdyTF8Q4VaqIsW7b1hQhjZo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1077b586-acf5-412c-092c-08d6da262ee8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 17:44:44.9274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0024
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_104456_900232_B896C8A0 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "paltsev@snyopsys.com" <paltsev@snyopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

> -----Original Message-----
> From: Vineet Gupta <vgupta@synopsys.com>
> Sent: Thursday, May 16, 2019 8:38 PM
> To: Eugeniy Paltsev <paltsev@synopsys.com>
> Cc: paltsev@snyopsys.com; linux-kernel@vger.kernel.org; Alexey Brodkin <abrodkin@synopsys.com>; linux-
> snps-arc@lists.infradead.org
> Subject: Re: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma access permission code
> 
> On 5/16/19 10:24 AM, Eugeniy Paltsev wrote:
> >> +	unsigned int write = 0, exec = 0, mask;
> > Probably it's better to use 'bool' type for 'write' and 'exec' as we really use them as a boolean
> variables.
> 
> Right those are semantics, but the generated code for "bool" is not ideal - given
> it is inherently a "char" it is promoted first to an int with an additional EXTB
> which I really dislike.
> Guess it is more of a style thing.

In that sense maybe think about re-definition of "bool" type to 32-bit one
for entire architecture and get that benefit across the entire source tree?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
