Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876DD163FCB
	for <lists+linux-snps-arc@lfdr.de>; Wed, 19 Feb 2020 09:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Um5e2XtHTddU/o0O5UxWXLhexsDpYBVF41bGIMZsP4A=; b=VaNL76tsuLz62i
	fAMqfkX3XOJTXlTaEiD71t0gRZuGsYv3YJrO9Avh2oI5OQp6MFOi9nAFE6PyHMdJID2KS7VkTUuvv
	+3GdGAMSuGkXy+GvHgk6fcHQfUZLVwJ/1R4Duazt/GYvsqm3mWATvf/jv17byzf9FQsWUi4TdR4/y
	jdjaSe38bl80VNet/I+vfydxUuVAdfxy8Nu4CZC23yxSta0uOv5jR5lIRCP+w0pxAOuosRt9OkvRM
	01WY6PPPDM7hOi1MKVVOseG0uXflVjQMInatS/3xqKbqh81gI6e9Q9P8tf8bgUCf4Vb3ALTnbILja
	95R8IDsIwT/BXfrTJqNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L5Q-0006Qz-8f; Wed, 19 Feb 2020 08:52:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L5M-0006QM-VX
 for linux-snps-arc@lists.infradead.org; Wed, 19 Feb 2020 08:52:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E261DAD06;
 Wed, 19 Feb 2020 08:51:57 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH] Remove STATFS_IS_STATFS64 conditional as it is zero in
 all ports
References: <20200219012921.5075-1-vgupta@synopsys.com>
X-Yow: GOOD-NIGHT, everybody..  Now I have to go administer FIRST-AID
 to my pet LEISURE SUIT!!
Date: Wed, 19 Feb 2020 09:51:48 +0100
In-Reply-To: <20200219012921.5075-1-vgupta@synopsys.com> (Vineet Gupta's
 message of "Tue, 18 Feb 2020 17:29:21 -0800")
Message-ID: <mvmeeur5597.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_005201_162851_F9EA6D60 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: alistair23@gmail.com, alistair.francis@wdc.com,
 linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org,
 Steve Ellcey <sellcey@caviumnetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

I think STATFS_IS_STATFS64 should actually be set to 1 on all 64-bit
architectures execpt alpha?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
