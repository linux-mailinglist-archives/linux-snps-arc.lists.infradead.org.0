Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BF51F00FC
	for <lists+linux-snps-arc@lfdr.de>; Fri,  5 Jun 2020 22:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6VoryZTaprx+x/JpOtZtQotG9HOu7p2HtCZRmyhbNQ=; b=PVJdKQB1fCzwzH
	6Yz3GytDVceXc+9rBRyub6nxWIYg7sUBvHb3zztDTQlU58PIIt+ISAMoFn0mxHiib9dIxHdHNKu0H
	2FfZskZrrk+lILSwGSWDtPnMr46gJbDMAb0YGPKs4f1YL/qRv/fGAe2Fb3Z9BFlTt0SWpaSrmyBWx
	9nsA+XQYxfLewrk1ZQJWiCdUmWd2mpCDq5l1trRF/Ybci3B6RWzSjAlUVRcLM44W2sPfWeUoX+A5V
	gnmonzXZ/kjXkE64R5TsvrmaMcYDkuoKTcIwcPSMInfR9REwqFUZCoiqaMpwVn6qIV3Hlpau22NTH
	p6G+t62znMCJ1dYcWZXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhJ0U-0003nq-Vu; Fri, 05 Jun 2020 20:32:02 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhJ0Q-0003nM-Hv
 for linux-snps-arc@lists.infradead.org; Fri, 05 Jun 2020 20:32:02 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A2DDEC03AD;
 Fri,  5 Jun 2020 20:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591389116; bh=YkAJ2o1XlwnKJhd03RbW/SEuYePl7zs8xFgYBHx83uE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=QBLTbNpsYgcg6giuQC0uf5w8Zxrht6Scv1SWahQ7W7qqpLv/lK0j6Kj7O8JjARcsh
 t6EZrvdUZls4f+Dm3OJv0amgJeu48m5/rp64dnKkY2EwkSASeA+Y/oYTIMzYnWpuLN
 aXz+OSOHQxXji1Xk73082v0TCFLe5s93ohbAcXR7Y1Nz/nANL3jiDeT0wMVLq90VaS
 io+eW5PyLkgq1icuMJ78uG5VRX3ImE+4KL7gzq1y73IquaKFFHf6NrsZ3Gi9Idt5FL
 UlBcFCM7r5eeKxtYqukn8BQY+j3eYM7BKY1HmrCLOi/GKcVHBeEw15d+ONNPoIZfHA
 phQ1c4y+mZgjg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 945BEA0069;
 Fri,  5 Jun 2020 20:31:49 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 5 Jun 2020 13:31:44 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 5 Jun 2020 13:31:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDxc5NOA7QIkv0R5ybHzTGc8djryf/G+R1WWCvSC/ihzChpX4IYy5KmHiW+PnADZK+oiSkGsYJiI1IknfQWYqIa2GevsuZEsux0TQHbGhVGGMTQ9hyUlHz9B5yXOmTSPKKWUW1BjKF6TVftbXxAbt+GQF97Um+hXEF21hlp1WiPavsLMY8EvcuGDT2qU7QvizyQmBc7mjX+lTkH25xAip7k9Tjwv+utTvSqHOhaoMxnPdZ4DXGNBgIS6WR9JEUWOa8M0BjYrFKCAkr5NM/YerEGkv/iPGfE3hd7dwSeDXEM8WsHQNF+m8V7yz9hzzzgHQPPe93/TMo2WLBJTayynOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YkAJ2o1XlwnKJhd03RbW/SEuYePl7zs8xFgYBHx83uE=;
 b=OWn/CRqWywryrvF8nYOTuhAhMnhA7RtaOAzaTgexEHWrBkNnS85p7YmL5udSsOZXV19f6cFojlv+Y53jXGtDD56c2NEubGIcDlWhV5TFtLFSJUN7U3sASM4HJWmpHGwEbgFyGlU4EmvCCMUHwiEljYH7Fd9dqdecgIaFYfQNaXq+X/KRgXAXvxaAQzkN31JkzNfgpBW20juhR3c6Gr+qCsgRSRpYZMsA9jFz0gPrH/WG5nzVdT4OJe8+bQm0iXPBS/tnLezGoRvb72Iq9X3lGKB6sZj3TZPGA5F4mnP3EcXj67t4NJSizDJsf7wFLx6kc0+hqBh0bsJRo7agbgR8uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YkAJ2o1XlwnKJhd03RbW/SEuYePl7zs8xFgYBHx83uE=;
 b=UaiabDQL3x/8qSOuO87WjjXHWZP4fC0Ts0VmIMY+hwBGawDIZcqUgDMi9WmcSFE57zOlifUfOhF+9rI02EmwKlQRqSWpYJoEokAbS3V4UW8iN/ECpVyQ+1KnM7PWckcv8ftxXmznXCsDLEI9DN5ZhZzxNkRhPB6KgtXxTR7UXcI=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BYAPR12MB3447.namprd12.prod.outlook.com (2603:10b6:a03:a9::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 20:31:43 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::a43a:7392:6fa:c6af%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 20:31:43 +0000
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: [PATCH v2 2/2] ARC/dl-runtime helper macros
Thread-Topic: [PATCH v2 2/2] ARC/dl-runtime helper macros
Thread-Index: AQHWOGKmqtzP9ZswN0qDvSM8LCZUHajKflMAgAABjAA=
Date: Fri, 5 Jun 2020 20:31:42 +0000
Message-ID: <64ca8285-6910-a9d5-a6df-599efd7b25b9@synopsys.com>
References: <20200601221823.17861-1-vgupta@synopsys.com>
 <20200601221823.17861-3-vgupta@synopsys.com>
 <6df84bde-8a21-c485-7cfa-3c2a00755ed2@linaro.org>
In-Reply-To: <6df84bde-8a21-c485-7cfa-3c2a00755ed2@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [73.222.250.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d08dabb-cce3-4a3a-2032-08d8098f7598
x-ms-traffictypediagnostic: BYAPR12MB3447:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB344752D6A9CCA67BDDEABFD4B6860@BYAPR12MB3447.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0425A67DEF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vWYV+SNfE7eAj/PLh/CMGkrmFdbDMImfiasZJ5NMVb/GyjPTjJ/XwhNSShh6gZlUe2kCtIqm7hmd8uerLgPJXU6vT7sLZNOmLvqfEdxCa0p4sJVbbH+dWK53ov9mkJ4Jezx5XkfjxiLYWMyMxgr6mRB1eLrFlLrhLPsiphPLWgLA/lPtdw8lLEB/nMhLJ6k5YQOxFNRJAVIiEGMdk6lZKcxjw0lAX6w00d5j59o7fdbGXsamUU39D+2dbsBqNLjj3b5Y9aNmdQUyHlNKsWeKgQFf8eXxiFKaxApvXohVMziG3HbLsC97sLLyZlE+TTNTU47OiaPvjkLZ1ev3TVlkm8vWZ1a2Lnxi0uWK6EJyDumybMzBNlqSXv1GW96hR3Vv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(136003)(366004)(396003)(4326008)(6486002)(53546011)(478600001)(26005)(110136005)(2906002)(6506007)(31686004)(6512007)(4744005)(31696002)(5660300002)(66946007)(76116006)(186003)(66476007)(8936002)(66556008)(316002)(64756008)(86362001)(36756003)(71200400001)(8676002)(2616005)(66446008)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fE0RjudauxMcg0C5EOOUKZRD6dc/v5G599+zvYZaiO8W5QC73YsKPI/G0XH3tRRuWk4rckBK7n3VlJvMdaAPtHh/3ddLi0jmyTKC3Jnn7YyRN+j5x/cAsedJoT5WBnaXQ+QQTIBcD/EP8JcNhmpBJvhdB4MqhO2hRIcLDgT0Dsp/Wn3I8krAk9dYiQM39HUK2f+sSP3g3c5sdJprV9BmXWuXuHBvhX80CB5LtQAYVTRzT/L4sOwopRI1gBiG5o4POpxcJlJMmkPTD1c2NJPu5Y+u+yYTcE20fl/w246rRUEFRC+Ivsaubh+ZKw/4RrWm+/ed8/onWhWRGOEjpds0Hn2PYkR/rfj2xG9EE/S8v/WsSTY2+1p5wEKPEmBM1XmNxuuOsQAt3dDRMgGKqrCAgshOuAbSHG4ucVMEMtTz3lQh7z6kZqRsBlWtih+P9/jyTzXOjYXCf2ASGHirMBxS6Hj0e/ra32jZoAzw3WCrszQ=
Content-ID: <2F99974BABDCFD4ABF27D6FD0AD40D25@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d08dabb-cce3-4a3a-2032-08d8098f7598
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2020 20:31:43.0242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XiVMCsI+zfIyCcAM5QbmlC8yuYAvC49fgUmelE4HhxNQ3YotIXZOMyC/qmDXd722c3c+nQAyGtbLUI/hIoVhNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3447
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_133158_722350_45098335 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 6/5/20 1:26 PM, Adhemerval Zanella via Libc-alpha wrote:
> 
> On 01/06/2020 19:18, Vineet Gupta wrote:
>> This is purely for review purposes to attest the interface defined
>> in prior patch
> LGTM with some style nits, however I think it should be pushed along with 
> the ARC patchset.

Thx. Indeed this will be subsumed into the port submission, I just sent it as a
reference to justify the interface.

> 
> Reviewed-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> 


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
