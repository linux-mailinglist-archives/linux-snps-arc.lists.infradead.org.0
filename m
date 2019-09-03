Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288E5A77AF
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 01:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HgMdV71+AtUjQ8a0sa3bvPQScVUhW9qQPWWrX++XNwc=; b=DcA5OG/B/2QTto
	fAIhgBdghk8qE6dpN8MK2iUz5tX05r4SonmHmCIjPk3E34Dy/NH8gEl+GgXRpxH26ws69qb/j41p/
	mCOBEbTqhcnF+JDnh4jpjhGI97yBNYfFAkVDb0LmRQPHEGebk1JV1IiWzVmNfew71CHpRo1492kuu
	BzHl1+/S2IBAXZOn5KtE9JZntQvjOyv3ok+rFNvmfQvAAqrIr/SXnbOAaB80cv5L4iO8fBO8EgKyi
	V++qCL4WAuQKXqdkaxnTYQJplc4CxVSY3vzlTOksYM1RZ2FP+PZeMjUA81T6jWzBIMA1Z8qxYoO4N
	hU0rMXqm6Cm7CAShgWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5IZF-00074N-RX; Tue, 03 Sep 2019 23:50:33 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5IZD-000746-2W
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 23:50:32 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C1D64C0AC6
 for <linux-snps-arc@lists.infradead.org>; Tue,  3 Sep 2019 23:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567554630; bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 h=From:To:CC:Subject:Date:From;
 b=Cv6ajR63LLT+cvb3T8vFT9Fh1MD81d/+V/ff8jY2Q4LQG3n4AktL9DRFBolaNilXu
 /gszP8M15Jvgp7f5WPu1zobBC5FG0DkGkByUlVipNqZdVd0jaHBIMxD64AqUNfLiRJ
 rF6ejGW//djqSq47gSy48g2dU7zvXmozuHrG2DKpZgv9ykZw89tkseK+EAgI6LPUhe
 OlKp9lj3cNI58ZpjsPN+tf6YiiB0vU605unfZVN5cv2aAXOsvBgEnw0XAPjdPtPok+
 gze+HZ74D5XH97k3HZFTM/0gfjgIITobAb0/XR3JTN5Nszm/cdbID0B7fmZ/NqiAjD
 uye3Y39nWj6dQ==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 80219A005A
 for <linux-snps-arc@lists.infradead.org>; Tue,  3 Sep 2019 23:50:28 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 3 Sep 2019 16:50:28 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 3 Sep 2019 16:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M38P+7Jq2ZplOXhMo4fWny7xqy/h7Z51DhW6jPOFHW7JgieFLr0e/cQdvEdioDG/LhyC7uEgqJ2NxaNUCIuPoBeGtFhasgKpseO8OF2KmGAoFXhsSoBx72rfIxjRWXLKl2egg6tav+mV2lZgT78gvO8vcdGx25n3xfqy1I1ed9EfbYK8DWbCbHWWcYc0Hem9N6vWBiPlcx6T5XRqXoGYnOyjQjiUZwPDoeKbY5Da8/HPEYx8lvrN556D0qc1FSZF9S9aC+aPKm62unNYkyjW+vAa0MJZxZ38xkOOsAaHrKcKzAuCnqSZSr/YY0I7VZVZ1xn79EKeXxjso7On9snXQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=N1MHnuWcixiRn2s+ieXAV/VqJYRgcFo3RBU13CbvJhO6TnEWehq71kC5Gn5EdUQx5zZuNX9b8hVjqpGvKZZavGYEio3ezznOA0VPeryPthhdmwUjAHwCaFTo1jGcBgN4iJ+DKlUqumiuxbCcm7tVAPzzq4KVw99rznM3YHpiZGNIkQ4yCiX5pwZ7bJM81mh1Y2MKydYFm3jeudy32lgWIqwdZTLTKlzhV+LqFN1JfPybXU5qhlbwwaz3UmUlsC7LmPl6oX6Xcek3szJ8QQUBx7xPHlUTh4D6raJ4x1AFbbR5H4NdFr7eIcSSIw1Md6YbNqsNhngIFBV7s1jnUcEqkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=Nr3TAT5wT/IaXpxh56ZDcIA9cr95htrxXizluyIyu7XfVO3hemsaE6qpeeOUIk537uU5taAN6V5R2DWM82SLHOYMnezPUagrUu6KqlX4YW4KQQtAtlaOJc0FkUhqzgzHpl7FdtORvWNqVBOXuNaSiU5sRg046LvU8jp1TMTXLU0=
Received: from MN2PR12MB3648.namprd12.prod.outlook.com (20.178.240.92) by
 MN2PR12MB3776.namprd12.prod.outlook.com (10.255.236.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Tue, 3 Sep 2019 23:50:26 +0000
Received: from MN2PR12MB3648.namprd12.prod.outlook.com
 ([fe80::609c:702b:746e:3599]) by MN2PR12MB3648.namprd12.prod.outlook.com
 ([fe80::609c:702b:746e:3599%3]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 23:50:26 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: test email 3 from webmail
Thread-Topic: test email 3 from webmail
Thread-Index: AQHVYrJcZkA04ckarE6xQjcEHir51g==
Date: Tue, 3 Sep 2019 23:50:26 +0000
Message-ID: <MN2PR12MB3648C9F97BDF3480188FD833B6B90@MN2PR12MB3648.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [198.182.56.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47a89128-a353-4e56-fb5d-08d730c97ec6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR12MB3776; 
x-ms-traffictypediagnostic: MN2PR12MB3776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB37766E899CC44699434A9817B6B90@MN2PR12MB3776.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(189003)(25786009)(478600001)(33656002)(621065002)(256004)(102836004)(476003)(305945005)(7736002)(74316002)(14454004)(53936002)(2906002)(86362001)(52536014)(6436002)(6506007)(6636002)(6116002)(3846002)(66946007)(64756008)(66446008)(76116006)(66476007)(66556008)(316002)(4326008)(26005)(486006)(55016002)(6862004)(8676002)(9686003)(81156014)(186003)(7696005)(71190400001)(71200400001)(73894003)(4270600006)(81166006)(66066001)(8936002)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3776;
 H:MN2PR12MB3648.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IWD0W/sZB6DmFe+DR5y1OxftEdyAF9g4J3K8UddRJY7jmVSdnLGNKTAtsUCuSkfbqaZuH8EsSdsDvs/YP6MxG82wxn6txYSSvQLoU+4/Zl+Fe3o2uMhgCZ6bva7KvMZEdp2QaNQWYOrYCSmxI3ckOEX8Z1Fk3voKj8+PFg75teb0LcTKh2RlCg44n41j0/Cktyl/GMxOYJkPt2Nd/JmYIkpSRFEiywOiWlXRlqt3EIYlLhR4QMhVp9uIDqtHHSlHzc5/tsyr/hXP9klMSH1HxqT2vLVRvT1pIlWJmPnxyqU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 47a89128-a353-4e56-fb5d-08d730c97ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 23:50:26.8034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vncSxQbsaDyM7aZcv8qDt1JYCWQR2Z3NOgyAJzNupLxYsAPxb5O1dpaukcs67qOvfRlmkdWzUXPWrazY98NUYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3776
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_165031_123103_3CC936DD 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
