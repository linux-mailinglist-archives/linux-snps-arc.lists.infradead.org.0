Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52FC12316
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 22:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMZFi9fEOMmBBm2P8IGzUEisY4KdC8CtevXfcNvlLg8=; b=CF6Gub9QfMImyJ
	nY9J7SkQFxnBELUSjYSM59VqTWt2si3nA2WcYHqXULgR/ud4M3fpVVURWM/9sfV02P5LWOn0x+a2w
	K+NpO+OSHuZJ9IJ/aNiEQjrmCojkqGF4t0jPDffMccRrib31ocDZCyD/uEqc76syBQL61+8ozigL6
	HeX3gRUDo1npy9rVOqw9zObj4Rngl7gpYQ72hkJEuBRVCqwD3/4P3ahKgiRRhX+Gng4u61/bHNol9
	785GytDBpLuvCBo/UO8xUIfE0HcW2MUqsNc052z9+KWlOEPBTtXKXYIBJ7YIfNplTzw5I0QLLUOkk
	wnscwz7tKHMENE0PYrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIBb-0002hj-5S; Thu, 02 May 2019 20:20:07 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMIBY-000299-H3
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 20:20:05 +0000
Received: by mail-it1-x143.google.com with SMTP id a190so5684794ite.4
 for <linux-snps-arc@lists.infradead.org>; Thu, 02 May 2019 13:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8rF3Gnx4uVH4vT8m+J/MHBp1IFdWlP4V/lANQLuXU0M=;
 b=RQFE7+4k4M8+wYI1I36VEomE+70DTGRCY2e78zXFq+B81n8sxAx18GFz4GgO3NFQ+f
 i5iUxn5WZnAVv3I8mWshGlNK4Splcr+bnc3szwrTNDtJPBH/b516CnUzhWQHvx/Mf8cv
 O5vwO52jV1tooZc1iA3sstlBaC0ewt4gencAIKc6YQCCDuKGq2WCj8/BRCWk6+2uK8LN
 ANSRHfV6GkaVz9KgknChBTqdcClODdr0xlboTb577IwkYThRF66gwS7joZ1F2LQv/AQP
 nmk5OQroaFZPYylRTUjRZmqf/p4XXbEp0phxn47UeGk9Da1TMNLRMxReL1JbqyNLJSXf
 FF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8rF3Gnx4uVH4vT8m+J/MHBp1IFdWlP4V/lANQLuXU0M=;
 b=p7vLFkBpyJoP7rr61AqpmbO2o18ynoeeJEme55TvGYCFv6AUOdbWufQFqWMorP7cXm
 R5nMfsIQNwKMsSyjN9ZP+Kae65YY5SXJkkH/DFDV7ALUUYPQwsaB0iTZI4UbDBLRfx0O
 wzZUUX6UrzTwqXGJ55AbQTpSOXqhBtDGa4ZebLa1wsI53dlkDU1tMRqjl5mmfGCrSQXK
 Bck5hekzA74hOWLjD4v2oXem7OXpjYlUHyto9uV/v/sNWIbbAXh6qVPX4z15sbZF3uwH
 bPIV/8fEmMBpTo2wiC6Kdxke/uMdkpAk9+0YaUCEjEXcKVIeLN+W+H3P+nAXlGOyIWf5
 8ekQ==
X-Gm-Message-State: APjAAAV6MjCw9tUbTTtg6hsWi2fXQKx/O+OTm9kcquQ0hBmo2sIpx1dm
 GvJa6OoOApN05mT+ad+J0SHdeIhbNW2AdmfDFLs=
X-Google-Smtp-Source: APXvYqz7roQk4gRK1HEoWI9GAtvZPk3QvMFuzChbPtXXdtzeJkmNSXo3h52CK/tTfBBECFjLP9QPI5qO8G04gXgWM0A=
X-Received: by 2002:a05:6638:214:: with SMTP id
 e20mr4243086jaq.59.1556828403141; 
 Thu, 02 May 2019 13:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAH3MdRVkUFfwKkgT-pi-RLBpcEf6n0bAwWZOu-=7+qctPTCpkw@mail.gmail.com>
 <1556812610-27957-1-git-send-email-vgupta@synopsys.com>
In-Reply-To: <1556812610-27957-1-git-send-email-vgupta@synopsys.com>
From: Y Song <ys114321@gmail.com>
Date: Thu, 2 May 2019 13:19:27 -0700
Message-ID: <CAH3MdRWkiFSRA+PRo53_Syx9OBmyj2U_ebap-9iBR8L7xW9UVw@mail.gmail.com>
Subject: Re: [PATCH v2] tools/bpf: fix perf build error with uClibc (seen on
 ARC)
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132004_575820_6C3E3A86 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ys114321[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ys114321[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-perf-users@vger.kernel.org, arnaldo.melo@gmail.com,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 linux-snps-arc@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 8:57 AM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> When build perf for ARC recently, there was a build failure due to lack
> of __NR_bpf.
>
> | Auto-detecting system features:
> |
> | ...                     get_cpuid: [ OFF ]
> | ...                           bpf: [ on  ]
> |
> | #  error __NR_bpf not defined. libbpf does not support your arch.
>     ^~~~~
> | bpf.c: In function 'sys_bpf':
> | bpf.c:66:17: error: '__NR_bpf' undeclared (first use in this function)
> |  return syscall(__NR_bpf, cmd, attr, size);
> |                 ^~~~~~~~
> |                 sys_bpf
>
> Signed-off-by: Vineet Gupta <vgupta@synopsys.com>

Acked-by: Yonghong Song <yhs@fb.com>

> ---
> v1 -> v2
>   - Only add syscall nr for ARC, as asm-generic won't work with arm/sh [Y Song]
> ---
>  tools/lib/bpf/bpf.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/tools/lib/bpf/bpf.c b/tools/lib/bpf/bpf.c
> index 9cd015574e83..d82edadf7589 100644
> --- a/tools/lib/bpf/bpf.c
> +++ b/tools/lib/bpf/bpf.c
> @@ -46,6 +46,8 @@
>  #  define __NR_bpf 349
>  # elif defined(__s390__)
>  #  define __NR_bpf 351
> +# elif defined(__arc__)
> +#  define __NR_bpf 280
>  # else
>  #  error __NR_bpf not defined. libbpf does not support your arch.
>  # endif
> --
> 2.7.4
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
