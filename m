Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4F35E87A
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jul 2019 18:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYXkqG9p9AXKVh2hrBonUnOppj9pmq0G0mWS6gv9RLg=; b=DurtERYD4euwyi
	9wqT2yKjTwhY58Nqsgu1nMufNS6joftneuSc2jKZOsmnuVh+pWiAzBaCfqPbymyPn9qUaYpnRoCne
	b5Zy+tSNlrUY3y5Kl5LVpGdWMlCKI85XlrXGDHRmyWM786MZyL1Hgmyn9H3VWjBd6MuY1XZqNvoEl
	JPGR8c6imQH9IRKUJ6SN/M1zH1S8ZsTasGURt7rMIQFbLBjtK8HWN6ANpjDn3JbcvH1Szwvj7gYn6
	0sORsHpRDOqvv7afkhI1f6ARFQRMPCKREBb4gMGyjZeLVo31oXe/aqlDMwFN48W0w5kJrWWCwBixk
	0OFGwzcQ+19/MjqO7hYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hihsW-00019N-QP; Wed, 03 Jul 2019 16:13:04 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hihsT-00018P-Ax
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jul 2019 16:13:02 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D06E1C00FF;
 Wed,  3 Jul 2019 16:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562170377; bh=0HCbz62W0SD90lgw0eWLOaeWUqNPRKl575wG2TM8rHs=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Z5JHl88YhGRScP/0PYjz7Yk/PsU47jnxe1+BR6t14LJHkP60SA1ITl0otDn2RmBvs
 CZmvnbQV49ikmBOmoOVdxVPeIVlTiSolrEbWM/k7PaD39OKmIgy+GoOoelMa6Z3BSS
 NC/9T5E6Ez+cPLp5joh2qfpDuQ72mjgOzGiQRNSzXyWB73HU/gif0MHqbAXBoNsiKF
 tUlnAmyML52yfg4Bmp8eXeB6O9qLm8aCPpqhUUCciraa+bLp45qfWnPYreXUxpa1AV
 8d9SvF8BF9skYToGrbyBSUql+rrcrYN0S5SyJe8+DfAzNfIX2vFGDd9GGYRHINgKHN
 x9/wsmdrqOWNg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 53140A0091;
 Wed,  3 Jul 2019 16:12:55 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 3 Jul 2019 09:12:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 3 Jul 2019 09:12:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0HCbz62W0SD90lgw0eWLOaeWUqNPRKl575wG2TM8rHs=;
 b=G33F4WMKb/KhpMthlv7VmD/9oMiO/KkiaQmqQO3RVRJMNqe2ZMmojaNveYNnysb/3HOl9UiMKcWROS69UCTL8qzzJ09Ru+d+Hvh26/Be0TeSsggv+QNHh+2H3x3wgW4b8o7wlIarA5CMnIrL6k9AN/B1FlHnBVUx9Z+rjwa42uU=
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com (10.174.238.140) by
 BN6PR1201MB0051.namprd12.prod.outlook.com (10.174.114.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Wed, 3 Jul 2019 16:12:52 +0000
Received: from BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f]) by BN6PR1201MB0035.namprd12.prod.outlook.com
 ([fe80::c4ec:41a0:dfb5:767f%10]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 16:12:52 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARC: hide unused function unw_hdr_alloc
Thread-Topic: [PATCH] ARC: hide unused function unw_hdr_alloc
Thread-Index: AQHVMaTXsiWHeSj06keYhFaxN9Sn16a5EQgA
Date: Wed, 3 Jul 2019 16:12:52 +0000
Message-ID: <7584cf05-e3f9-7027-a08c-87efbfb0f608@synopsys.com>
References: <20190703133940.1493249-1-arnd@arndb.de>
In-Reply-To: <20190703133940.1493249-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-originating-ip: [198.182.56.5]
x-clientproxiedby: BY5PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:180::37) To BN6PR1201MB0035.namprd12.prod.outlook.com
 (2603:10b6:405:4d::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb45f0df-a691-4a7b-c633-08d6ffd14c7d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR1201MB0051; 
x-ms-traffictypediagnostic: BN6PR1201MB0051:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR1201MB00517F35FC591D14F8A10B8FB6FB0@BN6PR1201MB0051.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(376002)(136003)(39860400002)(366004)(199004)(189003)(66066001)(64756008)(66446008)(66476007)(58126008)(5660300002)(229853002)(6486002)(66556008)(54906003)(66946007)(52116002)(65826007)(31696002)(6306002)(73956011)(6512007)(7736002)(316002)(81156014)(4326008)(86362001)(65956001)(65806001)(81166006)(26005)(8676002)(305945005)(64126003)(386003)(6506007)(8936002)(476003)(53546011)(76176011)(53936002)(186003)(36756003)(4744005)(71200400001)(71190400001)(486006)(6436002)(6916009)(99286004)(25786009)(31686004)(446003)(966005)(102836004)(11346002)(2616005)(3846002)(6116002)(14454004)(68736007)(6246003)(478600001)(14444005)(2906002)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1201MB0051;
 H:BN6PR1201MB0035.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3zh/duXv5tHB8MMX2s0mv3KoCjMmNbRB6VegnCkIAJ41fly7Sy/8rc19tjv3dhSufVrl00JSVI/9y4tBphOj9c1qOpLypcsnhZ3kyRzOvRF2FH5P6pDbXllYLQTGRi8ZQev8gTJn7959mkAU40G4Lmj43m+xgz+bqKIFCC8cpvQ/EcFugH2u7MqRe7BXclng4pYW/+zHmG8BVaNx9eh6nwlR54VQ5NTvvDPGZ8PFUzDviN59x3SNZqEuXRJbFXjft7xleI3+sxSsKFv37AWcD0ehXOF7rr4bhXlSFCS5+IAMkYowd2O2wcZvJZs7ZNRI9VPxQPZ4MU0zvygsHTGpVgp5jbmdETRGXRCcjQA4jYM/+uvFbUEvVZW7mD2IFFJJNLaGnVBfWzDTx9bdvq6xFsyX0d+2wDO28ag58bJiJ5c=
Content-ID: <FA708647CF42D248BF5FBACD6EAC489D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cb45f0df-a691-4a7b-c633-08d6ffd14c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 16:12:52.1737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vgupta@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1201MB0051
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_091301_440979_EEADA7E6 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 7/3/19 6:39 AM, Arnd Bergmann wrote:
> As kernelci.org reports, 

Curious, how are you getting these reports ? I want to see as well.

> this function is not used in
> vdk_hs38_defconfig:
> 
> arch/arc/kernel/unwind.c:188:14: warning: 'unw_hdr_alloc' defined but not used [-Wunused-function]
> 
> Fixes: bc79c9a72165 ("ARC: dw2 unwind: Reinstante unwinding out of modules")
> Link: https://kernelci.org/build/id/5d1cae3f59b514300340c132/logs/
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thx, do you want me to pick this up via arc tree.

Thx,
-Vineet
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
