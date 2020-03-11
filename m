Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF881823F4
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 22:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=WwI4RPOyzHP6kshLirAuXKB9ZVvSYV/eMfBzAjghSaM=; b=L+o
	8LLg3VKd1jwu8VIWDExAy9jErjJbfWKIz15erFKHUI+cc2/aNTVJcpwvXlRByiMt8k8A98JCLDPqn
	oGJvIC1ZQyI9gPY7vxr/2p3RyOjTcwXK9frtPmn9dhiz5/VmGqBbhLiqwSvUsynllUIxXh6Vr7UUo
	+Y77KkGkTqgM9K8KrQYdayopgw76AcMDB+XPLGQQpOycGKz1i5Nuoou394a4+e6rTKSkWiiJQsRWD
	Uso1Frrv3sHIvHo9vR8CZrDcAFYUGWB2+amGrcgjx0wG6D7BcVdZZZzklXHtHHFBF/d1dRh/gTw5l
	ZRjoKrBONDdfEuvd/lcWA/Jw2R5GgrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC94F-0004Z8-8r; Wed, 11 Mar 2020 21:39:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC94B-0004Yh-OQ
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 21:39:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583962741;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=iD91s3IrtFdq34SLBYV8j2v67d52DexZuonoCAB1nBI=;
 b=FTitfH+SQR1CZZoTZBBASCkJ6Fyzs0Zwp0gAM71T4CxiwX8Vv2r6f3P83JBABYVVRFF1uZ
 JbFNAmKfC+NkozKe98uMuQa0WkxFJKYjOcnA/a+CtZleK1Pw1bpJN/24i/NOb7MY3g88ye
 SP97ovp6DO0tUYSZkqznlRrlaJRPE6Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-RIgPKRAANviYTSYKgUqG9g-1; Wed, 11 Mar 2020 17:36:26 -0400
X-MC-Unique: RIgPKRAANviYTSYKgUqG9g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97EAB800D50;
 Wed, 11 Mar 2020 21:36:25 +0000 (UTC)
Received: from greed.delorie.com (ovpn-116-104.phx2.redhat.com [10.3.116.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 67D171001920;
 Wed, 11 Mar 2020 21:36:25 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
 by greed.delorie.com (8.14.7/8.14.7) with ESMTP id 02BLaO1L002292;
 Wed, 11 Mar 2020 17:36:24 -0400
From: DJ Delorie <dj@redhat.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: How to elf/tst-ldconfig-* in cross test setup
In-Reply-To: <14513500-39f7-00a3-1d1c-4d8e4d6f24a3@synopsys.com> (message from
 Vineet Gupta via Libc-alpha on Wed, 11 Mar 2020 19:56:21 +0000)
Date: Wed, 11 Mar 2020 17:36:24 -0400
Message-ID: <xn36ae60br.fsf@greed.delorie.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_143903_869235_1C64967B 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org,
 ahajkova@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Vineet Gupta via Libc-alpha <libc-alpha@sourceware.org> writes:
> The issue is expected src-path for dso.
>
> | [pid   168] renameat(AT_FDCWD, "/usr/lib/tst-ldconfig-ld-mod.so", AT_FDCWD,
> |     "/tmp/tst-ldconfig/libldconfig-ld-mod.so") = -1 EXDEV
> |      (Invalid cross-device link)
>
> In cross setup, /usr/lib needs to be the host path where test is built or the dso
> needs to be copied over to target at the canonical location. I'm not sure what the
> right approach is so any pointers would be great.

This rename should be happening inside the test-container, in a
subdirectory of the build, so should not be a cross-dev link.  Are you
trying to run these tests manually?


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
