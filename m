Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B49144A78
	for <lists+linux-snps-arc@lfdr.de>; Thu, 13 Jun 2019 20:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWqOPFOfepzT7xP/3qZWT8oyCpm11Gv9hMZ1s+qykWQ=; b=eoCjgDl1wfvSX1
	FnzxclqX/ciBoHNZp4dYLeCCaOfdnDg2bUUczTqe0LYmErefYqYBaU+4rdz+uT7F0dahsqu3UChuo
	FkfUfa7RvJxjAPxgTTSVTjmn9mtGEVebEOfUuS9RVyqyL14YghRfPUoW5f6RPcav2e7CpLHbv8gm0
	RGV+ISj0qxfYMnBxoZM37De7hN7jL9umX6G+4ITa464MebJiGa+saM962gY+Y3Auem27u5YW42jlv
	yEZlRwbBKwViVUR9mYt2eY1sLxYLzZ9tTzyCFNf2qucbTNaaoK3EqgaPtcAa8tR4lpVF5LQ5v5LmE
	QzY7FoecukHGJdAC34/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUEx-0006Mg-6h; Thu, 13 Jun 2019 18:14:23 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUEu-0006Lx-1J
 for linux-snps-arc@lists.infradead.org; Thu, 13 Jun 2019 18:14:21 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3A8CAC0192;
 Thu, 13 Jun 2019 18:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1560449657; bh=Z5AQAt39bh8BQCAk/paUZ/X9tJZLW+7n7O++fUPk0E0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=aPgpySLwjyLpwcYnCuqc2lGPqFz7Qcp9WT7OcZnis8lX3pHcuzOaR6hxi4OsWrrkB
 WDIvr/gMhzx0yyCxCTroeMOsdrZHh83g2SGZdsMPAnvjBhQSS0epgWrzumjXcX1hcG
 IoKzqoQL5C3L2VsfRaVQZdKAD5LjMkAsWjPUJrL7Lf3ON94y4E0IALJrX3RO0SuGHx
 lroBoWGn/tHKMVPKrw8gDiVjllauteStiXdjxMOknu+QuzUXLlIfu2Z1dmRglC5cDB
 UAQHT04GeUjqGyHWZ3G3NO8TsY8UDVwz5mnVQMXa1cQ9jCRbvv9fAhvukN5hZoxWcg
 YNrGCzNquZ0wg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D44A8A009B;
 Thu, 13 Jun 2019 18:14:15 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 13 Jun 2019 11:14:15 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 13 Jun 2019 11:14:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z5AQAt39bh8BQCAk/paUZ/X9tJZLW+7n7O++fUPk0E0=;
 b=eV+4du3yS2CfPutSRVL8++ef8iySk1yngSqBMfOgP05KxrvSDrGI0DCJq0bc0BF/qcsMEcm5nvDxFf6/FXwU2pwEzu/vUFpEXYu1ApMbqndOQ+TglSnmi4lnp0+NWMyYt9oGBicyWXELGjikPHF3hrKVw4A9KEa9ouYHfuz1fGs=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2638.namprd12.prod.outlook.com (52.135.103.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 18:14:12 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::cd10:94a4:d1b1:c3b2]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::cd10:94a4:d1b1:c3b2%5]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 18:14:12 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "Cupertino.Miranda@synopsys.com" <Cupertino.Miranda@synopsys.com>
Subject: Re: ARC Assembler: bundle_align_mode directive support
Thread-Topic: ARC Assembler: bundle_align_mode directive support
Thread-Index: AQHVHicA2N+x/AVgjkyWYOIr/ofXiqaWz+cAgABHGACAAtRDAA==
Date: Thu, 13 Jun 2019 18:14:12 +0000
Message-ID: <8a027c250d7bd14ff107c169351af6a04a6d8334.camel@synopsys.com>
References: <3962a9ad199cea45b1cfadb80be551aab83b7028.camel@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A2525686@us01wembx1.internal.synopsys.com>
 <d79085cbc6126c2a4fad173934e1e9b29523abba.camel@synopsys.com>
 <02fcd330-8b3c-a3cb-0aa9-e91bca6b6d0f@synopsys.com>
In-Reply-To: <02fcd330-8b3c-a3cb-0aa9-e91bca6b6d0f@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd0c16cf-159e-4dbb-9f8e-08d6f02aefd6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2638; 
x-ms-traffictypediagnostic: SN6PR12MB2638:
x-microsoft-antispam-prvs: <SN6PR12MB263887B56AEC22415A98149ADEEF0@SN6PR12MB2638.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:313;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(39860400002)(376002)(366004)(396003)(189003)(199004)(81166006)(102836004)(6506007)(76176011)(26005)(6246003)(229853002)(81156014)(8676002)(8936002)(186003)(99286004)(2501003)(6116002)(14444005)(3846002)(256004)(68736007)(5660300002)(71200400001)(4326008)(71190400001)(25786009)(36756003)(446003)(118296001)(316002)(54906003)(6436002)(2616005)(6512007)(64756008)(476003)(2906002)(110136005)(486006)(66066001)(91956017)(11346002)(305945005)(6486002)(66476007)(14454004)(66946007)(53546011)(478600001)(66556008)(73956011)(66446008)(7736002)(6636002)(53936002)(86362001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2638;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EAQDDg45z5EHqylHuejwlQtmVT9nN3KKy9yppcfyapG7xRj7bYkOAp6HkLMvwUaCJU2/BvTdwE2FeSAqGJoYZyLyMhBWZmVbmP70oNKNvbxqE29lwebPscaOMpQF3d75C6Ix4rFktLLElc2SjBEBzBbrqqXtJjJivRQCCsh7iNJjJA6hYBGONpIRnIxC+uBKAwGSorPSDgUwe3CJaQraexN53GYImEJxKHYwOpZ7uc4Sb8VQP+fzmuPlylcITA9V+s/qw3hw+IPQzZqypRZRxdGBsZidMXbuccfrDStFnrSGWUQOcf/IdMFKAAMlGjv+6DA/jbnC1iMTa6E0iA5IoXvnuX+29eW7NQn7Q2nTmRc7Ri1X6OU67WI2Yy1Ksvu5dczc0wZRy4CXLjs3IUS2DWWsXXjM98klXB35sfhqMDc=
Content-ID: <B915765A4C1EF2419A272D042B767081@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0c16cf-159e-4dbb-9f8e-08d6f02aefd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 18:14:12.1488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2638
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_111420_145862_6D1953C8 
X-CRM114-Status: GOOD (  31.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Claudiu.Zissulescu@synopsys.com" <Claudiu.Zissulescu@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 16:01 -0700, Vineet Gupta wrote:
> On 6/11/19 11:47 AM, Eugeniy Paltsev wrote:
> > Hi Vineet,
> > 
> > On Mon, 2019-06-10 at 15:55 +0000, Vineet Gupta wrote:
> > > On 6/8/19 11:21 AM, Eugeniy Paltsev wrote:
> > > > Hi Cupertino,
> > > > 
> > > > I tried to use ".bundle_align_mode" directive in ARC assembly, but I got following error:
> > > > ----------------->8--------------
> > > > Assembler messages:
> > > > Error: unknown pseudo-op: `.bundle_align_mode'
> > > > ----------------->8--------------
> > > > 
> > > > Is it possible to implement it in ARC assembler?
> > > > There is some context about the reason we want to have it:
> > > > 
> > > > I'm trying to add support of jump labels for ARC in linux kernel. Jump labels
> > > > provide an interface to generate static branches using self-modifying code.
> > > > This allows us to implement conditional branches where changing branch
> > > > direction is expensive but branch selection is basically 'free'.
> > > > 
> > > > There is nuance in current implementation:
> > > > We need to patch code by rewriting 32-bit NOP by 32-bit BRANCH instruction (or vice versa).
> > > > It can be easily done with following code:
> > > > ----------------->8--------------
> > > > write_32_bit(new_instruction)
> > > > flush_l1_dcache_range_this_cpu
> > > > invalidate_l1_icache_range_all_cpu
> > > > ----------------->8--------------
> > > > 
> > > > I$ update will be atomic in most of cases except the patched instruction share
> > > > two L1 cache lines (so first 16 bits of instruction are in the one cache line and
> > > > last 16 bit are in another cache line).
> > > > In such case we can execute half-updated instruction if we are patching live code (and we are unlucky enough :)
> > > 
> > > While I understand your need for alignment, I don't see how you can possibly
> > > execute stray lines.
> > > dcache flush will be propagated by hardware (SCU) to all cores (as applicable) and
> > > the icache cache flush xcall is synchronous and will have to finish on all cores
> > > before we proceed to execute the cod eitself.
> > > 
> > 
> > It's easy as hell - we may execute some code on one CPU and patch it on another CPU at the same moment :)
> > 
> > And here is the example of the situation when we can get the issue:
> > - Let's imagine we have SMP system with CPU#0 and CPU#1.
> > - We have instruction which share two L1 cache lines:
> > ~ ---------------------------------|--------------------------------- ~
> > ~            |instruction-Z (32-bit instruction we patch)|            ~
> > ~ ---------------------------------|--------------------------------- ~
> > ~   cache-line-X                   | cache-line-Y                     ~
> > ~ ---------------------------------|--------------------------------- ~
> > 
> > CPU#0 is trying to switch our static branch, so it will patch the code (instruction-Z)
> > CPU#1 is executing this code with our static branch, so it execute the code (with instruction-Z) that will be patched.
> > 
> > 1) CPU#0: we generate new instruction (to replace 'instruction-Z')
> >    and write it with 32-bit store (st). It is written to CPU#0 L1 data cache.
> > 2) CPU#0: we call our function flush_icache_range.
> >    It firstly will flush L1 data cache region on CPU#0.
> >    In our example it will flush CPU#0 L1 'cache-line-X' and 'cache-line-Y' to L2 cache.
> > 3) CPU#1: we are executing code which is in 'cache-line-X'.
> >    'cache-line-Y' is __NOT__ in the L1 instruction cache of CPU#1.
> >    We need to execute 'instruction-Z', but only half of the instruction is in L1 instruction cache.
> >    CPU#1 fetch 'cache-line-Y' to L1 instruction cache.
> > 4)  Ooops: now we have corrupted 'instruction-Z' in L1 instruction cache of CPU#1:
> >    First 16 bit of this instruction (which belongs to 'cache-line-X') are old (not patched).
> >    Last 16 bit of this instruction (which belongs to 'cache-line-Y') are new (patched). 
> 
> OK I agree there is a race: I was not thinking of case where the exact patched
> instruction is concurrently being executed on other core. Indeed we need to ensure
> it doesn't straddle icache line.
> 
> We could potentially avoid all of these issues if we could use 2 byte (NOP_S +
> B_S). The added advantage is even better icache footprint. Ofcourse with B_S the
> branch range goes down from S25 to S10, but considering the use cases it might be
> enough after all.
> 
> -------->8-----------
> static __always_inline bool arch_static_branch(struct static_key *key, bool branch)
>  {
>         asm_volatile_goto("1:\n\t"
> -                "nop \n\t"
> +                "nop_s \n\t"
>                  ".pushsection __jump_table,  \"aw\"\n\t"
>                  ".word 1b, %l[l_yes], %c0\n\t"
>                  ".popsection\n\t"
> 
> static __always_inline bool arch_static_branch_jump(struct static_key *key, bool
> branch)
>  {
>         asm_volatile_goto("1:\n\t"
> -                "b %l[l_yes]\n\t"
> +                "b_s %l[l_yes]\n\t"
> -------->8-----------
> 
> It indeed works, except for 1 place in networking code where S10 is not enough.
> Granted it is not future proof, I do like the effect
> 
> add/remove: 0/0 grow/shrink: 0/45 up/down: 0/-244 (-244)
> function                                     old     new   delta
> udp_queue_rcv_one_skb                       1010    1006      -4
> udp_flow_hashrnd                              80      76      -4
> udp_destroy_sock                             128     124      -4
> udp4_lib_lookup2.constprop                   562     558      -4
> udp4_gro_receive                             628     624      -4
> try_to_wake_up                               876     872      -4
> tcp_splice_read                             1026    1022      -4
> tcp_recvmsg                                 2618    2614      -4
> tcp_read_sock                                508     504      -4
> switched_from_fair                           176     172      -4
> secure_ipv4_port_ephemeral                   102      98      -4
> sched_clock_cpu                               16      12      -4
> run_filter                                   232     228      -4
> process_backlog                              420     416      -4
> pick_next_task_fair                         2984    2980      -4
> netif_rx_internal                            174     170      -4
> netif_reset_xps_queues                       690     686      -4
> netif_receive_skb_list                       488     484      -4
> netif_receive_skb_internal                   242     238      -4
> load_balance                                2370    2366      -4
> inet_sendpage                                352     348      -4
> inet_sendmsg                                 244     240      -4
> inet_recvmsg                                 192     188      -4
> inet_lhash2_lookup                           414     410      -4
> inet_accept                                  252     248      -4
> housekeeping_affine                           30      26      -4
> fnhe_hashfun                                 158     154      -4
> finish_task_switch                           370     366      -4
> enqueue_task_fair                           1504    1500      -4
> do_page_fault                                658     654      -4
> dequeue_task_fair                            988     984      -4
> bpf_user_rnd_init_once                        62      58      -4
> __skb_get_hash_symmetric                     694     690      -4
> __skb_get_hash                               726     722      -4
> __schedule                                   998     994      -4
> __release_sock                               240     236      -4
> __netif_receive_skb_core                    1782    1778      -4
> __netdev_alloc_skb                           304     300      -4
> task_tick_fair                               814     806      -8
> sched_rt_period_timer                       1034    1026      -8
> netdev_pick_tx                               664     656      -8
> find_busiest_group                          2348    2340      -8
> check_preempt_wakeup                         690     682      -8
> jump_label_test                              324     312     -12
> select_task_rq_fair                         3112    3072     -40
> Total: Before=4064620, After=4064376, chg -1.000000%
> 

Yep, using B_S is quite slippery slope - as this macroses are used in generic code - so there is no guaranty
that after someone's minor change we will still have working kernel.
Moreover - we can face with this issue in runtime. I.E. we have default NOP_s instruction and we want to
replace it by B_S. But when we calculate the offset we'll realize that offset is too big. I don't see any
good option to handle this in runtime.

> 
> > > > As of today I simply align by 4 byte instruction which can be patched with ".balign 4" directive:
> > > > However 'align by 4' directive is much stricter than it actually required.
> ...
> 
> > All instructions on ARCv2 are aligned by 2 byte (even if the instruction is 4-byte long).
> > 
> > Using '.balign' directive we align instruction which can be
> > patched by 4 byte.
> > So compiler will add one 'nop_s' before our instruction if it is not 4 byte aligned.
> > 
> 
> ...
> 
> > In most of the cases this extra 'nop_s' is unnecessary as it is fine to have our instruction
> > not 4 byte aligned if it doesn't cross l1 cache line boundary.
> > 
> > It is't the huge problem - but we are adding one unnecessary 'nop' while we try to optimize hot code.
> > 
> ...
> 
> > If we will have ".bundle_align_mode" directive supported we can add extra 'nop_s' only if it's really required
> > (if our instruction _really_ cross L1 cache line boundary). So we won't add useless NOP to hot code.
> 
> OK understand, but this is not gating the feature. We can start off with .balign 4
> and if-n-once tools support it we can remove the alignment requirements.

Agree.
I'll send last patch revision to ML.

Nevertheless if don't come to agreement if we will add this directive or not this 'temporary' solution will live forever :)


BTW:
there is discussion in Linux ML about implementation of static calls.
The idea is to patch immediate operand in jump instruction instead of using function pointers to optimize hot code.
@vineet I bet you'll like this :)

Current v3 patch revision is for x86 only and it's not applied yet. However I expect (based on comments to last patches)
it'll be applied after several respins. It would be nice to implement it for ARC too.

And x86 static calls implementation uses '.bundle_align_mode' directive too.


> -Vineet
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
