Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE664ECA6
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 17:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAwVEy59pgTCqbiL4H1G5jO87Ly9G5q2AwYiHePjYek=; b=roSZRCrhm6wXbG
	QbCAXYcZxyh3Y4g+SXrnaqCH7jt7ATwRStpDvqS6JrMzGimOTNMe79pgQnp42Ryq1tzzMi145QQe7
	Nl1Pua8SL0kqimGdlP4q49A/OF2/apuEBp8X5ioAMOoiiho6dchusbsPcWYf8DN8HmqwCH9xcZYML
	J0+NKXqjtfQGyzMVQbpEZfPN12JWXCST1aN4qdVG2QqBHr1JPA6Lwgg2xnV574p+695ItZ1t3Ehgk
	pzKVE+B9LP3Sl34nWSHHNzjJl5mdt018RifEmbW+4UvwspMH0TGUE59rCZmWFGyr/MqlMiOp6JaKr
	jHY7WlQTpi0CdGEedAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLtO-00058j-5e; Fri, 21 Jun 2019 15:55:58 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLtL-00058E-Cm
 for linux-snps-arc@lists.infradead.org; Fri, 21 Jun 2019 15:55:56 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3A157C0D92;
 Fri, 21 Jun 2019 15:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561132554; bh=OLgZfIJfYufVbNxFQy63cTJTAWPPqErBM9c7G2VVacY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=DzxyjpQbD4TbEuo8cKdjRU+zgKeq6cMLua8bGac8J6zIoc7QbEjf4lOhPIMtGrfyF
 PJwkYGtIMqOhZEuJUP5jrTrbL1RYQVuPrlyu6qKnzVO77zNZCxxbh5JL6DNDsjLLWN
 6hkAzjZJnZROxT7mPIJ0SFdHZPpgVHfgM3hGfk/DiyN8pVgJhcFps2Wcb5Wo9BZ6PE
 YTJ7xBWuhpdmoe91/Wy3sqvqG/Ru4ngHv5ecRuYRwB9113JHll+3W0AS0eZqiLUEzO
 Urjs9rnIEiQrC5ygImxLOnNCpQK6qwIMbnRs16ysfdAZnvvQJryQaw9bUp3JBESSRx
 3NFY3UZA5CAyg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id BEE1CA008B;
 Fri, 21 Jun 2019 15:55:53 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 21 Jun 2019 08:55:53 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 21 Jun 2019 08:55:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OLgZfIJfYufVbNxFQy63cTJTAWPPqErBM9c7G2VVacY=;
 b=g7Sr2OPKk7gxS4+PJhA9yjVFXfpRQ7hDy7Zu+HHbhjlmcQT+tW+7cxSHMlv8Au+q7KGZACGUlXKiEHFuGzEsCqP0zFm5bXCu0nniMMtDrExaPZNZiJyZeSiy+TvKUkBRWxKdW9iWetvbCQcQepk8g1CnZ2OPd/9RB3mPVMwhsGs=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0151.namprd12.prod.outlook.com (10.172.79.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 21 Jun 2019 15:55:50 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 15:55:50 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Waldemar Brodkorb <mail@waldemar-brodkorb.de>
Subject: RE: [uclibc-ng-devel] state of uClibc ARC soft-float support
Thread-Topic: [uclibc-ng-devel] state of uClibc ARC soft-float support
Thread-Index: AQHVHK5NT4t6vYyB0kW/TxU85mROeKal/fkAgABbt5A=
Date: Fri, 21 Jun 2019 15:55:50 +0000
Message-ID: <CY4PR1201MB012024B8104F1540F0DBB10BA1E70@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <8544debf-dfb6-ebb5-a80e-aa9f860949ff@synopsys.com>
 <20190621102538.GZ29045@waldemar-brodkorb.de>
In-Reply-To: <20190621102538.GZ29045@waldemar-brodkorb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3055829-d827-4f59-d31a-08d6f660eef7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0151; 
x-ms-traffictypediagnostic: CY4PR1201MB0151:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR1201MB01511E53219044F020928602A1E70@CY4PR1201MB0151.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(376002)(39850400004)(346002)(136003)(13464003)(189003)(199004)(86362001)(1250700005)(74316002)(6436002)(486006)(4326008)(53546011)(7696005)(102836004)(71190400001)(6246003)(186003)(7736002)(33656002)(66066001)(446003)(26005)(71200400001)(256004)(305945005)(55016002)(5660300002)(53936002)(76116006)(6306002)(6506007)(81166006)(68736007)(11346002)(229853002)(478600001)(6916009)(64756008)(2906002)(9686003)(14454004)(476003)(66476007)(66446008)(66946007)(76176011)(81156014)(54906003)(99286004)(52536014)(107886003)(8676002)(3846002)(8936002)(73956011)(25786009)(66556008)(6116002)(4744005)(966005)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0151;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TRL3NhbL34lJvG0OeUGSbx3wBD9OzNwUuAH/+nbcdYBooTZa7tpZLtzpUwW6QoIM7Ti9wyg5kop+YdeGq6oNN7dxliIcHqyr40Oz+Z9vYGWbf+npcsvVx3LszL3JMTrgKb95S2wBUQPw5yRyLj+fT7+5hspL0flWwFPgMce2XeGxM50uDk2NSpzMxFUJg/DyVJ1WbGdlDxGYGyeLp1Hio0T7N53p5CJF77rqqbo4x7Lyko/IhCqcaGIWuCaAK71MwLqOsByLHv5gExJLTMIzbHCKyClT8axwGicE65pv4RHfqWb01grAaLQ+A1TwA5JnnAuGxFuIeB6Y+QgXRtIZk4cAMbnlnh/yJkyoLfNd7bfyBdVrKK0/X4y0qZOB5iTN2QA6EPhPW5yetSjd7stQkNOngLHFdVIpWLyuN1rlLOY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c3055829-d827-4f59-d31a-08d6f660eef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 15:55:50.4985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0151
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085555_450589_B6FCDF1D 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devel@uclibc-ng.org" <devel@uclibc-ng.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Waldemar,

> -----Original Message-----
> From: Waldemar Brodkorb <wbx@uclibc-ng.org>
> Sent: Friday, June 21, 2019 1:26 PM
> To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
> Cc: devel@uclibc-ng.org; arcml <linux-snps-arc@lists.infradead.org>; Alexey Brodkin
> <abrodkin@synopsys.com>
> Subject: Re: [uclibc-ng-devel] state of uClibc ARC soft-float support
> 
> Hi Vineet,
> 
> I tried to sync the libm tests from glibc to uClibc-ng, but I think
> I broke it. May be we should revert the commit?
> 3384c45e66ddf18f235654b67ae34ac7dcb07534

There seems to be no commit with such hash:
https://cgit.uclibc-ng.org/cgi/cgit/uclibc-ng.git/commit/?id=3384c45e66ddf18f235654b67ae34ac7dcb07534

Did you mean something else?

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
