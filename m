Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2847F135370
	for <lists+linux-snps-arc@lfdr.de>; Thu,  9 Jan 2020 07:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHPcqdLDkb15355fOVtuZiEji5ZYKGkfBMQZqIkM6z0=; b=W+9QsVwcekLgGo
	wCWq36sgOpih8eL8t4a33vDhihwTEsK6veQmqaTh8PaAHPnWXNDai5k85pNhi9PdnulzpTFTS4HiF
	SZ3zxYL6AUe9IR45k9pqVjsMQ0JvBqz4ROCs/XKevBzY3unU+fqqWoHA3HqiQbSFoymCfhuS0AyJa
	5j9Exn6ctgiD11LIZ2UZco4ntTAXlIdzHNIsRtkPnz1xk7mUEE+lOY7kSXWgNFEX+fW91LRQSHR5h
	07ryNzqkSCuDT/H/gzEGrgJMPsWp8vLsKJK8oI/zq8a6Ew7mwQasoA1xm4Jd1AdmXCrgQLXSUYtDg
	WLBZEYm9TTzHNKVoR0uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRmx-0000GI-Uw; Thu, 09 Jan 2020 06:59:27 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRmu-0000FO-2s
 for linux-snps-arc@lists.infradead.org; Thu, 09 Jan 2020 06:59:25 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 18D87C009F;
 Thu,  9 Jan 2020 06:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578553161; bh=sqFgFf8gDeA6DLe7eNifMlYr3E6rAjwppK+CWXTkHSY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=WQEGVbElKm4e9Sx1nyR3bYTz+o6NMHjZ9r85q6gLzV02L44OagJtgu1WI9YHfFUsk
 bqemPNgpMcndc3Q9CedwFNqMClSj6uKA6IQtpWZLqCCNtQG2gY3MIIOZqkngnhN7We
 RrFSqo0WLbxFD+JRH5khDx7bn6YVt0M/iAilIrsB8HwE6ShytEbmYD4lBA/Zs88ZQE
 UjuWlPgdXVpyNOEzD1vSXObFFQy2dcy2qDNWIn4CB05D9Rkrv9NwizowhwOE8hQdIc
 hhgF8ymlr9EBJoouk6gcm+B5nDQ5U8NfXux8Zc777AbZzQBDSChSlHLefc/Ie8P3mZ
 HD93LYxKASA3g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id AC426A0083;
 Thu,  9 Jan 2020 06:59:06 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 Jan 2020 22:59:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 8 Jan 2020 22:59:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cshDnWFcL3vz2YIk/LsskhD22ozYAL1lqFzfe3F+fLO8Vd4nOftatgoNBw4osWVEFPhP/cWMW5KUwy1QHAoEaZA9hCHWcF0qxJfzedoasDUmPIN1SFQVBx9HdJWNSjFJ7ss/0oyYD5uRp0PSZ61pQESoPWadkv7fPBrIH9ykzeToJJYCRTUeslsglvuGaFZRexwzZt/StfzSqImmWeG6oLSnXwPIrCvCa6SJ51pVYnEEe+L/ZQbZKLUMWMbsqb0QWPBlzFzuIvjbX523iRTdmfNCikNpg996Ru5zdkIoWOrQLF0Gd4Jrla/G5f2HaSeyu6XjpD4BrrPBkfrtEs/5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8gmFjR/b1fGaQAM2gOqn8nmQPkcV93ur6tT+xau3hk=;
 b=HgIizoKlI2r0tjlSM9SHuXnac13qnrWBaZk9StULCjuHqkOoa5eyhT8iGmanpB6RGakG0XbbciTXol3XyFTJnJ5PXaGwXOB3VmQF0csxKpYnJ2scd5x30Zl/2wULBxIzkllhqdow8vRfkoKPjL8zlnNHOFJd390CFsPMpJIN5hrHiRQ5yhKjpo4y/8xpODXTPxRXax3DJaL/8TJ6DNwuhuNu/CPeRikCzxQTq7vqOS8heEOqfOxwK91t2kucwuNnchQPy6eXT+Np8cBeDP3YnGUhdTzRBkLV3zj3zQq3R2jEWijD5Me8sO+lRYuOjDwxmSdAf9rF3AQGSPOzFdTqLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8gmFjR/b1fGaQAM2gOqn8nmQPkcV93ur6tT+xau3hk=;
 b=ElhTNwP2fmKqiLkP6K0eVs4wCIBFvBaRLA29KxYaNjUlc3rrSROCayZwnhr75qQ88R6OmPyHS0V739ESZrNJOf35FMuZfmOv/Uv1drt1X0326pJQaFZCo00WJDnqi3FN6ohklNxHE1r/blX9POnbzulv1ZFadJxTbMybIPsb5wU=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0054.namprd12.prod.outlook.com (10.172.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 06:59:03 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2602.017; Thu, 9 Jan 2020
 06:59:03 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: RE: [PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in
 generic implementation)
Thread-Topic: [PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in
 generic implementation)
Thread-Index: AQHVxl82ysx9hNAdrEOd7vUo3yqzKKfh5x8g
Date: Thu, 9 Jan 2020 06:59:03 +0000
Message-ID: <CY4PR1201MB01201F44C7EBC54F6AA86446A1390@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20200108200528.4614-1-krzk@kernel.org>
 <20200108200528.4614-6-krzk@kernel.org>
In-Reply-To: <20200108200528.4614-6-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYWJyb2RraW5c?=
 =?us-ascii?Q?YXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRi?=
 =?us-ascii?Q?YTI5ZTM1Ylxtc2dzXG1zZy04MzJjMmY1Yi0zMmFkLTExZWEtODAwMS04OGIx?=
 =?us-ascii?Q?MTFjZGUyMTdcYW1lLXRlc3RcODMyYzJmNWQtMzJhZC0xMWVhLTgwMDEtODhi?=
 =?us-ascii?Q?MTExY2RlMjE3Ym9keS50eHQiIHN6PSI1NzUiIHQ9IjEzMjIzMDI2NzQwOTc2?=
 =?us-ascii?Q?MzY3NSIgaD0iTll5SFZoTlMzUGh4UWxnWXV0YmErY21FVTdJPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFC?=
 =?us-ascii?Q?YmpZTkZ1c2JWQVRwcEg3YXorOVhTT21rZnRyUDcxZElPQUFBQUFBQUFBQUFB?=
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
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63c7ca27-ecc9-4075-3e51-08d794d16992
x-ms-traffictypediagnostic: CY4PR1201MB0054:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB00543E76A1688BDB5A9E77E0A1390@CY4PR1201MB0054.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(396003)(39860400002)(376002)(136003)(189003)(199004)(478600001)(81156014)(81166006)(54906003)(8676002)(7696005)(5660300002)(33656002)(52536014)(86362001)(186003)(8936002)(6506007)(26005)(316002)(9686003)(55016002)(66556008)(4744005)(7406005)(4326008)(7416002)(2906002)(6916009)(66446008)(71200400001)(66476007)(64756008)(66946007)(76116006)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0054;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YMnlrJ7QW7WllT9PHw0N7N/gksJdOFPnYmPrWGBpV4B2xWzTTWoE5SjnGdXn/GhSH84HlQTd5YrMSC8KwopriiY3mk4tA0bxu4BYIESOCSVErNvcLooGe1ef02ikuLwhzKVLfZMrE4/dWyGA2rP9xCN7UH3BsoT4XkEi1zAIOe4qtWUsTa9sAeVMv6Mvl1mN0+kw7g5/eLkaXIVZMeX5y6CVZ69YB4Mz5BsGpSehNFiikdcOQruE/Cq2uuFmZ7AeK2FZ9iShJBrxvMoMrtvaSNK0771l3Nvrb52VzRg3xuR7dy3SkTsPQynDSW8QJECknGAj3J1eWVXRchvRL7TcPLybZLCtx2Ml1CVTlTbDwtZ8gJIjjV3ZbffySH2pbevRVCbkcGigoDSX0rw0MwvB6MIFzIgL8Usl8KMedyr6rg3qusTVuDnRFeweo81NEw6sxx2+Fw2qSBJbp8eRVlvNQUK9L9upUX/qxF/ePPJIQDk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c7ca27-ecc9-4075-3e51-08d794d16992
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 06:59:03.4083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FDpz17WNzPjlQTfYttFBIyOQWptuLfICcdYscr9HUoeY4oXUU7Arulrz6WM3qjUuFFCOBmTrAP0aTEo3sd/3EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0054
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_225924_348608_B085E274 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Jason Wang <jasowang@redhat.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Dave Jiang <dave.jiang@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Nick Kossifidis <mickflemm@gmail.com>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, Matt Turner <mattst88@gmail.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Ben Skeggs <bskeggs@redhat.com>, Allen Hubbe <allenbh@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 Richard Henderson <rth@twiddle.net>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Jon Mason <jdmason@kudzu.us>,
 "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Krzysztof,

> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the
> address so they can be converted to a "const" version for const-safety
> and consistency among architectures.

Thanks for this clean-up. Looks good to me, so ...

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
