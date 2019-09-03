Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC241A6DB5
	for <lists+linux-snps-arc@lfdr.de>; Tue,  3 Sep 2019 18:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shDRrDoPrIJNauxiD1QhtZSz+oQZQavfj2bytMJPe8M=; b=AARUH85PwVOxuX
	BEZXrftUOiNcjnQcKt6QjJEI/Z4V6t2i4yXpYxIWcSV94KUO3ZQcJgLwCHL430n9dnvhOJHgrVytX
	LAg7nN4Dplpt2HTwS0aCv77mUZ2rQuvymKQNrlw+z5M6aI1DpgBdUhn8gXQX4t8bfiL78faS6febG
	jjiAjUwckgDr0pAgdvd/CjhbyWRygmp1Re05pVzrm+bCYnwn9JioUp8eZoZUnDYFvqw0gueet8nEI
	jtd7YwJXXp5kqLgB5gJBUFXMcM3zEiAlxPJ4ASKa3GSH5vCRpUrYZCkuLKJIOpMHjwyeFxaSuwofB
	4km1rR6AfnyTReWTMYTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BQX-0004gT-Da; Tue, 03 Sep 2019 16:13:05 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BQT-0004fy-S0
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 16:13:03 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 539BEC0365;
 Tue,  3 Sep 2019 16:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567527178; bh=oeAcnwsmu+d6f+RpgTP44W+mF0VRJqKxbbfgGTx3qMo=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Qr6b5uSqOjoy4jgqdm2xOZaEpLVAnv/ce8zfAWAh/24oK1N8+DsQYsqqJyIZ5OnfN
 uWN+/gkpPVIv5uoEkft3aXG2IORybW8bJbFbB1DDdlNyquZzDg6H2Ml28AUqmq1YQt
 hdD+1+zdUUXSrntPEtCNqgyITN4dberrRcaEd10/B4wUVW+iOaWznjeWO4/BwJW43Y
 SpFRVqxoSq4CxpqZ5DnnmtiTAySftbLvvyvU2cTzdGCbqYlY6XylWa83rds+0G2OCn
 0+WQB7DRvULlfkRNCE5zh+q8X6gp7pmZX9jXiYozkyPFk0EblgGZT0Baoijl5ovvu3
 2pDo2c8g0oZLA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 232ABA0097;
 Tue,  3 Sep 2019 16:12:51 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 3 Sep 2019 09:12:45 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 3 Sep 2019 09:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zcn1NN7q8Dr/PjTqDSebxscrfblvqEZG1HhWdQzjkHS5rdFjX3ZzyrHP1UVeyU/iY8rr69Zdmp1aWz+t10gP+mSSbislc6t788TLJEPU14x0deTU+PlL8vTiQ35fV4KKZMzL5Xhtkw3m1qSAIe/1MhRtHFc27d4FJ8JKuIap/NuyjB0CptvOhn4CTYRben+bXtZTdN+z+j/dTBAx8DxFyrND057CtNN+hmY4Fs6UAoCey7O/dhScp7dwlFWlzaddXb63FuouaGLa8QfCDthSxHe7A7nHSiUTeIuTVcxUodyIEeMe8TwjAZGHzCirwhCJqISa9WmV8Kx0F2oT4BHuwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oeAcnwsmu+d6f+RpgTP44W+mF0VRJqKxbbfgGTx3qMo=;
 b=FxBp95DDSS3IjRin0nAPX/sUxScIrE5uRBOo2EvvdoeBXISC+ZVsiV/HcdqS4dmL7rRM9kPZDOzlvsduY+8WLcfVZ5aeVm+xiyRMwiDT5fTSFctEEn4gV9SfI2C3EGd4f52rtiOvVy6okqbDPLLpJA/JINaQgyjq4feM74zBrXw36kr4qAXEeggVJBNMeEagyDYhZFJancJiyFW/wlctuu5fjDYGHnRgPNQckkhYM01zghcr1FyXhGWLziS7aWw1irWlMJe3O8TLWjCSmy9S9SIVhXVFMEjPyZ8JQ6cVs6v3vHZvK+39gSwnUyyV7ZWnvihoMx9H8zEeo+G02N6mTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oeAcnwsmu+d6f+RpgTP44W+mF0VRJqKxbbfgGTx3qMo=;
 b=jNCvqpRZxt2g3GPAdvTLh14yHuzwxDDAyZ4g5ZwRXUkb1cC6M2U0uOQlJXHdM1OKITQ6tcIyuuCaa2NlxdCj0ISbFe063eVSsn9ZECt6rXFBgcXCrk+m5kUjoAGsxIZXeGrNzWRXal2vL5x5rsHWOnrgaL3XEqAPPUAjE/9X5cI=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 16:12:44 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::d05d:d934:192d:5d6a%11]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 16:12:44 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Tom Rini <trini@konsulko.com>
Subject: RE: [PATCH] mmc: dw_mmc: fix timeout calculate method
Thread-Topic: [PATCH] mmc: dw_mmc: fix timeout calculate method
Thread-Index: AQHVXjna+DfPeOAAxEeloY2F1kIiY6cR1rxAgAEIxoCAANFXsIAEXOKAgAAbhwCAALsQAIABQ3oQ
Date: Tue, 3 Sep 2019 16:12:44 +0000
Message-ID: <CY4PR1201MB012093B1126A2631CB41CA64A1B90@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20190814083819.5784-1-kever.yang@rock-chips.com>
 <AM0PR04MB44819DF46C4A0C68844F13C688A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44819FF9900E879AA261324B88A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <3a4fc838-0cc9-64c8-3993-628cce6484c5@rock-chips.com>
 <CY4PR1201MB01207C7EEBA298FDD2B57711A1A20@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <c322fb38-bbc4-545e-c418-0f3eed2bf1e3@rock-chips.com>
 <CY4PR1201MB01204C5C461D25197D3B11D5A1BD0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <bbfdedf8-318a-271d-fc64-472a0017583a@rock-chips.com>
 <CY4PR1201MB01202FCF2BF2C1F75F5DE354A1BE0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20190902205252.GB26850@bill-the-cat>
In-Reply-To: <20190902205252.GB26850@bill-the-cat>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75c3bef5-0427-40c2-dc4e-08d730898dbf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR1201MB0120; 
x-ms-traffictypediagnostic: CY4PR1201MB0120:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB012058627444BD3548C9D366A1B90@CY4PR1201MB0120.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(376002)(366004)(39860400002)(199004)(189003)(186003)(76176011)(476003)(4744005)(486006)(256004)(76116006)(26005)(33656002)(66446008)(25786009)(64756008)(66066001)(66946007)(102836004)(71200400001)(71190400001)(305945005)(11346002)(66476007)(86362001)(66556008)(74316002)(4326008)(54906003)(107886003)(52536014)(446003)(7696005)(81166006)(81156014)(53936002)(8936002)(8676002)(7736002)(229853002)(316002)(478600001)(6116002)(6916009)(3846002)(55016002)(5660300002)(966005)(9686003)(6246003)(6306002)(6506007)(6436002)(2906002)(99286004)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0120;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C/QtyXUe+rEwgzkABOMkl++jp5oHoPWHeOWO05zB6UMFjBFoTj2Pe/CXvaemsuxMw9yuUU98amZRwcbeXts/HZGBPgYwbpmZfruhLnDYD6YOjW5KF3tB7+ojMk5Tag1iCI8tlnybk6KBW2r/50OznxPwmWVkhyqaAv9mV6wC6imNmDN/oLro+7xJRSm3HXdo1W7rZ24O59+oY5QIKqrUlL6SMS9AR/GXJ/ZmwFyP6uc0lz2Ew6MR4DAL4arRtztZ6vQovHmVQIIYmV8z7AO4Rh+tfSR5qGG3GcQucnnZec+kUN6dEHeBtR5aaLtk+rXCshe8uNXxxhA4dDfPa/qBoCHdBYRxkRONQoU8FdNEutD4aKpQrfm3LuRIUMu8fRTX0znmm8JJ35l4P2nCPgK5HJiLCvCrjAjrobkWY6cneU4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c3bef5-0427-40c2-dc4e-08d730898dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 16:12:44.1409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q3pz4ptVpcGwrEKH0PedrKaxvoJnO62IiscHh5FIsjlytEeRdHGjqhkBeEXCzJ2gSIs5Jlpj5X86g6lMqvoLUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0120
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_091301_972235_340DDE4C 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "uboot-snps-arc@synopsys.com" <uboot-snps-arc@synopsys.com>,
 "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

H Tom,

[snip]

> > > This is the patch with problem, and here is the link on patchwork:
> > > https://patchwork.ozlabs.org/patch/1146845/
> >
> > Please find my fixes here:
> > https://patchwork.ozlabs.org/patch/1156541/
> > https://patchwork.ozlabs.org/patch/1156617/
> >
> > Tom do we want https://patchwork.ozlabs.org/patch/1146845/ and fixes for it
> > (see 2 items above) to become a part of upcoming v2019.10 release or
> > it will be slated for the next one?
> 
> I think we should aim to get all the fixes in for this release.

Done, see https://lists.denx.de/pipermail/u-boot/2019-September/382628.html

-Alexey
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
