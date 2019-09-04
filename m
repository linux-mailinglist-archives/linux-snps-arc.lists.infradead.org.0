Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B2A7926
	for <lists+linux-snps-arc@lfdr.de>; Wed,  4 Sep 2019 05:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tvmOXs1NZfWvjGEwGR3h71i61tr4LkeZG438evrwWk=; b=bP/2nFFKP3a9EJ
	3QSjg+tQBHDSYZmvBdkGRV1r8QXHkviz/fJ0I5u4pTLbWeIf1hQsC5/i+OVj1AiZ6zHyYm6igieXF
	7gQvJDWix5q52xnb/QydY+MCZz4IdbJTW6ufW+fEMOkhu6CtcmNMiw2OpiokoJ4OoAZwF00d4YrjV
	Rbz+0TaTY0ZEcJzEAP1Tav/J7MkwVaovzwDNdNTtGf56fc0JcZn/HsArxtTxBI9Qr4+O1BVSS5IuS
	Ov+KOopyanIHR4ZeYqa4N3CWKPdLLuUuX7nNuFl3pxXyM38HOA5OCTbghCYJ9p7CR9FKXF7QtxvM7
	napqIdCVAnL28S6yLGIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Lf4-0007mf-Vz; Wed, 04 Sep 2019 03:08:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Lf2-0007lt-AV
 for linux-snps-arc@lists.infradead.org; Wed, 04 Sep 2019 03:08:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id r12so102016pfh.1
 for <linux-snps-arc@lists.infradead.org>; Tue, 03 Sep 2019 20:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dfA6U+IJyyy9kC1t5JV8/mlZA71sQY4hs9JHXN0VII8=;
 b=W9whrDCQTi29K2svnEOO7Jm/Lv0CwQfhVCFntQRReI554NV2ECeg9cqzqpzL9/Nhbi
 Iv0RcqfQ2lWyHzLQ1CQULUOMva0gc2k7G3Ur52T0WVNSBRjlQqaMvnUWi3APN3y1TqvB
 uWRQEIBdDTX7NZBOHQXu5IKlsbInvKveKB1F20SeGFsxOGslUzaxv1m40RqwBPwz6z77
 V7v5fqyWJRiFFnaU1A8EM0KEDI3gqgvzDFGEtcpQZi0BR4agMSz/tF7f3HkUg9hu1LFS
 eojHLfH8lzmIm8gj9YNoP8x4tRrgZ8z6zSZPFGRLJu9QlEhBcrld4eUxvQtnMz3HWTS9
 Z63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dfA6U+IJyyy9kC1t5JV8/mlZA71sQY4hs9JHXN0VII8=;
 b=dVNeiFerjnaQ3ujKzASZuvOFDTmfbuYHhV329DKMXcta1k+0AWRuk/jGEBr0uDlMmC
 uloKzQSymzK6BH/eklRs1JhEi2kZLbGCKaLtOvhwZih+Ij9KpL6lYDC39W7yLzVDKkLP
 GFdECnH5n/WMk5ZFD98vA72X0WG+yI5UcUuwvq7bMed46hR+N5F/o7kQ/ZohF72svyb0
 xqNJoOP8NztUv8mZPWDw3hRGbQKqa0g9q2Fe9OSyTHwuagH4En80AaQSc575gUMDlwv6
 SxmNJ5Vj8T8HrKBxk2Yybj6SVEriXrWRZbG3ZhON3+ZmlfBJJ+6yLKddjC4bXFcSvotg
 FXjQ==
X-Gm-Message-State: APjAAAU+N2IeA24Bex+Bpf/Q3BNRTgf1pE/OpdkqXP8hseJeZpmGDQDn
 Gz84IlFJSfJ6TR+g3O7R0AMcuFCeQUNDhQ==
X-Google-Smtp-Source: APXvYqyN3ZttcnW79XW08fIqU8Zbo+MeMpKouUCVa9iane7nR/SvDbr7IE7cE9B+HX3JNUfNaq/O6g==
X-Received: by 2002:a17:90a:650c:: with SMTP id
 i12mr2673118pjj.11.1567566520959; 
 Tue, 03 Sep 2019 20:08:40 -0700 (PDT)
Received: from ?IPv6:2601:641:c100:83a0:559:28ce:4564:4221?
 ([2601:641:c100:83a0:559:28ce:4564:4221])
 by smtp.gmail.com with ESMTPSA id g20sm8741631pfh.184.2019.09.03.20.08.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 20:08:39 -0700 (PDT)
Subject: Re: [PATCH 2/3] kbuild, arc: add
 CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3 for ARC
To: Masahiro Yamada <yamada.masahiro@socionext.com>
References: <20190820170941.26193-1-yamada.masahiro@socionext.com>
 <20190820170941.26193-2-yamada.masahiro@socionext.com>
 <ed251c63-10e0-bd8a-1a9b-be9ade5cad3f@gmail.com>
 <CAK7LNARd1KFq=GRYQUr16KaiiRzh4ARX5eOpcRcUrZSVgHdhJA@mail.gmail.com>
From: Vineet Gupta <vineetg76@gmail.com>
Message-ID: <c9ff7cad-d3bb-1367-e7c1-0d22fd542903@gmail.com>
Date: Tue, 3 Sep 2019 20:08:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNARd1KFq=GRYQUr16KaiiRzh4ARX5eOpcRcUrZSVgHdhJA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_200844_366077_513B673F 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (vineetg76[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vineetg76[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: arcml <linux-snps-arc@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 9/3/19 8:08 AM, Masahiro Yamada wrote:
>> So if you could please split out the Wmaybe-uninitialized change
> I could not understand your request.
>
> I added 'imply CC_DISABLE_WARN_MAYBE_UNINITIALIZED'
> for CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3.
>
> I cannot split it out. Otherwise, you will see false-positive
> maybe-uninitialized warnings.

Sorry I must have overlooked this part. So no issues now !

Thx,
-Vineet

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
