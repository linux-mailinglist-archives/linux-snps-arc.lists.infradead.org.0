Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300465EB82
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jul 2019 20:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjqteTIpJiU+cA4PM+w6G65FzvqB6gKNjsLJsI1RRhI=; b=PkNglPfQGkCzcz
	1if5AyyCnyDww3ae57fF9RC3lWmbYlU3ahxYBgg/P4PN9fo7SOcFkCnqEtqccgz9SUSUoI+6uCiJd
	F16BqtSbeD04/ZSADf7z3NLNBUfhmdCNaaD7F8xpHoRWjUiedPr8F/2cniJpo7OuHEkh2sd+9fASN
	IqaJIGycVasvpuVCjiAgT+XlAZ2geYXbXBgzj97BTfrlA9Zkvne9++SbVOT7IfIuthtoyk/VVrEdk
	DzDEtBUFcwCxtWupxQhpfnP8tpBDf47FoDv6IauB+nr45lQZsV87/c5kJCRLv0OoNWhWda0b0Fty8
	abMHlVt/snj18Suqiwsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijwa-00019E-TM; Wed, 03 Jul 2019 18:25:24 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijwX-00018C-J2
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jul 2019 18:25:23 +0000
Received: by mail-qt1-f196.google.com with SMTP id a15so4897601qtn.7
 for <linux-snps-arc@lists.infradead.org>; Wed, 03 Jul 2019 11:25:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XYrr2XkrtgdorZ+tdABJeKy5zju0JjS/EkkrPZfhGno=;
 b=Zum32F4BiSEKAEdfNkDqjiODisZlV9fDbDluqSeVWQakZDvi8DIR6oqPhz4SftFNzw
 d+lZTfRRT8uMvVHU7a+4YaWrBVdHkp5MZ727Sk+RbfAgFZAy/JMu2+IkLh/GaUiYS7Eh
 /m2sz9n1gPAsjBkH0ga1nS+1fFg8qHmV4cEi6a5Ma4gKHsszAuakI/YMi9kMENxWX/aV
 WzPr6V3tvMVfuizPyaMg14nHngkBUEgd8wvBmnRriw/YTnxodAOviAJQTqU/qlPFBBrS
 37BGR5tuJIRtGb9URVxai0hkNNKp5AqlwkKum50TkF3e6rjqIxJGSOVzFmamIatV+E+R
 SHbA==
X-Gm-Message-State: APjAAAWn5mQX5NZ7M3YPyb+cjIq3Zw627RJN4C9HvkJccFOrRK8gRwj2
 kFDGc/v1SGHU1aQ/mQqHeWL5zLp/IuFjyvvToiA=
X-Google-Smtp-Source: APXvYqxNIjufeVEK1O1zdHGp08z8xlfUA3yLG9ntzbfi0UnYDfHY6JYgxc3gO/5VgfXlAEeC2twCgVEHAIWxpfJ/Wxo=
X-Received: by 2002:ac8:5311:: with SMTP id t17mr31066092qtn.304.1562178317199; 
 Wed, 03 Jul 2019 11:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190703133940.1493249-1-arnd@arndb.de>
 <7584cf05-e3f9-7027-a08c-87efbfb0f608@synopsys.com>
In-Reply-To: <7584cf05-e3f9-7027-a08c-87efbfb0f608@synopsys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 3 Jul 2019 20:24:56 +0200
Message-ID: <CAK8P3a2VS0TCNQa7r_C09fFD2uYiMn79V25B90Opx6SYC51idw@mail.gmail.com>
Subject: Re: [PATCH] ARC: hide unused function unw_hdr_alloc
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_112521_629774_AD5CE848 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

n Wed, Jul 3, 2019 at 6:13 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> On 7/3/19 6:39 AM, Arnd Bergmann wrote:
> > As kernelci.org reports,
>
> Curious, how are you getting these reports ? I want to see as well.

I'm subscribed to the mailing list at

https://lists.linaro.org/mailman/listinfo/kernel-build-reports

I think you can also ask the kernelci folks to get a different subset of
the build reports.

     Arnd

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
