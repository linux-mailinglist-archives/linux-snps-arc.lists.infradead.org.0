Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CCB3D5BA
	for <lists+linux-snps-arc@lfdr.de>; Tue, 11 Jun 2019 20:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qamqWNi+Jk11U6/6ZwGhukZpg6by37ZaC+USu4Vnes=; b=f2o2i263blRvET
	btvW/HUYH05R5WUb06hvKZZ8wpIuCib1MSdfakZmpIbfmq2F+jfat4bXbjNJ+UP0WAoB/qnd3lBa7
	0fi4Fky5StsvIbgw0M1CwWTwlQ6ypFMuYBjObldnfy1IPGInsl0YHUKYPpYlYBVEOa6vg6jEtK4ZT
	uG2ckRFNW0iPmfZ+7Ju0KsfV6hP3ULMt/lq4WTcKdcc52qNS4H/0qXbaFCb5gRB2wMRSNgOOjmBcI
	d/WwVWefYp0AqDKuiDtJKG8hwlxFF4xbr8b4J87YOZbogCqMm3BDPmv9Ot1DB9+Y+/Oz3ONVivWK6
	7Ktf1ppdh7RuQ+6ZukkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halo6-0006xv-NA; Tue, 11 Jun 2019 18:47:42 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halo3-0006wa-FQ
 for linux-snps-arc@lists.infradead.org; Tue, 11 Jun 2019 18:47:41 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 32B8AC2095;
 Tue, 11 Jun 2019 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560278855; bh=+tNfwhOx8Vilb/8rtFq2wOxYeoxb2XNP4GshqxFDdWE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=SHLdozXpvJSBpUc6ylBGPREa7Oep3Fv+OiJ3mxXqtMejKfuhGqsV0zNdQbLXCflFR
 iGYwrXVLOi7/751ToYyvHgp8XsSX2mIfqAqPxkNZG+q2Of8s+drqmzdFJwqFQt2+XD
 QYn87Jt09sQNKZQg032eYd4olNxD8a5dZsbu3KlunRKAgyEKFsH6rwcfMPdtp40rQ9
 XUCWmWSqjEHFTxXuClkHU0bYckYbjWquEaTPvqnSzfGvg5sx4kq8dU4INDHrSFNpF4
 RZN0g8SwcG21OBEMYzaZB4zEkTYI3SEBDbE6I2XCALjs+cZtHkHcjVY1lSlbAOCSrR
 1AMQtqUun20xg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0BC47A0093;
 Tue, 11 Jun 2019 18:47:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 11 Jun 2019 11:47:33 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 11 Jun 2019 11:47:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tNfwhOx8Vilb/8rtFq2wOxYeoxb2XNP4GshqxFDdWE=;
 b=bbEv+FS8YgkSHAe/cdRrltfF6+wmzS1uGiJaKQos2xXvS31jegRjNU7CKKkjB3ye3AVEgqjdiLpMDZotqOkcKsL0CcNr/TempUcB+DPTF+4ilW518OPuWxrNYEp5/xIgyeqHHA8tMWtpJIdQaPuIESwT/EBOw4REz/CZt/hM9jE=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2623.namprd12.prod.outlook.com (52.135.103.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Tue, 11 Jun 2019 18:47:31 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::cd10:94a4:d1b1:c3b2]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::cd10:94a4:d1b1:c3b2%5]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 18:47:31 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Cupertino Miranda <Cupertino.Miranda@synopsys.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: ARC Assembler: bundle_align_mode directive support
Thread-Topic: ARC Assembler: bundle_align_mode directive support
Thread-Index: AQHVHicA2N+x/AVgjkyWYOIr/ofXiqaWz+cA
Date: Tue, 11 Jun 2019 18:47:30 +0000
Message-ID: <d79085cbc6126c2a4fad173934e1e9b29523abba.camel@synopsys.com>
References: <3962a9ad199cea45b1cfadb80be551aab83b7028.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2525686@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A2525686@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1328d5f9-8cd4-4a63-0b08-08d6ee9d4273
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2623; 
x-ms-traffictypediagnostic: SN6PR12MB2623:
x-microsoft-antispam-prvs: <SN6PR12MB2623954C301887F604A1571DDEED0@SN6PR12MB2623.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(366004)(346002)(39850400004)(376002)(199004)(189003)(2616005)(118296001)(6436002)(2906002)(54906003)(110136005)(86362001)(446003)(11346002)(316002)(478600001)(14454004)(486006)(66476007)(7736002)(73956011)(64756008)(91956017)(66946007)(66446008)(6512007)(6486002)(53936002)(305945005)(66066001)(76116006)(6636002)(66556008)(5660300002)(53546011)(186003)(8676002)(8936002)(36756003)(81156014)(476003)(68736007)(229853002)(6506007)(99286004)(81166006)(85306007)(102836004)(6246003)(26005)(76176011)(71190400001)(71200400001)(6116002)(4326008)(14444005)(3846002)(25786009)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2623;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ARsKegXeX01SZWe3SUMZgqhOBuPmM8GlZO1A/4ab5LZnpSkYd4iMd7/9W8KmmwVZkQKtX4RJ73e35Pizd92eOhG+FbLNRWEzWmv/fUwcvnpuQCd8B6+guZkk0fOEJlWaMJId4GiAF0mx4rJeFTDVKV6YOW7426RHcQUsS/9iUP4MmC4pFvqrxAGPXelAw93w/sp/VkLS4hGc8V6skjVwKYOUCugXxtgCX1Pd8K1VMmOEE6KV7+0Eus5GfiRp+ykDuTSSKOtP2BztNqXGhQ/f/ifYprOQzFZ6uiEOjKwwC4+5evDWnJapV0NMLKZGwTTPr+gLVlVH5/tZqwfQK+hurCjOhdeZkeBK0dVv4//CZVnusPWrEwmpDBfI+rJk1gYvJStjuLPC+RyL3wv7M2JedWzUZnm+Iiw+6kytqM8bRmU=
Content-ID: <193760EC33CDB64FA62DA5FFC498255A@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1328d5f9-8cd4-4a63-0b08-08d6ee9d4273
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 18:47:31.0393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2623
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_114739_567629_F6B0A7C9 
X-CRM114-Status: GOOD (  29.63  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Claudiu Zissulescu <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

On Mon, 2019-06-10 at 15:55 +0000, Vineet Gupta wrote:
> On 6/8/19 11:21 AM, Eugeniy Paltsev wrote:
> > Hi Cupertino,
> > 
> > I tried to use ".bundle_align_mode" directive in ARC assembly, but I got following error:
> > ----------------->8--------------
> > Assembler messages:
> > Error: unknown pseudo-op: `.bundle_align_mode'
> > ----------------->8--------------
> > 
> > Is it possible to implement it in ARC assembler?
> > There is some context about the reason we want to have it:
> > 
> > I'm trying to add support of jump labels for ARC in linux kernel. Jump labels
> > provide an interface to generate static branches using self-modifying code.
> > This allows us to implement conditional branches where changing branch
> > direction is expensive but branch selection is basically 'free'.
> > 
> > There is nuance in current implementation:
> > We need to patch code by rewriting 32-bit NOP by 32-bit BRANCH instruction (or vice versa).
> > It can be easily done with following code:
> > ----------------->8--------------
> > write_32_bit(new_instruction)
> > flush_l1_dcache_range_this_cpu
> > invalidate_l1_icache_range_all_cpu
> > ----------------->8--------------
> > 
> > I$ update will be atomic in most of cases except the patched instruction share
> > two L1 cache lines (so first 16 bits of instruction are in the one cache line and
> > last 16 bit are in another cache line).
> > In such case we can execute half-updated instruction if we are patching live code (and we are unlucky enough :)
> 
> While I understand your need for alignment, I don't see how you can possibly
> execute stray lines.
> dcache flush will be propagated by hardware (SCU) to all cores (as applicable) and
> the icache cache flush xcall is synchronous and will have to finish on all cores
> before we proceed to execute the cod eitself.
> 

It's easy as hell - we may execute some code on one CPU and patch it on another CPU at the same moment :)

And here is the example of the situation when we can get the issue:
- Let's imagine we have SMP system with CPU#0 and CPU#1.
- We have instruction which share two L1 cache lines:
~ ---------------------------------|--------------------------------- ~
~            |instruction-Z (32-bit instruction we patch)|            ~
~ ---------------------------------|--------------------------------- ~
~   cache-line-X                   | cache-line-Y                     ~
~ ---------------------------------|--------------------------------- ~

CPU#0 is trying to switch our static branch, so it will patch the code (instruction-Z)
CPU#1 is executing this code with our static branch, so it execute the code (with instruction-Z) that will be patched.

1) CPU#0: we generate new instruction (to replace 'instruction-Z')
   and write it with 32-bit store (st). It is written to CPU#0 L1 data cache.
2) CPU#0: we call our function flush_icache_range.
   It firstly will flush L1 data cache region on CPU#0.
   In our example it will flush CPU#0 L1 'cache-line-X' and 'cache-line-Y' to L2 cache.
3) CPU#1: we are executing code which is in 'cache-line-X'.
   'cache-line-Y' is __NOT__ in the L1 instruction cache of CPU#1.
   We need to execute 'instruction-Z', but only half of the instruction is in L1 instruction cache.
   CPU#1 fetch 'cache-line-Y' to L1 instruction cache.
4)  Ooops: now we have corrupted 'instruction-Z' in L1 instruction cache of CPU#1:
   First 16 bit of this instruction (which belongs to 'cache-line-X') are old (not patched).
   Last 16 bit of this instruction (which belongs to 'cache-line-Y') are new (patched). 

> > As of today I simply align by 4 byte instruction which can be patched with ".balign 4" directive:
> > ----------------->8--------------
> > static __always_inline bool arch_static_branch_jump(struct static_key *key,
> >     bool branch)
> > {
> > asm_volatile_goto(".balign 4\n"
> >  "1:\n"
> >  "b %l[l_yes]\n" // <- instruction which can be patched
> >  ".pushsection __jump_table, \"aw\"\n"
> >  ".word 1b, %l[l_yes], %c0\n"
> >  ".popsection\n"
> >  : : "i" (&((char *)key)[branch]) : : l_yes);
> > 
> > return false;
> > l_yes:
> > return true;
> > }
> > ----------------->8--------------
> > 
> > In that case patched instruction is aligned with one 16-bit NOP if this is required.
> > However 'align by 4' directive is much stricter than it actually required.
> 
> I don't quite understand. Can u write a couple of lines of pseudo assembly to show
> what the issue is.

All instructions on ARCv2 are aligned by 2 byte (even if the instruction is 4-byte long).

Using '.balign' directive we align instruction which can be
patched by 4 byte.
So compiler will add one 'nop_s' before our instruction if it is not 4 byte aligned.

So this code
------------------->8---------------
-----
 .balign 4
 1:
 b %l[l_yes]   #<- instruction which can be patched
------------------->8--------------------
may turn into this:
-----------------
-->8--------------------
bla-bla-bla
 b l_yes       #<- instruction which can be patched
bla-bla-bla
------------------->8--------------------
or that:
----
--------------->8--------------------
bla-bla-bla
 nop_s         # padding
 b l_yes       #<- instruction which can be patched
bla-bla-bla
----------------
--->8--------------------

In most of the cases this extra 'nop_s' is unnecessary as it is fine to have our instruction
not 4 byte aligned if it doesn't cross l1 cache line boundary.

It is't the huge problem - but we are adding one unnecessary 'nop' while we try to optimize hot code.

> 
> > It's enough
> > that our 32-bit instruction don't cross l1 cache line boundary.
> > That will save us from adding useless NOP padding in most of the cases.
> > It can be implemented with ".bundle_align_mode" directive which isn't supported by ARC AS unfortunately.
> 
> This seems like a reasonable request (contingent to the difficulty of
> implementation in binutils). but I can't comprehend why you would need it.

If we will have ".bundle_align_mode" directive supported we can add extra 'nop_s' only if it's really required
(if our instruction _really_ cross L1 cache line boundary). So we won't add useless NOP to hot code.

-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
