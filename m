Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAFA4EC61
	for <lists+linux-snps-arc@lfdr.de>; Fri, 21 Jun 2019 17:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xd77myS5EB9nSrdsXp4glscTIRz1SiEK73K8NOC+LY=; b=dTq0JTWuT6a4zU
	tJBnvNeWNnU9KxdEQEGXXCFy6H0P5IH6mNj8ABKKdfrGtpB/ZIcGa28nTS+7M6dsQJBbE0eEeCKUf
	gBu5L/ip4CoMwlUPPjqtxV+YzkO5HY9NQiiZWlvQCr0QK/l+8hlM2AD94xE4b8gjwV2hh8E+OKRsV
	YN/shzxviCGZsVoN+OGKWC0QV1pSPxDPdbTZo2E6zcNJf8w/tCfF0TGLckC3ET5ebg7gseI79SCZk
	6hAkfLUMWbcbWGSkhfzFf6n7K/1JHNODEUNSkGgo79kCLkVN8TH6fbUuqk7MOGGKc9Zm0byAqHiQ5
	71LpuBz5AiTNo1/knwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLfU-00074s-Ur; Fri, 21 Jun 2019 15:41:36 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLdW-0004En-2E
 for linux-snps-arc@lists.infradead.org; Fri, 21 Jun 2019 15:39:37 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AF172C0D9C;
 Fri, 21 Jun 2019 15:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561131571; bh=6079FvYrnSuIcm6KjAAvflaWDCqsqM0Yq9xGQZzLwWQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=O+q7znAOzBk/+h2uPxLq7f1cdPH5exgEndPAn6kmrW4tvwo6e/anGnpLZyJZ0rNH8
 ABlwMnqdnSxB9Wea78xBX//9Ecio+JN7Be+wijHOm/GVcr7+iE78c63SUXV56TPOTh
 8KiQvdhKEEaQFreibsXvAY8ub4bHprV2Vx1QYajKfmByG6m81tvoCoXXxl8yiCQayy
 3CvXxVwv7eC9XvY66IPos8zgTwX0QZ9PVhGNT+g5NtSwY0ZsU9SI625zjaIRHwA9dG
 pnpDlpmLfsSLYHE3forkgseok1Ae5z61ydo/tfq+9kxtKMT84nQzVPNEOgOmiPtnw6
 /Vc6AnewBBTPg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4E3B2A0067;
 Fri, 21 Jun 2019 15:39:29 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 21 Jun 2019 08:39:29 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 21 Jun 2019 08:39:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fK77iwFW/p1wq0uLyo2wr+jo704PfAHVr6SzTpkXxGs=;
 b=TwpHuqBw5ZJMLSIlSNUynwR0MwpZXtqNWSVw7AgyAsmGlblcaDRFruV18VIvioXL1hXEl+80rSKaypgHsycL77r1Oe13BQe0edkdilCIQuNxKNxW5oXYEfa4bsyK0S3lXADd4O1DdnHP28T7MsTw1av/ZScUVYjlvLd5icIMTWM=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0184.namprd12.prod.outlook.com (10.172.78.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Fri, 21 Jun 2019 15:39:27 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d536:9377:4e1c:75ad%4]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 15:39:27 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: RE: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVItAEofkbV+NXXEuPQB3Di+rJQKakNJEAgADZNACAATpIEA==
Date: Fri, 21 Jun 2019 15:39:27 +0000
Message-ID: <CY4PR1201MB0120D86E5774F93769320B59A1E70@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620075224.GT3419@hirez.programming.kicks-ass.net>
 <9192bd26-5f34-dcbf-8552-2f474866a31e@synopsys.com>
In-Reply-To: <9192bd26-5f34-dcbf-8552-2f474866a31e@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d51d80cd-b358-4c8c-7259-08d6f65ea506
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0184; 
x-ms-traffictypediagnostic: CY4PR1201MB0184:
x-microsoft-antispam-prvs: <CY4PR1201MB01841C05DCDAE94EA848DC39A1E70@CY4PR1201MB0184.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(39850400004)(396003)(376002)(346002)(189003)(13464003)(199004)(54906003)(6636002)(3846002)(6116002)(8676002)(66066001)(26005)(186003)(99286004)(81166006)(446003)(6436002)(11346002)(53546011)(476003)(102836004)(7736002)(9686003)(68736007)(8936002)(76176011)(71200400001)(81156014)(7696005)(6506007)(486006)(229853002)(73956011)(55016002)(256004)(6862004)(14454004)(316002)(66476007)(74316002)(25786009)(33656002)(71190400001)(2906002)(305945005)(5660300002)(66446008)(53936002)(66946007)(66556008)(6246003)(64756008)(76116006)(4326008)(52536014)(478600001)(107886003)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0184;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YRzWRAhD8HI6vlD80FWP/P9AVgehMaKOJC4a4Z2B+sXae6mufMVCvcE58LzAs1EnRQdAjquzN79VPYa4nTrkLOjjpQ+g1fNKFpiOW38P9oXd4TawI6t0Ulo2dTDVG9fYmHIg56TLqsLUHi+RlHvAeei9NGzfzOWFyaLq4Imlm9g5GmMgFY1133y/rwtHPmywQX51erlcbERjrxZR/3nUbA7rN8JaBvA0pRLMvOW0JfZPi/CBoaBLfJb5Z7N+AnbjnMhF+YZahIdBzK722V9+rAE8/apRSVlN3NtxO2aY/YPIB9hedDdAunMAmnIY9j+QbA0F1Bq33oPA1WK/A+to0Pm51z1XgKmSfk4hV5jlJyHI6VgeW1jQWYyhFKqaUM7+/Zk+jnUAMckSbdX0+DLVcNGtkCPw6GN6FQfE5jLFWY8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d51d80cd-b358-4c8c-7259-08d6f65ea506
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 15:39:27.4584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abrodkin@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0184
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083934_195674_2E9F217F 
X-CRM114-Status: UNSURE (   5.95  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Paolo Bonzini <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

> -----Original Message-----
> From: linux-snps-arc <linux-snps-arc-bounces@lists.infradead.org> On Behalf Of Vineet Gupta
> Sent: Thursday, June 20, 2019 11:50 PM
> To: Peter Zijlstra <peterz@infradead.org>
> Cc: linux-arch@vger.kernel.org; Ard Biesheuvel <ard.biesheuvel@linaro.org>; Alexey Brodkin
> <abrodkin@synopsys.com>; linux-kernel@vger.kernel.org; Jason Baron <jbaron@akamai.com>; Paolo Bonzini
> <pbonzini@redhat.com>; linux-snps-arc@lists.infradead.org; Eugeniy Paltsev
> <Eugeniy.Paltsev@synopsys.com>
> Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching

[snip]

> Insn encoding is always middl eendina - irrespective of endianness.

Apparently only in little-endian mode instructions are encoded as middle-endian,
see:
-------------->8-------------
# cat endian.S

.global myfunc
myfunc:
        mov r0, r1
-------------->8-------------

Little-endian:
-------------->8-------------
# arc-linux-gcc -c -mcpu=archs endian.S -EL
# arc-linux-objdump -d endian.o

endian.o:     file format elf32-littlearc

Disassembly of section .text:
00000000 <myfunc>:
   0:   200a 0040               mov     r0,r1

# arc-linux-readelf -x .text endian.o
Hex dump of section '.text':
  0x00000000 0a204000                            . @.
-------------->8-------------

Big-endian:
-------------->8-------------
# arc-linux-gcc -c -mcpu=archs endian.S -EB
# arc-linux-objdump -d endian.o

endian.o:     file format elf32-bigarc

Disassembly of section .text:
00000000 <myfunc>:
   0:   200a 0040               mov     r0,r1

# arc-linux-readelf -x .text endian.o

Hex dump of section '.text':
  0x00000000 200a0040                             ..@
-------------->8-------------

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
