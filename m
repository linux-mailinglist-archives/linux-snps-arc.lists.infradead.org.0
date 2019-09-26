Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF13BF3C2
	for <lists+linux-snps-arc@lfdr.de>; Thu, 26 Sep 2019 15:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZLzH/R0m0RDesP9Xum9DdOsDrc0DrAlzxBk6dxTPtg=; b=VQP9obSWhKsja8
	F91msTm1d4do5vBj8W12aXuXavvK2Apb7eV+FwsAEQHYZ4GXDvZe1neWTq/B7GuZ5Whsg0Hxq6sw9
	6N9YoFE+tIDU8wU5OTbDQIk7v3/Al5jrFvn/Pkb9Pu7yHFOjmhJENL6bjBieyVUUhPkDrTpXeAKB/
	po8NGxf/JtiwNzaufG/l9vTqzDNgkYpBezRt/T3VDypNJS/DZfovKhzcSnDZh7re3+PVl34VJnQ/B
	J3GPMAHUSfDllYFMrAU+6K42UCpdDR/DJfwVdlcKRbqvGXK8/yoUFFb+incihpRy0Szr99dUU6OYO
	A8RfcvG8HylLdbwsDE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTX6-0005mU-IQ; Thu, 26 Sep 2019 13:10:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTX3-0005D4-2X; Thu, 26 Sep 2019 13:10:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id q1so6429073ion.1;
 Thu, 26 Sep 2019 06:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FZIPxOACSyBTtRH5A7Lgyz9YR30y4W13jpD2I+1mgJM=;
 b=M0MOZVUz4t6WU55SoJjNSOp7QYn65o/NCOkDutq5p4891fxVHa6jIYc0GzSPoE5NgC
 Y/F31CMUMd8X4Qdqfc4MGmYyhNuR+uHG233WadTHQa0xsWxFJv5rl8RVwaE3bu3pB7qr
 wri0795JXn4yi9BdL9A4kIX8Eq3Xd1Myt3BkKJ+99RFh8if3n6D0lMDd1/A4PUTHHLSY
 mi041pBhTLwJRt9cj7XQ/sDkCPZZAFKFgXm6Ri5VzL7A0Gk1JZg/oHQRycR2/sZb03c2
 lzEE4rwwCW+uRuqgQOz+nrJU3ZVzQbE+b9nB1IS53yKZV5lYYrQXdFhuW1+ZKBjhKOVA
 lysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FZIPxOACSyBTtRH5A7Lgyz9YR30y4W13jpD2I+1mgJM=;
 b=LlSBPQUb4GCfqdKWkXGpkH+VuMwx3F1iWsmM2hLm1n37jDed9nf2V/ZACDp3y61Axb
 vsY99yh8GUQcMhQnA+SMLF9nAWK8Ww7aEkjFsm1UJjZF1pkZvCi8d89k7zRFcfuRg8dW
 raRX90AHir3SQJZdgSw8TQty+AQGrv09vq7SDIT2w3HDMRxlrYU7WoHO3JLRV4VhiSF2
 HAFBoq2HC9P3Zndxa4pVxSFUZ3ceEDGvJbSrJtoIjIX1phKzd37MB4MJn2cH1BGT3ryI
 ATzA4nCogt5K2KKJaTEKJ8d1YYQAzNkBCTbyiKVJN3xNf+ZS/8QOyPPmJZgYqs/24xdt
 yOlQ==
X-Gm-Message-State: APjAAAULutKxXx9N1hGC/+rctooq7Pj8fg/iDz/qGuJG7CCTVr9YcoqG
 jHRrRqxc4+1UPTmU+y2Dews76Pr76lnhDtKgidL7PfFPf/rl8w==
X-Google-Smtp-Source: APXvYqzlyCi4JSGY6XghEeQ/E8vAIH7ViuIHrzxvUyMsua1GZWLVjXjlSiGwrvjIiebbaCWFI8rRhtB8cjRotnhYNKg=
X-Received: by 2002:a6b:d601:: with SMTP id w1mr3118098ioa.158.1569503404009; 
 Thu, 26 Sep 2019 06:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <1548057848-15136-1-git-send-email-rppt@linux.ibm.com>
 <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
 <CAOMZO5A_U4aYC4XZXK1r9JaLg-eRdXy8m6z4GatQp62rK4HZ6A@mail.gmail.com>
 <CAHCN7xJdzEppn8-74SvzACsA25bUHGdV7v=CfS08xzSi59Z2uw@mail.gmail.com>
 <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
In-Reply-To: <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 26 Sep 2019 08:09:52 -0500
Message-ID: <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_061005_151264_A9956DEB 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Dennis Zhou <dennis@kernel.org>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 Chris Healy <cphealy@gmail.com>, uclinux-h8-devel@lists.sourceforge.jp,
 Petr Mladek <pmladek@suse.com>, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 linux-m68k@lists.linux-m68k.org, Rob Herring <robh+dt@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, xen-devel@lists.xenproject.org,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, openrisc@lists.librecores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:17 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Wed, Sep 25, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
>
> > I tried cma=256M and noticed the cma dump at the beginning didn't
> > change.  Do we need to setup a reserved-memory node like
> > imx6ul-ccimx6ulsom.dtsi did?
>
> I don't think so.
>
> Were you able to identify what was the exact commit that caused such regression?

I was able to narrow it down the 92d12f9544b7 ("memblock: refactor
internal allocation functions") that caused the regression with
Etnaviv.

I also noticed that if I create a reserved memory node as was done one
imx6ul-ccimx6ulsom.dtsi the 3D seems to work again, but without it, I
was getting errors regardless of the 'cma=256M' or not.
I don't have a problem using the reserved memory, but I guess I am not
sure what the amount should be.  I know for the video decoding 1080p,
I have historically used cma=128M, but with the 3D also needing some
memory allocation, is that enough or should I use 256M?

adam

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
