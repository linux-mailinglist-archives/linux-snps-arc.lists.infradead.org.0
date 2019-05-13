Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134461B6D2
	for <lists+linux-snps-arc@lfdr.de>; Mon, 13 May 2019 15:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jjbUG6ERYkBTwJj1mcpQBkPXceObfr8URVoPCM/R3M=; b=hiWamKo22PCfrw
	uE0If8i7VOs6Q6WGrRZR8vD9bNXEyu8fEETsLfzNkEuAZS8Z93ByswpDTgPlNs6JOs7SWxWuNJfMD
	lxzuAynP+QqgDA0HDroyoP3VHWpBPyIFQosDRmMDFSr+EYJMMfsrA2mmM5NTECWew7t0b3EsRNw/d
	6MODwiOUpuhf4i5Z46Jzf1dJMKflkZBdgge+OMWVDO42LkIVtV0V5uQ8LzTZTmp4SiFBG9QCNosvh
	uSFNaPVJFpAAMNcmxU1qZkahyLQrJgRM41acrLZDTDK4WlRl868/caRtCNBLuvP8vtf4eci2Rd0TJ
	v31WNOG0IOG3UFkvKBsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAlj-0005Zy-Ov; Mon, 13 May 2019 13:13:27 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQAlf-0005YS-71
 for linux-snps-arc@lists.infradead.org; Mon, 13 May 2019 13:13:25 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E21E8C0199;
 Mon, 13 May 2019 13:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557753192; bh=X/w4jjIfhDtxxwFm9CmAL+XLlUqFDReF5C0x1ixR4vE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=giAIZxpbsJnp5BHWdwQSeHT4cQ/ht4/oaDipfAg7MJAwWJqq6YUH7+EqPGOeXgYNR
 5jlO/4z2zx8Ecax37/zlod/7eEmtYM44K64fp0nD7fYP5YOk1FiRRWNQoP/OnKXQFW
 gWyLzgaIPalYgayJVx+3dExjJhxy9C9ZgGA9sUJBzuNIyXoZ9PyH+KImmTKuQXRm+w
 Df05MpAyyubfos30ZZAmfYlejBz7CXk4ZP53901CShPBXBHe0MzF8W1MapjWP2g7Tj
 1lvM9w9vsSdu7bKS5ofVhuX07KsSxKHccHuqRumk/05QWWmmdCnr0/IdAyM/5vWt9G
 yFhjOM7IGnx+A==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id F1576A005A;
 Mon, 13 May 2019 13:13:19 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 May 2019 06:13:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 13 May 2019 06:13:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/w4jjIfhDtxxwFm9CmAL+XLlUqFDReF5C0x1ixR4vE=;
 b=lFFt+EQVabi+dm3ROg6KjT/EmOXTxl/XQ8Td1/diembRpYD9X3Id/9ehZmcfYZUR3GMnCJdndtQovJ9QW3wDnTHjCUuWgo2LVek21kiUWgZOELJvaz4RhueQCat4WD/ZxBmu7CFvesqmfO6BVW8k2M1OfTTE7j+jPaLwHs/OU2o=
Received: from MWHPR12MB1632.namprd12.prod.outlook.com (10.172.56.21) by
 MWHPR12MB1471.namprd12.prod.outlook.com (10.172.55.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 13:13:16 +0000
Received: from MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6]) by MWHPR12MB1632.namprd12.prod.outlook.com
 ([fe80::c5dc:3b4:6ab8:4dc6%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 13:13:16 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2] ARC: fix memory nodes topology in case of highmem
 enabled
Thread-Topic: [PATCH v2] ARC: fix memory nodes topology in case of highmem
 enabled
Thread-Index: AQHU9QrXSpJDCh2Pa06BEWgWPHof5qZpMSgA
Date: Mon, 13 May 2019 13:13:16 +0000
Message-ID: <1557753194.16604.1.camel@synopsys.com>
References: <20190417104611.13257-1-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20190417104611.13257-1-Eugeniy.Paltsev@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d9f3274-f1e3-4bfd-8e6e-08d6d7a4c30d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR12MB1471; 
x-ms-traffictypediagnostic: MWHPR12MB1471:
x-microsoft-antispam-prvs: <MWHPR12MB14719910573BAF22287115F0DE0F0@MWHPR12MB1471.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(39850400004)(396003)(366004)(189003)(199004)(14444005)(11346002)(76176011)(6636002)(6246003)(6116002)(446003)(476003)(2906002)(6436002)(53936002)(486006)(37006003)(256004)(4326008)(36756003)(186003)(54906003)(3846002)(25786009)(6512007)(2616005)(102836004)(305945005)(6486002)(68736007)(316002)(71200400001)(71190400001)(86362001)(229853002)(7736002)(103116003)(6506007)(478600001)(91956017)(64756008)(26005)(8936002)(99286004)(66066001)(8676002)(66946007)(66556008)(81166006)(81156014)(73956011)(76116006)(66476007)(66446008)(6862004)(5660300002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR12MB1471;
 H:MWHPR12MB1632.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EnzAL6gi7sdT/PlzkScZZdfK2Y1vHhiVUrGGSz4B5Nkonk5bnRpL65nz1WWGIE8sAcHe1JfGQ+KJyig3d7WeQ9F9GRR8Wx2RhwsOGWaUqegTlC09RztX+RHpQAk7ZdKkaLFbaE7ow1qLdI6UxaxF9xIHRBkzJGYsnnQhcL4KQFzSXrs0frIBnsUO5DMeP5s0Ri3AqiR7aoJrTg1S46cycq56jy0SrJOyKpI3GewgRA1YlsevpCpUG1aMl40IA3jcVC9s+qIhfap9f4e5GCWwxWVFf2EaBZQLsCeH9bHFRd8OLBtVao/caaWG4skpAv5dKItyUq81skRKRIoPjdHcAtzBRldQnbtpqhKj1f6NnrHAfF5HdNtakV/yGqh3KKB9kTxoCI4S5CHhJEKlfKkKGJ1ZKAHAy1/6/8LoMxWwpcc=
Content-ID: <52AD7DEEBD41044287A0AF00A3A82F2F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d9f3274-f1e3-4bfd-8e6e-08d6d7a4c30d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 13:13:16.4566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1471
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_061323_316009_B841B4BF 
X-CRM114-Status: GOOD (  29.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexey  Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Vineet,

ping.

On Wed, 2019-04-17 at 13:46 +0300, Eugeniy Paltsev wrote:
> Tweak generic node topology in case of CONFIG_HIGHMEM enabled to
> prioritize allocations from ZONE_HIGHMEM to avoid ZONE_NORMAL
> pressure.
> 
> Here is example when we can see problems on ARC with currently
> existing topology configuration:
> 
> Generic statements:
>  - *NOT* every memory allocation which could be done from
>    ZONE_NORMAL also could be done from ZONE_HIGHMEM.
>  - Every memory allocation which could be done from ZONE_HIGHMEM
>    also could be done from ZONE_NORMAL (In other words ZONE_NORMAL
>    is more universal than ZONE_HIGHMEM)
> 
> ARC statements:
> In case of CONFIG_HIGHMEM enabled we have 2 memory nodes:
>  - "node 0" has only ZONE_NORMAL memory.
>  - "node 1" has only ZONE_HIGHMEM memory.
> 
> Steps to reproduce the problem:
> 1) Let's try to allocate some memory from userspace. It can be
>    allocate from anywhere (ZONE_HIGHMEM/ZONE_NORMAL).
> 2) Kernel tries to allocate memory from the closest memory node
>    to this CPU. As we don't have NUMA enabled and don't override
>    any define from "include/asm-generic/topology.h" the closest
>    memory node to any CPU will be "node 0"
> 3) OK, we'll allocate memory from "node 0". Let's choose ZONE
>    to allocate from. This allocation could be done from both
>    ZONE_HIGHMEM / ZONE_NORMAL in this node. The allocation
>    priority between zones is ZONE_HIGHMEM > ZONE_NORMAL.
>    This is pretty logical - we don't want waste *universal*
>    ZONE_NORMAL if we can use ZONE_HIGHMEM. But we don't have
>    ZONE_HIGHMEM in "node 0" that's why we rollback to
>    ZONE_NORMAL and allocate memory from it.
> 4) Let's try to allocate a lot of memory [more than we have free
>    memory in lowmem] from userspace.
> 5) Kernel allocates as much memory as it can from the closest
>    memory node ("node 0"). But there is no enough memory in
>    "node 0". So we'll rollback to another memory node ("node 1")
>    and allocate the rest of the amount from it.
> 
>    In other words we have following memory lookup path:
>       (node 0, ZONE_HIGHMEM) ->
>    -> (node 0, ZONE_NORMAL)  ->
>    -> (node 1, ZONE_HIGHMEM)
> 
>    Now we don't have any free memory in (node 0, ZONE_NORMAL)
>    [Actually this is a simplification, but it doesn't matter
>    in this example]
> 6) Oops, some internal kernel memory allocation happen which
>    requires ZONE_NORMAL. For example "kmalloc(size, GFP_KERNEL)"
>    was called.
>    So the we have following memory lookup path:
>    (node 0, ZONE_NORMAL) -> ("node 1", ZONE_NORMAL)
>    There is no free memory in "node 0". And there is no
>    ZONE_NORMAL in "node 1". We only have some free memory in
>    (node 1, ZONE_HIGHMEM) but HIGHMEM isn't suitable in this
>    case.
> 7) As we can't allocate memory OOM-Killer is invoked, even if
>    we have some free memory in (node 1, ZONE_HIGHMEM).
> 
> This patch tweaks generic node topology and mark memory from
> "node 1" as the closest to any CPU.
> 
> So the we'll have following memory lookup path:
>     (node 1, ZONE_HIGHMEM) ->
>  -> (node 1, ZONE_NORMAL)  ->
>  -> (node 0, ZONE_HIGHMEM) ->
>  -> (node 0, ZONE_NORMAL)
> In case of node configuration on ARC we obtain the degenerate case
> of this path:
> (node 1, ZONE_HIGHMEM) -> (node 0, ZONE_NORMAL)
> 
> In this case we don't waste *universal* ZONE_NORMAL if we can use
> ZONE_HIGHMEM so we don't face with the issue pointed in [5-7]
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
> Changes v1->v2:
>  * Changes in commit message and comments in a code. No functional
>    change intended.
> 
>  arch/arc/include/asm/Kbuild     |  1 -
>  arch/arc/include/asm/topology.h | 24 ++++++++++++++++++++++++
>  2 files changed, 24 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arc/include/asm/topology.h
> 
> diff --git a/arch/arc/include/asm/Kbuild b/arch/arc/include/asm/Kbuild
> index caa270261521..e64e0439baff 100644
> --- a/arch/arc/include/asm/Kbuild
> +++ b/arch/arc/include/asm/Kbuild
> @@ -18,7 +18,6 @@ generic-y += msi.h
>  generic-y += parport.h
>  generic-y += percpu.h
>  generic-y += preempt.h
> -generic-y += topology.h
>  generic-y += trace_clock.h
>  generic-y += user.h
>  generic-y += vga.h
> diff --git a/arch/arc/include/asm/topology.h b/arch/arc/include/asm/topology.h
> new file mode 100644
> index 000000000000..c3b8ab7ed011
> --- /dev/null
> +++ b/arch/arc/include/asm/topology.h
> @@ -0,0 +1,24 @@
> +#ifndef _ASM_ARC_TOPOLOGY_H
> +#define _ASM_ARC_TOPOLOGY_H
> +
> +/*
> + * On ARC (w/o PAE) HIGHMEM addresses are smaller (0x0 based) than addresses in
> + * NORMAL aka low memory (0x8000_0000 based).
> + * Thus HIGHMEM on ARC is implemented with DISCONTIGMEM which requires multiple
> + * nodes. So here is memory node map on ARC:
> + *  - node 0: ZONE_NORMAL  memory (always)
> + *  - node 1: ZONE_HIGHMEM memory (only if CONFIG_HIGHMEM is enabled)
> + *
> + * In case of CONFIG_HIGHMEM enabled we tweak generic node topology and mark
> + * node 1 as the closest to all CPUs to prioritize allocations from ZONE_HIGHMEM
> + * where it is possible to avoid ZONE_NORMAL pressure.
> + */
> +#ifdef CONFIG_HIGHMEM
> +#define cpu_to_node(cpu)	((void)(cpu), 1)
> +#define cpu_to_mem(cpu)		((void)(cpu), 1)
> +#define cpumask_of_node(node)	((node) == 1 ? cpu_online_mask : cpu_none_mask)
> +#endif /* CONFIG_HIGHMEM */
> +
> +#include <asm-generic/topology.h>
> +
> +#endif /* _ASM_ARC_TOPOLOGY_H */
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
