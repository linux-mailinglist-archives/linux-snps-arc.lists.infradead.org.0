Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFD819BE09
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 Apr 2020 10:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvuIeRwbzXKnQGy42yT3s156jQGs4ju2OK5knRahEck=; b=o46U7840cSxF3Z
	0rBja2hDQSk2Zfo2+ywbxQlp/vYvGFWqQfxayMfg+hMghAEsjiL3KIeeGLJky71Hz9yFNoKGFOoNj
	7zafAcl8yjFXzhGUsH5H6YUVXddkzRpGla7mvgtC174rFgq4IOq0h+GfixP8i+P1zua+4IQL5MGgw
	SEXgmtxQQehjq5vWRmXZ51hV+L7vAspUPRWwdv4GMnEddiXXZqVn0yrTZW1ISSYq9aoco+PBFeTrL
	nBA3H/ZpuzWJ6EzWw+mxq06fnfEL+d3RUW1vYHTiDnWhIi404aElfblqBRc4jDQf8bE0wJrVlvczF
	a0fCdB9WHIhWO1m2uXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJvZJ-0001O3-Mb; Thu, 02 Apr 2020 08:51:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvZI-0001Nu-1T
 for linux-snps-arc@bombadil.infradead.org; Thu, 02 Apr 2020 08:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=I58JIytxlt/tuSnSJ9vkLiP427U44Z5piC0XzsKJHiM=; b=3OSkEQ5svpqIb4EiZxpupCefq4
 YSbRImzxkTkd+Se2VwVyE3sL+puKsoifIuTgqOuFWcnGbznSvi5fRLO+RDvK8J+WyUayZmpBI4QOP
 /LNFmz/3DLZP0d0RtcWSurEyZPl2zSJRdCUs6BK7DDQnL8mjmfc9ojAXi+7Mr0DO4E9ulO0IpCHo1
 JsNx8BWrRtS0zAv5gU2mEkIpEtkD1fZ/+64NhGB8RJeX38uBubFI/v6ssdCTv9V8zN20h0dzBAfvW
 fwoshFdNTuifzOyF/yIRPk9RVh8wGC/usc5GJmHxR+F8ZASlvyzNHkiv6xPVkfJdH+ms+9cdo9yL7
 YJxqFfFQ==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvZF-00035r-I7
 for linux-snps-arc@lists.infradead.org; Thu, 02 Apr 2020 08:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585817433;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I58JIytxlt/tuSnSJ9vkLiP427U44Z5piC0XzsKJHiM=;
 b=bdwXmdSgELCLCqDh4pPOartvQ+CaVYWW0jDHpSFV9OwrrHEZrY560WyajyreF3V7T+WTAS
 blN5K70SIEvvdCyiOR+lLsqkEc7XEbhwpLHe45BO4bNUP8lVb2fB1opIJRNpQEi2wb9iMz
 QRCccgbIrQxKI4EXtSPiaolj1lEpD3Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-pP_AWGnbPNyWHFPFj8khRw-1; Thu, 02 Apr 2020 04:50:29 -0400
X-MC-Unique: pP_AWGnbPNyWHFPFj8khRw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7EB13107ACCA;
 Thu,  2 Apr 2020 08:50:28 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-15.ams2.redhat.com
 [10.36.113.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A0611C935;
 Thu,  2 Apr 2020 08:50:26 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Joseph Myers <joseph@codesourcery.com>
Subject: Re: __syscall_error (was Re: [PATCH v4 13/15] ARC: Build
 Infrastructure)
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-14-vgupta@synopsys.com>
 <alpine.DEB.2.21.2003272238480.5132@digraph.polyomino.org.uk>
 <86b7b480-da30-3eb4-3e1d-1d8785604770@synopsys.com>
 <57eeeac6-75d2-05c9-f1fe-bb642329ca77@synopsys.com>
 <alpine.DEB.2.21.2003312246280.30236@digraph.polyomino.org.uk>
 <3b5edadd-b29d-f138-c440-ed6d38da6a67@synopsys.com>
 <alpine.DEB.2.21.2004011703160.3007@digraph.polyomino.org.uk>
Date: Thu, 02 Apr 2020 10:50:25 +0200
In-Reply-To: <alpine.DEB.2.21.2004011703160.3007@digraph.polyomino.org.uk>
 (Joseph Myers's message of "Wed, 1 Apr 2020 17:06:16 +0000")
Message-ID: <87zhbufezy.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Joseph Myers:

> What if you move it to GLIBC_PRIVATE?  My concern isn't that it's exported 
> from the shared library, it's that it's exported at a public version.

I think it's preferable to duplicate __syscall_error in each shared
object that needs it.  It avoids potential strange loops if the lazy
binding code itself ends up calling __syscall_error in an different
object (e.g., from the DSO that implements malloc).

Maybe we can make this work as long as libc.so uses an internal call,
but it looks tricky.

Alternatively, we can enable BIND_NOW unconditionally.

Thanks,
Florian


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
