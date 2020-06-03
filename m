Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146431ECBC4
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jun 2020 10:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX49Tzb5Hd8HZZGcy4YaAyLTuaLBEC0nBG5/VgXdego=; b=EvNFxTUwacQct9
	/DUUcF8AOowPSHN8KZd1NPEzZI4xCqL6F1pLvbA4H3tOd8ZhAiPAikqI2JPBhBD3ez6rjKOm8BZLa
	6Qmk2q3x0kS5Y6+wa6VHmJLs0QU1a1P/Evkgx2d3KKidV+bNcuEDXeEzKBABYTmmpz/dEuawrDxSB
	2GZvjhGNpIWxrqE2uAZiTyeQn/uf2BUE6YYDDxCf6vff5Qg6wdC13usqNlLOZFt54dYWAW3Z3NfjT
	sbHy1P4/30TBPdsdvJdPzE/NOuWmmliXLGX4qUfn893zmO8DpKzZOtczTNYI7fz7yPAj3dVkV3Yzd
	DBx1FO5xGTvrILT5CszA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgP2n-0005oq-Kp; Wed, 03 Jun 2020 08:46:41 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgP2k-0005nl-Jg
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jun 2020 08:46:40 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49cMvt0HgVz1rvBS;
 Wed,  3 Jun 2020 10:46:34 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49cMvs6v8yz1qr41;
 Wed,  3 Jun 2020 10:46:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id P2urAz_-LwdV; Wed,  3 Jun 2020 10:46:32 +0200 (CEST)
X-Auth-Info: 8PB2oVdNgwy15NI8mWB+m+HhSAhjur+R+/cHlkKCNIqrp/ejnWHEdkd3Bp36vY/U
Received: from igel.home (ppp-46-244-166-134.dynamic.mnet-online.de
 [46.244.166.134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  3 Jun 2020 10:46:32 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
 id 26A252C0AB8; Wed,  3 Jun 2020 10:46:32 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Vineet Gupta via Libc-alpha <libc-alpha@sourceware.org>
Subject: Re: [PATCH v3 1/4] iee754: provide gcc builtins based generic sqrt
 functions
References: <20200602213220.6201-1-vgupta@synopsys.com>
 <20200602213220.6201-2-vgupta@synopsys.com>
X-Yow: C'MON, everybody!!  I've flown in LESLIE GORE and two dozen KOSHER
 BUTCHERS!  They'll be doing intricate MILITARY MANEUVERS to the
 soundtrack from "OKLAHOMA"!!
Date: Wed, 03 Jun 2020 10:46:32 +0200
In-Reply-To: <20200602213220.6201-2-vgupta@synopsys.com> (Vineet Gupta via
 Libc-alpha's message of "Tue, 2 Jun 2020 14:32:17 -0700")
Message-ID: <87k10o4jvb.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_014638_789521_22216CC9 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

s/iee754/ieee754/

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
