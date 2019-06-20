Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0224D955
	for <lists+linux-snps-arc@lfdr.de>; Thu, 20 Jun 2019 20:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa39v91EvqvpFH+VLH7Z8vtFWnbCqXg9O8nYQ6G5G4U=; b=cphwgArDsfKErd
	wVyh08TXDEk0a8ygk6mUycjb8lYmOmqg2PlC8uRfSV0yzWl9yCMMqYA9Ax4UIxvmzrr3JrVvp2yKe
	C4O8uspLLWI4bQ2SdVB4O6Jb3zScxfy5pTv1j9Y5x/7Hski4rN5n0TbSqpcbIR8SqCwqXci40xtKd
	BGFRDKK3Fv1P7blOeLxrpgS0KwWnBWx437zdmkSDdTEavChGGK27UQ6XFra85lGUYkc7G2VphOtYX
	WgxdkyPXETmz+5nbS+sDiK87q6ID9PswbIumtAzWX66dY3rXPpkRCJKnlq7Vf2VPw/4qLRILL+NVn
	XjhvrIp5vlURkL5f+yHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1tl-00086A-CF; Thu, 20 Jun 2019 18:35:01 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1ti-00085d-BY
 for linux-snps-arc@lists.infradead.org; Thu, 20 Jun 2019 18:34:59 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 38A15C1D6E;
 Thu, 20 Jun 2019 18:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561055698; bh=2Q9+5scn6KrKipSrzJyWxZQcbLpLyuZz+5BXxLmWnrc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=TnOM7dnXc9kAyQ451jyM8+tFQdSMFj7Ugv+2CgXSnF5cZVNG1Ao9p2x2a0l7JqhvJ
 FoVWsxdID2mp54pfy64eDSU2kcGNRGXGrbQe4cxS3sbYyfeuem9fEeyqzPpybRUika
 QaFcriTQl4C73A5Dn/rJKIa8OeH879UpWpbiwKeAoUQFFAyUqsETh3MWADrrZdzobv
 1z4RTWS+nur9XE5xt/2L4zMlpscxJp8ycAIudtMHNBrfucw8JoDuP05IFvAEuUsn/b
 CiPcOuX8cJO43+sCrZV1GruB+bVBejxVFKLjVRNHmGEk91iazKSvu4tLwFq33RWHRE
 d0KTtsAUlQLTQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E8BA4A0095;
 Thu, 20 Jun 2019 18:34:57 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 20 Jun 2019 11:34:57 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 20 Jun 2019 11:34:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Q9+5scn6KrKipSrzJyWxZQcbLpLyuZz+5BXxLmWnrc=;
 b=Yd0l9FWkhmWNEtf5M5MN+4OS/Kzei8YNATSG2Nh6EWwVVOli8+s53XLaV3mE/omnYOayEZF44kndRCTyXEA8G5K1m626VG7EvQlI50h1VJw9jsFcpXhVocmBPYXhh27R9OlEtwawnD1PRcv9Bfv9EYoxjf9Rl1xOI1sHsKX0xDc=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2653.namprd12.prod.outlook.com (52.135.103.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Thu, 20 Jun 2019 18:34:55 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495%5]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 18:34:55 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "peterz@infradead.org" <peterz@infradead.org>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVItABmoPNpjiRbEyPVk6MS/0psaakJk0AgADBxwA=
Date: Thu, 20 Jun 2019 18:34:55 +0000
Message-ID: <a945de7d3b6f2da03c62c9e1043e125b4c4211aa.camel@synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
 <20190619081227.GL3419@hirez.programming.kicks-ass.net>
 <C2D7FE5348E1B147BCA15975FBA2307501A252E40B@us01wembx1.internal.synopsys.com>
 <20190620070120.GU3402@hirez.programming.kicks-ass.net>
In-Reply-To: <20190620070120.GU3402@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a45e321f-1227-4e14-f857-08d6f5adfdf0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2653; 
x-ms-traffictypediagnostic: SN6PR12MB2653:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN6PR12MB2653A0384DC7B95C168B1BF0DEE40@SN6PR12MB2653.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(99286004)(6506007)(53546011)(476003)(446003)(6436002)(486006)(11346002)(2616005)(110136005)(6306002)(6512007)(86362001)(3846002)(76176011)(6486002)(229853002)(6636002)(316002)(26005)(6116002)(186003)(2906002)(118296001)(256004)(68736007)(8936002)(25786009)(71200400001)(71190400001)(36756003)(66066001)(6246003)(7736002)(478600001)(305945005)(966005)(81156014)(81166006)(8676002)(102836004)(14454004)(53936002)(2501003)(54906003)(66446008)(66476007)(66556008)(64756008)(4326008)(73956011)(66946007)(76116006)(91956017)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2653;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JicIwXbQJHUCXt/Z/OkMIzUbTLKYgr4Jymur8+PZHelZMS10Ck7j6jDx9jDBpG/izef8U3KEKRBFWvj44PRgWk5jbr5SxX2fE1n3WaotccsVhjfeRA+jw4ArnLHfvjzGR1C7pnFqkY9aqsQA23QGEM/kCLiFJdCpQ05HukzzRyPCyVJ4t3eAKTqCixio7pM6cODEuddK9KbF9NerpwcfrpKp44UX8O1QL5zJ1GsuOLLBOX1+MHuKlaERoEQSLfjC2jcrXRhh7mbziCp9EbAHHJay/h3ehupU0KOYgEFqr5tq8L0H5EYDLrrm1ox3e3uHT5qjc5uNBqhw8Sp95SFCO6JFTtcZPD6ZKNfMZvjA8PWTn6ehZq0+Z+MBFxILFrJBsjA9RGwSYU+EReLuR9dwYGQZDQA64Xj2J5HRg8cLCB4=
Content-ID: <B1AC54EE21D2C340AE47EB1977599190@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a45e321f-1227-4e14-f857-08d6f5adfdf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 18:34:55.7699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2653
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113458_404620_321EA6B2 
X-CRM114-Status: GOOD (  28.56  )
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
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jbaron@akamai.com" <jbaron@akamai.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Peter,
On Thu, 2019-06-20 at 09:01 +0200, Peter Zijlstra wrote:
> On Wed, Jun 19, 2019 at 11:55:41PM +0000, Vineet Gupta wrote:
> > On 6/19/19 1:12 AM, Peter Zijlstra wrote:
> > > I'm assuming you've looked at what x86 currently does and found
> > > something like that doesn't work for ARC?
> > 
> > Just looked at x86 code and it seems similar
> 
> I think you missed a bit.
> 
> > > > > +	WRITE_ONCE(*instr_addr, instr);
> > > > > +	flush_icache_range(entry->code, entry->code + JUMP_LABEL_NOP_SIZE);
> > > So do you have a 2 byte opcode that traps unconditionally? In that case
> > > I'm thinking you could do something like x86 does. And it would avoid
> > > that NOP padding you do to get the alignment.
> > 
> > Just to be clear there is no trapping going on in the canonical sense of it. There
> > are regular instructions for NO-OP and Branch.
> > We do have 2 byte opcodes for both but as described the branch offset is too
> > limited so not usable.
> 
> In particular we do not need the alignment.
> 
> So what the x86 code does is:
> 
>  - overwrite the first byte of the instruction with a single byte trap
>    instruction
> 
>  - machine wide IPI which synchronizes I$
> 
> At this point, any CPU that encounters this instruction will trap; and
> the trap handler will emulate the 'new' instruction -- typically a jump.
> 
>   - overwrite the tail of the instruction (if there is a tail)
> 
>   - machine wide IPI which syncrhonizes I$
> 
> At this point, nobody will execute the tail, because we'll still trap on
> that first single byte instruction, but if they were to read the
> instruction stream, the tail must be there.
> 
>   - overwrite the first byte of the instruction to now have a complete
>     instruction.
> 
>   - machine wide IPI which syncrhonizes I$
> 
> At this point, any CPU will encounter the new instruction as a whole,
> irrespective of alignment.
> 
> 
> So the benefit of this scheme is that is works irrespective of the
> instruction fetch window size and don't need the 'funny' alignment
> stuff.
> 

Thanks for explanation. Now I understand how this x86 magic works.

However it looks like even more complex than ARM implementation.
As I understand on ARM they do something like that:
---------------------------->8-------------------------
on_each_cpu {
	write_instruction
	flush_data_cache_region
	invalidate_instruction_cache_region
}
---------------------------->8-------------------------

https://elixir.bootlin.com/linux/v5.1/source/arch/arm/kernel/patch.c#L121

Yep, there is some overhead - as we don't need to do white and D$ flush on each cpu
but that makes code simple and avoids additional checks.

And I don't understand in which cases x86 approach with trap is better.
In this ARM implementation we do one machine wide IPI instead of three in x86 trap approach.

Probably there is some x86 specifics I don't get?


> Now, I've no idea if something like this is feasible on ARC; for it to
> work you need that 2 byte trap instruction -- since all instructions are
> 2 byte aligned, you can always poke that without issue.

Yep we have 2 byte trap (trap_s instruction).

Actually there are even two candidates another candidates which can be used
instead trap_s to avoid adding additional code to trap handler:
SWI_S - software interrupt
and
UNIMP_S - instruction with funny name 'unimplemented instruction'


-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
