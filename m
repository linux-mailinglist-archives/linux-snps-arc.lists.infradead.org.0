Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06831AE846
	for <lists+linux-snps-arc@lfdr.de>; Sat, 18 Apr 2020 00:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkqzzung/qzoGDE3/PdzArywS2kK9+fmJa0nw0l8GMg=; b=Y6F83GmWPLdcz2
	nH4CQ7LYHw7H0EYr9FUvp2eJZpMks9XuUu/Lnrp/uv4yE40PGR2Iyh8irafJb+CBxBJ5ksXChTSKl
	tasi+vMs0GmFSwth3Rj+FjiuQhloy/mUWJnoumYH6u1zanwu0bJ/MPsHgvDN61noymTSLV0hTpHFz
	/h8d2j98zu0IaoLMMgdqhfQ23HA65S4dqUNY9MyjO66BLgBZv/ze6nvLdk1grw3diTxVqLS65aq5f
	f+Q3Dit9a2jzASpKuKb1WHebwLsjB4yKlH8Z6Vys6s24EqCC4eofloF8GANk1n3Ze4LoELFFwVMpa
	k/0w0Mh81GVHxNKf73lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZcQ-0005ku-WF; Fri, 17 Apr 2020 22:37:55 +0000
Received: from esa4.mentor.iphmx.com ([68.232.137.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZcN-0005je-KS
 for linux-snps-arc@lists.infradead.org; Fri, 17 Apr 2020 22:37:53 +0000
IronPort-SDR: PmyilcXdMrVOMe2+LPvIFQUWnu6lf8k5FOQfKqO2OvYRbE4deoGO4irRXnwnDRwab/IyQ4ZKNz
 0rF+gAmSeJ6tQVmT5ElmfEaqsXu+vgKlmMPU858mEOpX6JJJh19SyLe8a6fs/zB2EHLwuTp4or
 RQCE74irPOUHVNWJdbvUtu+SehcIvhui0Cj5BDXmNBAQqodKcDQaCvUmSzQmKJL8qdZRnt6XD/
 +5kPVSetHWpky8zkktK5HpQiG+LBMiHv8InTdux2dTGH/40Y+vxGlLFW6Cac05dAM6etkTvyDe
 V1g=
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="47987047"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa4.mentor.iphmx.com with ESMTP; 17 Apr 2020 14:37:50 -0800
IronPort-SDR: HFNba3tAqqmMl0Fk094kFK7o+8l1KAAYNYX0IOp6yMsFjaItG0ziW903b1hOe1Jqyktv5aJTGn
 XMEJpdZOjXOJ1dQz46qSmOLX9dExa6k5lifqNiLyPeeo3bXusIZZqPkTuhJhaRIAQ1vfyJVaIY
 GADl3u+bQ6SWkI/40sGZK4gNnfKpS8R7U61LVtkMAc6PiwndGpQoGB/Qx8doW2nPpNyooF9vmO
 I6dNKkwwGq8FOOWAaXks5Qicsni7/aRrQdQpkGMUbknJPiCn6yzBYsUcLGs7uUEXD+kqObXbA8
 FmI=
Date: Fri, 17 Apr 2020 22:37:45 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v5 01/14] ARC: ABI Implementation
In-Reply-To: <20200409025615.27003-2-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2004172234560.1082@digraph.polyomino.org.uk>
References: <20200409025615.27003-1-vgupta@synopsys.com>
 <20200409025615.27003-2-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_153751_756613_77E9599B 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.252 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, 8 Apr 2020, Vineet Gupta via Libc-alpha wrote:

> +#define reloc_index						\
> +({								\
> +  unsigned long int plt0 = D_PTR (l, l_info[DT_PLTGOT]);	\
> +  unsigned long int pltn = reloc_arg;				\
> +  /* Exclude PLT0 and PLT1.  */					\
> +  unsigned long int idx = ((pltn - plt0) / 16 ) - 2;		\

There's a stray space between '16' and ')' here.

> +/* Helper for generic ____longjmp_chk().  */
> +#define JB_FRAME_ADDRESS(buf) ((void *) (unsigned long int) (buf[JB_SP]))

This comment should not use '()' (see the GNU Coding Standards, '()' 
should not be appended to a function name to indicate that it's a 
function, only to indicate a function call with no arguments).

> +  __mcount_internal ((unsigned long int) frompc,			\
> +		     (unsigned long int) __builtin_return_address(0));	\

Missing space before '(' in call to __builtin_return_address.

> +#define TLS_LE(x)					\
> +  ({ int *__result;					\
> +     void *tp = __builtin_thread_pointer();		\
> +     __asm__ ("add %0, %1, @" #x "@tpoff   \n"		\
> +	  : "=r" (__result) : "r"(tp));	        	\
> +     __result; })
> +
> +#define TLS_IE(x)					\
> +  ({ int *__result;					\
> +     void *tp = __builtin_thread_pointer();		\
> +     __asm__ ("ld %0, [pcl, @" #x "@tlsie]      \n"     \
> +	  "add %0, %1, %0                       \n"	\
> +	  : "=&r" (__result) : "r" (tp));		\
> +     __result; })

Missing spaces before '(' in calls to __builtin_thread_pointer.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
