Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE591A8DE7
	for <lists+linux-snps-arc@lfdr.de>; Tue, 14 Apr 2020 23:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0IIvJROvw47B2ImlCaM2vipQEtqO/s5mz5yCKJ0dVo=; b=Sa8XSuLecsTBTO
	S8vHi4rAT/N23CzhjgxKC9SFZAVu8rUrp2QwCzGwFdtMzQLHgxc1F0tuA9wNqXqGeGWp37Xf1s9W/
	qzzM8xiRh1h2oRFBRszBblJeWLjV+nEtIix6HmpBQrBziFyug6/1i2SHGr28PATVFRC9/utZgIcwy
	BT2GaMCGNlIp6Uwv4eDXI6AsJCqqUb93EApKA3TczbXLS7hnqHmXVRA1oNNN2FCH9TjXtJr2W/c4u
	l6c3fIRndsF6izqkuY53H5TgPu8F2HZTYDPiOU0YR72r8qecOXnDyXMhFop5kHg0qb3hLRFdqTdKn
	Nibe3YekBSxyjafxPvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTME-0002q1-E9; Tue, 14 Apr 2020 21:44:38 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTMB-0002mW-Tq
 for linux-snps-arc@lists.infradead.org; Tue, 14 Apr 2020 21:44:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id m2so1363599otr.1
 for <linux-snps-arc@lists.infradead.org>; Tue, 14 Apr 2020 14:44:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1rbtN7N+ptVDeQQdbAIqZEIk2V0QAROfk/PV0WHMjRE=;
 b=K2qPuAg7TpdYdIcH0u9YdgKcL2xS1kJx5weOXhM/VP0tI1+O5FE4hC19dW9kD+rW06
 UlSu4Q18s7RBMPBu1t21sed8XgqQPy6v6M6aozMTYyKTCqL+o2eM3lKQNzuAH2OJqYQY
 xjdT4i/xdn6YP4L3wiBSlpP5z2Vdmht/kqHJEqexABa0D+Tq9eZbAjuTjLJMebDHhk/A
 I3kdFuM0Zbkjm7MLdQIFhjF5Q4dzVlhA6wLrv5S2Y716CiBCCDEkvY8ETo9sMDjGyz9N
 gjFpTx9xwnQ6MeaBXXZ417euMh2kkkyp5nFvBQwfy6y0FRYrVdnELgzNf2bS1LnJdP5j
 CY0A==
X-Gm-Message-State: AGi0PubJ+mFhtUchFnSzM2ajmdDgt3SifLuZAPNMXmFgp5uLPvu7Jd19
 WezEH6U79YPzklqbUiaetrXI3IE=
X-Google-Smtp-Source: APiQypL96hB6UYPUf5qDgTbGQ//SKC8rB0d/g8MUB8WJ16O3Kia4xlS7p8LgovR0p7mxbY0QwQJLCw==
X-Received: by 2002:a9d:3988:: with SMTP id y8mr10467743otb.352.1586900675157; 
 Tue, 14 Apr 2020 14:44:35 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r67sm5788491oie.19.2020.04.14.14.44.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 14:44:34 -0700 (PDT)
Received: (nullmailer pid 10522 invoked by uid 1000);
 Tue, 14 Apr 2020 21:44:33 -0000
Date: Tue, 14 Apr 2020 16:44:33 -0500
From: Rob Herring <robh@kernel.org>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: Document the Synopsys ARC HDMI TX
 bindings
Message-ID: <20200414214433.GA10013@bogus>
References: <20200414144402.27643-1-Eugeniy.Paltsev@synopsys.com>
 <20200414144402.27643-3-Eugeniy.Paltsev@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414144402.27643-3-Eugeniy.Paltsev@synopsys.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_144435_962765_343B4F37 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-snps-arc@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 17:44:02 +0300, Eugeniy Paltsev wrote:
> This patch adds documentation of device tree bindings for the Synopsys
> HDMI 2.0 TX encoder driver for ARC SoCs.
> 
> Signed-off-by: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> ---
>  .../display/bridge/snps,arc-dw-hdmi.yaml      | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.example.dt.yaml: example-0: 'hdmi@0x10000' does not match any of the regexes: '.*-names$', '.*-supply$', '^#.*-cells$', '^#[a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$', '^__.*__$', 'pinctrl-[0-9]+'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/bridge/snps,arc-dw-hdmi.example.dt.yaml: hdmi@0x10000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1270389

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
