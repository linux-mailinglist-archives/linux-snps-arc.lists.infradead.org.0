Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06441FA108
	for <lists+linux-snps-arc@lfdr.de>; Mon, 15 Jun 2020 22:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fufVhSzlCEIpnrmp6iaSFo44H7kd/i/pvwGCxt00O+k=; b=FRSVfiFyC1Olvz
	8XvbuxF53A30eI7pLLLmE8HpMI0ffxiMqgcmfdZVTY3ZnjViNTEMcjiiosOMcTs/CW46FgdO+5fne
	VYJavTIm/JbMfOFxY7OdU4/HLllXPMZQNbcoayMffS46EWtu8pkthvOCmg5FaXyt/fcqLX/w/rGxY
	7XE/jsNH9r/hQg0gjW/kBpHnVcRUR9QMZXpzJZDKeVN+TFBdJCn+REk3DLTdeKIGHS5EUNfIg2FoV
	CcN9XdPfH2W92ncBxQB8iWwQUZKIwUovjWKGGOGPplCq6vjNcg/dAA+sU0AmpRsIkktcuhYMdRigZ
	a2baoyWPmd69Pbf632Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvVR-0003e5-BB; Mon, 15 Jun 2020 20:14:57 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvVK-0003WU-9r
 for linux-snps-arc@lists.infradead.org; Mon, 15 Jun 2020 20:14:55 +0000
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com
 [10.205.2.133])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1A07A400FC;
 Mon, 15 Jun 2020 20:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1592252086; bh=79e8wHBvCEF4KXqiH9aQ7IbErmlmguGowymmoIiiaVA=;
 h=From:To:Cc:Subject:Date:From;
 b=abqRLA+Cm1TwJL47xAaSyiJqx/dwJJrh6DHteLEoQ5mIb8Z8jsRipjEym1JFC57fw
 0xbkj12pZRDbtbrUZM+hlybVzKBFr5CNrQVW0VhNLW7RTVCXe6RZt1/FbqnpUC4P9I
 nuZZA5C4tmVlzsvrzrmYw06v90aFAnwbCZPNrIKNpEv4dR0eIAR6yQQWpgNINUWmP9
 REJpADOtktSPbUK0KK8vV7xBvRwiRa2nrwPcDw6wUuVEEJSOD50g3//8Sb8jrq/Zf9
 sfPVPaVnXroXWKJ1oZqS0o8BZYBEC3cQWrpwHYfcnpuWa96T89wI2indNRICo+pUws
 k2HgIIxdUW+Kg==
Received: from vineetg-Latitude-7400.internal.synopsys.com (unknown
 [10.13.183.89])
 by mailhost.synopsys.com (Postfix) with ESMTP id 98555A00A0;
 Mon, 15 Jun 2020 20:14:43 +0000 (UTC)
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v7 00/13] glibc port to ARC processors
Date: Mon, 15 Jun 2020 13:14:28 -0700
Message-Id: <20200615201441.31820-1-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_131450_359933_E278356D 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

This patchset implements glibc port to ARC HS48x processor from Synopsys.

git@github.com:foss-for-synopsys-dwc-arc-processors/glibc.git  upstream-v7

v7:
   * Addresses review comments from Adhemerval Zanella and Florian
     Weimer (many thx to you both)
   * Dropped ARC specific semaphore.h (following upstream 1270fbaaeebe)
   * ARC specific dl-runtime.h (following upstream 8dbb7a08ec52)
   * ARC specific math-use-builtins.h and dropped ARC specific sqrt/fma
     routines (math-use-builtins.h will be disintegrated once done upstream)
   * setjmp/longjmp to save GP, no need to save r25 (thread pointer)
   * makecontext/startcontext use r14/r15 (vs. r13/r14)
   * flatten out register file in mcontext_t (remove scratch/callee)
   * Use of 'C' comments in asm code, LDR/STR macros
   * Use of L (..) in asm code
   * Dropped asm global register r25 specification for thread pointer
     and rely on __builtin_thread_pointer
   * NEWS update rewording
   * Sweeping update of Copyright year 2020
v6:
   * Dropped 11/14: merged upstream
   * _FPU_SETS() inline asm reworked
   * Introduce fixup-asm-unistd.h to elide 32-bit time, offset syscalls and
     regenerate arch-syscall.h
   * Fix snafu in updating build-many-glibcs for ARC
   * More code sytle fixes flagged by Joseph
v5:
   * Big Endian formally supported as multi-ABI
   * Removed code for ARC700 processors
   * Hard-float code updates: fegetmode, fesetround, feupdateenv
   * socket-constant.h update for 64-bit ABI spun off as standalone patch
   * __syscall_error made glibc_private
   * math ulps regen
   * gmp-mparam.h removed
   * lint fixes as flagged by Joseph
v4:
   * Dropped 1/17: Merged upstream
   * Dropped 17/17:
       - 64-bit time/offset code chunked up into respective patches
   * sysctl removed
   * Updated README for arc gnu triplet
   * Updated install files for ARC gcc/binutils requirements
   * Updated NEWS with brief ISA/ABI info

v3:
   * Support for Hardware Floating Point
   * 64-bit time and offsets ABI (although all such changes are confined
     to a single patch)

v5: https://sourceware.org/pipermail/libc-alpha/2020-April/112657.html
v4: https://sourceware.org/pipermail/libc-alpha/2020-March/111855.html
v3: https://sourceware.org/legacy-ml/libc-alpha/2020-03/msg00167.html
v2: https://sourceware.org/legacy-ml/libc-alpha/2019-01/msg00681.html
v1: https://sourceware.org/legacy-ml/libc-alpha/2018-12/msg00678.html

Documentation:
--------------

(a) ABI doc:
https://github.com/foss-for-synopsys-dwc-arc-processors/toolchain/wiki/files/ARCv2_ABI.pdf

(b) Programmer's Reference Manual (PRM) : needs a download request to be filled
https://www.synopsys.com/dw/ipdir.php?ds=arc-hs44-hs46-hs48
https://www.synopsys.com/dw/doc.php/ds/cc/programmers-reference-manual-ARC-HS.pdf

Test Results:
--------------
(a) build-many-glibcs.py

| Summary of test results:
|   1251 PASS
|     15 XFAIL


(b) Full testsuite ran in a cross compile setup using buildroot on HSDK development
    platform. Bulk of failures come from cross testing setup and I
    intend to improve things with native testing going forward.

| Summary of test results:
|     30 FAIL   (-3)
|
| FAIL: csu/test-as-const-tcb-offsets
+ FAIL: elf/tst-audit14
+ FAIL: elf/tst-audit15
+ FAIL: elf/tst-audit16
| FAIL: elf/tst-ldconfig-ld_so_conf-update # not true: dlopen
| FAIL: iconv/test-iconvconfig		# Needs gconv installed
- FAIL: iconv/tst-gconv-init-failure
| FAIL: io/ftwtest			# Requires execution by non-root
- FAIL: io/tst-futimesat
| FAIL: io/tst-lockf
| FAIL: libio/tst-wfile-sync
| FAIL: locale/tst-C-locale
| FAIL: locale/tst-duplocale
| FAIL: locale/tst-locale-locpath
| FAIL: locale/tst-locname
| FAIL: localedata/sort-test
| FAIL: nptl/test-cond-printers		# needs Python3 and target GDB on target
| FAIL: nptl/test-condattr-printers	#    ditto
| FAIL: nptl/test-mutex-printers	#    ditto
| FAIL: nptl/test-mutexattr-printers	#    ditto
| FAIL: nptl/test-rwlock-printers	#    ditto
| FAIL: nptl/test-rwlockattr-printers	#    ditto
| FAIL: nptl/tst-umask1			# passes if run natively on target (NFS ACLv3 support needed)
| FAIL: nss/bug-erange
| FAIL: nss/tst-nss-files-hosts-getent	# Timed out
| FAIL: nss/tst-nss-files-hosts-multi	# Timed out
| FAIL: posix/bug-ga2			# DNS issue: google DNS vs. SNPS
| FAIL: posix/globtest			# require same user on target and host
| FAIL: posix/tst-getaddrinfo5		# passes outside corporate network
- FAIL: resolv/tst-resolv-basic
- FAIL: resolv/tst-resolv-edns
- FAIL: resolv/tst-resolv-rotate
- FAIL: resolv/tst-resolv-search
| FAIL: stdio-common/bug22		# Needs more RAM: 2 GB memory
| FAIL: sunrpc/bug20790			# missing cpp on target
| FAIL: timezone/tst-tzset		# passes outside corporate network


kindly review.

Thx,
-Vineet

Vineet Gupta (13):
  ARC: ABI Implementation
  ARC: startup and dynamic linking code
  ARC: Thread Local Storage support
  ARC: Atomics and Locking primitives
  ARC: math soft float support
  ARC: hardware floating point support
  ARC: Linux Syscall Interface
  ARC: Linux ABI
  ARC: Linux Startup and Dynamic Loading
  ARC: ABI lists
  ARC: Build Infrastructure
  build-many-glibcs.py: Enable ARC builds
  Documentation for ARC port

 NEWS                                          |   11 +
 README                                        |    1 +
 config.h.in                                   |    3 +
 manual/install.texi                           |    4 +
 scripts/build-many-glibcs.py                  |   10 +
 sysdeps/arc/Implies                           |    3 +
 sysdeps/arc/Makefile                          |   21 +
 sysdeps/arc/Versions                          |    8 +
 sysdeps/arc/__longjmp.S                       |   49 +
 sysdeps/arc/abort-instr.h                     |    2 +
 sysdeps/arc/atomic-machine.h                  |   69 +
 sysdeps/arc/bits/endianness.h                 |   15 +
 sysdeps/arc/bits/fenv.h                       |   78 +
 sysdeps/arc/bits/link.h                       |   52 +
 sysdeps/arc/bits/setjmp.h                     |   26 +
 sysdeps/arc/bsd-_setjmp.S                     |    1 +
 sysdeps/arc/bsd-setjmp.S                      |    1 +
 sysdeps/arc/configure                         |  182 ++
 sysdeps/arc/configure.ac                      |   26 +
 sysdeps/arc/dl-machine.h                      |  341 +++
 sysdeps/arc/dl-runtime.h                      |   42 +
 sysdeps/arc/dl-sysdep.h                       |   25 +
 sysdeps/arc/dl-tls.h                          |   30 +
 sysdeps/arc/dl-trampoline.S                   |   72 +
 sysdeps/arc/entry.h                           |    5 +
 sysdeps/arc/fpu/fclrexcpt.c                   |   36 +
 sysdeps/arc/fpu/fegetenv.c                    |   37 +
 sysdeps/arc/fpu/fegetmode.c                   |   31 +
 sysdeps/arc/fpu/fegetround.c                  |   32 +
 sysdeps/arc/fpu/feholdexcpt.c                 |   43 +
 sysdeps/arc/fpu/fesetenv.c                    |   48 +
 sysdeps/arc/fpu/fesetexcept.c                 |   32 +
 sysdeps/arc/fpu/fesetmode.c                   |   40 +
 sysdeps/arc/fpu/fesetround.c                  |   40 +
 sysdeps/arc/fpu/feupdateenv.c                 |   51 +
 sysdeps/arc/fpu/fgetexcptflg.c                |   31 +
 sysdeps/arc/fpu/fraiseexcpt.c                 |   39 +
 sysdeps/arc/fpu/fsetexcptflg.c                |   38 +
 sysdeps/arc/fpu/ftestexcept.c                 |   33 +
 sysdeps/arc/fpu/libm-test-ulps                | 1140 +++++++++
 sysdeps/arc/fpu/libm-test-ulps-name           |    1 +
 sysdeps/arc/fpu/math-use-builtins.h           |   70 +
 sysdeps/arc/fpu_control.h                     |  106 +
 sysdeps/arc/gccframe.h                        |   21 +
 sysdeps/arc/get-rounding-mode.h               |   38 +
 sysdeps/arc/jmpbuf-offsets.h                  |   22 +
 sysdeps/arc/jmpbuf-unwind.h                   |   47 +
 sysdeps/arc/ldsodefs.h                        |   43 +
 sysdeps/arc/libc-tls.c                        |   27 +
 sysdeps/arc/machine-gmon.h                    |   35 +
 sysdeps/arc/math-tests-trap.h                 |   27 +
 sysdeps/arc/memusage.h                        |   23 +
 sysdeps/arc/nofpu/Implies                     |    1 +
 sysdeps/arc/nofpu/libm-test-ulps              |  270 +++
 sysdeps/arc/nofpu/libm-test-ulps-name         |    1 +
 sysdeps/arc/nofpu/math-tests-exceptions.h     |   27 +
 sysdeps/arc/nofpu/math-tests-rounding.h       |   27 +
 sysdeps/arc/nptl/Makefile                     |   22 +
 sysdeps/arc/nptl/pthreaddef.h                 |   32 +
 sysdeps/arc/nptl/tcb-offsets.sym              |   11 +
 sysdeps/arc/nptl/tls.h                        |  148 ++
 sysdeps/arc/preconfigure                      |   14 +
 sysdeps/arc/setjmp.S                          |   66 +
 sysdeps/arc/sfp-machine.h                     |   70 +
 sysdeps/arc/sotruss-lib.c                     |   50 +
 sysdeps/arc/stackinfo.h                       |   33 +
 sysdeps/arc/start.S                           |   74 +
 sysdeps/arc/sysdep.h                          |   53 +
 sysdeps/arc/tininess.h                        |    1 +
 sysdeps/arc/tls-macros.h                      |   47 +
 sysdeps/arc/tst-audit.h                       |   23 +
 sysdeps/unix/sysv/linux/arc/Implies           |    3 +
 sysdeps/unix/sysv/linux/arc/Makefile          |   29 +
 sysdeps/unix/sysv/linux/arc/Versions          |   16 +
 sysdeps/unix/sysv/linux/arc/arch-syscall.h    |  303 +++
 sysdeps/unix/sysv/linux/arc/bits/procfs.h     |   35 +
 sysdeps/unix/sysv/linux/arc/bits/timesize.h   |   21 +
 .../sysv/linux/arc/bits/types/__sigset_t.h    |   12 +
 sysdeps/unix/sysv/linux/arc/c++-types.data    |   67 +
 sysdeps/unix/sysv/linux/arc/clone.S           |   93 +
 sysdeps/unix/sysv/linux/arc/configure         |    4 +
 sysdeps/unix/sysv/linux/arc/configure.ac      |    4 +
 sysdeps/unix/sysv/linux/arc/dl-static.c       |   84 +
 .../unix/sysv/linux/arc/fixup-asm-unistd.h    |   41 +
 sysdeps/unix/sysv/linux/arc/getcontext.S      |   64 +
 sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h  |    6 +
 sysdeps/unix/sysv/linux/arc/kernel-features.h |   27 +
 sysdeps/unix/sysv/linux/arc/kernel_stat.h     |   26 +
 sysdeps/unix/sysv/linux/arc/ld.abilist        |    5 +
 sysdeps/unix/sysv/linux/arc/ldconfig.h        |   27 +
 sysdeps/unix/sysv/linux/arc/ldsodefs.h        |   32 +
 .../sysv/linux/arc/libBrokenLocale.abilist    |    1 +
 sysdeps/unix/sysv/linux/arc/libanl.abilist    |    4 +
 sysdeps/unix/sysv/linux/arc/libc.abilist      | 2084 +++++++++++++++++
 sysdeps/unix/sysv/linux/arc/libcrypt.abilist  |    2 +
 sysdeps/unix/sysv/linux/arc/libdl.abilist     |    9 +
 sysdeps/unix/sysv/linux/arc/libm.abilist      |  699 ++++++
 .../unix/sysv/linux/arc/libpthread.abilist    |  213 ++
 sysdeps/unix/sysv/linux/arc/libresolv.abilist |   79 +
 sysdeps/unix/sysv/linux/arc/librt.abilist     |   35 +
 .../unix/sysv/linux/arc/libthread_db.abilist  |   40 +
 sysdeps/unix/sysv/linux/arc/libutil.abilist   |    6 +
 sysdeps/unix/sysv/linux/arc/localplt.data     |   12 +
 sysdeps/unix/sysv/linux/arc/makecontext.c     |   73 +
 sysdeps/unix/sysv/linux/arc/mmap_internal.h   |   27 +
 sysdeps/unix/sysv/linux/arc/setcontext.S      |   93 +
 sysdeps/unix/sysv/linux/arc/shlib-versions    |    7 +
 sysdeps/unix/sysv/linux/arc/sigaction.c       |   31 +
 sysdeps/unix/sysv/linux/arc/sigcontextinfo.h  |   28 +
 sysdeps/unix/sysv/linux/arc/sigrestorer.S     |   29 +
 sysdeps/unix/sysv/linux/arc/swapcontext.S     |   94 +
 sysdeps/unix/sysv/linux/arc/sys/cachectl.h    |   35 +
 sysdeps/unix/sysv/linux/arc/sys/ucontext.h    |   57 +
 sysdeps/unix/sysv/linux/arc/sys/user.h        |   31 +
 sysdeps/unix/sysv/linux/arc/syscall.S         |   33 +
 sysdeps/unix/sysv/linux/arc/syscalls.list     |    3 +
 sysdeps/unix/sysv/linux/arc/sysdep.c          |   33 +
 sysdeps/unix/sysv/linux/arc/sysdep.h          |  224 ++
 sysdeps/unix/sysv/linux/arc/ucontext-macros.h |   25 +
 sysdeps/unix/sysv/linux/arc/ucontext_i.sym    |   20 +
 sysdeps/unix/sysv/linux/arc/vfork.S           |   42 +
 121 files changed, 9146 insertions(+)
 create mode 100644 sysdeps/arc/Implies
 create mode 100644 sysdeps/arc/Makefile
 create mode 100644 sysdeps/arc/Versions
 create mode 100644 sysdeps/arc/__longjmp.S
 create mode 100644 sysdeps/arc/abort-instr.h
 create mode 100644 sysdeps/arc/atomic-machine.h
 create mode 100644 sysdeps/arc/bits/endianness.h
 create mode 100644 sysdeps/arc/bits/fenv.h
 create mode 100644 sysdeps/arc/bits/link.h
 create mode 100644 sysdeps/arc/bits/setjmp.h
 create mode 100644 sysdeps/arc/bsd-_setjmp.S
 create mode 100644 sysdeps/arc/bsd-setjmp.S
 create mode 100644 sysdeps/arc/configure
 create mode 100644 sysdeps/arc/configure.ac
 create mode 100644 sysdeps/arc/dl-machine.h
 create mode 100644 sysdeps/arc/dl-runtime.h
 create mode 100644 sysdeps/arc/dl-sysdep.h
 create mode 100644 sysdeps/arc/dl-tls.h
 create mode 100644 sysdeps/arc/dl-trampoline.S
 create mode 100644 sysdeps/arc/entry.h
 create mode 100644 sysdeps/arc/fpu/fclrexcpt.c
 create mode 100644 sysdeps/arc/fpu/fegetenv.c
 create mode 100644 sysdeps/arc/fpu/fegetmode.c
 create mode 100644 sysdeps/arc/fpu/fegetround.c
 create mode 100644 sysdeps/arc/fpu/feholdexcpt.c
 create mode 100644 sysdeps/arc/fpu/fesetenv.c
 create mode 100644 sysdeps/arc/fpu/fesetexcept.c
 create mode 100644 sysdeps/arc/fpu/fesetmode.c
 create mode 100644 sysdeps/arc/fpu/fesetround.c
 create mode 100644 sysdeps/arc/fpu/feupdateenv.c
 create mode 100644 sysdeps/arc/fpu/fgetexcptflg.c
 create mode 100644 sysdeps/arc/fpu/fraiseexcpt.c
 create mode 100644 sysdeps/arc/fpu/fsetexcptflg.c
 create mode 100644 sysdeps/arc/fpu/ftestexcept.c
 create mode 100644 sysdeps/arc/fpu/libm-test-ulps
 create mode 100644 sysdeps/arc/fpu/libm-test-ulps-name
 create mode 100644 sysdeps/arc/fpu/math-use-builtins.h
 create mode 100644 sysdeps/arc/fpu_control.h
 create mode 100644 sysdeps/arc/gccframe.h
 create mode 100644 sysdeps/arc/get-rounding-mode.h
 create mode 100644 sysdeps/arc/jmpbuf-offsets.h
 create mode 100644 sysdeps/arc/jmpbuf-unwind.h
 create mode 100644 sysdeps/arc/ldsodefs.h
 create mode 100644 sysdeps/arc/libc-tls.c
 create mode 100644 sysdeps/arc/machine-gmon.h
 create mode 100644 sysdeps/arc/math-tests-trap.h
 create mode 100644 sysdeps/arc/memusage.h
 create mode 100644 sysdeps/arc/nofpu/Implies
 create mode 100644 sysdeps/arc/nofpu/libm-test-ulps
 create mode 100644 sysdeps/arc/nofpu/libm-test-ulps-name
 create mode 100644 sysdeps/arc/nofpu/math-tests-exceptions.h
 create mode 100644 sysdeps/arc/nofpu/math-tests-rounding.h
 create mode 100644 sysdeps/arc/nptl/Makefile
 create mode 100644 sysdeps/arc/nptl/pthreaddef.h
 create mode 100644 sysdeps/arc/nptl/tcb-offsets.sym
 create mode 100644 sysdeps/arc/nptl/tls.h
 create mode 100644 sysdeps/arc/preconfigure
 create mode 100644 sysdeps/arc/setjmp.S
 create mode 100644 sysdeps/arc/sfp-machine.h
 create mode 100644 sysdeps/arc/sotruss-lib.c
 create mode 100644 sysdeps/arc/stackinfo.h
 create mode 100644 sysdeps/arc/start.S
 create mode 100644 sysdeps/arc/sysdep.h
 create mode 100644 sysdeps/arc/tininess.h
 create mode 100644 sysdeps/arc/tls-macros.h
 create mode 100644 sysdeps/arc/tst-audit.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/Implies
 create mode 100644 sysdeps/unix/sysv/linux/arc/Makefile
 create mode 100644 sysdeps/unix/sysv/linux/arc/Versions
 create mode 100644 sysdeps/unix/sysv/linux/arc/arch-syscall.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/procfs.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/timesize.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/types/__sigset_t.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/c++-types.data
 create mode 100644 sysdeps/unix/sysv/linux/arc/clone.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/configure
 create mode 100644 sysdeps/unix/sysv/linux/arc/configure.ac
 create mode 100644 sysdeps/unix/sysv/linux/arc/dl-static.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/fixup-asm-unistd.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/getcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/kernel-features.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/kernel_stat.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ld.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/ldconfig.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ldsodefs.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/libBrokenLocale.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libanl.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libc.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libcrypt.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libdl.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libm.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libpthread.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libresolv.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/librt.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libthread_db.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/libutil.abilist
 create mode 100644 sysdeps/unix/sysv/linux/arc/localplt.data
 create mode 100644 sysdeps/unix/sysv/linux/arc/makecontext.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/mmap_internal.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/setcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/shlib-versions
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigaction.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigcontextinfo.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigrestorer.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/swapcontext.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/cachectl.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/ucontext.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/sys/user.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/syscall.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/syscalls.list
 create mode 100644 sysdeps/unix/sysv/linux/arc/sysdep.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/sysdep.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ucontext-macros.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/ucontext_i.sym
 create mode 100644 sysdeps/unix/sysv/linux/arc/vfork.S

-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
