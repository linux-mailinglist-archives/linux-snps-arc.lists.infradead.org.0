Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCC216A650
	for <lists+linux-snps-arc@lfdr.de>; Mon, 24 Feb 2020 13:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TyTGbcZPyflBaf4+Lt2JwtkTVPE2BT50y5dbuQIg1dQ=; b=gVMSsN+Cv+dEbHvT/LEbPTEOh
	83dxmSfjfIQ/JX8Mv4slaRPAm8u1yO3uZDAoETR6dFNzEaDoLtInJ2jTE5h1f2vJ8Kz93rR7OSf1J
	zB9MFVK1gZlVP9wLvzKjvgFZArN9nWQpR3Dngmygps7tN59SLnU5+V3gzH4OgVnRG+CwlmFACofXY
	JZbobksgcRWd3kSVMm5JH0HsATI0ZE9br/C/QPvV+PJTM5MLqy7epdU5jGsWvixCWx60FLgctPFwF
	/yFskwT38QpbxNkCslV65Y247RKW3BhUbL0fz4+XFoE1ho/PlnOXFV1lLccPmT2qMJ2y/1dyeG0xk
	AeEfHqEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6D3a-00032I-EM; Mon, 24 Feb 2020 12:41:54 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6D3X-00031F-7K
 for linux-snps-arc@lists.infradead.org; Mon, 24 Feb 2020 12:41:53 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48R1sQ4m9wz1rY5L;
 Mon, 24 Feb 2020 13:41:46 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48R1sQ3D7Lz1qql2;
 Mon, 24 Feb 2020 13:41:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id kVpceWkbFm6w; Mon, 24 Feb 2020 13:41:43 +0100 (CET)
X-Auth-Info: Pk4cHACPKeiCvvtgttRbMpOnQH9FkBucQkHdzhq3BgQ=
Received: from jawa (85-222-111-42.dynamic.chello.pl [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 24 Feb 2020 13:41:43 +0100 (CET)
Date: Mon, 24 Feb 2020 13:41:37 +0100
From: Lukasz Majewski <lukma@denx.de>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: switching ARC to 64-bit time_t (Re: [RFC v6 07/23] RISC-V: Use
 64-bit time_t and off_t for RV32 and RV64)
Message-ID: <20200224134137.59249311@jawa>
In-Reply-To: <20200224121325.6b2fff1d@jawa>
References: <cover.1578824547.git.alistair.francis@wdc.com>
 <4e95f95966d8d7c6a8339160dc62d81c1f6a1bfb.1578824547.git.alistair.francis@wdc.com>
 <00574bfb-981a-3a1c-cbdf-b2fee4eddc32@gmail.com>
 <CAKmqyKMyf2psPp+-EHoidvbPbSXv0=dP26GjVQnT5BUriLc1gA@mail.gmail.com>
 <alpine.DEB.2.21.2002120123230.3988@digraph.polyomino.org.uk>
 <CAKmqyKOgFRfMOws_-48GqMnuS3ygmN9A4DzLg6UtEjRXVoM82A@mail.gmail.com>
 <8a9784b3-fc52-adc3-4595-33142b059388@synopsys.com>
 <20200220001136.2f14236e@jawa>
 <CAK8P3a1b73K+RjfHONWLy_dFUucXxwd+0jTnHmkf6YqwRjit4w@mail.gmail.com>
 <20200220103716.2f526933@jawa>
 <CAK8P3a2n6fRm4C5Ywyk5ys92jSOAc5SwvBVZyFOY9=4rB2pyjw@mail.gmail.com>
 <20200224100051.2511d797@jawa> <mvmpne4xqpb.fsf@suse.de>
 <20200224111424.33759b2e@jawa> <mvmh7zgxozs.fsf@suse.de>
 <20200224113658.275ea702@jawa> <mvmd0a4xo4w.fsf@suse.de>
 <20200224121325.6b2fff1d@jawa>
Organization: denx.de
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_044151_573070_ECF8C3F4 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
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
Cc: Florian Weimer <fweimer@redhat.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 GNU C Library <libc-alpha@sourceware.org>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Helmut Grohne <helmutg@debian.org>,
 Zong Li <zongbox@gmail.com>, debian-arm@lists.debian.org,
 Alistair Francis <alistair.francis@wdc.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 "Maciej W. Rozycki" <macro@wdc.com>, Alistair Francis <alistair23@gmail.com>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Joseph Myers <joseph@codesourcery.com>
Content-Type: multipart/mixed; boundary="===============5282390453383259304=="
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

--===============5282390453383259304==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/lJ1qP9IGvdry7RVmPm0p.KQ"; protocol="application/pgp-signature"

--Sig_/lJ1qP9IGvdry7RVmPm0p.KQ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Dear All,

> On Mon, 24 Feb 2020 11:42:23 +0100
> Andreas Schwab <schwab@suse.de> wrote:
>=20
> > On Feb 24 2020, Lukasz Majewski wrote:
> >  =20
> > > On Mon, 24 Feb 2020 11:23:51 +0100
> > > Andreas Schwab <schwab@suse.de> wrote:
> > >   =20
> > >> On Feb 24 2020, Lukasz Majewski wrote:
> > >>    =20
> > >> > If I add those functions as hidden_alias then those would be
> > >> > accessible inside glibc without PLT, but will not be exported
> > >> > (and redirection for Y2038 will not work).     =20
> > >>=20
> > >> They aren't?  PLT avoidance is about internal references, and
> > >> uses a different name then the exported sybmol.
> > >>    =20
> > >
> > > I'm probably not aware of something - but as done in the following
> > > patch:
> > >
> > > https://github.com/lmajewski/y2038_glibc/commit/c96eeb73175961c4ac80f=
dd3b6adc132805387c9
> > >
> > > I do need to remove librt_hidden_proto / librt_hidden_def to have
> > > proper symbols visible when I do want to use redirections.   =20
> >=20
> > You cannot redirect to GLIBC_PRIVATE symbols, they are not suposed
> > to be used by public interfaces.  All public interfaces need to use
> > official versioned symbols.
> >  =20
>=20
> I've put those symbols to GLIBC_PRIVATE as up till now many more
> functions in glibc needs conversion to support 64 bit time. I need
> exported symbols to test if the redirection (and Y2038 safeness on ARM
> in general) works.
>=20
> I also do guess that when we will be heading to expose _TIME_BITS=3D=3D64
> to outside word I would need to add:
>=20
>   GLIBC_2.3X {
> 	clock_settime64;

	^^^^^^^ - it should be __clock_settime64

>   }
>=20
> for clock_settime64
>=20
> and then:
>=20
> #ifdef __USE_TIME_BITS64
> # if defined(__REDIRECT_NTH)
> extern int __REDIRECT_NTH (clock_settime, (clockid_t __clock_id, const
> struct timespec *__tp), clock_settime64);
			  ^^^^^^ - __clock_settime64

> # else
> # define clock_settime clock_settime64
			 ^^^^^^ - __clock_settime64

> # endif
> #endif
>=20
>=20
> Am I correct ?
>=20
> > Andreas.
> >  =20
>=20
>=20
> Best regards,
>=20
> Lukasz Majewski
>=20
> --
>=20
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> lukma@denx.de




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/lJ1qP9IGvdry7RVmPm0p.KQ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAl5TxIEACgkQAR8vZIA0
zr19swgA23uxN7WJy4D2/YGZuK8vigx2hg7nI0aykGy4W681UuOzRmbOBu9WHq9W
qC1RrtLc8AEOvcF99pghbqsrfkg3S8GRUxQtNFcfnvWhHLpnBHhT9IRxYfqILjCX
zrTM7Kllv3l3MOwv/T2GyCdrUpd/64eq7w2dcUqFyxoo/9gEGTJ0BjrGzZtT3LoD
8wHpI+fNPKo7grXMhhcPhLpmSJqMNmL2nmxqk5VB76O4untu3she2hrh2EuWtT/3
Did5ELDXZShrCNgz61n6R0ZQbigzM0kiDQGBkA0H1pw0VWp1x5UT9sb9ke+uePkW
+FmYclDbMMZKRz01U/mnu2EoCTWe6A==
=XHQi
-----END PGP SIGNATURE-----

--Sig_/lJ1qP9IGvdry7RVmPm0p.KQ--


--===============5282390453383259304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc

--===============5282390453383259304==--

