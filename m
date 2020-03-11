Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8292518246E
	for <lists+linux-snps-arc@lfdr.de>; Wed, 11 Mar 2020 23:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=wMkR64nB643vNu+6QREUk62ZdQnMqtQM54c84Hu6Fo4=; b=Biq
	TB1tHuosZTj/+sF4hXk/T92GKjIX0Q8vd2Y/AJs03KyWHLLN1kGvj6BBczyO7OtyLVn8b3uYi25Ss
	AWR5znI4R63csmQlu8jXlnaO94tDPPabm1NGu7s1qJKs2MRTLeoA1zYgHBJWXqteVUgesNJ6M3jvJ
	sqRYl5T72Tr/CIOMIdw+H/dR0GJ+byINBrlYCQcZcqR6kB8C6l64b5x/TB3zwTKw8fLIEFERQ9mEz
	O2jCqm0VjXh7+gZkvYkkP3RqsvtWm6L4F5CnaDuTK08KluGkzl/RjY7eCIsyvn0FnBRl+fSskqZFB
	J1tPHbuzSKmDVve+uSPt9TXchFLaLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9VU-0006Dc-Qo; Wed, 11 Mar 2020 22:07:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9VS-0006Cz-P5
 for linux-snps-arc@lists.infradead.org; Wed, 11 Mar 2020 22:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583964433;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=k/WvUASzX+1IyhwuV6CKlHO9hN9JmB111eGZi0a4G/8=;
 b=J1jWUFqoV4WMQK7eT47WdfV1NxOZPKJ5tkADlbbzNF+j3F/YaXuYPcNKNhfiFXr9Gg0lop
 v77PkXW2C7y8igv5n2jVSnUqi7h+jKLisgxT54Aed+HPwjiYK94Xc9yNqxuaqWTYQjSdlv
 96NawynaWHtPCicLwDyq1l7t/UqsJ8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-kqCiKpiyM72E2F8xZuskPA-1; Wed, 11 Mar 2020 18:07:11 -0400
X-MC-Unique: kqCiKpiyM72E2F8xZuskPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5403CDBAF;
 Wed, 11 Mar 2020 22:07:10 +0000 (UTC)
Received: from greed.delorie.com (ovpn-116-104.phx2.redhat.com [10.3.116.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 268155D9E5;
 Wed, 11 Mar 2020 22:07:09 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
 by greed.delorie.com (8.14.7/8.14.7) with ESMTP id 02BM7718004237;
 Wed, 11 Mar 2020 18:07:08 -0400
From: DJ Delorie <dj@redhat.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: How to elf/tst-ldconfig-* in cross test setup
In-Reply-To: <1e5222c2-5e79-1cbe-1bc1-ea1c31f920a3@synopsys.com> (message from
 Vineet Gupta on Wed, 11 Mar 2020 21:50:30 +0000)
Date: Wed, 11 Mar 2020 18:07:07 -0400
Message-ID: <xnzhcm4kc4.fsf@greed.delorie.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_150714_894103_7D062396 
X-CRM114-Status: UNSURE (   7.81  )
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

Vineet Gupta <Vineet.Gupta1@synopsys.com> writes:
> No, I'm running this is a cross-compiled setup where the test artifacts are on a
> NFS mounted host. Here's the full strace for test
>
>
> $ strace_static -f
> ~/br/build/glibc-867196a7635/build/elf/tst-ldconfig-ld_so_conf-update

This is a manual run.  Even with a cross setup, you still run
test-container on the cross target:

$ strace_static -f
~/br/build/glibc-867196a7635/build/support/test-container \
~/br/build/glibc-867196a7635/build/elf/tst-ldconfig-ld_so_conf-update

The containerized tests are (in this case) containerized because they
rely on setup files (like /etc/ld.so.conf) inside the container to run
the test.  Otherwise you end up corrupting the host OS.

The test infrastructure knows how to run containerized tests on remote
machines, though... any reason why you're not using that setup?

Note: if containers aren't yet supported on your platform, it's OK to
just skip those tests.  Also, it's not always a good idea to run a
containerized test outside the container; the tests assume they can
trash the container as part of the test.


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
