Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DED11FBB
	for <lists+linux-snps-arc@lfdr.de>; Thu,  2 May 2019 18:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RxUSKKnYVRrVvY5J6rV4GPAnxS7amHGyMv9VnAS8zCg=; b=rOeRbtbDmInjbi
	1ECT9nb7l7pznPVrJd67/W4Bw/sg3ReK1HLPwBbvpnLJOsYZxIwTxWOb/SJZ1zmI7gEiIv50EjcMc
	ad0/Dirp4lBlWvzt7csfOChcCTJ52VH9l/EJ3zjfgIW5mej9tPgBJhIWFEZI+4v1dhg/g3TIKjyvz
	7CJDVogjs7CdJqIzFcnpmvmu7xsSbPUueWW8nL1lkT59BY3iCySrG1SFGH0zy8ehSDhVmC2jMc9Gv
	Xc/izLiqjGFBEHqixIV9h8ht8QkRqJN6DAh3fSgecfcBQmSs26SjQpt1RMUi5Vz5oUkYA2s7rzZsV
	74aCPMUm5QmThrXnr+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEHN-0002xU-2h; Thu, 02 May 2019 16:09:49 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEHK-0002wB-97
 for linux-snps-arc@lists.infradead.org; Thu, 02 May 2019 16:09:47 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7320EC008E;
 Thu,  2 May 2019 16:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556813387; bh=ZZLsxdALENIFAq/ZqpCY+bZ9XDVuO0IJPaRJlyuz5qA=;
 h=From:To:CC:Subject:Date:References:From;
 b=fpRgyNolEfVEsyjoHqH27Rg51l3txWxZEnqNXhoE4kcO/6wrKE6tRoQ5EELR6YICB
 Bm1a+Nt6pq2oDTSj2wsglm/HYH5bIqnToDRcFYAMRxsB57ml9fWtL4ERXmCfu4RF8F
 GMrjjEJ9pliBbYOE/tR4Ah2ZClCBUNscy72H9qjQj1anmx5E9JZQJuziOb01wCAiT+
 wFyiZAxkWBfnJBuJUFlgVni7Syn9vtOOn6dC3gdfYseO+5llvxjEP5G5ai5b7fLRsk
 IBjxPovewoCbjKZFhvez2cjDbwQLV9qxB7BZtarBFfc4MmHh9LWNk5jqzeJJTfWzRn
 ajg0aiVTAkEPw==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4E8FEA00A5;
 Thu,  2 May 2019 16:09:44 +0000 (UTC)
Received: from us01wembx1.internal.synopsys.com ([169.254.1.223]) by
 US01WXQAHTC1.internal.synopsys.com ([::1]) with mapi id 14.03.0415.000; Thu,
 2 May 2019 09:09:43 -0700
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: perf tools build broken after v5.1-rc1
Thread-Topic: perf tools build broken after v5.1-rc1
Thread-Index: AQHU9whSYuAYlq2eD0OAivz0M0d5Nw==
Date: Thu, 2 May 2019 16:09:43 +0000
Message-ID: <C2D7FE5348E1B147BCA15975FBA2307501A2506D04@us01wembx1.internal.synopsys.com>
References: <eeb83498-f37f-e234-4941-2731b81dc78c@synopsys.com>
 <20190422152027.GB11750@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A250584C@us01wembx1.internal.synopsys.com>
 <CAK8P3a2JrAApXDws+t=q8AnKFkHJZSox7gsgwW-xEJTfs_mdzw@mail.gmail.com>
 <20190501204115.GF21436@kernel.org>
 <C2D7FE5348E1B147BCA15975FBA2307501A2506BF3@us01wembx1.internal.synopsys.com>
 <20190502143618.GH21436@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.13.184.19]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_090946_332132_9CDAE600 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-snps-arc@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux on Synopsys ARC Processors <linux-snps-arc.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-snps-arc/>
List-Post: <mailto:linux-snps-arc@lists.infradead.org>
List-Help: <mailto:linux-snps-arc-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-snps-arc>, 
 <mailto:linux-snps-arc-request@lists.infradead.org?subject=subscribe>
Cc: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 Rich Felker <dalias@libc.org>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>, Arnaldo
 Carvalho de Melo <acme@redhat.com>, Jiri
 Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On 5/2/19 7:36 AM, Arnaldo Carvalho de Melo wrote:
> Em Wed, May 01, 2019 at 09:17:52PM +0000, Vineet Gupta escreveu:
>> On 5/1/19 1:41 PM, Arnaldo Carvalho de Melo wrote:
>>>> The 1a787fc5ba18ac7 commit copied over the changes for arm64, but
>>>> missed all the other architectures changed in c8ce48f06503 and the
>>>> related commits.
>>> Right, I have a patch copying the missing headers, and that fixed the
>>> build with the glibc-based toolchain, but then broke the uCLibc one :-\
>  
>> tools/perf/util/cloexec.c  #includes <sys/syscall.h> which for glibc includes
>> asm/unistd.h
>  
>> uClibc <sys/syscall.h> OTOH #include <bits/sysnum.h> containign#define __NR_*
>> (generated by parsing kernel's unistd). This header does the right thing by
>> chekcing for redefs, but in the end we still collide with newly added
>> tools/arc/arc/*/**/unistd.h which doesn't have conditional definitions. I'm sure
>> this is not an ARC problem, any uClibc build would be affected. Do you have a arm
>> uclibc toolchain to test ?
> This solves it for fedora:29,
> arc_gnu_2017.09-rc2_prebuilt_uclibc_le_arc700_linux_install,
> arc_gnu_2019.03-rc1_prebuilt_uclibc_le_archs_linux_install and
> arc_gnu_2019.03-rc1_prebuilt_glibc_le_archs_linux_install.
>
> Also ok with:
>
>   make -C tools/perf build-test
>
> Now build testing with the full set of containers.
>
> - Arnaldo
>
> commit 1931594a680dba28e98b526192dd065430c850c0
> Author: Arnaldo Carvalho de Melo <acme@redhat.com>
> Date:   Thu May 2 09:26:23 2019 -0400
>
>     perf tools: Remove needless asm/unistd.h include fixing build in some places
>     
>     We were including sys/syscall.h and asm/unistd.h, since sys/syscall.h
>     includes asm/unistd.h, sometimes this leads to the redefinition of
>     defines, breaking the build.
>     
>     Noticed on ARC with uCLibc.

Thx for this Arnaldo.

While this takes care of immediate issues, for the long term, are you open to idea
of removing the header duplicity.
We could use a "less evil" idiom of copying only the minimal bits (since the sync
onus remains one way or the other)
e.g. I spotted below in bpf code and also seen in other ah-hoc multi arch projects

#ifdef __NR_xx
# if defined (__arch_y__)

# elif defined (__arch_z__)

# endif
#endif



_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
