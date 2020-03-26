Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C2C193576
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Mar 2020 02:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4Z4ayzMWwPVnYlOP8GkUct4ucSVRSnawkNIiiLnMsQ=; b=F6KKPsctL/41oi
	IpMvHHchrirdxatUKfoIvmtotTPPBJ+PuW8B0aoXQXCA0ygK/5eBg8RzLsb1l8h4s62fDdzVpiqsR
	OyWEZMSYIKpD6vF57fKtX6icaTpZw60nX5uwU0LcEdyedCKpMnCyEEixrBZ0XNXIPF2B9AlGNmSdV
	Edto+nzidbmenRsJsuKJoW1c8sdUTAX3ltrcdWmiU8WwBAEDKSOjyBoQmK3jZxXK+l/q7qRTfOb+t
	2mIVg7QutMLK2yol704huKT23cPekV125B2rVsKF72HJM3WIio6yhEVyJtDzYwgOSzNNMMC9rnPKV
	Toh0ksM6g46emTPxAykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHHmL-0007SM-K1; Thu, 26 Mar 2020 01:57:53 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHHmI-0007S3-GI
 for linux-snps-arc@lists.infradead.org; Thu, 26 Mar 2020 01:57:52 +0000
IronPort-SDR: /8SNMbLc9Apu2cyTtiYU884WWadi4lyUN+9aXZL7Hc5/i9NS63M2uzQtBIstDO/yAJVpa+R8yF
 16GCUyWnUA9wphMhecJm/GKBrlIUuTUQHHIrs0jN93NPP+j/QxiYsj09CcF2XqyiDB3iiPhMIF
 OCTvpmOA6Aoggax1R/PqpVBIQNwmonAuZIpbppJJqa/rKRqBe3OSushSamHdKWs3iQgn9K/YwI
 Qswf5kyOdQrSfKj9s5MMo5J6Ml7m0cHwXzSpXfAem3aOAxwUXVhexx+mYImUazCqdVyFHZEeFN
 cek=
X-IronPort-AV: E=Sophos;i="5.72,306,1580803200"; d="scan'208";a="47033952"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa2.mentor.iphmx.com with ESMTP; 25 Mar 2020 17:57:48 -0800
IronPort-SDR: m+7YslJ3Gbm4PDJrb5q3uVY6kWLYj/O47uFGoHqyTeFJXhLrQEKxeUurqwEp323F9M5MGKPpAi
 9qrfROzSSc4grxw4of2OZ90rPGRwHsFpVZzRY/51NQkwe01ZcRnotoWczFAKi2NbSlD4jP0fc/
 3Kn4GlS9oqk45N+TZu0YJEQnLrDjBKBcvocQew782gVllK/ateKIHstmZ69N796hZHn6/Ef6bW
 IDHkOVtM59AcyVgAStOkuaS8Ong2OfUnZ7ZI4f+ZJ1Nm3hDw7sjvYPJ1hgGLQ8LuZ6i1afHhwo
 Kok=
Date: Thu, 26 Mar 2020 01:57:43 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v4 04/15] ARC: Thread Local Storage support
In-Reply-To: <20200313030419.15843-5-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003260157030.31593@digraph.polyomino.org.uk>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-5-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-06.mgc.mentorg.com (139.181.222.6) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_185750_570063_53110D76 
X-CRM114-Status: UNSURE (   2.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020, Vineet Gupta via Libc-alpha wrote:

> +-- Derive offsets relative to the thread register.
> +#define thread_offsetof(mem)	(long)(offsetof(struct pthread, mem) - sizeof(struct pthread))

Missing spaces before '(' in calls to offsetof and sizeof.

> +TLS_TCB_SIZE            	sizeof(tcbhead_t)
> +
> +PTHREAD_TID			offsetof(struct pthread, tid)

Likewise.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
