Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0FD1824BE
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 23:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=4X0Gua92ihJJ4oXv5nudUfpTFPU0lLcm0flsXdPLmrc=; b=OyD
	SL1CoVCOfUhuZcUHqEIVoYCl/RpGfDWmff1lU2CesoEEm5a/8KcAljSLiCy7iewnYsp88EqIgMlyd
	x091oE7JnvQnqgpLda/psX9ysAjYqvPKyjWtM3zsK1cz4Dvx2hxevw1FrAO/EuLLOoRNAtu3+Q7+S
	z/mEhzyXFAmyxAlLaj8FH7vgjOHHGwMrWcDmYQcbonz3xgQcdxdzDcF1rTp3ZLFfhhtAZoZAjmtWU
	+cnh3S+HXRIwBYeW3TqvEZj1k44aeNUkF/5dWtOXs8RsAiYWArv+Fz4+jwcS+fpeMW9Zjs786xD6C
	D7piuYZXAAOJxusRYh26U8ZNs3291ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9lU-0002tV-7i; Wed, 11 Mar 2020 22:23:48 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9lQ-0002t7-O5
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 22:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583965422;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=dLfgRonudvs51V0/5iYK125hAV7Z0UJAyubWRgBec5M=;
 b=fcOAeQvTDwU4nZcjY5flPgFMOV7LGDZ1aq1WBiasIwfGTl54JB30vOoKEJ/j0whAO493Dg
 Xc9PlBRE5hQdDNNGAS1dGtPBc6FudDPPblE2ey5b8P1bRw9l7ShTUVgs8OQRGzptKSCr6H
 vC2aIQDfSvuHAeqMCvGcXISAPb3vQhI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-T3BtbrmuPx2090RC6iuxww-1; Wed, 11 Mar 2020 18:23:40 -0400
X-MC-Unique: T3BtbrmuPx2090RC6iuxww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 606FE107ACC4;
 Wed, 11 Mar 2020 22:23:39 +0000 (UTC)
Received: from greed.delorie.com (ovpn-116-104.phx2.redhat.com [10.3.116.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 323D25C1C3;
 Wed, 11 Mar 2020 22:23:39 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
 by greed.delorie.com (8.14.7/8.14.7) with ESMTP id 02BMNbW6005509;
 Wed, 11 Mar 2020 18:23:37 -0400
From: DJ Delorie <dj@redhat.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: How to elf/tst-ldconfig-* in cross test setup
In-Reply-To: <59f54822-4b8e-fefb-045d-cbd447e0e72d@synopsys.com> (message from
 Vineet Gupta on Wed, 11 Mar 2020 22:14:26 +0000)
Date: Wed, 11 Mar 2020 18:23:37 -0400
Message-ID: <xnwo7q4jkm.fsf@greed.delorie.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_152344_867255_3EED66CC 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

Vineet Gupta <Vineet.Gupta1@synopsys.com> writes:
> When you say containers is this linux cgroups or something at a higher
> level: does it need any specific distro container package. Please
> remember this is a constrained system built off of buildroot.

It should not require anything beyond what kernel/glibc provides - we
even build our own /bin/sh for in-container use.  All the
containerization code is in support/test-container.c.  However, some
kernels and/or OSs are *configured* (i.e. for security reasons) to
disallow certain types of namespace unsharing - those should be detected
by test-container and flagged as unsupported tests.

By "container" I mean a simple filesystem/pid namespace using unshare,
sort of a fancy chroot() but it changes your UID and PID also.

See https://developers.redhat.com/blog/2018/11/16/microcontainers-for-unit-testing/
for some background info.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
