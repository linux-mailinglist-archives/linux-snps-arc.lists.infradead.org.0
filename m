Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E505C424
	for <lists+linux-snps-arc@lfdr.de>; Mon,  1 Jul 2019 22:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6PGuByDDGlPnbEWdO1yKxesL+kNxO0mAXy6dqjojOM=; b=hu8x8EnqrEjre4
	ar+XZLEJW8rXcnn8VCK+lXlVmH7f8iBVpgRglh/2CcKclmlB07UkpqEakTY5gYFOpTBHrp0RwX+Rk
	wVpbdgmKyD1Stak9tqqO9Pjrv++ehTgzOgaJ0JVccy7htSaro0CA05iTUiPDrF38a6TcdI53krkHJ
	bCNp7QX2gSYUolXhAz1ocLOpoXlklfSOhewe50p7Ee4BGjoUp1z6fCxFzyRA/njhtvcjgISo1q+vM
	CaimhKTOp2So23z8A7eKvJk9XlxgphBTZIL/dQIu9T60W5PEn3O5MnHdRJNKZ0xm5obBV6qOLZY+L
	m2aCs4r1YxDFWdaIfrjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi2Yr-0001xR-Td; Mon, 01 Jul 2019 20:06:01 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi2Yo-0001wd-Ut
 for linux-snps-arc@lists.infradead.org; Mon, 01 Jul 2019 20:06:00 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 64CB2C016B;
 Mon,  1 Jul 2019 20:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562011556; bh=bBSpu+iXNHu4IfS6luAh9KbyIW7wamAstgje5wKxMVA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RCCh/RUOIDmBOiH8OuqSlEchJlFO4YfkI+2bFQtqlQ2mXY5zEsF+JUN8k7zx8pU3l
 cZst1Hquo72rxKXKyORDargdNaiIHf+vjyMT71u80FxyLMQUHTf/PMuB9O8R+XVrQe
 eGOqy6/Svhlk3CCQJ5GP7rB1gPfbAHOLN+oJivTMJRDrpz5V4RuCV7wcPRKkehjzeH
 1TMGn2XkYrRNMBkaStIPJOVJmWiEVZcXrabEdt0WZqAY9mwGgxhR44ZC8JHLDD7aS5
 2K32L7nm295GqFPONrhzNaobd9k8IdFZc1F2oJ+N5ln4CvKy1hkXRonn59MWqgFIHX
 psyWmILpJV5CQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id AF6F6A023B;
 Mon,  1 Jul 2019 20:05:53 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 1 Jul 2019 13:05:53 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 1 Jul 2019 13:05:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bBSpu+iXNHu4IfS6luAh9KbyIW7wamAstgje5wKxMVA=;
 b=b1XvnNOBA67JrecOpTR304gJxW2qcvURBXVVSJEY0aA3SiSKPyjj3YdgdqyELRUjzTeVQK5EmqVO6eOzPCrA/+vtW3GDneQx8e9hcgPGTaaojE8KbOYDf4qjrew72CzjknuDQVOhl7j9FBQnvsWlx+3VyAWxSCiGe9mxksyuv6M=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0260.namprd12.prod.outlook.com (10.174.112.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 20:05:51 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f%10]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 20:05:51 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: single copy atomicity for double load/stores on 32-bit systems
Thread-Topic: single copy atomicity for double load/stores on 32-bit systems
Thread-Index: AQHVMEhfFNWopC40tEusWb/Dn7ECJQ==
Date: Mon, 1 Jul 2019 20:05:51 +0000
Message-ID: <73510bc7-8386-746c-ed1e-422fb5adaec5@synopsys.com>
References: <2fd3a455-6267-5d21-c530-41964a4f6ce9@synopsys.com>
 <20190531082112.GH2623@hirez.programming.kicks-ass.net>
In-Reply-To: <20190531082112.GH2623@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BY5PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::20) To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e3c5d55-afd6-49b8-2f98-08d6fe5f83c3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0260; 
x-ms-traffictypediagnostic: BN6PR1201MB0260:
x-microsoft-antispam-prvs: <BN6PR1201MB0260C0897E5A2BAE535D78C2B6F90@BN6PR1201MB0260.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(396003)(39860400002)(376002)(136003)(199004)(189003)(14444005)(102836004)(53936002)(486006)(6506007)(53546011)(386003)(54906003)(2906002)(26005)(11346002)(8676002)(76176011)(446003)(256004)(2616005)(476003)(6436002)(6512007)(14454004)(316002)(186003)(6246003)(58126008)(31696002)(36756003)(229853002)(71200400001)(71190400001)(52116002)(99286004)(6486002)(6916009)(5660300002)(66446008)(66556008)(6116002)(64756008)(73956011)(66946007)(68736007)(64126003)(66476007)(3846002)(4326008)(81156014)(65826007)(8936002)(25786009)(66066001)(478600001)(65956001)(65806001)(7736002)(305945005)(81166006)(86362001)(31686004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0260;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MF+x7QSGkmfN8htSSDGLuWDBL1PeReFcOmm0WxqnWm40EucxfEfJ0L+b41PQo0lk2dAsXE28sZNa5IOl5BGeYClf5MIXsllPQM6/OszmA2UIqfLIUanTaXEZ8tOJ/BoBA5w0NcamF2pW1CgEFTxEhfDmak4HWJ5oFGUNby4wE4cJk6q8bqaaX9WOCTHYTTDU/MRipzf0Y5nHxL3/A0ibqZdcF2HmQWtaenx8drXaDwP/rhsZ7oGExq1nUeP6QMWscVbcEyJwCEtPa6BuwiMenpuDF5b9Jjh9EIdWQx59VuHR9jeRXT4+pNr96BxG4zMN1q0OzRaXwJlPTsjLQwl4eoSQSf8eQpsnt3FQz2nfAzx32Rq1RuMsecIfnrWGHqQWb+smWSO48H/ST5k5DFuuzdrh94/Bi3xwsMog9kYzJUc=
Content-ID: <294D3C562614794FA2E2F2E3C0D1A171@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e3c5d55-afd6-49b8-2f98-08d6fe5f83c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 20:05:51.2324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0260
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_130559_099724_A0943845 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arcml <linux-snps-arc@lists.infradead.org>,
 "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>,
 Will Deacon <Will.Deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/31/19 1:21 AM, Peter Zijlstra wrote:
> On Thu, May 30, 2019 at 11:22:42AM -0700, Vineet Gupta wrote:
>> Hi Peter,
>>
>> Had an interesting lunch time discussion with our hardware architects pertinent to
>> "minimal guarantees expected of a CPU" section of memory-barriers.txt
>>
>>
>> |  (*) These guarantees apply only to properly aligned and sized scalar
>> |     variables.  "Properly sized" currently means variables that are
>> |     the same size as "char", "short", "int" and "long".  "Properly
>> |     aligned" means the natural alignment, thus no constraints for
>> |     "char", two-byte alignment for "short", four-byte alignment for
>> |     "int", and either four-byte or eight-byte alignment for "long",
>> |     on 32-bit and 64-bit systems, respectively.
>>
>>
>> I'm not sure how to interpret "natural alignment" for the case of double
>> load/stores on 32-bit systems where the hardware and ABI allow for 4 byte
>> alignment (ARCv2 LDD/STD, ARM LDRD/STRD ....)
> 
> Natural alignment: !((uintptr_t)ptr % sizeof(*ptr))
> 
> For any u64 type, that would give 8 byte alignment. the problem
> otherwise being that your data spans two lines/pages etc..
> 
>> I presume (and the question) that lkmm doesn't expect such 8 byte load/stores to
>> be atomic unless 8-byte aligned
>>
>> ARMv7 arch ref manual seems to confirm this. Quoting
>>
>> | LDM, LDC, LDC2, LDRD, STM, STC, STC2, STRD, PUSH, POP, RFE, SRS, VLDM, VLDR,
>> | VSTM, and VSTR instructions are executed as a sequence of word-aligned word
>> | accesses. Each 32-bit word access is guaranteed to be single-copy atomic. A
>> | subsequence of two or more word accesses from the sequence might not exhibit
>> | single-copy atomicity
>>
>> While it seems reasonable form hardware pov to not implement such atomicity by
>> default it seems there's an additional burden on application writers. They could
>> be happily using a lockless algorithm with just a shared flag between 2 threads
>> w/o need for any explicit synchronization.
> 
> If you're that careless with lockless code, you deserve all the pain you
> get.
> 
>> But upgrade to a new compiler which
>> aggressively "packs" struct rendering long long 32-bit aligned (vs. 64-bit before)
>> causing the code to suddenly stop working. Is the onus on them to declare such
>> memory as c11 atomic or some such.
> 
> When a programmer wants guarantees they already need to know wth they're
> doing.
> 
> And I'll stand by my earlier conviction that any architecture that has a
> native u64 (be it a 64bit arch or a 32bit with double-width
> instructions) but has an ABI that allows u32 alignment on them is daft.

So I agree with Paul's assertion that it is strange for 8-byte type being 4-byte
aligned on a 64-bit system, but is it totally broken even if the ISA of the said
64-bit arch allows LD/ST to be augmented with acq/rel respectively.

Say the ISA guarantees single-copy atomicity for aligned cases (i.e. for 8-byte
data only if it is naturally aligned) and in lack thereof programmer needs to use
the proper acq/release

In my earlier example on lockless code, we do assume that programmer will use a
release in the update of flag.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
