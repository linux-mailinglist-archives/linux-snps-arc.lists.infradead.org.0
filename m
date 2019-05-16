Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4C720DD9
	for <lists+linux-snps-arc@lfdr.de>; Thu, 16 May 2019 19:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhkWz4c+MeHCgfRcfhSLjZ7GQjpHPz4pbab/vE5OATU=; b=OhrLhl5JwzGhXO
	71jEdjgaGsccgnk1hHgDD3Kj5XnGxKLeFWM9sotaFHm/Rg63tu3NibRTpuVBQ8e6uChQ0MXghpRSU
	4MOoFjNmakzdQMXwivtVua/ppXbFd/rR88ngM/WbmATAT0iRr4iTQPQaP6uP/I4zf9CqSy1Z7oyBo
	KSvJXXnfe1cKbcpC84ROI4kxMBx9xnhHOtN99cVpT2e2s84jqyk/AyR/ND2d9XLSKlM6+tw9coY0b
	zO7Av5pf67U0N5OMZzvl1zZ4dDtRr8b4gPITlRVCCtjM3mn3OHobRu1RMTolRla0TvYlIO7JY90+Y
	KbHuvqqTC604VMOiBNeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK7O-0000qt-5I; Thu, 16 May 2019 17:24:34 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK76-0000Po-CH
 for linux-snps-arc@lists.infradead.org; Thu, 16 May 2019 17:24:32 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 86B09C0096;
 Thu, 16 May 2019 17:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558027459; bh=oE8LxxHxiqBMxlmgUp5oyVAN2XI6p9oveJiPbKpLUVY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=kBpl/gAFNtbM0BFmjviCD8Cx52hKiga4mFr1F/9NLJazRGP0mWd1bNA8QeyjybP5u
 pdg+gl3nl4+NN9fzPlq4h+121qxnxUn5ugowh/MOGjv8i0yToWCtwYAGb+YgJplAph
 vx/mW/0kp5RBj/2gWEoW9uRlkCtCgq/8yuzCxgHYwlFaECxGPg+skJhy8VXc9o88SC
 6mBsBu/HKDel/9E5DZYFg/ptKOvpP4+H7Y5do4s9UD0LGreXEOgG1P2yw4NCHtKoCY
 DXg6FBq8u5Ex43ZnsD8yhrAjS6FcATcfwXz1zL2esEWx0xQhStiP0tPUlZp2porx9M
 fYvZmYKXPHxRA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B3A1EA005D;
 Thu, 16 May 2019 17:24:12 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 16 May 2019 10:24:12 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 16 May 2019 10:24:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oE8LxxHxiqBMxlmgUp5oyVAN2XI6p9oveJiPbKpLUVY=;
 b=Wbn+RyFMMSJZPjus0i0lm8OfXoThaXuCByh04aKkeWd2RteX8BshkPeJdTrITgx/Ca7VEksH/GeVV1w3bKcUuLbnfF42DKdn2pqdfDs7+JKfVmK2cIQW4Z1wb6xqqYGSjXJk6oemJsLBMB0qDF7NNSEbUencPRNbxxRlpgl0QJc=
Received: from MWHPR12MB1632.namprd12.prod.outlook.com (10.172.56.21) by
 MWHPR12MB1135.namprd12.prod.outlook.com (10.169.204.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 17:24:09 +0000
Received: from MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6]) by MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 17:24:09 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma access
 permission code
Thread-Topic: [PATCH 4/9] ARC: mm: do_page_fault refactor #3: tidyup vma
 access permission code
Thread-Index: AQHVCrV7sukeR9XiU0qv5Rc2AMUmg6ZuAusA
Date: Thu, 16 May 2019 17:24:09 +0000
Message-ID: <1558027448.2682.11.camel@synopsys.com>
References: <1557880176-24964-1-git-send-email-vgupta@synopsys.com>
 <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
In-Reply-To: <1557880176-24964-5-git-send-email-vgupta@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b439ab49-56bb-43f2-f19b-08d6da234ea0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR12MB1135; 
x-ms-traffictypediagnostic: MWHPR12MB1135:
x-microsoft-antispam-prvs: <MWHPR12MB1135A9A438B02806185C0132DE0A0@MWHPR12MB1135.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(376002)(136003)(396003)(39860400002)(199004)(189003)(305945005)(478600001)(6436002)(5640700003)(54906003)(6512007)(37006003)(2351001)(229853002)(6486002)(102836004)(73956011)(66946007)(76116006)(64756008)(66476007)(6506007)(91956017)(85306007)(14454004)(103116003)(7736002)(66556008)(76176011)(81156014)(81166006)(66066001)(8676002)(2501003)(36756003)(66446008)(99286004)(8936002)(256004)(4326008)(6246003)(6862004)(53936002)(71200400001)(486006)(446003)(476003)(2616005)(68736007)(316002)(14444005)(86362001)(26005)(3846002)(6116002)(2906002)(11346002)(71190400001)(25786009)(6636002)(5660300002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR12MB1135;
 H:MWHPR12MB1632.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eqsipbborog6r33nDblFpHuVa6KpJtrF8lM7d0nDzhrRjkXFCKHTi8Zu2ZUuV/nrtGq11G7FW9LtKREbQH0swD9ClEoHJwQMP7AaoVJlgBBIeIgA9pKt1FPwCPpY/F8jNieKHor7OfcrQ9oofoPOwa6WhvsRGb3kGAbVYKSkE+jcvEJE5+/WQ50rH6Ml5fpIt6gAAYvpk7CNjGPT+qyQSaJgqzqLsOHX0r5mzzc6068KoqgI/qdV3QveEOoB/3BdzxxuOtM+m7Zg84LP0xfGr2bBg5F6F7K50lKTTUPspHWWIiGRj2kj4PAMAIM7nWFP32mEd2KphOiYH3/EL1cq6bvrIgin4maIuhAUwAFlnvqRdNAusSDoumvOq2sS0EeqlByrGGrxjUNRLSoHIso/seKhPqMYeqUUh858gmmYYgM=
Content-ID: <BAF2304AECF65C45AC3503A9F316C09C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b439ab49-56bb-43f2-f19b-08d6da234ea0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 17:24:09.6013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1135
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102416_952303_13D6DBF0 
X-CRM114-Status: GOOD (  21.38  )
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "paltsev@snyopsys.com" <paltsev@snyopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, 2019-05-14 at 17:29 -0700, Vineet Gupta wrote:
> The coding pattern to NOT intialize variables at declaration time but
> rather near code which makes us eof them makes it much easier to grok
> the overall logic, specially when the init is not simply 0 or 1
> 
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
> ---
>  arch/arc/mm/fault.c | 39 +++++++++++++++++++++------------------
>  1 file changed, 21 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arc/mm/fault.c b/arch/arc/mm/fault.c
> index f1175685d914..ae890a8d5ebf 100644
> --- a/arch/arc/mm/fault.c
> +++ b/arch/arc/mm/fault.c
> @@ -67,9 +67,9 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
>  	struct task_struct *tsk = current;
>  	struct mm_struct *mm = tsk->mm;
>  	int si_code = SEGV_MAPERR;
> +	unsigned int write = 0, exec = 0, mask;

Probably it's better to use 'bool' type for 'write' and 'exec' as we really use them as a boolean variables.


>  	vm_fault_t fault;
> -	int write = regs->ecr_cause & ECR_C_PROTV_STORE;  /* ST/EX */
> -	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
> +	unsigned int flags;
>  
>  	/*
>  	 * NOTE! We MUST NOT take any locks for this case. We may
> @@ -91,8 +91,18 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
>  	if (faulthandler_disabled() || !mm)
>  		goto no_context;
>  
> +	if (regs->ecr_cause & ECR_C_PROTV_STORE)	/* ST/EX */
> +		write = 1;
> +	else if ((regs->ecr_vec == ECR_V_PROTV) &&
> +	         (regs->ecr_cause == ECR_C_PROTV_INST_FETCH))
> +		exec = 1;
> +
> +	flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
>  	if (user_mode(regs))
>  		flags |= FAULT_FLAG_USER;
> +	if (write)
> +		flags |= FAULT_FLAG_WRITE;
> +
>  retry:
>  	down_read(&mm->mmap_sem);
>  
> @@ -105,24 +115,17 @@ void do_page_fault(unsigned long address, struct pt_regs *regs)
>  	}
>  
>  	/*
> -	 * Ok, we have a good vm_area for this memory access, so
> -	 * we can handle it..
> +	 * vm_area is good, now check permissions for this memory access
>  	 */
> -	si_code = SEGV_ACCERR;
> -
> -	/* Handle protection violation, execute on heap or stack */
> -
> -	if ((regs->ecr_vec == ECR_V_PROTV) &&
> -	    (regs->ecr_cause == ECR_C_PROTV_INST_FETCH))
> +	mask = VM_READ;
> +	if (write)
> +		mask = VM_WRITE;
> +	if (exec)
> +		mask = VM_EXEC;
> +
> +	if (!(vma->vm_flags & mask)) {
> +		si_code = SEGV_ACCERR;
>  		goto bad_area;
> -
> -	if (write) {
> -		if (!(vma->vm_flags & VM_WRITE))
> -			goto bad_area;
> -		flags |= FAULT_FLAG_WRITE;
> -	} else {
> -		if (!(vma->vm_flags & (VM_READ | VM_EXEC)))
> -			goto bad_area;
>  	}
>  
>  	/*
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
