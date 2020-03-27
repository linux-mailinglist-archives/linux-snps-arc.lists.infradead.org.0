Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3192195024
	for <lists+linux-snps-arc@lfdr.de>; Fri, 27 Mar 2020 05:46:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yuz5TW4dDDGx4h+xq07cdSLjQc7i3V3xb89e1IHrPFw=; b=FDDfFoDbS4IvAu
	jzgAq/79FxkOdxKPGOm5yD5KqjT0rLh01kbhC0tvVaSUXpnOLKDJld5AUkOFq1etrY3Nb6vEpoIAk
	RsiA2CA9ZDOGsRzgf6RmqJFpkHMRK5OGF43+p0Ud8ITCpg7vm/205hx6c9S69v2bb4ELdCeWcY/33
	K8NcHQrtmTJctOwrtnHwOkqhN6uuLMOm84O+NRYqmF+v9QXAwmSn58PoK46hfgeFCWq9MMpbNQ8nl
	zq651RQbr6padQYNw6YE9XERanyFHXX5IqfgtlWM4FBVzogk5/OQV561HbEdAo4uq6zHTVsAQJk/r
	tjHAPB2Z1GVAFFDL+Jjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHgsb-0004Xo-LJ; Fri, 27 Mar 2020 04:46:01 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHgsY-0004XK-5n
 for linux-snps-arc@lists.infradead.org; Fri, 27 Mar 2020 04:45:59 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C1010C0F96;
 Fri, 27 Mar 2020 04:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585284357; bh=TfR4YEhCkWutRm00mJO8FQR9yQCa7VzzrCrrDxFxnaU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ic+YLGL92/SoBy1V1FPthpvf86rKTBxBrla4MqIbkFEZ3xOJ3McvD+OY0MKl3QoUY
 qqfk+qpnIkWD5bIi+K7FUtQlHqrI94Kk+ioVHAgAWBTfyjos1sgsrSwcwAtNh3Mk2m
 nX4bfjIDOC0sD33ypv8ohjesUunyyKz0SS5Yd+P4u0pBG+DVS4o8haBnSkaMqAE1rB
 3MOS3/z2FnSAXZ7uLGfX/2AG7uHyLmVXdGIy/NoiWTLVMSBOLoIt+VfPS1D33OO6RK
 OzC6aL7AQE1UfXMSgwbvlGS2AtAEvOWvn1/M0Z5jLfA0yh5rR+HVXAZygb5Izc3urh
 psQ9GiWrAVofw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5EDFDA006C;
 Fri, 27 Mar 2020 04:45:57 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 26 Mar 2020 21:45:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 26 Mar 2020 21:45:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQXvHQk64vTf5gn+RdHWwdwcLtYRrGhQlsCw/oluCfd8dMvEsRLQmahHuOberPyUrh1h8UqUOFgD0l929fxmfbuzPI5pJAWwPHRWQ/ZFUIUGAtg6LrNJJl6ZyhCS/vosjHkrhWRBRyupvxBit5eSa9VXwIWG6PiVHJGQyoTQnO8M0YKqBWdoK8Ib2F+1utz3efPD3NxHP6RGy1HlWNO5wSTiAcO8Xp9zGbbTGAn8r0Ijjo5d5uNDfKZC6ylVuEfUhyR+24tHTeNURArCtiToScrBqko1n/LC7B9AeVpib3N0z5C8fQfx2O1ly8j9xh+zfRX0QKKzw4oFKU1Q6qkesA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfR4YEhCkWutRm00mJO8FQR9yQCa7VzzrCrrDxFxnaU=;
 b=PexBM7JtRO+6DSMSJPuWaY6FDkiJQl2R/0czsqdNfHuy/MYVZl5b0EF0nUtFc4prKWHHwp1BUKB7FI8gj6S3c4hCPhXIowuA8Jb1gIb9jgcHWOeLPX+835TNxfIEcr8FDhvfBB2ZhWiRj/nhp4dF7Ou1TxSSKTu1wgVYYCKxQOyn5AUQtbkpGN6u1DFihl4SCZwjPOISwr7hpfvIwgmbczCUbGFT2NQ5utM1rsAFZtPadEdVMTko2wA6DByDJVSDPIlRnjV+8YDrNSL7QpHUBQUF5iVa6mqJxqpR2KKYJcwEjFEg9xam+6XYlLJDu3Lib+/XyPWtsLodUVU7jN76AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfR4YEhCkWutRm00mJO8FQR9yQCa7VzzrCrrDxFxnaU=;
 b=DKc/mbVkIRBYUo+qIH6AAWPA7/MIcESmgjU4ttTE57dxjRKr8v0+ZDPLrFMi7SFsX/ebtqQ4nPNCJ8saCnY+ps+wadp831YAWMlOf22tMw74OBzmvnX8iLMqXh/6J3iSjF879VvXwkRJO9ge2YkJUg9HPlku1gGx48qNrPdoHgs=
Received: from BYAPR12MB3592.namprd12.prod.outlook.com (2603:10b6:a03:db::25)
 by BYAPR12MB2728.namprd12.prod.outlook.com (2603:10b6:a03:61::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Fri, 27 Mar
 2020 04:45:53 +0000
Received: from BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7]) by BYAPR12MB3592.namprd12.prod.outlook.com
 ([fe80::a45a:6a41:3fe5:2eb7%7]) with mapi id 15.20.2835.023; Fri, 27 Mar 2020
 04:45:53 +0000
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Joseph Myers <joseph@codesourcery.com>
Subject: Re: [PATCH v4 09/15] ARC: Linux ABI
Thread-Topic: [PATCH v4 09/15] ARC: Linux ABI
Thread-Index: AQHWA9AjRdhpD8CbOU+T0hL6KJn87Khb3Y8A
Date: Fri, 27 Mar 2020 04:45:53 +0000
Message-ID: <25c894a9-f389-200f-7f8e-2ed9da677eac@synopsys.com>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-10-vgupta@synopsys.com>
 <alpine.DEB.2.21.2003270035170.24611@digraph.polyomino.org.uk>
In-Reply-To: <alpine.DEB.2.21.2003270035170.24611@digraph.polyomino.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vgupta@synopsys.com; 
x-originating-ip: [2601:641:c100:83a0:24c5:8a14:3f19:e6c8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a1d9382-19b2-48d4-728c-08d7d209bb34
x-ms-traffictypediagnostic: BYAPR12MB2728:
x-microsoft-antispam-prvs: <BYAPR12MB272881072242AD46C550B5F3B6CC0@BYAPR12MB2728.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39860400002)(346002)(136003)(396003)(31686004)(36756003)(186003)(6512007)(81166006)(4326008)(8676002)(8936002)(6506007)(5660300002)(316002)(6486002)(2616005)(53546011)(81156014)(478600001)(2906002)(86362001)(31696002)(6916009)(54906003)(64756008)(66446008)(76116006)(66476007)(66556008)(66946007)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR12MB2728;
 H:BYAPR12MB3592.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8Oc/RiR8HLylzerjv0aFD10sq69eHeQECMDxS342/oTmBGxplTHUSSfJ6nOe0ziYBDKOiARgr0+yzddOQdrUJ/i1y/eXV6oyj+cU5tjZVuE7ENH/TSnTNhCEyPbuk7EKQ6SiUOuUTfbVrKVOBW7o3KkZ85WdxMzWq4BM8AKXzpkutS+2/K/Nyvpv9NBVB4+UJ3d4PFAMTVE6UtY6Ba06bLgW4Y7wqHbm+ECJ1ycIPMGiYZQ1Rq2Rori56dKrd2eU8jhBAo3VIinHzMceM1koA4kAjGXCQUhmGiHn6Zu1M6jXMR7PhxeUNN+GTwWUxZhZwmFK+N0eNFeZRLnD0+VBuJiFp0gEBbkSFTn2ddWbJnAk+Bzuq2+BHIv1GwotCm6aSakiDC3k4t2sw2AkFa0GQ+2m4puBH0rWnChLTBWVg+Zq+sdSTrnWRhgxL7zZZnU
x-ms-exchange-antispam-messagedata: iiUCe7zo3Z+vDx8aRZc1hS4Jn3BJnUI4RwlhWp8Vz0qR+JYDpX+yp4DpZY4FfAKm20PCFdsqTj8zioxGepUOVoxm1s8fCMsoSE3C4yR7QdwuZWtO1Noc7icd1V6nFTaGqEPLBTMJ7dmIpRIjl8pal7lATPcZMqSxk8xBy7RtSv4pZxRXciOOu+U4Ts45nK3f5FtkQt0vP5inBdgS1MB4FA==
x-ms-exchange-transport-forked: True
Content-ID: <112349E67A45EB4CBC272036D1111A78@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a1d9382-19b2-48d4-728c-08d7d209bb34
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 04:45:53.2870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BKAmILA3nZ8JtjNMEKkmjrZGCwxVntKKY5bYUNuUkzuVLrrcdSZfF7Izu53pJJO5R05JHbtGqq7ZymGApsSbzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2728
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_214558_291328_EE572156 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 3/26/20 5:38 PM, Joseph Myers wrote:
> On Thu, 12 Mar 2020, Vineet Gupta via Libc-alpha wrote:
> 
>> +/* And the whole bunch of them.  We could have used `struct
>> +   user_regs' directly in the typedef, but tradition says that
>> +   the register set is an array, which does have some peculiar
>> +   semantics, so leave it that way.  */
>> +#define ELF_NGREG (sizeof (struct user_regs_struct) / sizeof(elf_greg_t))
> 
> Missing space after second sizeof.

Fixed.


>> +  /* __startcontext is sort of trampoline to invoke @func
>> +     From setcontext() pov, the resume address is __startcontext,
>> +     set it up in BLINK place holder.  */
> 
> GNU standard is that you don't use parentheses after the name of a 
> function in documentation (including comments) just to indicate that it's 
> a function; empty parentheses after the name of a function indicate a call 
> with no arguments.  Likewise elsewhere in this patch.

Ok fixed patch wide.

>> +  reg_args = argc > 8 ? 8 : argc;
>> +  for (i = 0; i < reg_args; i++) {
>> +      *r-- = va_arg(vl, unsigned long int);
>> +  }
> 
> Bad formatting; the open brace goes on its own line, indented two columns.  

Removed the { } here.

> Missing space after va_arg.
> 
>> +  if (__glibc_unlikely (stack_args > 0)) {
> 
> Likewise.

Fixed.

>> +    for (i = 0; i < stack_args; i++) {
>> +        *r++ = va_arg(vl, unsigned long int);
> 
> Likewise.

Fixed. Removed { }, added space.

>> +#undef __ctx
> 
> You don't seem to have a macro __ctx, so no need to undefine it.
> 

Ok. removed.
_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
