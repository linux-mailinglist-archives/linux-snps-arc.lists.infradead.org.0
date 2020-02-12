Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D8915A98F
	for <lists+linux-snps-arc@lfdr.de>; Wed, 12 Feb 2020 13:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Bw4xehgzed6kHqdqu2tdiSHNVOoKFD8gIObwCoTC+8=; b=m+r8q8PfO4wQQj
	Md9GLB80GFjKMDbF+oswkaBCnVKfCipaG+BpIyEqsIKTyxRlB8KEPnQwF/LgZam7WQaJ5nIZXpT3I
	AH5lTUgNAsZtywLEkyfpzqbjjV0vPJw2VcRWqqAIvM4gZU4yquM8oF9IdNudKCUXeFwofuwa/VMvo
	AP8sa9MmlxdwXATvpzSU2EciwIGG3hr02jzwyWNzwJYPxDOSclKXludyHJHzsrYLHBY0kSo3TiGwe
	v2ikJi6Q2Rd/8MRgdb4OOwiVoW4IDne9JiRbBwBulKt+5qzYi4rPH/9Quv1Ud8cy1BAYit+2lMimD
	O6ROPwkRwyvN1VthzmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rbE-0007Le-84; Wed, 12 Feb 2020 12:58:40 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rbA-0007F0-Ef
 for linux-snps-arc@lists.infradead.org; Wed, 12 Feb 2020 12:58:38 +0000
Received: from mail-qv1-f47.google.com ([209.85.219.47]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N8XDT-1jW8751HmL-014S9n for <linux-snps-arc@lists.infradead.org>; Wed, 12
 Feb 2020 13:58:30 +0100
Received: by mail-qv1-f47.google.com with SMTP id z3so863631qvn.0
 for <linux-snps-arc@lists.infradead.org>; Wed, 12 Feb 2020 04:58:28 -0800 (PST)
X-Gm-Message-State: APjAAAV6gJaKFec0Eh1bX/gPl8QiNfLklmMTmL5P70YLsyXYdYTQoZLg
 KuSi6TqU9a5uZW/3RoI/tllFFLpvgfCaYuCMmJs=
X-Google-Smtp-Source: APXvYqzHGmH0SSKb5r27FXdS28fGHtf1VAVtKqb+S1AfV4iXN9MaEC3ye83umOd8qf3UZwGGe/sNe8paHPF1ejvz7ug=
X-Received: by 2002:a05:6214:524:: with SMTP id
 x4mr19570798qvw.4.1581512307988; 
 Wed, 12 Feb 2020 04:58:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578824547.git.alistair.francis@wdc.com>
 <4e95f95966d8d7c6a8339160dc62d81c1f6a1bfb.1578824547.git.alistair.francis@wdc.com>
 <00574bfb-981a-3a1c-cbdf-b2fee4eddc32@gmail.com>
 <CAKmqyKMyf2psPp+-EHoidvbPbSXv0=dP26GjVQnT5BUriLc1gA@mail.gmail.com>
 <3ca7e2cb-55c2-1118-90b8-505586b36ee7@gmail.com>
In-Reply-To: <3ca7e2cb-55c2-1118-90b8-505586b36ee7@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Feb 2020 13:58:12 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0G3mxv8nMkFd0qg+xJED3NPAbu1ETiVdVLez6k8DtC9A@mail.gmail.com>
Message-ID: <CAK8P3a0G3mxv8nMkFd0qg+xJED3NPAbu1ETiVdVLez6k8DtC9A@mail.gmail.com>
Subject: Re: [RFC v6 07/23] RISC-V: Use 64-bit time_t and off_t for RV32 and
 RV64
To: Vineet Gupta <vineetg76@gmail.com>
X-Provags-ID: V03:K1:qoNzRpBNIF+HAt5gR1plBLrp0sF6y0xQkIE2c6QtH9NWb0kmOBq
 5DBtXbG4pXk5d291ZU4VX1XPdSC6EHf+6AXng1DHh+z8e55p7sJMN7R6ZxqObm/aFlrCpwi
 MZZcVfw6dwZcjXM0p3/AEpjpxqZBPgLNwkXX8oH9+DKWQmnjlViA0O5IU9h2adB9jEkWYd+
 Wo22H5J47N+CAZtArbZ1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PSYXdCTvJ48=:d/uSetZJ4tJHU8N78N19BU
 6UkMeSGtLD1F+mt0Fs0rNdAHBdyjrG+8wX1CSN2DOTXUOt1/aRRY6yJS9UcZYeiZNjJtDTwte
 FQhHTBHIsBp8T3xlXiFWQOLWqnpWdOcvp3rKAVx/8Nrz90UborW0gPGf4QWcsdGJQOfVYPwyx
 x304EgYbp/EwgEDm4soIgI9x04wdydbq0bG7ay5EqSwLy26GLfXTZGXNFpUxU1ci+wyXqnJYv
 0ilU5NM2SHUSRtU3NtsBMyOnz7TMVMlSWfO70TzVRT2nOW8QDpYovamxg5kSmABUgE7b2Ux/x
 wDS0QBmo23NoIH0WNtlTUN2vc0/9wfgrVRZG/HdzD3EcMSGUYjBXvwGU1M0hAh+YpxhpNzB7+
 M2O/EK54+gAuO4xr/L2e4X/0FPdxu4ZJxGh9mTlK2eaSfm6QCPdgsKeNhFRwQ8PVpyDEscPvi
 iqJrXH+NIrKwHMaKlDLUgkDtrazkJsFR2QvQqWCV7t0OvwOXBH19N4WduqWNpVpd0A+2ZNNSp
 UyMVTrpzrllb9cAKzliMXiY3uAKS5KpWv5RaT662Hp8XLDhv1yG69ajdR3mvFOXU56Fj94AlW
 s3VjhqxX7WNpwLAyh5GCySywilzELZp6X0Sui5agZFRmaD3XvcaNdeBeTUVDGYwb0laXbUptI
 U6Z86m9zsuz1l58LOx+qjNy8ZdSoY7T01j/118hzf3zZAS5tEk3y2nhm61HpydwilDsSKghHu
 sqUSPpCpYrEIZ9hlelR5GQXE99nxTa8+J4dhzHUK1k717tjhewLhrTmGsD67h62jnk3nAYces
 W6vo39CGw1XULTJWYrK2yINAO1gYmKpVMd6DO5Yiwe34BLPMCA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_045836_809501_2EB7FACB 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Florian Weimer <fweimer@redhat.com>,
 GNU C Library <libc-alpha@sourceware.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zongbox@gmail.com>,
 Alistair Francis <alistair.francis@wdc.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 "Maciej W. Rozycki" <macro@wdc.com>, Alistair Francis <alistair23@gmail.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Joseph Myers <joseph@codesourcery.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 2:42 AM Vineet Gupta <vineetg76@gmail.com> wrote:
> On 2/11/20 4:14 PM, Alistair Francis wrote:
> > On Tue, Feb 11, 2020 at 4:14 PM Vineet Gupta <vineetg76@gmail.com> wrote:
>
> >>> +/* Same for ino_t and ino64_t.  */
> >>> +# define __INO_T_MATCHES_INO64_T 1
>
> I'm surprised that ARC port doesn't define this in glibc, yet we use the
> asm-generic syscall interface where this is true. I need to investigate more.

All 32-bit kernels supported by glibc today define the 64-bit file offset types
(__off64_t, __ino64_t, ...) and a lot of them never had the old 'long' types
(__off_t, __ino_t, ...), but applications can still pick between the two ABIs
when compiling against glibc, see /usr/include/fcntl.h:

#ifndef __off_t_defined
# ifndef __USE_FILE_OFFSET64
typedef __off_t off_t;
# else
typedef __off64_t off_t;
# endif
# define __off_t_defined
#endif

If you use the old types, glibc will do the conversion in the syscall wrappers
on architectures that only have the 64-bit interfaces.

       Arnd

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
