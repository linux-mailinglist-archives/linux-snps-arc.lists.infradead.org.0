Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6919411E1E2
	for <lists+linux-snps-arc@lfdr.de>; Fri, 13 Dec 2019 11:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7d552ghxy5ZTggYnV8lAabEEVjrcffmXlwFzwfblE0=; b=MEv13gWnET1cBC
	uwRGN/N2IxzdOrpsZt901BCLnO3EFm58eF4J7q7RbOqhGqyddK6YHXiW2JCsNHKQmqjt/5QJXWBsR
	+Vqhwcvb+Y+HLxZt1y5/pIn/8rHdi1D7kwSYJmOobTe8iA85VefwQWTEyBsEF1pBp3FeXvCrIQgsu
	8LCtF1MweanB83vdOsy8ec5DZYrDhUCUjIKdjEfjausrFfr+xCWeR+3Gs9r3Tl0YIPXSNgCe+ylXE
	KLHK/hKVEw/moNzmI3C1fJkYPzLytiArbOc2hUwa+alXxlgS1ZuHtrg1js4Uv0AEQPxtUoLb4O0pw
	zeKvz+ads+ahyJU24e5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifi84-0005UC-79; Fri, 13 Dec 2019 10:25:00 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifi80-0005Tv-S9
 for linux-snps-arc@lists.infradead.org; Fri, 13 Dec 2019 10:24:58 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3FEBB40642;
 Fri, 13 Dec 2019 10:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576232696; bh=1juyYDE27FdfoIb/DEhKcgmb6drzd2HlSJwfzoeGI9w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=NDcmHCL0rxAG7qKp++Iit4PiXTCPC6vVFuH9VLNu7svqtUIervy9gw+H/HBzbvywD
 Rhc6qaYhWirM74ru8b7Ai0Rjwt8qRpPot0AHWIm+r1VwakIPelesvmj5D97rJLDyXC
 g/z7ziLKE/44mbHMhCwfRdz7qVye1FDpXl0gK8gkb9yEt+MQ9k6iYnJUcQQ5IqPogr
 TM5NIPf2iwpRqFHHS6zCFmwdVS5zgqG5wijS7aoUYH2bUvfD0mmW+yKpPivzN5F2eK
 55ObL/zDupqNO/cb8SkxmNgTFDlZfyy/S5nl57mtUSlbzHyhPg0MXcFa8lMpTNgImU
 Zh3n6irkhN+4g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CC830A0085;
 Fri, 13 Dec 2019 10:24:51 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.13.188.44) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 13 Dec 2019 02:24:44 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.13.188.44) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 13 Dec 2019 02:24:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iLPBoI2USYLMVOO04CuMn8ajZL2HKtx267KRO40Ced2dPBqx4dMR9BNGq43CVW7L+0uOJckPzy6CRrIKYiDVsh8f62QtjQBjvO5U/DrvPgMY//YmP+ZJIWAV6P/1sbyJyyxzBuqSSV08PCANqcQf49YQxeW2c1Vqp5xWaPazjKzlaG+GVY7AtUt2fC1c10Etk2Z/KSnv9lJ/XgDb15htEFFR516klSFWlMIZqSvoTmWCOUmVjUwfmHKpHNvGok3t8W9BKEdS3xB7L5buG8HI2W3VDG1RQcdvlRzLGALQEC1zxhJVN9ji+XLrekSQIBAiSu+WILP6u8ERsq0IVWtc+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1juyYDE27FdfoIb/DEhKcgmb6drzd2HlSJwfzoeGI9w=;
 b=ieayrC1eg9JyoIXCl6eltHIsql7uNueY5sKAJ+8CobOefp+9WXhrb/14zAx05UELciNe/sd9Vm5wOnFOBED0pInOLkBgbhkgt/BmHag4TfenzsXDanRAjtszIaNVAVdNAcuoIVIIPy9x8kh0RevvQFc0suuBS+yluOeCpl2OC5x8sVPKZOUvXnNyqpJ9hwELxNzsNTqx01C9hYIhoooTAi/F5qJigvJ+1sLQ6pQh40U7jX8VSPDmZyiCB/XcouBPydATAvXe192YLeyuurH7pibEpFzHKRV4dQgY6FrDSQWAQ3rpwqm1IXw9nCVTcMrI2zZy1i/2nQsuzyjKRGz3JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1juyYDE27FdfoIb/DEhKcgmb6drzd2HlSJwfzoeGI9w=;
 b=a3BZp9zXUkK8z1neqfcX5jf8dvcF29+31UtmVaneBwwFsAN+rmjIEqFJ5FFBRddxPbjHO79SMOUGnExq5aHGgg5z+M35hAz1xQI45GAxwAotttClr3hey+Hp0k9kBfrdkrq9o93Tam3/vszasE5Z6oPYNZ5eFw2CSHzzhh4p2yo=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2486.namprd12.prod.outlook.com (10.172.119.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Fri, 13 Dec 2019 10:24:42 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2516.018; Fri, 13 Dec 2019
 10:24:42 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: RE: [GIT PULL] drm/arc: Yet another set of minor fixes
Thread-Topic: [GIT PULL] drm/arc: Yet another set of minor fixes
Thread-Index: AdWk9uGIdHrNqX0yQ6SZMMOjZA+q3QAE3eIAAAaVHaAAAceXAAMcvqxgAAAbGIAAAAoXkA==
Date: Fri, 13 Dec 2019 10:24:42 +0000
Message-ID: <CY4PR1201MB01206B89011211BB25EF82ADA1540@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <CY4PR1201MB012062AAE1D2223BEF3AB204A1440@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20191127100634.GE29965@phenom.ffwll.local>
 <CY4PR1201MB01201760E81B40589D182E08A1440@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <CAKMK7uHSm6oKUUDxQxPkOJMj4Ut6+B1dFdZGoauNjrT_o841sA@mail.gmail.com>
 <CY4PR1201MB0120529194B092E2C2ACD77EA1540@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20191213102219.GE624164@phenom.ffwll.local>
In-Reply-To: <20191213102219.GE624164@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYWJyb2RraW5c?=
 =?us-ascii?Q?YXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRi?=
 =?us-ascii?Q?YTI5ZTM1Ylxtc2dzXG1zZy1jNGZjNTZlYy0xZDkyLTExZWEtYmZmMi04OGIx?=
 =?us-ascii?Q?MTFjZGUyMTdcYW1lLXRlc3RcYzRmYzU2ZWUtMWQ5Mi0xMWVhLWJmZjItODhi?=
 =?us-ascii?Q?MTExY2RlMjE3Ym9keS50eHQiIHN6PSI4ODciIHQ9IjEzMjIwNzA2MjgwNTY0?=
 =?us-ascii?Q?NDY1OCIgaD0iWFA0UXJJbi8wbm51U3JOTVZWL0wxczFET0dvPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFC?=
 =?us-ascii?Q?eUJWU0huN0hWQWFZNUNTcExrdGI3cGprSktrdVMxdnNPQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUhBQUFBQ2tDQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQVFBQkFBQUFSWDJrMUFBQUFBQUFBQUFBQUFBQUFKNEFBQUJtQUdrQWJn?=
 =?us-ascii?Q?QmhBRzRBWXdCbEFGOEFjQUJzQUdFQWJnQnVBR2tBYmdCbkFGOEFkd0JoQUhR?=
 =?us-ascii?Q?QVpRQnlBRzBBWVFCeUFHc0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtBWHdC?=
 =?us-ascii?Q?d0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCbkFHWUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFB?=
 =?us-ascii?Q?QUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFiZ0Js?=
 =?us-ascii?Q?QUhJQWN3QmZBSE1BWVFCdEFITUFkUUJ1QUdjQVh3QmpBRzhBYmdCbUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1BRzhB?=
 =?us-ascii?Q?ZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWN3QmhB?=
 =?us-ascii?Q?RzBBY3dCMUFHNEFad0JmQUhJQVpRQnpBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FY?=
 =?us-ascii?Q?d0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0J6QUcwQWFRQmpBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNB?=
 =?us-ascii?Q?QUFBQUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJn?=
 =?us-ascii?Q?QmxBSElBY3dCZkFITUFkQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFH?=
 =?us-ascii?Q?OEFkUUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBZEFC?=
 =?us-ascii?Q?ekFHMEFZd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhr?=
 =?us-ascii?Q?QVh3QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QjFBRzBBWXdBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFB?=
 =?us-ascii?Q?Q0FBQUFBQUNlQUFBQVp3QjBBSE1BWHdCd0FISUFid0JrQUhVQVl3QjBBRjhB?=
 =?us-ascii?Q?ZEFCeUFHRUFhUUJ1QUdrQWJnQm5BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJ6?=
 =?us-ascii?Q?QUdFQWJBQmxBSE1BWHdCaEFHTUFZd0J2QUhVQWJnQjBBRjhBY0FCc0FHRUFi?=
 =?us-ascii?Q?Z0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFITUFZUUJzQUdVQWN3QmZB?=
 =?us-ascii?Q?SEVBZFFCdkFIUUFaUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFB?=
 =?us-ascii?Q?QUFDQUFBQUFBQ2VBQUFBY3dCdUFIQUFjd0JmQUd3QWFRQmpBR1VBYmdCekFH?=
 =?us-ascii?Q?VUFYd0IwQUdVQWNnQnRBRjhBTVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFB?=
 =?us-ascii?Q?QnpBRzRBY0FCekFGOEFiQUJwQUdNQVpRQnVBSE1BWlFCZkFIUUFaUUJ5QUcw?=
 =?us-ascii?Q?QVh3QnpBSFFBZFFCa0FHVUFiZ0IwQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhZQVp3QmZBR3NBWlFC?=
 =?us-ascii?Q?NUFIY0Fid0J5QUdRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFB?=
 =?us-ascii?Q?QUFBQUNBQUFBQUFBPSIvPjwvbWV0YT4=3D?=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c811d63a-8747-4314-36f1-08d77fb6aaed
x-ms-traffictypediagnostic: CY4PR1201MB2486:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB24863B212CEBFAFFEA2C9165A1540@CY4PR1201MB2486.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(366004)(39860400002)(136003)(13464003)(189003)(199004)(5660300002)(316002)(4326008)(52536014)(478600001)(54906003)(4744005)(8676002)(66946007)(7696005)(86362001)(66476007)(66446008)(2906002)(33656002)(66556008)(64756008)(8936002)(6506007)(76116006)(26005)(53546011)(6916009)(9686003)(81156014)(81166006)(71200400001)(186003)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2486;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XnjrkrBzaDxPWKAsDposPzb3Wjzvs9poU9ULz0/0FrDokR+RUivCtlWQb3gMTFUVpLGvcCHtIbvHbC1H8tHoX0XxvMECU5CeSMa7PVxaH1c2Ml3xODjc/F/vHlV3mhBah6OR5YhF9TedQTjZaW7Z8pac7/4RxoO52nUnlQY84C+bcVvGh/aIzCCjw7D3cB415miR0tQNW6aEElixTFQlfzRS+KguBsFbbM9hXWcnralifFerA8MH7BqWBxOG7W82XB9iHkyfWAXfTr5F+JFu2JnyRSjBIBsGK/J3haeYL8YGALlMfKCEDd+PGKTutE+gLu4/l0nz382sZVtH8iJY3mEPjKNjTojCzPDksNetWicv31un7MYmww0tuUJPwVHBLRdbialnM7evFwq4ivApBQt0tSexpyiQyuw0LOtgTLLKACb3hhl3fuFEMeKU69RXGEvccea2XV/xY3k3MSsuaaHv34YsLE6r4ctSyNByoqAJYZILvcG3wfTZ1B8Up1gR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c811d63a-8747-4314-36f1-08d77fb6aaed
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 10:24:42.2893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DawKsE2V5TdePvF/wcMnf1vniAZ9RPo50MvMMNIPqwXoJIzXBKg+cz/4aKhUKKWVuy39eqMMqYz1auu/MYSxbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2486
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_022456_922902_9D88CFC1 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Daniel,

> -----Original Message-----
> From: Daniel Vetter <daniel@ffwll.ch>
> Sent: Friday, December 13, 2019 1:22 PM
> To: Alexey Brodkin <abrodkin@synopsys.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>; David Airlie <airlied@linux.ie>; arcml <linux-snps-
> arc@lists.infradead.org>; Eugeniy Paltsev <paltsev@synopsys.com>; dri-devel@lists.freedesktop.org
> Subject: Re: [GIT PULL] drm/arc: Yet another set of minor fixes
> 

[snip]

> > Not sure if you noticed re-spin of my pull-request in the previous message.
> > Do you want me to send it in a separate email?
> 
> Yeah I guess this got lost again.

So should I re-send it in another email or you will pick it up
from existing thread?

If I'm going to re-send it do I need to re-base it on today's drm/drm-next?

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
