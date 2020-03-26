Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEC4193550
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Mar 2020 02:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vn2EGdXzspZbT8irhcuegu6iFfI7GehrEl0+uH7Wxjc=; b=kXiQ5lbxfVi0i5
	FzwQTh4NOMUjpR2+8lxcoy5ELbFHFhkVQmS3rHfDQlaQiYCkqi4r4JofqfU0nT+FhYtcAgMNw7Bh5
	xyb1wAusGMfAnae5xip0oEfl3sNLxUEMF4lEutfMGIvC/plVsKddIn965kZCymCsHzZX9/p6xysZp
	NijZbN2PgsgFHTq/pFhchR2BLOG4ZjCuIlaTenvnE7iGBChTATBpj/wKixNE0+7BRw2+uz/lM9ANY
	E6Pn7Nza1vVL+gWosfPrBrIwVZn/ABrpg08KNF4NWxoZWsdaVU94H5QHk1AIKb9EGgN4Vn3jAXXET
	fWcDpbStGkWoLTGpa1GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHHT4-0000eZ-Ln; Thu, 26 Mar 2020 01:37:58 +0000
Received: from esa2.mentor.iphmx.com ([68.232.141.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHHT1-0000dx-Nr
 for linux-snps-arc@lists.infradead.org; Thu, 26 Mar 2020 01:37:57 +0000
IronPort-SDR: z93zsJ5/Tf+unEvX735EYF1UZxMKFIB7gf4qEKvmTwhntZ+gtwebeT9mDUNLJVFUukFjlq8m2S
 a/KxW8XQUTQGoualitcD8OqlrlC1zBxAJg8ggH4dHUTTb3T5L0H1YZZBv+5VvRrAFu0htP+m7d
 MozXs1VrZlVvC9ekm6rjN2Jp/0Mc4ueSbngQJOkdOwF48RoJizQkWdFScsxdIiv+N1ooFBgFv4
 IO4bOVXeGnry/BynT06ay0m4EWovBW9oO6szGv+IJ8VwPD5MEMg4SIlkYB4H314Qa8BGxBWsMX
 6yY=
X-IronPort-AV: E=Sophos;i="5.72,306,1580803200"; d="scan'208";a="47033686"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
 by esa2.mentor.iphmx.com with ESMTP; 25 Mar 2020 17:37:52 -0800
IronPort-SDR: NZUXPRreKVLFQAEOKxDJa1NMxC8nGszrg1Pp/LCfRdns99VvARqWIsAjkQNdq/0ic9i1I7uk1v
 2qZHFJQhwOKAuJ8tEzub/iL97LoSXrMxuy1/+8WJtlKbUPMRfzvFdSKP5Z4iycrK/os5Uu4KC5
 dAxVDfujebX/8p46kOITn4Mt5LRY8KrZcxXgjtlaeYi0E6EYGy5rtx1rAJyzc5D+TEG+PS6ivH
 9Js1TmQ3ubum70oGAoZMvqO0h5wUOu5NKnW6mCMmK69LL5CqfaTpT2raIEiVyy3p+KbGk0+/HK
 7/g=
Date: Thu, 26 Mar 2020 01:37:46 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v4 01/15] ARC: add definitions to elf/elf.h
In-Reply-To: <20200313030419.15843-2-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003260137210.31593@digraph.polyomino.org.uk>
References: <20200313030419.15843-1-vgupta@synopsys.com>
 <20200313030419.15843-2-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-08.mgc.mentorg.com (139.181.222.8) To
 SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_183755_782401_47DB758D 
X-CRM114-Status: UNSURE (   2.48  )
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

This patch is OK (it can be committed without waiting for the rest of the 
port to be ready).

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
