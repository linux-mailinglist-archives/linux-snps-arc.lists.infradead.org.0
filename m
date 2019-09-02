Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21973A5D3A
	for <lists+linux-snps-arc@lfdr.de>; Mon,  2 Sep 2019 22:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SBjho3CO0WmgtDCzqhD++ul030AG847CKuj70ErvQzQ=; b=UWb6K3TT925xzWQ3f3GpD/+w4
	u9OosdtA9788RVVcDoSPJ9zI8a77M5590c1GHlzbf5Q0y0AjAnmG/fBTDCOZE3gJ+OitVOx8x/qou
	64bU5FmMaIRSMeAleMOMrhpEKRteY4G8Yyssj+nVnh6rvrqCpLX4yhUeIuCCqezKFViOacnDweOHF
	/sdF0wBq1yVTnb0eZbrN0GNeErpRtq1YEiP43zYDWpzUxgGPg/s9w+SV8j2A/cRNjG05yh53Vpyz+
	wa/QNtqkieQzPHSVT+BAvLAZv7KORK2/8iLgcCXc7vW9R4AzhLF6YgyWPtU5Cb32j8BoQpkx+hZYD
	/LpwA0WOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4tJt-0005eY-Iq; Mon, 02 Sep 2019 20:53:01 +0000
Received: from mail-yw1-xc36.google.com ([2607:f8b0:4864:20::c36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tJp-0005eC-T2
 for linux-snps-arc@lists.infradead.org; Mon, 02 Sep 2019 20:52:59 +0000
Received: by mail-yw1-xc36.google.com with SMTP id 129so4456668ywb.8
 for <linux-snps-arc@lists.infradead.org>; Mon, 02 Sep 2019 13:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oKb14IGpFAaXis/QK87qCmiMdD9IRp03vAQV3gaW5aw=;
 b=mDPXsuzvu6WYYeYk0hWframxU2NRcO1NVHBfxcbblw6xmrk4nwCgRJwkgE4QefwXJ+
 F9Ycx3YLPCsqkfFUcPxHK1q+EuBphGl9rE8+iMHwxOfJBGoofJw3B2sULG1KgUk2rYRi
 NjhNcGNWCnjPHVc3iWLexv/5NBcIMFb1FPllo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oKb14IGpFAaXis/QK87qCmiMdD9IRp03vAQV3gaW5aw=;
 b=gQtuWF8IrEKJX60CKTX+xEpBZfMX0L/u65nFnf1YEA5A3/2llgVouDnWTwfC74sKYY
 r/BfTSp2dpDGECEqXRAnXpTkQg0GoqzRLGW9ugyRXaY36In8taD8kW7+Kxek7CZ3lNp9
 onV/da0NVgwPPEC9SODIHrM6ZnsRK/76YZ5s8cBYvwDmOAq+B83I9Vaws1qzrvjwml1p
 LKlA2cav1bbIwMZBoGDPWkdkhcIB3MHgg/z9GRjh0OOM4ulvta8jp5Bdm377vypXhph4
 TkOKVCZxArPOYM4ixFsHJy1Mfp7Y5fjU1RF8i5BMsMnXp8KfjL/HznMMJQ+XRQJozr5l
 lSNw==
X-Gm-Message-State: APjAAAW4aTOe0FMt5x33yXKpqfRw1GAOMbDJG1mbIZ/h/s/yJEhseg8O
 Do15hTOOqL00+npzTSVZI9se1w==
X-Google-Smtp-Source: APXvYqyTORyjPdeK3AmeYO0txZAbq07NHiqm4q0pPWphwczVyeMlIFbjZMrH+gAQAf0FZfyhG/5WuQ==
X-Received: by 2002:a81:700c:: with SMTP id l12mr21929615ywc.87.1567457576179; 
 Mon, 02 Sep 2019 13:52:56 -0700 (PDT)
Received: from bill-the-cat
 (cpe-2606-A000-1401-87B6-10E4-7D38-9BA0-AD27.dyn6.twc.com.
 [2606:a000:1401:87b6:10e4:7d38:9ba0:ad27])
 by smtp.gmail.com with ESMTPSA id j5sm3117891ywd.50.2019.09.02.13.52.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 13:52:54 -0700 (PDT)
Date: Mon, 2 Sep 2019 16:52:52 -0400
From: Tom Rini <trini@konsulko.com>
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
Subject: Re: [PATCH] mmc: dw_mmc: fix timeout calculate method
Message-ID: <20190902205252.GB26850@bill-the-cat>
References: <20190814083819.5784-1-kever.yang@rock-chips.com>
 <AM0PR04MB44819DF46C4A0C68844F13C688A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44819FF9900E879AA261324B88A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <3a4fc838-0cc9-64c8-3993-628cce6484c5@rock-chips.com>
 <CY4PR1201MB01207C7EEBA298FDD2B57711A1A20@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <c322fb38-bbc4-545e-c418-0f3eed2bf1e3@rock-chips.com>
 <CY4PR1201MB01204C5C461D25197D3B11D5A1BD0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <bbfdedf8-318a-271d-fc64-472a0017583a@rock-chips.com>
 <CY4PR1201MB01202FCF2BF2C1F75F5DE354A1BE0@CY4PR1201MB0120.namprd12.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CY4PR1201MB01202FCF2BF2C1F75F5DE354A1BE0@CY4PR1201MB0120.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_135257_949536_B19F5674 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "uboot-snps-arc@synopsys.com" <uboot-snps-arc@synopsys.com>,
 "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>
Content-Type: multipart/mixed; boundary="===============0059476397496893580=="
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org


--===============0059476397496893580==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wkJh4kEcDYTskwDc"
Content-Disposition: inline


--wkJh4kEcDYTskwDc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2019 at 12:24:42PM +0000, Alexey Brodkin wrote:
> Hi Kever,
>=20
> > -----Original Message-----
> > From: Kever Yang <kever.yang@rock-chips.com>
> > Sent: Monday, September 2, 2019 11:05 AM
> > To: Alexey Brodkin <abrodkin@synopsys.com>
> > Cc: trini@konsulko.com; Eugeniy.Paltsev@synopsys.com; Simon Glass <sjg@=
chromium.org>; Peng Fan
> > <peng.fan@nxp.com>; u-boot@lists.denx.de
> > Subject: Re: [PATCH] mmc: dw_mmc: fix timeout calculate method
> >
> > Hi Alexey,
> >
> > On 2019/8/30 =E4=B8=8B=E5=8D=889:28, Alexey Brodkin wrote:
> > > Hi Kever,
> > >
> > > [snip]
> > >
> > >> I think this tree does not including this patch, Peng drop it becaus=
e of
> > >> this issue,
> > >> so you need to apply this patch in your branch to reproduce the prob=
lem.
> > >> I have send out V2 patch for this fix with only using 32bit variable
> > > Could you please refer me to the problematic patch so I may try it?
> >
> > This is the patch with problem, and here is the link on patchwork:
> > https://patchwork.ozlabs.org/patch/1146845/
>=20
> Please find my fixes here:
> https://patchwork.ozlabs.org/patch/1156541/
> https://patchwork.ozlabs.org/patch/1156617/
>=20
> Tom do we want https://patchwork.ozlabs.org/patch/1146845/ and fixes for =
it
> (see 2 items above) to become a part of upcoming v2019.10 release or
> it will be slated for the next one?

I think we should aim to get all the fixes in for this release.

--=20
Tom

--wkJh4kEcDYTskwDc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJdbYEkAAoJEIf59jXTHXZSNBwP/33YNAoV414KjLHkjeim+i79
pOaqxTOYBBXF0g0FBoxjbwboVcI/Lp0p9ieIV4pyKf+3BUKZJ2Ftq5uGefXOvk+v
k+002POO501mL3BCOHBsetAw4MGn2KDKJjuU/t8I2IUEry15OW8dZQJh6Eaudi4L
NuDCBRqEORLzcctxX+s+0wnlSlwGOk6cocP2823R+0P/3LphmbF3KR10/8vNRocB
oulgvjqN0Q/67fxCbKoVKC7sPg1rgZfNBkJ2HNoU7Y8njlw7zqrBlQKMWDvs2la3
qfvv/0DAo2iFwgezTNEZvscBYYugVQFQ2qSkdFjmDkJARcPdH2VqUl1aJmgu3HF0
inuB5aiUTSbMwkeltOAfLCYSR+wNC+yiWiqQHH3DqscmWkWbY60tNPPjaZfDldyZ
KPR5Ww+Un5Ta0qUR0/q6ApmSSwPBq8Nhgp5lGsuXcj5ev1McEBGPMmZnbI1LzA/5
MbOP/PNvxdqcHb7x1/HHIiLof3d0aAPNVJ9bdWPgItSSzuj8Uzmcs5Eb+mP+EGPG
s5hAspsp3BRsPy/k2KDVUjESHv2dZp5efhEPHz9xLG1JdTWU22fmZWm554OK++bN
VJfzkLb+VVuJTc05cyrVrUNAagrhE7DmdvJ2IqfvkdUv8Vjbfyx+Nh2sg0g1HUK+
7udnzEknZhH1CLUyoeZk
=ZtFV
-----END PGP SIGNATURE-----

--wkJh4kEcDYTskwDc--


--===============0059476397496893580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc

--===============0059476397496893580==--

