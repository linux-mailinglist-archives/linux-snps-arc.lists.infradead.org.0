Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D87719C3C7
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 Apr 2020 16:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8E1w+rw6ZJVoUDtJQfrt4HsOi6NlQVy6Vk8+Un6kCE=; b=SG5a1N8NSndW2x
	STHZ3Uq52LZx6+CtlHsoLLG6X9/dCBvnNFNICKQKGxiUGmVbsKExQ+xJ6QkabXRm1uEBQNCF76XdP
	UGAc92/a8XLTyAFxZRzqn0rxzeAJ2QQvjBlaGL5ceiVmoZRIGELB6NheCcako3mpwAH2nq+egRfkH
	P7e2iTeOL8tBuVoN80WuNKBpyNpMiE9fzOaV2fL6p4bVPVXRHDHShz2hwa+OxQ0IJteiV9nX7DoDG
	70REh2XtjQ69ox3SGinuLAn0zMMXx13gKCn/IVmvdegzQLxDaUdcE+HHdr6CcZu2eUbeusFNHQfiP
	hE0nSUD/whl9xfDQ6VzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0dQ-00089M-Et; Thu, 02 Apr 2020 14:15:56 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0dE-0007qR-An
 for linux-snps-arc@lists.infradead.org; Thu, 02 Apr 2020 14:15:45 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B521940690;
 Thu,  2 Apr 2020 14:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585836943; bh=Afq4qpGFX7I2t25pqYu7k3kMY9L8khiCDHe60tLVtJY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=aTRrH+7tTmY4Q9CmR/A+Wt1eNcQKda+oEsHVxSmXPbcYmONTKGhCj1wsugh0dh5WQ
 oeysz03cBxWW5/xvsr3TrYeBcIA43/hcqL8fD7MhakdEyF3pVP4jgIxaACgZ1ZGUkf
 yXNrnS/U/J7S6wYP3aetjWRERL0LIPGq0B/UU4YgZnw8n+6xyBBe509HfWPjYiuUxA
 lRuCvex1+6Ufm7X1WrlP2zvuYCJX2ue14mh6s9s9oGKRq/zIoFYS3nTddVDEfSUko3
 4C4KbML1UO44n94LEyhYb36/Y3FEp/Zals7UaBcr52/5kcLRbWpYchfofRwWsTh++F
 3AlWwBffDgfsw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3E4F9A006E;
 Thu,  2 Apr 2020 14:15:42 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 2 Apr 2020 07:15:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 2 Apr 2020 07:15:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D43/4ytya+VvyW2XH6FquLa/Mfz9JMyra37Kcmv8JkMCKUfpk+VfnChEx5VprtkbpO+6Du+ceEDFA6M2VgztYjS93VIutWAG2nt/jLN2BWmnz1ZasF1D7+gfG3gO/u4evomiuF8CjRlQiHnxtiDdk8VdyQ4tuogxtd2ZZ8qI/iS2pkMofUeLVvBAfIo8nKzYMNEqndCCzsn6i9uRKoA+98Ys4941Uoc8z5sbKfGRVNmrfj51ifAYz7qodMpsm3mFM1LqK9gyA+88cPE7d+8CKAV+In/iCwHKJxjZNKT919aWb/ZfsEeYK6QmyHhOXvpeEB5K7D58WTGHiuLJj/98Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDl1I5gEoR0ybP7a1nHSRjTuPjCfODBViPvkI2cScqM=;
 b=fNlYUtWfQbFFyVJIlbEtsXSxmrSh/72SXQJvwzbURPVhQCadRd+GTc0jJkNry7S0pU6A2l3iUoap4DaG9QwTd7r5isgRyr66BvnjsguD13mbJNeIbr+/2IN0cYqBA4H+KMf7aM7WMpoFzIHUQnFPKVWamgwhuyZOUxbLoPcySRdmykqz20+AWCb0RqNqQqJZvduGThZKw9WQTuLgN1Eko4U6h/V59K/WrvLmbR6Ts6lU4NL3wyCI6gYjh9xLeK0j1f07Q7VmWenDIVbJs79Fh7ooTYQU2iYxZSIG/sm5hE5mkV58Ps+bFF6M7bZq0bZ6mc+pCZN9F4iXYff2EnC7CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDl1I5gEoR0ybP7a1nHSRjTuPjCfODBViPvkI2cScqM=;
 b=as9aYKx034NIxabkkit0NvGl0aIFByVUnI12DA2q/tZfCHLLJBTWrmX4kB2Tj0GeVDa1yy8lIJ0ebMuVWh2UznrHfUJ+IgXNVvkl5lF6AD6RMU55ZbiZm2YncEgaTsxOGZFu/KKBzb+Yah1prwu6IV6TIGO5xGtyn3cQW/NMpA0=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 (2603:10b6:910:1c::14) by CY4PR1201MB2519.namprd12.prod.outlook.com
 (2603:10b6:903:d7::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 14:15:38 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::744c:4e95:39be:9d44]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::744c:4e95:39be:9d44%12]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 14:15:37 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Claudiu Zissulescu Ianculescu <claziss@gmail.com>
Subject: RE: [RFC] ARC: initial ftrace support
Thread-Topic: [RFC] ARC: initial ftrace support
Thread-Index: AQHWBFAK0PsxUPg8X0y8/xxadygBCahcrJAAgAhjooCAAHODgIAAZPGA
Date: Thu, 2 Apr 2020 14:15:37 +0000
Message-ID: <CY4PR1201MB01207268EA87209A55C31D44A1C60@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20200327155355.18668-1-Eugeniy.Paltsev@synopsys.com>
 <20200327131020.79e68313@gandalf.local.home>
 <fe7ae84c-745a-04b4-dcc0-5df8cc35ee0c@synopsys.com>
 <CAL0iMy3i5+_owqJcUKWzGNFakVV2P=oFdyAWCY2LP7YTusKP_Q@mail.gmail.com>
In-Reply-To: <CAL0iMy3i5+_owqJcUKWzGNFakVV2P=oFdyAWCY2LP7YTusKP_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYWJyb2RraW5c?=
 =?us-ascii?Q?YXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRi?=
 =?us-ascii?Q?YTI5ZTM1Ylxtc2dzXG1zZy02YWFlMTlkYi03NGVjLTExZWEtODAzOC04OGIx?=
 =?us-ascii?Q?MTFjZGUyMTdcYW1lLXRlc3RcNmFhZTE5ZGQtNzRlYy0xMWVhLTgwMzgtODhi?=
 =?us-ascii?Q?MTExY2RlMjE3Ym9keS50eHQiIHN6PSIxMjMzIiB0PSIxMzIzMDMxMDUzNDkz?=
 =?us-ascii?Q?NDMyNDEiIGg9Iml5aXFkK2R3OWlCellmZWpHVmJ2dkJIekJXQT0iIGlkPSIi?=
 =?us-ascii?Q?IGJsPSIwIiBibz0iMSIgY2k9ImNBQUFBRVJIVTFSU1JVRk5DZ1VBQUJRSkFB?=
 =?us-ascii?Q?QUpXQWN0K1FqV0FXcEQ1czU0Zyt2NGFrUG16bmlENi9nT0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFIQUFBQUNrQ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFRQUJBQUFBTWpMczJnQUFBQUFBQUFBQUFBQUFBSjRBQUFCbUFHa0Fi?=
 =?us-ascii?Q?Z0JoQUc0QVl3QmxBRjhBY0FCc0FHRUFiZ0J1QUdrQWJnQm5BRjhBZHdCaEFI?=
 =?us-ascii?Q?UUFaUUJ5QUcwQVlRQnlBR3NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3Qm5BR1lBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQVlRQnRBSE1BZFFCdUFHY0FYd0JqQUc4QWJnQm1BQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFjd0Jo?=
 =?us-ascii?Q?QUcwQWN3QjFBRzRBWndCZkFISUFaUUJ6QUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCekFHMEFhUUJqQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFi?=
 =?us-ascii?Q?Z0JsQUhJQWN3QmZBSE1BZEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1B?=
 =?us-ascii?Q?RzhBZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWRB?=
 =?us-ascii?Q?QnpBRzBBWXdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFI?=
 =?us-ascii?Q?a0FYd0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0IxQUcwQVl3QUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFad0IwQUhNQVh3QndBSElBYndCa0FIVUFZd0IwQUY4?=
 =?us-ascii?Q?QWRBQnlBR0VBYVFCdUFHa0FiZ0JuQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHRUFiQUJsQUhNQVh3QmhBR01BWXdCdkFIVUFiZ0IwQUY4QWNBQnNBR0VB?=
 =?us-ascii?Q?YmdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSE1BWVFCc0FHVUFjd0Jm?=
 =?us-ascii?Q?QUhFQWRRQnZBSFFBWlFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUNlQUFBQWN3QnVBSEFBY3dCZkFHd0FhUUJqQUdVQWJnQnpB?=
 =?us-ascii?Q?R1VBWHdCMEFHVUFjZ0J0QUY4QU1RQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFB?=
 =?us-ascii?Q?QUJ6QUc0QWNBQnpBRjhBYkFCcEFHTUFaUUJ1QUhNQVpRQmZBSFFBWlFCeUFH?=
 =?us-ascii?Q?MEFYd0J6QUhRQWRRQmtBR1VBYmdCMEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFIWUFad0JmQUdzQVpR?=
 =?us-ascii?Q?QjVBSGNBYndCeUFHUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFB?=
 =?us-ascii?Q?QUFBQUFDQUFBQUFBQT0iLz48L21ldGE+?=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01205e54-2fa4-44a9-83bd-08d7d710510a
x-ms-traffictypediagnostic: CY4PR1201MB2519:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB25193CFC8BCE91EDEDA370F8A1C60@CY4PR1201MB2519.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1201MB0120.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(366004)(136003)(346002)(396003)(39860400002)(6916009)(8676002)(53546011)(86362001)(186003)(7696005)(71200400001)(6506007)(5660300002)(4744005)(4326008)(478600001)(76116006)(52536014)(81166006)(66476007)(54906003)(66946007)(316002)(8936002)(66556008)(81156014)(66446008)(2906002)(26005)(33656002)(107886003)(55016002)(64756008)(9686003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cmS0DtH4M9DZGyzhd1x63kkdUteid4Ts88TTyJh9L2QRxlEe8SV48a6AKlaGRR9Cbm06L1/yZFDPDnFpznESQvFm9/KPGlHyzoXk3Wu1QQSz4zNAAAnvQHyp6ukUjHFZQGGEji6wlAfitU0nnk6x2q/GddZ3PiSMS8iXL8N/AU29Npo9sto77u4JhqcnaOJU/wdYdGbOGEr6/fhsDYFVdmFsna3ANT6ROQ7T2IRn9DpuQdyBUdmw/awmIdNjxCy9bo3NMsMdsw84u1QdxB6VUXwsc5BvmaU0NVGs8m5KSTgZgo/H+STb9vou9tY3RoQ4Uj5TU1Ju6sZMrS2nP7sWprKiJ1KsL2xJSVFhd9WrJ5YrGmZ0dbz98aSWY3565chctnpWfl7cIZxBfoHZT7FLaDqPHqIUOZyF11Gl6REcHyBvTAoFl3nyRTSH45urT3sD
x-ms-exchange-antispam-messagedata: NKLQZtwaBnM9QjzRfraPDIfiHW2dDEJ5xz6+elvUY/cKTll/F+UCQiOfsN8SweqgxZk2KRpgwQ8zhgFToUm0/YcJf6LmKHKoTNkWD0y4Kqt8i/usqdZRsfBW0Qsfhi8E5VucF06M5w1Kn69q9NgXLg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 01205e54-2fa4-44a9-83bd-08d7d710510a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 14:15:37.4337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lwcRfiHM3p/x4uu8lfwXrv098eMgpI50Nu6QYWhE/UyNSa8IRTlf6xm5WYfioHqRIHe6TBboCKSdQb2STGk3XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2519
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_071544_458334_3B66185F 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven  Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi Claus,

> -----Original Message-----
> From: linux-snps-arc <linux-snps-arc-bounces@lists.infradead.org> On Behalf Of Claudiu Zissulescu
> Ianculescu
> Sent: Thursday, April 2, 2020 11:10 AM
> To: Vineet Gupta <vgupta@synopsys.com>
> Cc: Alexey Brodkin <abrodkin@synopsys.com>; linux-kernel@vger.kernel.org; Steven Rostedt
> <rostedt@goodmis.org>; Ingo Molnar <mingo@redhat.com>; linux-snps-arc@lists.infradead.org; Eugeniy
> Paltsev <paltsev@synopsys.com>
> Subject: Re: [RFC] ARC: initial ftrace support
> 
> Hi,
> 
> ARC-gcc has two modes to call the mcount routines. When using elf32
> configuration, the toolchain is set to use newlib mcount. When
> configured for linux, gcc toolchain is using a library call to _mcall
> (single underscore)  having blink as input argument.
> So, using the proper linux toolchain, your patch should work.


Is there a chance to switch to Linux-style mcount in Elf32 toolchain with a command-line
option?

Otherwise I guess we'll need to implement some warning which explicitly says why Elf32
toolchain is not usable for building the Linux kernel... at least in case with ftrace enabled.

-Alexey

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
