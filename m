Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBAE1EED9E
	for <lists+linux-snps-arc@lfdr.de>; Fri,  5 Jun 2020 00:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3FfaPseaK+jV4uTlHZfU5KsZsKtRmSgIv9cbbDbBHs=; b=exzRQmCpbQ/l6b
	d9jaoevn34C5BCLJ9LoVGFXhuctizIe4lbn7YBOVpe0WRDmx4N2gx68orHIvHVYl13q1xQadcsbbu
	uzz22zhJ92gkPiQoOcbYfH95lKjyaEqm0sMM2pK7KU4yx7Tz1xYdn+zxya8AFe7ZP1nshz+C0/YZL
	LWwKCCmITDWid66mEOjQjOwQSO0kDRKxuK20FqUsfl0eJBVECeHQGF5VWtb4sqAZcG7bSc3Ffqtzw
	xImo42a2U1xEyJ8kLlWAA6aeA7L83og1Eo5r0Eo8EDuD2i+HqLhna1Mk7KVFoGDTuQreSjrnTLV2Z
	NKWuMyIh5qzI0JliFsmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxwx-0001xH-BK; Thu, 04 Jun 2020 22:02:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxwu-0001wW-CM
 for linux-snps-arc@lists.infradead.org; Thu, 04 Jun 2020 22:02:58 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DD21206E6
 for <linux-snps-arc@lists.infradead.org>; Thu,  4 Jun 2020 22:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591308175;
 bh=4g38x2oSje74zA2UximPb1DrUpXh/1OFtddjgYkxtBQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q6QieIXqXQssVkbcvNTtA61JKW72c5GZPjnbMO33jVqs7MOju2L8A/HHA3k9/+WrW
 legPDnbrkcbrxAKfzN3OWt84saQKrS2Dg4uLuuxtCXZH1WQ4Gh8c6q/fWVSn7is6M0
 HhPnJO4xfiI7DT3MHzq+LeIAwAILNczgf9qtO0h0=
Received: by mail-oi1-f179.google.com with SMTP id a137so6504867oii.3
 for <linux-snps-arc@lists.infradead.org>; Thu, 04 Jun 2020 15:02:55 -0700 (PDT)
X-Gm-Message-State: AOAM532S3Cfwea34ukM9IvuTVUkxL3zDRrs9ayRgqX43UD0uizbu9uqU
 VJdlmZur1Zi3ep50XlNFmiLGTSicaGtRKUZQLw==
X-Google-Smtp-Source: ABdhPJx7EjG+lICQigm4tYDI6wfcY0zfI1AaGManpLXFECW7OysKsvFPdKgRtiKqh+xXigmMm/lumWKyg0NrWT4vfzk=
X-Received: by 2002:aca:d454:: with SMTP id l81mr2038280oig.152.1591308174747; 
 Thu, 04 Jun 2020 15:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200604173927.23127-1-Eugeniy.Paltsev@synopsys.com>
 <20200604173927.23127-4-Eugeniy.Paltsev@synopsys.com>
In-Reply-To: <20200604173927.23127-4-Eugeniy.Paltsev@synopsys.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 4 Jun 2020 16:02:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKi6a4ZQ9bZvuBTenygVE=ZEQkSA41XBvXGVhieq-gtDA@mail.gmail.com>
Message-ID: <CAL_JsqKi6a4ZQ9bZvuBTenygVE=ZEQkSA41XBvXGVhieq-gtDA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARC: [plat-hsdk-4xd] initial port for HSDK-4xD
 board
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_150256_467149_42CE2A21 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 arcml <linux-snps-arc@lists.infradead.org>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 11:39 AM Eugeniy Paltsev
<Eugeniy.Paltsev@synopsys.com> wrote:
>

Need to cc the DT list.

> This initial port adds support of ARC HS4x/HS4xD Development Kit board
> with some basic features such serial port, USB, SD/MMC, SPI flash,
> Ethernet and others.
>
> The HSDK-4xD board has much in common with its predecessor - HSDK board.
> However HSDK-4xD has some differences in comparison with its predecessor:
>  * based on quad core ARC HS48/HS47D processor (instead of quad core
>    ARC HS38)
>  * has ThinkSilicon GPU (instead of Vivante GPU)
>  * has ARC PGU and HDMI output
>  * has separate SDIO controller for WiFi module
>  * has additional timers with clocksource independent from CPU clocksource
>    (required for DVFS)
>  * has performance counters interrupt
>  * other minor stuff
>
> NOTE:
> HSDK-4xD and HSDK may share part of DTS so we can move this common part
> to one .dtsi file (as we have done it in U-boot). However we have quite
> enough out of the tree patches for tweaking HSDK DTS (patches in out
> Linux kernel verification flow, patches for run in simulation, etc...),
> so I'd prefer to keep HSDK DTS untouched. That's why HSDK-4xD DTS is
> created as an separate file.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  arch/arc/boot/dts/hsdk-4xd.dts      | 322 ++++++++++++++++++++++++++++

Please check this using W=1 and also build 'dtbs_check' (which needs
dt-schema installed).

>  arch/arc/configs/hsdk_4xd_defconfig |  98 +++++++++
>  arch/arc/kernel/devtree.c           |   1 +
>  arch/arc/plat-hsdk/Kconfig          |   3 +-
>  arch/arc/plat-hsdk/platform.c       |   1 +
>  5 files changed, 424 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arc/boot/dts/hsdk-4xd.dts
>  create mode 100644 arch/arc/configs/hsdk_4xd_defconfig
>
> diff --git a/arch/arc/boot/dts/hsdk-4xd.dts b/arch/arc/boot/dts/hsdk-4xd.dts
> new file mode 100644
> index 000000000000..2b7f76a01e3e
> --- /dev/null
> +++ b/arch/arc/boot/dts/hsdk-4xd.dts
> @@ -0,0 +1,322 @@
> +// SPDX-License-Identifier: GPL-2.0-only

Don't care about non-GPL OS's?

> +/*
> + * Copyright (C) 2020 Synopsys, Inc. (www.synopsys.com)
> + */
> +
> +/*
> + * Device Tree for ARC HS4x/HS4xD Development Kit
> + */
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/reset/snps,hsdk-reset.h>
> +
> +/ {
> +       model = "snps,hsdk-4xd";
> +       compatible = "snps,hsdk-4xd";
> +
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       chosen {
> +               bootargs = "earlycon=uart8250,mmio32,0xf0005000,115200n8 console=ttyS0,115200n8 debug print-fatal-signals=1";

You shouldn't really put debug options here like 'earlycon'. Also, use
'stdout-path' instead for the console.

> +       };
> +
> +       aliases {
> +               ethernet = &gmac;
> +       };
> +
> +       cpus {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               cpu@0 {
> +                       device_type = "cpu";
> +                       compatible = "snps,archs48";

Not documented.

> +                       reg = <0>;
> +                       clocks = <&core_clk>;
> +               };
> +
> +               cpu@1 {
> +                       device_type = "cpu";
> +                       compatible = "snps,archs48";
> +                       reg = <1>;
> +                       clocks = <&core_clk>;
> +               };
> +
> +               cpu@2 {
> +                       device_type = "cpu";
> +                       compatible = "snps,archs48";
> +                       reg = <2>;
> +                       clocks = <&core_clk>;
> +               };
> +
> +               cpu@3 {
> +                       device_type = "cpu";
> +                       compatible = "snps,archs48";
> +                       reg = <3>;
> +                       clocks = <&core_clk>;
> +               };
> +       };
> +
> +       input_clk: input-clk {
> +               #clock-cells = <0>;
> +               compatible = "fixed-clock";
> +               clock-frequency = <33333333>;
> +       };
> +
> +       reg_5v0: regulator-5v0 {
> +               compatible = "regulator-fixed";
> +
> +               regulator-name = "5v0-supply";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +
> +       cpu_intc: cpu-interrupt-controller {
> +               compatible = "snps,archs-intc";
> +               interrupt-controller;
> +               #interrupt-cells = <1>;
> +       };
> +
> +       idu_intc: idu-interrupt-controller {
> +               compatible = "snps,archs-idu-intc";
> +               interrupt-controller;
> +               #interrupt-cells = <1>;
> +               interrupt-parent = <&cpu_intc>;
> +       };
> +
> +       arcpct: pct {
> +               compatible = "snps,archs-pct";
> +               interrupt-parent = <&cpu_intc>;
> +               interrupts = <20>;
> +       };
> +
> +       /* TIMER0 with interrupt for clockevent */
> +       timer {
> +               compatible = "snps,arc-timer";
> +               interrupts = <16>;
> +               interrupt-parent = <&cpu_intc>;
> +               clocks = <&core_clk>;
> +       };
> +
> +       /* 64-bit Global Free Running Counter */
> +       gfrc {
> +               compatible = "snps,archs-timer-gfrc";
> +               clocks = <&core_clk>;
> +       };
> +
> +       soc {
> +               compatible = "simple-bus";
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               interrupt-parent = <&idu_intc>;
> +
> +               ranges = <0x00000000 0x0 0xf0000000 0x10000000>;
> +
> +               cgu_rst: reset-controller@8a0 {
> +                       compatible = "snps,hsdk-reset";
> +                       #reset-cells = <1>;
> +                       reg = <0x8a0 0x4>, <0xff0 0x4>;
> +               };
> +
> +               core_clk: core-clk@0 {

Should be: clock-controller@10

> +                       compatible = "snps,hsdk-core-pll-clock";
> +                       reg = <0x00 0x10>, <0x14b8 0x4>;
> +                       #clock-cells = <0>;
> +                       clocks = <&input_clk>;
> +
> +                       /*
> +                        * Set initial core pll output frequency to 1GHz.
> +                        * It will be applied at the core pll driver probing
> +                        * on early boot.
> +                        */
> +                       assigned-clocks = <&core_clk>;
> +                       assigned-clock-rates = <1000000000>;
> +               };
> +
> +               serial: serial@5000 {
> +                       compatible = "snps,dw-apb-uart";
> +                       reg = <0x5000 0x100>;
> +                       clock-frequency = <33330000>;
> +                       interrupts = <6>;
> +                       baud = <115200>;
> +                       reg-shift = <2>;
> +                       reg-io-width = <4>;
> +               };
> +
> +               gmacclk: gmacclk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <400000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               mmcclk_ciu: mmcclk-ciu {
> +                       compatible = "fixed-clock";
> +                       /*
> +                        * DW sdio controller has external ciu clock divider
> +                        * controlled via register in SDIO IP. Due to its
> +                        * unexpected default value (it should divide by 1
> +                        * but it divides by 8) SDIO IP uses wrong clock and
> +                        * works unstable (see STAR 9001204800)
> +                        * We switched to the minimum possible value of the
> +                        * divisor (div-by-2) in HSDK platform code.
> +                        * So add temporary fix and change clock frequency
> +                        * to 50000000 Hz until we fix dw sdio driver itself.
> +                        */
> +                       clock-frequency = <50000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               mmcclk_biu: mmcclk-biu {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <400000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               dmac_core_clk: dmac-core-clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <400000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               dmac_cfg_clk: dmac-gpu-cfg-clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <200000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               gmac: ethernet@8000 {
> +                       #interrupt-cells = <1>;
> +                       compatible = "snps,dwmac";
> +                       reg = <0x8000 0x2000>;
> +                       interrupts = <10>;
> +                       interrupt-names = "macirq";
> +                       phy-mode = "rgmii";
> +                       snps,pbl = <32>;
> +                       snps,multicast-filter-bins = <256>;
> +                       clocks = <&gmacclk>;
> +                       clock-names = "stmmaceth";
> +                       phy-handle = <&phy0>;
> +                       resets = <&cgu_rst HSDK_ETH_RESET>;
> +                       reset-names = "stmmaceth";
> +                       mac-address = [00 00 00 00 00 00]; /* Filled in by U-Boot */
> +                       dma-coherent;
> +
> +                       tx-fifo-depth = <4096>;
> +                       rx-fifo-depth = <4096>;
> +
> +                       mdio {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +                               compatible = "snps,dwmac-mdio";
> +                               phy0: ethernet-phy@0 {
> +                                       reg = <0>;
> +                               };
> +                       };
> +               };
> +
> +               ohci@60000 {
> +                       compatible = "snps,hsdk-v1.0-ohci", "generic-ohci";
> +                       reg = <0x60000 0x100>;
> +                       interrupts = <15>;
> +                       resets = <&cgu_rst HSDK_USB_RESET>;
> +                       dma-coherent;
> +               };
> +
> +               ehci@40000 {
> +                       compatible = "snps,hsdk-v1.0-ehci", "generic-ehci";
> +                       reg = <0x40000 0x100>;
> +                       interrupts = <15>;
> +                       resets = <&cgu_rst HSDK_USB_RESET>;
> +                       dma-coherent;
> +               };
> +
> +               mmc@a000 {
> +                       compatible = "altr,socfpga-dw-mshc";
> +                       reg = <0xa000 0x400>;
> +                       num-slots = <1>;
> +                       fifo-depth = <16>;
> +                       card-detect-delay = <200>;
> +                       clocks = <&mmcclk_biu>, <&mmcclk_ciu>;
> +                       clock-names = "biu", "ciu";
> +                       interrupts = <12>;
> +                       bus-width = <4>;
> +                       dma-coherent;
> +               };
> +
> +               spi0: spi@20000 {
> +                       compatible = "snps,dw-apb-ssi";
> +                       reg = <0x20000 0x100>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       interrupts = <16>;
> +                       num-cs = <2>;
> +                       reg-io-width = <4>;
> +                       clocks = <&input_clk>;
> +                       cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
> +                                  <&creg_gpio 1 GPIO_ACTIVE_LOW>;
> +
> +                       spi-flash@0 {
> +                               compatible = "sst26wf016b", "jedec,spi-nor";
> +                               reg = <0>;
> +                               #address-cells = <1>;
> +                               #size-cells = <1>;
> +                               spi-max-frequency = <4000000>;
> +                       };
> +
> +                       adc@1 {
> +                               compatible = "ti,adc108s102";
> +                               reg = <1>;
> +                               vref-supply = <&reg_5v0>;
> +                               spi-max-frequency = <1000000>;
> +                       };
> +               };
> +
> +               creg_gpio: gpio@14b0 {
> +                       compatible = "snps,creg-gpio-hsdk";
> +                       reg = <0x14b0 0x4>;
> +                       gpio-controller;
> +                       #gpio-cells = <2>;
> +                       ngpios = <2>;
> +               };
> +
> +               gpio: gpio@3000 {
> +                       compatible = "snps,dw-apb-gpio";
> +                       reg = <0x3000 0x20>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       gpio_port_a: gpio-controller@0 {
> +                               compatible = "snps,dw-apb-gpio-port";
> +                               gpio-controller;
> +                               #gpio-cells = <2>;
> +                               snps,nr-gpios = <24>;
> +                               reg = <0>;
> +                       };
> +               };
> +
> +               dmac: dmac@80000 {
> +                       compatible = "snps,axi-dma-1.01a";
> +                       reg = <0x80000 0x400>;
> +                       interrupts = <27>;
> +                       clocks = <&dmac_core_clk>, <&dmac_cfg_clk>;
> +                       clock-names = "core-clk", "cfgr-clk";
> +
> +                       dma-channels = <4>;
> +                       snps,dma-masters = <2>;
> +                       snps,data-width = <3>;
> +                       snps,block-size = <4096 4096 4096 4096>;
> +                       snps,priority = <0 1 2 3>;
> +                       snps,axi-max-burst-len = <16>;
> +               };
> +       };
> +
> +       memory@80000000 {
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               device_type = "memory";
> +               reg = <0x0 0x80000000 0x0 0x40000000>;  /* 1 GB lowmem */
> +               /*     0x1 0x00000000 0x0 0x40000000>;     1 GB highmem */
> +       };
> +};
> diff --git a/arch/arc/configs/hsdk_4xd_defconfig b/arch/arc/configs/hsdk_4xd_defconfig
> new file mode 100644
> index 000000000000..7f6bdb848400
> --- /dev/null
> +++ b/arch/arc/configs/hsdk_4xd_defconfig
> @@ -0,0 +1,98 @@
> +CONFIG_SYSVIPC=y
> +# CONFIG_CROSS_MEMORY_ATTACH is not set
> +CONFIG_NO_HZ_IDLE=y
> +CONFIG_HIGH_RES_TIMERS=y
> +CONFIG_PREEMPT=y
> +CONFIG_IKCONFIG=y
> +CONFIG_IKCONFIG_PROC=y
> +CONFIG_NAMESPACES=y
> +# CONFIG_UTS_NS is not set
> +# CONFIG_PID_NS is not set
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3=y
> +CONFIG_EMBEDDED=y
> +CONFIG_PERF_EVENTS=y
> +# CONFIG_VM_EVENT_COUNTERS is not set
> +# CONFIG_COMPAT_BRK is not set
> +CONFIG_SLAB=y
> +CONFIG_ARC_SOC_HSDK=y
> +CONFIG_SMP=y
> +CONFIG_ARC_TUNE_MCPU="-mcpu=hs4x_rel31"
> +CONFIG_ARC_DSP_KERNEL=y
> +CONFIG_LINUX_LINK_BASE=0x90000000
> +CONFIG_LINUX_RAM_BASE=0x80000000
> +CONFIG_ARC_BUILTIN_DTB_NAME="hsdk-4xd"
> +CONFIG_JUMP_LABEL=y
> +CONFIG_MODULES=y
> +CONFIG_MODULE_UNLOAD=y
> +# CONFIG_COMPACTION is not set
> +CONFIG_NET=y
> +CONFIG_PACKET=y
> +CONFIG_UNIX=y
> +CONFIG_INET=y
> +CONFIG_DEVTMPFS=y
> +# CONFIG_STANDALONE is not set
> +# CONFIG_PREVENT_FIRMWARE_BUILD is not set
> +CONFIG_MTD=y
> +CONFIG_MTD_SPI_NOR=y
> +CONFIG_BLK_DEV_RAM=y
> +CONFIG_SCSI=y
> +CONFIG_BLK_DEV_SD=y
> +CONFIG_NETDEVICES=y
> +CONFIG_STMMAC_ETH=y
> +CONFIG_MICREL_PHY=y
> +CONFIG_INPUT_EVDEV=y
> +# CONFIG_INPUT_KEYBOARD is not set
> +# CONFIG_INPUT_MOUSE is not set
> +# CONFIG_SERIO is not set
> +# CONFIG_LEGACY_PTYS is not set
> +CONFIG_SERIAL_8250=y
> +CONFIG_SERIAL_8250_CONSOLE=y
> +CONFIG_SERIAL_8250_DW=y
> +CONFIG_SERIAL_OF_PLATFORM=y
> +# CONFIG_HW_RANDOM is not set
> +CONFIG_SPI=y
> +CONFIG_SPI_DESIGNWARE=y
> +CONFIG_SPI_DW_MMIO=y
> +CONFIG_GPIOLIB=y
> +CONFIG_GPIO_SYSFS=y
> +CONFIG_GPIO_DWAPB=y
> +CONFIG_GPIO_SNPS_CREG=y
> +# CONFIG_HWMON is not set
> +CONFIG_THERMAL=y
> +CONFIG_REGULATOR=y
> +CONFIG_REGULATOR_FIXED_VOLTAGE=y
> +CONFIG_DRM=y
> +# CONFIG_DRM_FBDEV_EMULATION is not set
> +CONFIG_DRM_UDL=y
> +CONFIG_FB=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
> +CONFIG_USB=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_HCD_PLATFORM=y
> +CONFIG_USB_OHCI_HCD=y
> +CONFIG_USB_OHCI_HCD_PLATFORM=y
> +CONFIG_USB_STORAGE=y
> +CONFIG_MMC=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_MMC_SDHCI_PLTFM=y
> +CONFIG_MMC_DW=y
> +CONFIG_DMADEVICES=y
> +CONFIG_DW_AXI_DMAC=y
> +CONFIG_IIO=y
> +CONFIG_TI_ADC108S102=y
> +CONFIG_EXT3_FS=y
> +CONFIG_VFAT_FS=y
> +CONFIG_TMPFS=y
> +CONFIG_NFS_FS=y
> +CONFIG_NFS_V3_ACL=y
> +CONFIG_NLS_CODEPAGE_437=y
> +CONFIG_NLS_ISO8859_1=y
> +CONFIG_CRYPTO_ECHAINIV=y
> +# CONFIG_ENABLE_MUST_CHECK is not set
> +CONFIG_STRIP_ASM_SYMS=y
> +CONFIG_SOFTLOCKUP_DETECTOR=y
> +CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=10
> +# CONFIG_SCHED_DEBUG is not set
> +# CONFIG_DEBUG_PREEMPT is not set
> +# CONFIG_FTRACE is not set
> diff --git a/arch/arc/kernel/devtree.c b/arch/arc/kernel/devtree.c
> index fa86d13df5ed..81f881af7356 100644
> --- a/arch/arc/kernel/devtree.c
> +++ b/arch/arc/kernel/devtree.c
> @@ -27,6 +27,7 @@ static void __init arc_set_early_base_baud(unsigned long dt_root)
>         if (of_flat_dt_is_compatible(dt_root, "abilis,arc-tb10x"))
>                 arc_base_baud = 166666666;      /* Fixed 166.6MHz clk (TB10x) */
>         else if (of_flat_dt_is_compatible(dt_root, "snps,arc-sdp") ||
> +                of_flat_dt_is_compatible(dt_root, "snps,hsdk-4xd") ||
>                  of_flat_dt_is_compatible(dt_root, "snps,hsdk"))
>                 arc_base_baud = 33333333;       /* Fixed 33MHz clk (AXS10x & HSDK) */
>         else if (of_flat_dt_is_compatible(dt_root, "ezchip,arc-nps"))
> diff --git a/arch/arc/plat-hsdk/Kconfig b/arch/arc/plat-hsdk/Kconfig
> index ce8101834518..bde310b9ee17 100644
> --- a/arch/arc/plat-hsdk/Kconfig
> +++ b/arch/arc/plat-hsdk/Kconfig
> @@ -3,10 +3,11 @@
>  #
>
>  menuconfig ARC_SOC_HSDK
> -       bool "ARC HS Development Kit SOC"
> +       bool "ARC HSDK or HSDK-4xD SoCs"
>         depends on ISA_ARCV2
>         select ARC_HAS_ACCL_REGS
>         select ARC_IRQ_NO_AUTOSAVE
> +       select ARC_LPB_DISABLE
>         select CLK_HSDK
>         select RESET_HSDK
>         select HAVE_PCI
> diff --git a/arch/arc/plat-hsdk/platform.c b/arch/arc/plat-hsdk/platform.c
> index 0b961a2a10b8..fddb9bae6add 100644
> --- a/arch/arc/plat-hsdk/platform.c
> +++ b/arch/arc/plat-hsdk/platform.c
> @@ -332,6 +332,7 @@ static void __init hsdk_init_early(void)
>  }
>
>  static const char *hsdk_compat[] __initconst = {
> +       "snps,hsdk-4xd",
>         "snps,hsdk",
>         NULL,
>  };
> --
> 2.21.3
>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
