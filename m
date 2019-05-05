Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C23813E09
	for <lists+linux-snps-arc@lfdr.de>; Sun,  5 May 2019 09:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUAZKmFzWfdNW81Bj/MYh3b7EpldQ8L0lReV9Pso26U=; b=BaadmucqrEuc06
	F8immtqyCgPqt5aOpFLGRzJOwrAqdLHfn8H0mNr5F+flfZqy7OjnGU02GmiUmLAeiettYiicFfJuk
	zO/fbrMOGXGVslLHR2ZtocrXmomIgWnjaD9bbUq+RD21oKnqhGo3zQ31UWtk2/QUAvR+YSmMVC+j3
	H4VPwv/RxJaGRDYAuf75t5ZVrkfSmB+za1wIJDhe9HeWZs+C/2GfDUc2/+epDHYpTlNWEBBFUgUD4
	zI8dYfj9ejpCEdkpMWSwWVD356sTUpoiwbNpxU0ZlAOAVGJE2KwY7cnpqBLIW47XO5eEbeQJhaBsD
	DAXgqGhzZ8sjgqOYk8+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBD9-0004BO-Cn; Sun, 05 May 2019 07:05:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBD6-0004Az-W4
 for linux-snps-arc@lists.infradead.org; Sun, 05 May 2019 07:05:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id s7so3064223ljh.1
 for <linux-snps-arc@lists.infradead.org>; Sun, 05 May 2019 00:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v7iSncdIvsuvyTrphAXGuJAYFAkD+y6z0FJYn1j2iZU=;
 b=ZV9lW0QuO+Txr8J6/pYclsUtn6qhm6q+aw2Ada/zYRYutwLYhGR/0qVB/zXCtan7HC
 Hvl7O++4DUMm7PmhW7OkGep0tTWB7pfDELlO/gOeZUkDUUcA0X1HxIAo2x9dVSOEqg9b
 5OFwNj057kowEyNUUezQL+8vsfmJrIYjQRSCpKvaoh/cKjJxvaDeIiEthd3V8jwErDh2
 XeaP8eoplBxpzgkF8Wt7OQ78JRYWQR0A3c0jKdUYvdGkMTWjt2r+S67BH40MK9GBakOr
 HaCPCatBwXWKiIIH3n6dIdQvgnCYWC2Kd2PTpRkOuksp/rN8mcvcfYzVFA8/F6+U9nxy
 Ymvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v7iSncdIvsuvyTrphAXGuJAYFAkD+y6z0FJYn1j2iZU=;
 b=SL7YdNldf5tjH10yDWLqpAgV8Lw1DfyMcWXHy8ObGSeOaks+BjVxDlA7RQIuKW7tHI
 C7UCfsVM+js0qdjiZKeQFptCgKCiJs8VIKyMKHktPH0Fh0bal5+XWWQ5ip0Ai4XsHth5
 6XMMsetmRTokRFXiJhTwMfUcBklXdvPNtwwpvMKh2HB07sDmyXLWxPnuwjcD/sx6OyA8
 YVPehCm5w2VtIm76EhjN2K0Vew5bu+64U08oaj9D+68TzaYWWxOoO/WRzwNJsUqfVsTO
 BtAH7QlLhTep+bK9lpM3jGSdGmQLLInKaG6HmtOYr3SmfWdITUYrCqQKxxlRX07O31su
 i/2g==
X-Gm-Message-State: APjAAAXknG/8cWjiLWjgCl9WfjJiTWK+fg5ZS11esOTKnWPfKgXN2LRL
 AQvPxuxHInkRFwTvLnWkF5IsSuli8Wem+h9Bfek=
X-Google-Smtp-Source: APXvYqwzg0DtE4Y05nlp4ITu2sCe9+QtfxbhcVcWyBhvsHXtMsB9fvX522nv/54/3I0yk2DQkoo7EYf1RALeLvxv+AY=
X-Received: by 2002:a2e:9703:: with SMTP id r3mr705226lji.37.1557039917517;
 Sun, 05 May 2019 00:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAH3MdRVkUFfwKkgT-pi-RLBpcEf6n0bAwWZOu-=7+qctPTCpkw@mail.gmail.com>
 <1556812610-27957-1-git-send-email-vgupta@synopsys.com>
 <CAH3MdRWkiFSRA+PRo53_Syx9OBmyj2U_ebap-9iBR8L7xW9UVw@mail.gmail.com>
In-Reply-To: <CAH3MdRWkiFSRA+PRo53_Syx9OBmyj2U_ebap-9iBR8L7xW9UVw@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sun, 5 May 2019 00:05:06 -0700
Message-ID: <CAADnVQKOR7NJ=zDLndJpTnVjnkjr1UrtWG_2vwgJK3QcCAADcA@mail.gmail.com>
Subject: Re: [PATCH v2] tools/bpf: fix perf build error with uClibc (seen on
 ARC)
To: Y Song <ys114321@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_000521_033166_B27F667E 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexei.starovoitov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev <netdev@vger.kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Alexei Starovoitov <ast@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-perf-users@vger.kernel.org,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>, linux-snps-arc@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 1:20 PM Y Song <ys114321@gmail.com> wrote:
>
> On Thu, May 2, 2019 at 8:57 AM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
> >
> > When build perf for ARC recently, there was a build failure due to lack
> > of __NR_bpf.
> >
> > | Auto-detecting system features:
> > |
> > | ...                     get_cpuid: [ OFF ]
> > | ...                           bpf: [ on  ]
> > |
> > | #  error __NR_bpf not defined. libbpf does not support your arch.
> >     ^~~~~
> > | bpf.c: In function 'sys_bpf':
> > | bpf.c:66:17: error: '__NR_bpf' undeclared (first use in this function)
> > |  return syscall(__NR_bpf, cmd, attr, size);
> > |                 ^~~~~~~~
> > |                 sys_bpf
> >
> > Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
>
> Acked-by: Yonghong Song <yhs@fb.com>

Applied. Thanks

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
