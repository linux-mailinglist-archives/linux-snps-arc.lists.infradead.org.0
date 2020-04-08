Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2761A1964
	for <lists+linux-snps-arc@lfdr.de>; Wed,  8 Apr 2020 03:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Yidv1VNQ5CdA9j0FylEeOixhwXBZG1v+myB1tZJcMg=; b=eixNZ06wWKiVo7
	UrLC9JfkroWpkgJujtwmNPTMUTO/aREM8TDT3txMTnFsAZ9yapYNBr2y3WZGG6Pev2zMCVCfsCvQR
	56xiwt7B/sYvgtCKUDlilKstdje19ur8JXkbe2G8vcTZSCOeoadr/1nQvOP2emSoA5CCBJ3KCU0BT
	HeHJbM/5aizn08l1kFtAb6qXbHUTWHUMzlf0Vt51GAuOg7QEZNmU6usC/vYUWnbvOpucsmBY24uPx
	hXWJxJw2swqTxh1/rG2G/fUXnhO9Fm6VNLDuOqxwZFhS2pgbAOm6tOmIX6wyrxVCAwZ0tlj79wFND
	EC6eenhpbJ6aUC2LvA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLz9W-0004Gf-N5; Wed, 08 Apr 2020 01:05:14 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLz9T-0003id-GD
 for linux-snps-arc@lists.infradead.org; Wed, 08 Apr 2020 01:05:13 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 03814s7b021790
 for <linux-snps-arc@lists.infradead.org>; Wed, 8 Apr 2020 10:04:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03814s7b021790
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1586307895;
 bh=K1ahK7KKPAWpnyfo6tKLdqUOzGSQ4ynuiO6mTIEgKQ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xfM4WxDdbE+mdW0CaIS+gd2ZbYmFucAapXTC13fDsLiVDpbUCFVKjfwpdp25VrZA2
 BphtrzKpvCJfQoxECqKSWDN7GbqS1NAf7gdGnX7pdN2pqnCr/BYwjfERwPKyZ4FlCa
 3LCofOzn1TjknXKrajv/hE9LPwdQcmLYBJEEUX1ZejDIz7/aI9XQBve3YMemlSxplW
 V0Obk3hknfEUSNB1BwOpAQFmMEMqY0xmfhaHe7jfeNmdKjX8x2m70UK6Ub8XPJxB9E
 y/dNntd9VVakbkUpqw+ANc8clGEf2u9iiLmAP3JyFowxxLuXa1Db+K+8xA19U4Howh
 wYVSN/LwPjn/w==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id c7so1000001uap.12
 for <linux-snps-arc@lists.infradead.org>; Tue, 07 Apr 2020 18:04:55 -0700 (PDT)
X-Gm-Message-State: AGi0PuaYRmRhGQs30NvnAHDijanlfFEn8E7S4llNy+2mpCtVDvH+lSyc
 FjWIaxnZF70D2OXkOxOCoTZ+MIMZj+aFsmfcF18=
X-Google-Smtp-Source: APiQypJ/1Y52JCT2NNiYaNpdMWLocsKv2dqcgX0fH+uxTsLbl542WtCzjMOZgzxidv3Bb1sRcVnzKS3X0VN/6cZl96I=
X-Received: by 2002:ab0:20d6:: with SMTP id z22mr3944313ual.121.1586307894272; 
 Tue, 07 Apr 2020 18:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200407161933.10874-1-Eugeniy.Paltsev@synopsys.com>
 <CY4PR1201MB01366A09C22161ED4B30CE17DEC30@CY4PR1201MB0136.namprd12.prod.outlook.com>
In-Reply-To: <CY4PR1201MB01366A09C22161ED4B30CE17DEC30@CY4PR1201MB0136.namprd12.prod.outlook.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Apr 2020 10:04:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNAROwYx0tTR+euFcHCihbmEht6angCW_J0EZgSFvop5Fxw@mail.gmail.com>
Message-ID: <CAK7LNAROwYx0tTR+euFcHCihbmEht6angCW_J0EZgSFvop5Fxw@mail.gmail.com>
Subject: Re: [PATCH] ARC: [plat-hsdk]: fix USB regression
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_180511_770264_8A82C2C1 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 1:22 AM Eugeniy Paltsev
<Eugeniy.Paltsev@synopsys.com> wrote:
>
> Hi Masahiro,
>
> I'm wondering what is proper way to deal with such type of regressions?
> Is is responsibility of person who change kconfig to check (and possibly adjust) affected defconfigs?


I think the patch submitter should take care of
affected defconfigs when (s)he drops select/imply.
Also, this kind of mistake should be caught
in the review process.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
