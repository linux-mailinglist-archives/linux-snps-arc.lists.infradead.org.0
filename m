Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA4CB10F0
	for <lists+linux-snps-arc@lfdr.de>; Thu, 12 Sep 2019 16:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=466nKp8pJXdiuskhKpbDHsyAbxfwa77EjQ9/Lpe7rSo=; b=bm6/NqS3FF+Kzw
	TQ06Z17PEfWDlZmCDnU2Ee3rmk93cWLZHmzf0Ao+VIQKAB/kWCXmgmNZOdFMZrm3rNJ4tVznYPXAb
	U32TXnPwvRDO8aQdBgFC5w0PnewmmAaGnfcYo2kwodOJFrZeQ7xEUEG+m6A318+p83BwOtEup79Wz
	NzQ6qiMS6x41VZuDvIfBxmaYAXPSUKjsUZXPips29wKweoPm64AEAJ2Kv0LaYs7zUL/xVKRX6XQSQ
	UZIGpmyyHtB4rhdhIR+w9SiAFjVs/qt42ZrvHcB1WLgTKdbPewEphBGzkB/md09/QEYwHusn9fNaH
	59XPEjWe6NDOhR3T8/4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PwO-0006N0-5q; Thu, 12 Sep 2019 14:19:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PwC-0006ES-M6
 for linux-snps-arc@lists.infradead.org; Thu, 12 Sep 2019 14:19:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id r14so712749ljn.3
 for <linux-snps-arc@lists.infradead.org>; Thu, 12 Sep 2019 07:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EaseRjemZ1nH3H3ai+89HustdIaoQgkZxvxn81voHgw=;
 b=rsoX6y1YAOzqbx2rs5yY1TJbSmu7WAyddlNG+Ji8jLL6qD8p1RBNugHFYlNQFlKSB8
 /HGDvzTO9dWJaVyS7zIOH11WvDhCFHhIeG/RblZHgUjHwtbDjYPcH4cXDpSGmmE2nUj0
 U6VL1XQE80wNOM7ht77ywzV5AM7lk48hIBbv+1hXcArDqYqEtvHAhEc9KRV0y8mTp2Lc
 ApW2O9cFYxpDbCdQTnVG9tiN5mUIzl0v5TXdlr9D99chkIpZje5iX/oAjdcc95A3KdiX
 q5ZdpEGXM8dvO1N021lPANQ/2ob6PqB/kzCSCjuyZQ0GqxK9v0IjZNYn2QGE3q7b/0QK
 3iXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EaseRjemZ1nH3H3ai+89HustdIaoQgkZxvxn81voHgw=;
 b=B1xam9dt8OlOz5KahUeJ2/0sBGd+iG2ercS7lL170hrI/MtbgvL4OABvEec9BepnaP
 VpokgQVTvO590b5RXdFMgBeKoAz4IGpsyAzD+ItJ3HEQb8I6LZBnGFRgvyFtKdRgoRtH
 ibC/6rCYVmyqCUQf+jo1cVqnM+3R3plcN/6DJoUfU/DRxdqQOhEMd7/FuQTXCRLuWK2J
 0ojrp8/JSedcEyaevRoXgJtZsLGM/lK1V+54l05OPad6aX5qI3c/hR5t+mJNszxqME1T
 bPCPBCQGOygaE0IiDeT/RXzeJE1uv1rCPS0SVPemm2J2yIFo8Q2qDgBOQFmlzq82ZRMW
 y4iQ==
X-Gm-Message-State: APjAAAUo3QFKCMWWuEzCTQU89H6b7jv7ezYAsD/ogwtEC3yT3+JcFAW7
 Bbzh01Pf5QrTnpkpiYZZI4TFrWVGdCebIQPJJUgpuA==
X-Google-Smtp-Source: APXvYqyop0XBEejhycCA/uXWCe+v8fXqapp+IE1UpB4CQ6vUty8WM9HhBr1lSJ1uA5PXMzJA1vilAybkoKwYmXmFiJ0=
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr18997780ljo.180.1568297943530; 
 Thu, 12 Sep 2019 07:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
 <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
 <20190910150826.GA18308@e107533-lin.cambridge.arm.com>
 <20190910151055.GX21254@piout.net>
 <CACRpkda4mmpbPWa2nD93CvD6HWzcTUDzyyLdQxC2gNB7XiJF3w@mail.gmail.com>
 <a2aca46a-8eb9-d8a8-de42-9850a8a8f44c@microchip.com>
In-Reply-To: <a2aca46a-8eb9-d8a8-de42-9850a8a8f44c@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 15:18:49 +0100
Message-ID: <CACRpkda1T_5D697wphrEGEsbj3zBfTaOOLN0T5zS1xfT949cjA@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
To: Claudiu Beznea <Claudiu.Beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_071908_760101_2B8896B5 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, "Nori, Sekhar" <nsekhar@ti.com>,
 guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 Marc Zyngier <marc.zyngier@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-unisoc@lists.infradead.org, Krzysztof Halasa <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, Scott Branden <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Sascha Hauer <kernel@pengutronix.de>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 James Hogan <jhogan@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Eric Anholt <eric@anholt.net>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Lyra Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Jon Hunter <jonathanh@nvidia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Kukjin Kim <kgene@kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, John Stultz <john.stultz@linaro.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
 Stephen Boyd <sboyd@kernel.org>, Patrice CHOTARD <patrice.chotard@st.com>,
 Stefan Wahren <wahrenst@gmx.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-tegra@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Benjamin Fair <benjaminfair@google.com>, Alexander Shiyan <shc_work@mail.ru>,
 Krzysztof Kozlowski <krzk@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Chen-Yu Tsai <wens@csie.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 Ray Jui <rjui@broadcom.com>, Vladimir Zapolskiy <vz@mleia.com>,
 John Crispin <john@phrozen.org>, tali.perry1@gmail.com,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 Ley Foon Tan <lftan@altera.com>, linux-oxnas@groups.io,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Baruch Siach <baruch@tkos.co.il>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Russell King <linux@armlinux.org.uk>, Andy Gross <agross@kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, aou@eecs.berkeley.edu,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <monstr@monstr.eu>,
 Baolin Wang <baolin.wang@linaro.org>, Vineet Gupta <vgupta@synopsys.com>,
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 8:18 AM <Claudiu.Beznea@microchip.com> wrote:
> [Me]
> > In that case why not just pick the first one you find as clocksource
> > and the second one as clock event?

> That was also my proposal for the driver I'm sending this series for (see
> [1]) but it has been proposed to implement a mechanism similar to this one
> in this series (see [2] and [3]).

OK I am not going to challenge the clock source maintainers on this,
so if that is what they want then that is what they should get.
It's fine to convert the Integrator driver too!

Yours,
Linus Walleij

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
