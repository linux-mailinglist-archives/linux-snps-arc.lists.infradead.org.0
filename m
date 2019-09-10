Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B47AEF1C
	for <lists+linux-snps-arc@lfdr.de>; Tue, 10 Sep 2019 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6kkJf7nwjvtGqwhaL0Zjy2GNUDwmsriMqdewg4iaL8=; b=rjVkjVPNUTpbfc
	A+zqJ8qcbg5vazd/uPzbHStmkCtuQ1uY5tvMwLQmQAIKK1qvZ1qVLZC8xLuWU98nU6DDvOI8tc5vS
	Y80xf43sC18FqCQL4r2vTLRb/57sN0rx9WnE9TMW9pVnb6ueXZb5DFjRmUIBrdKuxZl9pCLTxE+ED
	O3g0ILQGDq4612FoHJi/A2TIevPwnYxshOUWId/UN/accIxGUsZi/NUMsnNRXP8FY/Vy5ei/mCWzt
	fIcTpxsVs0SeG2hQRhdgOh8juPhzTpBdGJSi/X7PlK+uulMxSh827ADbMGYhx7nk2GB5WGndP5VIH
	NmKHTP/ZbYT/QXiE6VIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ieH-0003p6-OJ; Tue, 10 Sep 2019 16:05:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ieF-0003my-Em
 for linux-snps-arc@lists.infradead.org; Tue, 10 Sep 2019 16:05:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id t16so21239649wra.6
 for <linux-snps-arc@lists.infradead.org>; Tue, 10 Sep 2019 09:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bmUQUZCrkmmER7Gwmy8S0BUpeyPHQQl8phfWONZCLwc=;
 b=rjQLp1SQr9CFzSv+cqoe7o9cqn+LoOLnCw6J0BFN4Tni+fdgPvLVAYatxfC2z7ESKE
 BkdyYaUVrSd0CbHPE9a2dbSSVQVUsvKQxYRxHecNPFgTP4QkJ/K/Zr187OXzDGRIHw9l
 nAoWLQTucRc9SGEzkSPX+SEchIPHWGYhKIMisx13n4yV6i7po9MtQZkAsqrwfecG8eWn
 FFLnuPUd8pih/wPmIQbuZ5tVnoItuRaDfRIIy9/J9gaUJrpELIBFZM8YUm5ONa65jXRd
 Iw0q8S78n+M9kLbl6kjHW0INM+Z2JrzvoxpR65RTBW5R0pDJuamPDJ27N1/rYFEc/LKc
 1xCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bmUQUZCrkmmER7Gwmy8S0BUpeyPHQQl8phfWONZCLwc=;
 b=AP/TJEdRI/3Ah2qem5DiYZXBHcYA1LSHvaTngIUj3gVwb+VkxihTvBhVEQQ8bNkgBb
 p9ZksuCUCMK6I9SIkN2UbgOPLY1HRv4tN+w7J+OTio0EnktZnIcAUlq/kbMLTAykLz57
 GMCJvrouMcazmFJIBzs1BaEE+RohvKe1DQtRJRgFRaAW4qimE9PdhuM9D80SZK81K8iC
 7yGYDooN5tVt0koAzMBJXIeyaffHom14HBT4g6IQtRZUHEAVReTUjRAGQuXQCPLjEtx5
 SRk5zR9FWq1yrkIBrkmaIjjJRFBHtgIyTNo8UpuMlHaYoZD5WwrL86+bjKeUZScMTK/K
 7m2w==
X-Gm-Message-State: APjAAAU0yYKllns2JSpjatZxzwMPEl9ucbZdT5BsNnNTX0owFrghO5BO
 WnQLTSgq+3LakiYge/4lZzxsUNgH/SISKR64G12zug==
X-Google-Smtp-Source: APXvYqwHpOAzxh0Vj814CN8tokkTqoSrdFGwVy5mHO7nLon/MoZecZG1w1hZQ/4dXw5R04KRe3J/iX/8TD1h6uS2EUA=
X-Received: by 2002:a05:6000:49:: with SMTP id k9mr7049475wrx.21.1568131540932; 
 Tue, 10 Sep 2019 09:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 10 Sep 2019 09:05:30 -0700
Message-ID: <CALAqxLWLStTqGx5DAvUKOYupdgK-doOxRF5Z_Us=L5vnFaa=7w@mail.gmail.com>
Subject: Re: [PATCH 0/7] add support for clocksource/clockevent DT selection
To: Claudiu Beznea <claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090543_551111_54653D77 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tmaimon77@gmail.com, Linus Walleij <linus.walleij@linaro.org>,
 nsekhar@ti.com, guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-samsung-soc@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>, ludovic.desroches@microchip.com,
 linux-imx@nxp.com,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 uclinux-h8-devel@lists.sourceforge.jp, Marc Zyngier <marc.zyngier@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-unisoc@lists.infradead.org,
 =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, sbranden@broadcom.com,
 lkml <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, kernel@pengutronix.de,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, jhogan@kernel.org,
 palmer@sifive.com, eric@anholt.net, Thierry Reding <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, zhang.lyra@gmail.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Jon Hunter <jonathanh@nvidia.com>,
 bgolaszewski@baylibre.com, Kukjin Kim <kgene@kernel.org>,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, baohua@kernel.org,
 kaloz@openwrt.org, Stephen Boyd <sboyd@kernel.org>, patrice.chotard@st.com,
 wahrenst@gmx.net, mcoquelin.stm32@gmail.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-tegra@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, benjaminfair@google.com,
 shc_work@mail.ru, Krzysztof Kozlowski <krzk@kernel.org>, yuenn@google.com,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 orsonzhai@gmail.com, linux-snps-arc@lists.infradead.org, rjui@broadcom.com,
 vz@mleia.com, john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 venture@google.com, lftan@altera.com, linux-oxnas@groups.io,
 Shawn Guo <shawnguo@kernel.org>, afaerber@suse.de,
 Baruch Siach <baruch@tkos.co.il>, maxime.ripard@bootlin.com,
 Liviu Dudau <liviu.dudau@arm.com>, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Andy Gross <agross@kernel.org>, slemieux.tyco@gmail.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, aou@eecs.berkeley.edu,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <monstr@monstr.eu>,
 Baolin Wang <baolin.wang@linaro.org>, vgupta@synopsys.com,
 nicolas.ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 6:47 AM Claudiu Beznea
<claudiu.beznea@microchip.com> wrote:
>
> This series adds support to permit the selection of clocksource/clockevent
> via DT.

Sorry about this, but could you try to include more of a rational for
*why* this would be useful in your cover-letter/commit messages?

I'm not sure I understand the limitation that requires such an option
to be added to the dts.

thanks
-john

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
