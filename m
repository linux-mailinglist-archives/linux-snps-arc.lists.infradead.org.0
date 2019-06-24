Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E94B51B43
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Jun 2019 21:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vm4Fyi4pD7/YN7yFfFEMXAnmCiq0EZfurboxTGDgsP0=; b=HQCz+gWfxdrPzD
	EVDwPzLGJSph6lJZJhMYX6xPiv4M+bnjDt7UrO76giETnc9dG5/y2Z42VX9vDDq20HvaUm/9pUs+D
	GeBtR7t5k++BEJ+trXFOrUQS9MZvVkgJwv6RGM1HAVKzaPUBONAy6ZWSQRsqt2agpgQ7f6iqGZMRq
	s/T1pdcqw9Dbj79AvXt0l+btvE7zwNEAfapdwIDWmoRFgyMvr+AR2MjNyier9BnK40eGBeW60dcbq
	jL/WP69VgEd1kwsG6IS2GFjZ4WirNqv05nHd0RE5/vaW5FkUi5CmDV5VldK8MEsn9WwAgBZB207p3
	dCX6/FubWakLoe5Ecigw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUPX-0001kM-QN; Mon, 24 Jun 2019 19:13:51 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUPU-0001jc-2e
 for linux-snps-arc@lists.infradead.org; Mon, 24 Jun 2019 19:13:49 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6837AC016F;
 Mon, 24 Jun 2019 19:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1561403625; bh=IyQcSOT5phDqPIxpqTAJLZWOKuI5yxfsa6BkTsQXkpE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Vd/Fux5cMf3TkVNXFGODYhjzaOew3Z7Nm2z+74S8qfpqPLW+e+h14kjL8eYPqmJUL
 HCqWcsm/GZd/L8giNDm2RmO+l84ZkgxcFI8JmcHWhm7kZZa5NRXbjUnjKZKYA9297I
 lAGnLxMjFPvUxeVBPEzRa8dRCp+E1YSmT9p6gLBGJ5NzcrAEFjP8Ha0gb3KLgaGQR/
 Rx8ShrdibRw1qZgP1V+pUl1LMkb9ouYUdEd94MwQiHh1lrzTnBmDK1i8RD8LeYnOmT
 v9nbp1nyplCDShm0RLXoVWPm/sS070aVOm1WQJV6sR3Dasfpsm8TmVnnN8roNCncqt
 BawwuYcdoU3XA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D5776A0096;
 Mon, 24 Jun 2019 19:13:43 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 24 Jun 2019 12:13:20 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 24 Jun 2019 12:13:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyQcSOT5phDqPIxpqTAJLZWOKuI5yxfsa6BkTsQXkpE=;
 b=MZFKcOED8DPBn+ydGCyMPh0pj/Oa7kOV0EuvmcuxyaBDDOOgewPfnzyWxFRQwU20byUZvL6aviK+ZyW2keGrKjCkGx8Dp4iv/2JUpevaj/zlMI2+y2NcGOSTfp/GVihHFiIBz9t/JhV6qfUgtQBcw/slnkOwkNHkMG23FEBoEe0=
Received: from SN6PR12MB2670.namprd12.prod.outlook.com (52.135.103.23) by
 SN6PR12MB2800.namprd12.prod.outlook.com (52.135.107.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 19:13:17 +0000
Received: from SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495]) by SN6PR12MB2670.namprd12.prod.outlook.com
 ([fe80::bd34:8d2b:911e:e495%5]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 19:13:17 +0000
From: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: "hch@lst.de" <hch@lst.de>, "linux-snps-arc@lists.infradead.org"
 <linux-snps-arc@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 7/7] arc: use the generic remapping allocator for coherent
 DMA allocations
Thread-Topic: [PATCH 7/7] arc: use the generic remapping allocator for
 coherent DMA allocations
Thread-Index: AQHVIsAMmlRh09Vs6Ea+qlthrKcWyaabcdSAgADzXACADnLDgIAAZD4A
Date: Mon, 24 Jun 2019 19:13:17 +0000
Message-ID: <d9ed8f6a82801b94d1d7792eb74effdbce09ce51.camel@synopsys.com>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-8-hch@lst.de>
 <78ac563f2815a9a14bfab6076d0ef948497f5b9f.camel@synopsys.com>
 <20190615083554.GC23406@lst.de> <20190624131417.GA10593@lst.de>
In-Reply-To: <20190624131417.GA10593@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=paltsev@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9bf598d-5d1a-4ac0-430b-08d6f8d8038d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR12MB2800; 
x-ms-traffictypediagnostic: SN6PR12MB2800:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN6PR12MB2800D1C5DE499564F45D549ADEE00@SN6PR12MB2800.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(39860400002)(346002)(396003)(366004)(189003)(199004)(6506007)(186003)(6486002)(8676002)(966005)(118296001)(36756003)(26005)(2501003)(71200400001)(71190400001)(25786009)(86362001)(5660300002)(73956011)(66446008)(66556008)(4326008)(478600001)(14454004)(66946007)(76116006)(91956017)(64756008)(66476007)(68736007)(81156014)(81166006)(486006)(476003)(3846002)(102836004)(256004)(6116002)(229853002)(446003)(11346002)(305945005)(2616005)(7736002)(8936002)(2906002)(316002)(54906003)(66066001)(110136005)(99286004)(6246003)(107886003)(76176011)(53936002)(6436002)(6306002)(6512007)(2201001)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR12MB2800;
 H:SN6PR12MB2670.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iJ00g2zT/4WhtbWYRO981jCmUehKik1S1XFkB9HJQGGcK95tVTzVfBQNZLobYZ8zhzgJjVXLEiaDth6my/r3oYrXJXo/24LiZpw3wfuCFbkKb6gJNWKx8Ttgy6X1XhFqE78PYHqUWojTGu9V0k9i+W4AfI9Rc9FCELfjTnL+jdXD5OVs4EDJ0XiM5IOpcoBIjDBRqJ04OlpLZB8wxT6P2wvMdx8AOlEmbAJrPnl++7HkS3ncI8c0VjL/gWTU3y6jQ22GRNBb3dPvilvFuVr3KZV/Pa+Zd7uRH+Zk5E/vkt7GDzdW+Cdjk4OYPmw2Ld5cumswQla+lF0r2VRx4KrW/B23elVDn4ymvWLeySeq2Mdy9aj+ec9b2BovBpMD+RAgS1huJqyvD69bLWKGzLME7lxsqBZlPYBU6QNYA1OxLps=
Content-ID: <023BB888034E2E4CB28D67BF3924C4C3@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e9bf598d-5d1a-4ac0-430b-08d6f8d8038d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 19:13:17.4978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: paltsev@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2800
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_121348_182423_7AEE7E45 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Christoph,

Yep I've reviewed and tested it for both cases:
- coherent/noncoherent dma
- allocation from atomic_pool/regular allocation

everything works fine for ARC.

So,

Reviewed-by: Evgeniy Paltsev <paltsev@synopsys.com>
Tested-by: Evgeniy Paltsev <paltsev@synopsys.com>

for both
[PATCH 2/7] arc: remove the partial DMA_ATTR_NON_CONSISTENT support
[PATCH 7/7] arc: use the generic remapping allocator for coherent DMA allocations


On Mon, 2019-06-24 at 15:14 +0200, hch@lst.de wrote:
> On Sat, Jun 15, 2019 at 10:35:54AM +0200, hch@lst.de wrote:
> > On Fri, Jun 14, 2019 at 06:05:01PM +0000, Eugeniy Paltsev wrote:
> > > Hi Christoph,
> > > 
> > > Regular question - do you have any public git repository with all this dma changes?
> > > I want to test it for ARC.
> > > 
> > > Pretty sure the
> > >  [PATCH 2/7] arc: remove the partial DMA_ATTR_NON_CONSISTENT support
> > > is fine.
> > > 
> > > Not so sure about
> > >  [PATCH 7/7] arc: use the generic remapping allocator for coherent DMA allocations
> > > :)
> > 
> >    git://git.infradead.org/users/hch/misc.git dma-not-consistent-cleanup
> > 
> > Gitweb:
> > 
> >    
> > https://urldefense.proofpoint.com/v2/url?u=http-3A__git.infradead.org_users_hch_misc.git_shortlog_refs_heads_dma-2Dnot-2Dconsistent-2Dcleanup&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=ZlJN1MriPUTkBKCrPSx67GmaplEUGcAEk9yPtCLdUXI&m=ipYAmX3rwLxDIdXUztTMYBZkKFGZBY9vykJVBwq_KXE&s=uRWKQoDT8pPKRPYCB6k4oO3mtRFRNyLolRDeBBIVtNQ&e=
> >  
> 
> Did you get a chance to look into these patches?
-- 
 Eugeniy Paltsev
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
