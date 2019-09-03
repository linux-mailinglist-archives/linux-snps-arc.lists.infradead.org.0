Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8CA76B5
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 00:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuTnYyqxGoAnIK+t1xj+MHvF4Kaj0JcGnqQ6HypHHHE=; b=J3SJwwTBNDKTDu
	meN0o+5Dur0O5AfaIXZUnsf8hMQvCEI6qybidyEPmP71SN9YhDBvqcvWtRtB7PZRSMdbMOnDBvAL5
	lUKqAJygj1+PekAwHRd5SmuwcOvCRtSzfncBiYQ62eP0vRK2vNWlEzemjuxr+IoNNhLh8iGzb/rVd
	9sjWA2oa7DJyvNGaAlyxXn+y/antyeoSnMan/2OmZ+SHtRS9pQzIctt7z2CgKYtFtTu5wA4Fo//k/
	XgWw+uMqiniJa8pASL+JSe1SzuphyrAqFceQz+8XGVbuKPVKlX2QcWogVRft2u3vqZuouG5M4Vr2v
	5wBwLKnQ7xiLgNt58hTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Gzu-0007VX-Pt; Tue, 03 Sep 2019 22:09:58 +0000
Received: from mx0b-00010702.pphosted.com ([148.163.158.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Gzp-0007Rs-SL
 for linux-snps-arc@lists.infradead.org; Tue, 03 Sep 2019 22:09:56 +0000
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x83M6aHF001412
 for <linux-snps-arc@lists.infradead.org>; Tue, 3 Sep 2019 17:09:51 -0500
Received: from nam01-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2053.outbound.protection.outlook.com [104.47.33.53])
 by mx0b-00010702.pphosted.com with ESMTP id 2uqpq61ncy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Tue, 03 Sep 2019 17:09:51 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C167llptx6Pbjr5xeP3K17JVZnqjJUbcjaDp0ptxvUZ193ukA+QaWNlaqYBvavcr0oxiyzZ9qReNgync18NufFakDNK7YalQWD5NGUP47ZIwQgVClCxANGDnwopSLUby0zcfY69bvj1O2K4RL6x6CT32jAgjYFXUHkeRVOlOWpqULJB6WsbODkvDwsrWwzafG8ElHeowZuIgS137NYMKGhB0L3JIh2M8WaQOrSmG8Em04y9wQ4ULCcb5a87p/vmiUcauvObqmFJkKITHXQhb5GoKMMPg03Gs8rJ8HjfsrU1o5mjZKSwTnVRvnR/ECpSro/CJCuSKZmpN5Ger4jjTDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XYpJ+i1JRynwDDd8NrwyfP/vZ1Esl8QkjbpqUWUTi5g=;
 b=QI9P+DSY4GdMaXnnOsBnPQaE5SYcE/Wd4YsnY+31qMR+m7BH91WvT7zemeZhAtDVfe8CvIMg4fb0oENgd48ckhMd9qKHtT6/dNqUTozJLZd5OIfNen4nJGrJ1nR9Jfqjg28droTeJHOWw/oZmBSc5r0PRjwmavzuvAUVRQ/oKOp3u+pIz2DTQVOwAGAlToNI22fC3t8f4RwvdkfFPQ9miysfgSV/gk2msz34VQc14Fd8TEWPdyeKy8I6UDgJ1gijcE558VsWcHbyDV+rYO8/x7W2oc6A+tqImbexhPF2tHa3PmCe77HB8b2msdQkoFSmAWvkMb1FQyGhlH6oUD8LCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XYpJ+i1JRynwDDd8NrwyfP/vZ1Esl8QkjbpqUWUTi5g=;
 b=Yxua1L/OOYVNKHElllaUKvRakRkIPovsH4HWds94wblzEeOujMlf466d5BL916XB5T44QemcwHaOUUjWuxw/QdiiI7LFSSB7HCe1VyDQ3Xoaqz2vfwxHTSp/6dprQBwnCrvISpaYUJ22pAlfMG/xHTBMm3cGI/wj0LGwZ7SwUEo=
Received: from DM5PR04MB0381.namprd04.prod.outlook.com (10.173.169.144) by
 DM5PR04MB0554.namprd04.prod.outlook.com (10.173.175.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 22:09:50 +0000
Received: from DM5PR04MB0381.namprd04.prod.outlook.com
 ([fe80::31fd:3e95:1521:18a2]) by DM5PR04MB0381.namprd04.prod.outlook.com
 ([fe80::31fd:3e95:1521:18a2%7]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 22:09:50 +0000
From: Joe Hershberger <joe.hershberger@ni.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Topic: [U-Boot] [RFC PATCH] net: designware: drop compatible altr,
 socfpga-stmmac
Thread-Index: AQHVYqRO3HUMY4QhO0yho0RPNxZoeQ==
Date: Tue, 3 Sep 2019 22:09:50 +0000
Message-ID: <CANr=Z=bF3dqXP919XJXzwrMYs_zW+yx_kpxeWYraxF1D7-S4-Q@mail.gmail.com>
References: <20190819184313.8383-1-ralph.siemsen@linaro.org>
 <CY4PR1201MB01205C73F3502FFB2F9192BFA1AB0@CY4PR1201MB0120.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB01205C73F3502FFB2F9192BFA1AB0@CY4PR1201MB0120.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0088.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::29) To DM5PR04MB0381.namprd04.prod.outlook.com
 (2603:10b6:3:9e::16)
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAUar96EgFZI4j63MVK4lXDO9vU5CErXf6SFIQD0wty5sFQESVPZ
 J36DywSFN5l6CtrKVIPS4IGndmTSz8oAPSPlyHs=
x-google-smtp-source: APXvYqwFriEZzePsa60ummIWPBYubIrjWH4GLaNPqwRyFd8hPOoIFq5u2TpNfKiRxUJtQJHXaLNZPJ3TmCYXFXyVfqo=
x-received: by 2002:a5d:4247:: with SMTP id s7mr9198134wrr.110.1567548586976; 
 Tue, 03 Sep 2019 15:09:46 -0700 (PDT)
x-gmail-original-message-id: <CANr=Z=bF3dqXP919XJXzwrMYs_zW+yx_kpxeWYraxF1D7-S4-Q@mail.gmail.com>
x-originating-ip: [209.85.221.52]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d35d403e-a784-42c1-4c50-08d730bb7061
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR04MB0554; 
x-ms-traffictypediagnostic: DM5PR04MB0554:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM5PR04MB05543BA046A1D47BEF92A1A1F6B90@DM5PR04MB0554.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(376002)(136003)(366004)(346002)(199004)(189003)(13464003)(5660300002)(66556008)(486006)(55446002)(6246003)(71190400001)(71200400001)(6862004)(107886003)(2906002)(478600001)(14454004)(386003)(476003)(53546011)(6506007)(66946007)(966005)(102836004)(64756008)(66446008)(446003)(66476007)(11346002)(61266001)(186003)(76176011)(316002)(25786009)(4326008)(66066001)(43066004)(9686003)(6486002)(305945005)(95326003)(6306002)(7736002)(6436002)(229853002)(52116002)(26005)(8676002)(256004)(8936002)(99286004)(81156014)(53936002)(3846002)(81166006)(6512007)(498394004)(6116002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR04MB0554;
 H:DM5PR04MB0381.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ygAmC9H4aEu0KqTIPMQrUBFnE6mJLsLAV61DYSWqTvJw9nhELYXCf+AcTKrF7w8iFRAlz8DetpQfn6c3t7drCHk+W3/Hfjqn8t3IiMrBM9Ruu4y6Q5gbuHIqVQVzy4AN+AGsyovjrmmmubCPqVAivPHzNNxTTLv2TilpYXaY8tnI8SESB0Se1g9Rmvvhit3eUpy/fPy4Fhni/yyhQWd/LzDUlIgKEfGY5ZD/joi8csTBa7BrpW4EVuUkqDh6FO+CR1DxKYE8jifEPL2bNG3AZSBUEruoRAd0NHvJcIWfFDO1IzCQ2J2bDNpFtVImaNKv02+NTQUhiGaPyiTZQXFPi/aUOSN5t5bNgnWzHV9mO6YOzdUPCEoHub7JFIj02uToyF6LM4kjpQZAlvOzCY5IEGgb9vzVGXNS5WyZqbfpE/Q=
x-ms-exchange-transport-forked: True
Content-ID: <963ADEDACEB840429B46F8DE68D090B2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d35d403e-a784-42c1-4c50-08d730bb7061
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 22:09:50.0585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1vIj5uVzJM/9Awrfy/AE6QhgFD0GcquAPVUeqNjjuWt7h84BApXzCkeFhtND4SK5znqhtkB2HeLqIbQ2C2groE5PPxphQOKBnQiqyS0bKAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR04MB0554
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-03_05:2019-09-03,2019-09-03 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
 score=30 suspectscore=0
 phishscore=0 malwarescore=0 impostorscore=0 clxscore=1011 mlxlogscore=999
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909030220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_150954_189964_55A90C7F 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.57 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: joe.hershberger@ni.com
Cc: "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Ralph Siemsen <ralph.siemsen@linaro.org>,
 Joseph Hershberger <joseph.hershberger@ni.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 3:07 AM Alexey Brodkin
<Alexey.Brodkin@synopsys.com> wrote:
>
> Hi Ralph,
>
> > -----Original Message-----
> > From: Ralph Siemsen <ralph.siemsen@linaro.org>
> > Sent: Monday, August 19, 2019 9:43 PM
> > To: u-boot@lists.denx.de; Joe Hershberger <joe.hershberger@ni.com>; Alexey Brodkin
> > <abrodkin@synopsys.com>; Vlad Zakharov <vzakhar@synopsys.com>
> > Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
> > Subject: [RFC PATCH] net: designware: drop compatible altr,socfpga-stmmac
> >
> > The same compatible = "altr,socfpga-stmmac" appears in both
> > drivers/net/designware.c and drivers/net/dwmac_socfgpa.c,
> > creating ambiguity in which driver will be bound.
> >
> > For Intel/Altera SoC devices, dwmac_socfpga.c is the correct driver.
> > So drop the compatible string from designware.c.
> >
> > Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
> > ---
> > This compatible string also appears in: axs10x_mb.dtsi and hsdk.dts.
> > Maintainers of those boards have been copied, kindly review.
>
> Thanks for this clean-up.
>
> Speaking about AXS10x board where we do have DW GMAC
> I cannot recall the reason I chose to use "altr,socfpga-stmmac"
> for the board here [1] 3 years ago.
>
> But given we don't have any special quirks implemented whatever
> is the most generic DW GMAC compatible string is should be good for us.
>
> Joe, could you please suggest if we need to use just "st,stm32-dwmac"
> or add our own compatible as the ASIC is not from ST obviously but
> an FPGA with Synopsys ARC SoC?

I think we should only be using what Linux does, so I'm afraid I have
to defer to what exists in the DTs there.

-Joe

> [1] https://gitlab.denx.de/u-boot/u-boot/commit/fb2dea60e8f355ae00d427db09112a90839c96ec
>
> -Alexey
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
