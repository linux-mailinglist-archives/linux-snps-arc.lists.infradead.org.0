Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE1163911
	for <lists+linux-snps-arc@lfdr.de>; Wed, 19 Feb 2020 02:11:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1EPOt1rdEbeDMFo7WKDVYb2qMnQ3Dyi8x3W/tB20pM=; b=gc47MyRHKU4ern
	ABuG795CGelurKmNFI6RrOfpwRdACiO+2J4WzXtIA9BCzBfihnM2Ly6ULyjr7IZ+lfT+eZEKn1p2D
	ok2P4suE0UQVfW+L6XHDdNtfTC+hqkgkxIuimPTCp1cppZn9pr35QMq2a9gx4H6SufyvZwzA2q+Ee
	Y2LxLDK5OqHYAITKTw8B/QtIJNMAevLM0aDpoO8YdaEWD7p5PgNycmyyGmvatXJGIq80Movw4CPnb
	aF2TpcNzTIQzmT9u0Fr4m4kI4mr4Q1M3nrqHx3gRTpGSrokXZTnR216RUCZigBPgR2KD7G8iDkiJ6
	GS5tcDxopPWE2HOXvDAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4DtG-0000du-GK; Wed, 19 Feb 2020 01:11:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4DtD-0000dH-N9
 for linux-snps-arc@lists.infradead.org; Wed, 19 Feb 2020 01:11:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id n25so16018243lfl.0
 for <linux-snps-arc@lists.infradead.org>; Tue, 18 Feb 2020 17:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yM4CI+iqx/p1a5DAY9nc6OWjg1j6FSO/SJgrHC/ovYI=;
 b=HhSV4JOn5UIIMRc/12qEb9709ufcuGj5Wj34+tZnFhmmwJrk6sE6RUTFs7dd5z3Wvw
 wExstjhKuPK8YzeIdPviAkzBoy/hqm6elksKHmxNlJhHrXd8QnVagBuJtd7LSCZeFg1i
 C7ofqaueGzcds0l9A7ERHcJ4Rk3bPCKRItMbCrHt9SegjaaMbvrS73LsyHGFUsnljbkU
 l01QoWHiPem9Jo6mP6pebaLkP4K5CdnvT1HWUVUwbXnmJbWNe5sW/gWpX7XYvrvAIm6O
 HDZU8YKTex4V9xiRYbr9IaHO/hPHqFCzdZpvb9crZoyNDdmb7WIZYyh9iW45zvu7mSo3
 9g1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yM4CI+iqx/p1a5DAY9nc6OWjg1j6FSO/SJgrHC/ovYI=;
 b=EEHFQETiZt6D3j0d9SbtYqX/YYZGcP/49Y5OKFOEJL7NmfDFAonswvtcOmEK8CmxVj
 dKIywkQUuMXZGeKook5SfpJg3G+OXYpIr3C5nBOkBAMBFiq2MKvMbtjnfqsQYk7TpfZs
 7BiAFOimS1nmvuV9B8Ra2A5c7jRCdbOld7pv3GYIOD7bUk5JJrICOQ02skE0umo7z0Ek
 B/r749bdgZ1qKcpunWGQnejOwY/ZRQVGx53aM005i0u/TXyl2akjbvEzQJk5jF0Hk0gn
 uSQSAttQu0uTJBOJEpUHCz53ENumfwuD3nVhIxQ8jX/s9s7ZI6vzIzAHRKrXWb0+qraj
 3PzA==
X-Gm-Message-State: APjAAAUT/uKpqXWIn0ZI1+90FICugaB2DuNsJzfF0O+PO1IRcgMtLJCd
 NqAHg5YwK8n4eK/fRJLuINpRZP1c7zMeOs5Luuc=
X-Google-Smtp-Source: APXvYqws/uNZCWbq996C5H43Olb3CBtnnIMGLAHEILrKp2dqBm64L/MxkrBSu/IK2Oz7SAHGE7R9oeT4cEav4R+O1hA=
X-Received: by 2002:a19:4a:: with SMTP id 71mr11941798lfa.50.1582074657519;
 Tue, 18 Feb 2020 17:10:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578824547.git.alistair.francis@wdc.com>
 <4e95f95966d8d7c6a8339160dc62d81c1f6a1bfb.1578824547.git.alistair.francis@wdc.com>
 <67f2298c-30ab-1508-4a10-6ee285df7ad1@synopsys.com>
In-Reply-To: <67f2298c-30ab-1508-4a10-6ee285df7ad1@synopsys.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Tue, 18 Feb 2020 17:03:32 -0800
Message-ID: <CAKmqyKO6u15cDbQQ644GrABi=6WWQsNLiCVLszrmDCdcWBnCPA@mail.gmail.com>
Subject: Re: [RFC v6 07/23] RISC-V: Use 64-bit time_t and off_t for RV32 and
 RV64
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_171059_757215_1A1AD3A1 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [alistair23[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alistair23[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "fweimer@redhat.com" <fweimer@redhat.com>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "palmerdabbelt@google.com" <palmerdabbelt@google.com>,
 "zongbox@gmail.com" <zongbox@gmail.com>,
 Alistair Francis <alistair.francis@wdc.com>,
 "adhemerval.zanella@linaro.org" <adhemerval.zanella@linaro.org>,
 "macro@wdc.com" <macro@wdc.com>, arcml <linux-snps-arc@lists.infradead.org>,
 "joseph@codesourcery.com" <joseph@codesourcery.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 4:57 PM Vineet Gupta <Vineet.Gupta1@synopsys.com> wrote:
>
> Hi Alistair,
>
> On 1/12/20 2:33 AM, Alistair Francis wrote:
> > diff --git a/sysdeps/unix/sysv/linux/riscv/kernel_stat.h b/sysdeps/unix/sysv/linux/riscv/kernel_stat.h
>
> [snip]...
>
> > +#define STAT_IS_KERNEL_STAT 1
>
> Isn't this irrelevant: seems to be only used for legacy __NR_stat/__NR_stat64
> syscalls based__xstat()/__xstat64().

Is it? It seems to be used in a few places, including:

sysdeps/unix/sysv/linux/fxstatat.c
sysdeps/unix/sysv/linux/xstatconv.c

Alistair

>
> > +
> > +#define XSTAT_IS_XSTAT64 1
> > +#define STATFS_IS_STATFS64 0
> >
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
