Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272116BED2
	for <lists+linux-snps-arc@lfdr.de>; Wed, 17 Jul 2019 17:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1/wQDeUmAQ1Y9k6+yUo97Jn4+wi99/rLjk1ly3XGLY=; b=Joh7NE2SGzPRFG
	8a+3dPk30Tzo7RHWPtRxDMU0E0q/N0AgkhSSEn7QOH6rkvGQXz/BcdeKhxdwfPxGc3Y2GJR+5NFNJ
	6Xj1OZFthpDfAANn66Gl77VAn8RZGf0HEQaPbsjXGsG9aqjILLJAsndhAoVYZEn/5M0imy1OFheRK
	FN7wNPNuvc2qZYdEe08cDubSckE520vW5nYgCJYw5rOHD1e/VWqJLNhKeij0124bxjrG9LBxkQxYh
	J0Hq4D0n0dvekIZQF0LWtqD1EAwvLhWVrInxEKDABZVSTPf7UkgsdhNHQeu05WukKpESfJT80/ihI
	vmQI5MSr72wppnUS3aXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlZH-0004qf-T4; Wed, 17 Jul 2019 15:10:07 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlZE-0003za-7G
 for linux-snps-arc@lists.infradead.org; Wed, 17 Jul 2019 15:10:06 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 24DF8C0ABC;
 Wed, 17 Jul 2019 15:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563376200; bh=4WuDKry4NMQz7qo173QpDM1hbO7KVVZ0inwJoAulOkc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=HeJn7cHDmLkdnJg7O4DS9DkTLY9ILDspypHoYjNLrgmWYbGddupNKFPooucEQ6rnN
 r/UrLlHmp3FO8S/Vn8Prj/kdlkssc6bK6nwMBhgiEgMYVO9fsQ+nAygZjgXdHZtEgS
 cqpjkWYfpGO4kxaIfzo5OmdEZZ+GzFbAwB8eMPxOxYZjvarc5Y7SM4pkVyonL6pVTk
 HzEi5y12dKSYK7c0vSNqbg2IqUtTaj/z8o5lk0SpKNYP9iE+BEPZlwJLeqQBjBTPQa
 QKTtj9dulttLIxW9h685yHRw/UKMgj0djEhhjOtxH11riTg6ze1tyhu0AGFPAkNqvw
 zvnU0MqOdIfvw==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 9C960A009F;
 Wed, 17 Jul 2019 15:09:58 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 17 Jul 2019 08:09:40 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 17 Jul 2019 08:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XU5bl4Lx4Csj7mQpdBFB/Do00f/xlsm9Drbj7NHMS6zTvZw7XVP9DKqUeVYhmGELXDDM4YC8uS3VCRw3Tku3AcTYbJcrrat3ut3fLJPeKkwSN7OGPs20XsdW2pRJXMF0wyKDVQas996Lbfj5i4CyDYSLLig9gwCU2wYNt1BqQ7oe5QE3+sMKxDhqxbMvjmJpZw/ozCJLRSCk1/FLQRO29n2IAiXL4j12FZHy5jZ8fqtL9SZ2pZ0wme/Yhd61K4Sdh8qPKICWnF8LCk7gq7ci/QN4BGtEb2xLMp6p968Hf4hsFH+WFoawwzhydSoB3Hktd7eqR2luYdC2hand21xsYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4WuDKry4NMQz7qo173QpDM1hbO7KVVZ0inwJoAulOkc=;
 b=fo0/iJ8I3av9xOHI/We3aIj/glUfZdpkbDrq+KrG9plj0eouj8byfnZByijUWG4E1Ounk08fSCsTX8XliTEwQ/8HCWqUnJJTNw1+K0S9S5lVjbhi3seLLSTOJJuE5rtBxTQc5kPQADx8oIFmc06/XstvvESYM/XhvkulR/l+2NATjq6kwH3ppde/3jP8wpBOQbNeErSiX5/Am4/bgKdIhABxKi0Dy7dcs94IcGAzj/IfCS7Ft8OhwfJ4VmlTvdZuD8SnTiNpGQYTJZ5ob11y38vk3Ish0dcgzdp/rRW84lEiybpvt4KLpmyGySpwcfjTnf2HpFpI85kZsrikO1T1Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4WuDKry4NMQz7qo173QpDM1hbO7KVVZ0inwJoAulOkc=;
 b=wIc2getZ42v6wiLf4q5Ctwoh+yEXwdGyeOF0mutFclOLiHfYrmeLkBd1Hxl4OshNvv+or+QmsZmKqdOUeZOlMeCCqQ3L4MXlekNKrMl1QZbhD7DgOWYMz0ADC9DjzVS7UjVWqfa5hp8e0t/AImm9R2tMhMCLIolBTAffZKHF3ko=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2703.namprd12.prod.outlook.com (52.135.103.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 15:09:35 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::ecdd:a159:c3f7:67a%6]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 15:09:34 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "Vineet  Gupta" <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Topic: [PATCH] ARC: ARCv2: jump label: implement jump label patching
Thread-Index: AQHVItABmoPNpjiRbEyPVk6MS/0psabPHaMA
Date: Wed, 17 Jul 2019 15:09:34 +0000
Message-ID: <57076361ad37f4fe7a5584643ae47adf30a99d35.camel@synopsys.com>
References: <20190614164049.31626-1-Eugeniy.Paltsev@synopsys.com>
 <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
In-Reply-To: <C2D7FE5348E1B147BCA15975FBA2307501A252CCC3@us01wembx1.internal.synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86463fc7-48fe-4d13-6298-08d70ac8c751
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2703; 
x-ms-traffictypediagnostic: SN6PR12MB2703:
x-microsoft-antispam-prvs: <SN6PR12MB2703A0B0AB30E04060E7503ADEC90@SN6PR12MB2703.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(376002)(39860400002)(396003)(136003)(189003)(199004)(36756003)(68736007)(86362001)(256004)(14444005)(26005)(476003)(186003)(6512007)(6506007)(53546011)(305945005)(76176011)(486006)(118296001)(8676002)(6486002)(11346002)(7736002)(8936002)(2616005)(446003)(66066001)(99286004)(25786009)(229853002)(6246003)(14454004)(91956017)(76116006)(53936002)(81166006)(4326008)(66946007)(81156014)(5660300002)(66556008)(66476007)(66446008)(64756008)(2906002)(316002)(71200400001)(71190400001)(6436002)(3846002)(6116002)(478600001)(2501003)(102836004)(54906003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2703;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VfifBPh87GIlb8ScASj4b+CcAOvnEOfLIK1lxcqHcWDzm6Ky1D4ANWRE8NoaKlzAWLaCOd1JLUBo7sdWRLL3vADy5XAv3y+03f2T340e0UmkgT6qvK6Rzh7ha6z6x0PVRZdOPvCpvXFxUXaYpHHVDUpVRqP5CZz737NxEE9fTMgAnFwKVXol4bHKLRftEti/MNyr5Z+L7Zon4YoDwCMrDm7Czh8/SuBpuz0xnjCBcpszGf5q77t9BtsQoL4X625pHbDY9SlsvZKRjVyDvbgb79K2oiItyGaOenqHwhDd1B4FTL5xd37gTqAURn5eI+pjZh5g/Kr0OQ9m0dvTE169XXWp+FKAEY95qiH/sVYUKa2yDetLfGsAyPw04jRVsdsQ53V0WxXvQK1N9zAzwtP+JidnmGxfPBCEqyUhJQ9tCXg=
Content-ID: <D7C326816A754845AF2E747A7106B602@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 86463fc7-48fe-4d13-6298-08d70ac8c751
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 15:09:34.7812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2703
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_081004_735373_84301551 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jbaron@redhat.com" <jbaron@redhat.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,
I'm finally back, so see my comments below.

On Tue, 2019-06-18 at 16:16 +0000, Vineet Gupta wrote:
> On 6/14/19 9:41 AM, Eugeniy Paltsev wrote:
> > Implement jump label patching for ARC. Jump labels provide
> > an interface to generate dynamic branches using
> > self-modifying code.
> > 
> > This allows us to implement conditional branches where
> > changing branch direction is expensive but branch selection
> > is basically 'free'
> > 
> > This implementation uses 32-bit NOP and BRANCH instructions
> > which forced to be aligned by 4 to guarantee that they don't
> > cross L1 cache line and can be update atomically.
> > 
> > Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> 
> LGTM overall - nits below.
> 
> > ---
> >  arch/arc/Kconfig                  |   8 ++
> >  arch/arc/include/asm/jump_label.h |  68 ++++++++++++
> >  arch/arc/kernel/Makefile          |   1 +
> >  arch/arc/kernel/jump_label.c      | 168 ++++++++++++++++++++++++++++++
> >  4 files changed, 245 insertions(+)
> >  create mode 100644 arch/arc/include/asm/jump_label.h
> >  create mode 100644 arch/arc/kernel/jump_label.c
> > 
> > diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
> > index c781e45d1d99..b1313e016c54 100644
> > --- a/arch/arc/Kconfig
> > +++ b/arch/arc/Kconfig
> > @@ -47,6 +47,7 @@ config ARC
> >  	select OF_EARLY_FLATTREE
> >  	select PCI_SYSCALL if PCI
> >  	select PERF_USE_VMALLOC if ARC_CACHE_VIPT_ALIASING
> > +	select HAVE_ARCH_JUMP_LABEL if ISA_ARCV2 && !CPU_ENDIAN_BE32
> >  
> >  config ARCH_HAS_CACHE_LINE_SIZE
> >  	def_bool y
> > @@ -529,6 +530,13 @@ config ARC_DW2_UNWIND
> >  config ARC_DBG_TLB_PARANOIA
> >  	bool "Paranoia Checks in Low Level TLB Handlers"
> >  
> > +config ARC_DBG_STATIC_KEYS
> > +	bool "Paranoid checks in Static Keys code"
> > +	depends on JUMP_LABEL
> > +	select STATIC_KEYS_SELFTEST
> > +	help
> > +	  Enable paranoid checks and self-test of both ARC-specific and generic
> > +	  part of static-keys-related code.
> 
> Why can't we just enable this if STATIC_KEYS_SELFTEST

As we extent STATIC_KEYS_SELFTEST option such dependency looks more reasonable for me
(we enable our checks -> lets enable corresponding generic ones)
I don't insist, though.

> >  endif
> >  
> >  config ARC_BUILTIN_DTB_NAME
> > diff --git a/arch/arc/include/asm/jump_label.h b/arch/arc/include/asm/jump_label.h
> > new file mode 100644
> > index 000000000000..8971d0608f2c
> > --- /dev/null
> > +++ b/arch/arc/include/asm/jump_label.h
> > @@ -0,0 +1,68 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_ARC_JUMP_LABEL_H
> > +#define _ASM_ARC_JUMP_LABEL_H
> > +
> > +#ifndef __ASSEMBLY__
> > +
> > +#include <linux/types.h>
> > +
> > +#define JUMP_LABEL_NOP_SIZE 4
> > +
> > +/*
> > + * To make atomic update of patched instruction available we need to guarantee
> > + * that this instruction doesn't cross L1 cache line boundary.
> > + *
> > + * As of today we simply align instruction which can be patched by 4 byte using
> > + * ".balign 4" directive. In that case patched instruction is aligned with one
> > + * 16-bit NOP_S if this is required.
> > + * However 'align by 4' directive is much stricter than it actually required.
> > + * It's enough that our 32-bit instruction don't cross l1 cache line boundary
> > + * which can be achieved by using ".bundle_align_mode" directive. That will save
> > + * us from adding useless NOP_S padding in most of the cases.
> > + *
> > + * TODO: switch to ".bundle_align_mode" directive using whin it will be
> > + * supported by ARC toolchain.
> > + */
> > +
> 
> So block comments on top of a function imply summary of function etc.
> What you are doing here is calling out the need for .balign quirk. So better to
> phrase it is as "Note about .balign" and then describe the thing

Ok, will fix in v2.

> > +static __always_inline bool arch_static_branch(struct static_key *key,
> > +					       bool branch)
> > +{
> > +	asm_volatile_goto(".balign 4			\n"
> > +		 "1:					\n"
> > +		 "nop					\n"
> > +		 ".pushsection __jump_table, \"aw\"	\n"
> > +		 ".word 1b, %l[l_yes], %c0		\n"
> > +		 ".popsection				\n"
> > +		 : : "i" (&((char *)key)[branch]) : : l_yes);
> > +
> > +	return false;
> > +l_yes:
> > +	return true;
> > +}
> > +
> > +static __always_inline bool arch_static_branch_jump(struct static_key *key,
> > +						    bool branch)
> > +{
> > +	asm_volatile_goto(".balign 4			\n"
> > +		 "1:					\n"
> > +		 "b %l[l_yes]				\n"
> > +		 ".pushsection __jump_table, \"aw\"	\n"
> > +		 ".word 1b, %l[l_yes], %c0		\n"
> > +		 ".popsection				\n"
> > +		 : : "i" (&((char *)key)[branch]) : : l_yes);
> > +
> > +	return false;
> > +l_yes:
> > +	return true;
> > +}
> > +
> > +typedef u32 jump_label_t;
> > +
> > +struct jump_entry {
> > +	jump_label_t code;
> > +	jump_label_t target;
> > +	jump_label_t key;
> > +};
> > +
> > +#endif  /* __ASSEMBLY__ */
> > +#endif
> > diff --git a/arch/arc/kernel/Makefile b/arch/arc/kernel/Makefile
> > index 2dc5f4296d44..307f74156d99 100644
> > --- a/arch/arc/kernel/Makefile
> > +++ b/arch/arc/kernel/Makefile
> > @@ -22,6 +22,7 @@ obj-$(CONFIG_ARC_EMUL_UNALIGNED) 	+= unaligned.o
> >  obj-$(CONFIG_KGDB)			+= kgdb.o
> >  obj-$(CONFIG_ARC_METAWARE_HLINK)	+= arc_hostlink.o
> >  obj-$(CONFIG_PERF_EVENTS)		+= perf_event.o
> > +obj-$(CONFIG_JUMP_LABEL)		+= jump_label.o
> >  
> >  obj-$(CONFIG_ARC_FPU_SAVE_RESTORE)	+= fpu.o
> >  CFLAGS_fpu.o   += -mdpfp
> > diff --git a/arch/arc/kernel/jump_label.c b/arch/arc/kernel/jump_label.c
> > new file mode 100644
> > index 000000000000..93e3bc84288f
> > --- /dev/null
> > +++ b/arch/arc/kernel/jump_label.c
> > @@ -0,0 +1,168 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/jump_label.h>
> > +
> > +#include "asm/cacheflush.h"
> > +
> > +#define JUMPLABEL_ERR	"ARC: jump_label: ERROR: "
> > +
> > +/* Halt system on fatal error to make debug easier */
> > +#define arc_jl_fatal(format...)						\
> > +({									\
> > +	pr_err(JUMPLABEL_ERR format);					\
> > +	BUG();								\
> 
> Does it make sense to bring down the whole system vs. failing and returning.
> I see there is no error propagation to core code, but still.

I totally agree with Peter, and I prefer to stop the system on this errors. Here is few arguments:
All this checks can't be toggle in system operating normally and only may be caused by bad code generation (or some code/data corruption):
1) We got our instruction to patch unaligned by 4 bytes (despite the fact that we used '.balign 4' to align it)
2) We got branch offset unaligned (which means that we calculate it wrong at build time or corrupt it in run time)
3) We got branch offset which not fits into s25. As this is offset inside one function (inside one 'if' statement actually) we newer get such huge
offset in real life if code generation is ok.

If we only warn to log and return we will face with compromised kernel flow later.
I.E. it could be 'if' statement in kernel text which is switched to wrong state: the condition is true but we take the false branch.
And It will be the issue which is much more difficult to debug.

Does it sound reasonably?

If you really don't want to have BUG here, I can make it conditionally enabled
in depend on CONFIG_ARC_STATIC_KEYS_DEBUG as I want to have it enabled at least on ARC development platforms.

[snip]
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
