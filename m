Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B63AD8E09
	for <lists+linux-snps-arc@lfdr.de>; Wed, 16 Oct 2019 12:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bMAD85T23iC7Vu1jyiclVeMca+hzgyguck7Yl3lKOo=; b=eKmchXroaTUY3M
	Ks933olfwTV9KEZqL42MhBmcPrwu13kKPrOMMx2LPVwklb/DZ4HY2RqS4sJ8vTKRp35uEwLl1suQT
	WEwKpu+1vviESiW4pG2jS1G/uwxMavcOX4k3aiARu5+Q8agVn5Mmm6VOHM2Hp2aZfgglRQwC0eqHe
	2LfZOjrSZjn9KgaPJbUzNqoEx/qV39rRORxoZyBbJ/jtExHrdT7k214i+gv/NPI3XF6HBMgKg4h5P
	VS9X/ERFJ215MmMfR9RTotvG2T92meC6+mDIN5UZPj355ndAeAEp8XodEnbiCUA8xixkb8HC/Rm5I
	/HMyK2ZSIIuudPSss/VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKged-00054C-9L; Wed, 16 Oct 2019 10:35:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgeZ-00053e-Rp
 for linux-snps-arc@lists.infradead.org; Wed, 16 Oct 2019 10:35:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id t8so16980117lfc.13
 for <linux-snps-arc@lists.infradead.org>; Wed, 16 Oct 2019 03:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TPx7rPA0Br+et5o6KmRStGO/myFB8ZhOgy82/e79ydg=;
 b=jw4mP6UxdbKOn1Ax/5Lz6J3Yf5tVdATs7EvlFAJS+GhYi7/834ey8w/GvLQpLeZVc7
 7Mb3IXhbnQSlm+QXZ3MZ+nckKcixkU87Dmfefg2Z9rz8pDIfZBDL+OES3N1PpeYo6xU8
 PNyU5vrMcL2T8PAlZ7u7qD0H1U6OF5fCcn7y7a3kIALA9Bqh1plMD2Y9HS6Mm00vbv7v
 xjKALcfBL8p4Z6xSJDAwiS4oeDHxeJA6eDNAP8saYrTaPW6uq2jHilKFYwB8ptI5KkAz
 zT8lgn8Vk55SVZ90xAYBKzEcFI76nh/U52ixpe6wlEk/hmGMD2fliIAFd31J/AcanEeZ
 Jw6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TPx7rPA0Br+et5o6KmRStGO/myFB8ZhOgy82/e79ydg=;
 b=ROwI87X2T3hs3NjKu1LfkEwTRr8y97Ess0qZ81vhUdjr+0EIamp/AhTf9W0oArNUlL
 q6IwhFAAEHpcz7PsLpzT/km+GzI1z7e8+GilxBjIiAA0puP+DJWQOxGZ5aq62JsFWiL0
 tURKAxTAJHEXFgqt+74AVEhN1TD0WAYzjD8F4eumNRWdsWg7sKd0CP9MyPTX1md+T+a6
 Mz8fXZd9SG7S5iXlkYdDTrtmaqjNoeyaZtdcOunJ94g+/QxrsD8Wf3xwlNwLxy+0nJtd
 zsYk6NBi5JO9Rj/B6K2f0r5QAXB1NwnKeF7zaenmPfb5JrEVNswO2O3n325Y3lTn8ThT
 wrnA==
X-Gm-Message-State: APjAAAVj6al2qE6ZFJKlvsmJgPty6PQgbqEpbaaqFUPlSixhLfr5RT+U
 8WUzV+6jBc5ONDSFx6kudt1wCA==
X-Google-Smtp-Source: APXvYqwEBdxAChMVVBFlmc6eUXtVvNheuH3e0SluP3ca6bXyqt8wHnILm5brTVtYux5zecvFFwwvVw==
X-Received: by 2002:ac2:5dc2:: with SMTP id x2mr24763989lfq.38.1571222137941; 
 Wed, 16 Oct 2019 03:35:37 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id k7sm5791404lja.19.2019.10.16.03.35.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 03:35:37 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id E4B6C101F90; Wed, 16 Oct 2019 13:35:37 +0300 (+03)
Date: Wed, 16 Oct 2019 13:35:37 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2 5/5] asm-generic/mm: stub out p{4,d}d_clear_bad() if
 __PAGETABLE_P{4,u}D_FOLDED
Message-ID: <20191016103537.oeanj7nh7u7yhk7l@box>
References: <20191015191926.9281-1-vgupta@synopsys.com>
 <20191015191926.9281-6-vgupta@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015191926.9281-6-vgupta@synopsys.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_033539_925599_DF1B56FD 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Nick Piggin <npiggin@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

There is couple of typos in the subject of the patch. It has to be

	[PATCH v2 5/5] asm-generic/mm: stub out p{4,u}d_clear_bad() if __PAGETABLE_P{4,U}D_FOLDED

Otherwise the patchset looks good to me. You can use my ACK for all
patches.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
