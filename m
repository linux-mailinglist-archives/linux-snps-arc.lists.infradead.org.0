Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2711217C562
	for <lists+linux-snps-arc@lfdr.de>; Fri,  6 Mar 2020 19:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHwnQVnmY3Ummjw2JSz7EPbZqubs9MNYiUL5HHUOLmg=; b=Qb+ri6xq/OBYFG
	kqLl6y6cr1EV/T/X8lH8mDIyjWjdLstQVygbOpT91G3sOHLCh6zmxiuHH4yC2b64tU9in+d50qWV1
	GkrQ/Ymp7EIBetO8S8bjj/NUNrF/8pUWi+vLntjJ3l4PJGXyJPaYHLdk9ICaMhwDxziAKsM26zpa9
	62phmNzGX7QiIzQ0+oQX59vQLblWkiQZtGczRx+/EKJD4Ik/qoJ63BE8KXJPwZYFefp/H3j0Zqzor
	zCSbyada93EJKxoN8hhcBbtvgZ3/DZrO1ZkC7UizhGo/b4HYCWFPDz32csMPv6g+Jz+tVKGvKtgIS
	n9PP/MlbMQGOUR6yUEWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHeS-0001cN-OL; Fri, 06 Mar 2020 18:24:48 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHeD-0001Ss-8t
 for linux-snps-arc@lists.infradead.org; Fri, 06 Mar 2020 18:24:46 +0000
Received: from mailhost.synopsys.com (sv1-mailhost2.synopsys.com
 [10.205.2.132])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 26D8A40363;
 Fri,  6 Mar 2020 18:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583519073; bh=f7RPzLW4iJCwuHSdOMCGN+ubBQVBJUZpJBiRioN/HVA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EVwKVyTM2lJAJWWa3QU2yzVFSYym+L9zPKUecRtUScVYCuBoUbqfHd1Axp/+yN5Ms
 FNQ6PdIweL8kmK55Fze1tWzc1mc/vqpVidpxwOU5GuQ0pCmYBPI9NBrk9f4Jkg9fgs
 EI7oJM52gDkcJwpXK85Me0tk1Hhd+MqxLwF3pULu9WtmYvgOOAxo/7X0lFRzQEAJGV
 0PyOp+5whDMukQr9Nx0N1vLMDYjklNjzysUwce5xPVk6/maiTNTw5lTRs1TGYcq/ry
 k8NLB/jknqsc/WWfnay1mVZWgNWAJxXtv3Ku/eFpMmP5e+COWv1xnBweedGEYGwWVO
 TUcG2lGIbjyxg==
Received: from vineetg-Latitude-E7450.internal.synopsys.com
 (vineetg-latitude-e7450.internal.synopsys.com [10.10.161.28])
 by mailhost.synopsys.com (Postfix) with ESMTP id 05F8FA006F;
 Fri,  6 Mar 2020 18:24:28 +0000 (UTC)
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: libc-alpha@sourceware.org
Subject: [PATCH v3 09/17] ARC: Linux Syscall Interface
Date: Fri,  6 Mar 2020 10:24:11 -0800
Message-Id: <20200306182419.13945-10-vgupta@synopsys.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306182419.13945-1-vgupta@synopsys.com>
References: <20200306182419.13945-1-vgupta@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_102433_356868_D07D9AD3 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Vineet Gupta <vgupta@synopsys.com>
---
 sysdeps/arc/nptl/tls.h                        |  14 +-
 sysdeps/unix/sysv/linux/arc/arch-syscall.h    | 317 ++++++++++++++++++
 .../sysv/linux/arc/bits/socket-constants.h    |  38 +++
 sysdeps/unix/sysv/linux/arc/clone.S           |  98 ++++++
 sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h  |   6 +
 sysdeps/unix/sysv/linux/arc/kernel-features.h |  28 ++
 sysdeps/unix/sysv/linux/arc/mmap_internal.h   |  27 ++
 sysdeps/unix/sysv/linux/arc/pt-vfork.S        |   1 +
 sysdeps/unix/sysv/linux/arc/sigaction.c       |  31 ++
 sysdeps/unix/sysv/linux/arc/sigrestorer.S     |  29 ++
 sysdeps/unix/sysv/linux/arc/syscall.S         |  38 +++
 sysdeps/unix/sysv/linux/arc/syscalls.list     |   3 +
 sysdeps/unix/sysv/linux/arc/sysdep.c          |  33 ++
 sysdeps/unix/sysv/linux/arc/sysdep.h          | 207 ++++++++++++
 sysdeps/unix/sysv/linux/arc/vfork.S           |  42 +++
 15 files changed, 905 insertions(+), 7 deletions(-)
 create mode 100644 sysdeps/unix/sysv/linux/arc/arch-syscall.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/bits/socket-constants.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/clone.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/kernel-features.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/mmap_internal.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/pt-vfork.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigaction.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/sigrestorer.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/syscall.S
 create mode 100644 sysdeps/unix/sysv/linux/arc/syscalls.list
 create mode 100644 sysdeps/unix/sysv/linux/arc/sysdep.c
 create mode 100644 sysdeps/unix/sysv/linux/arc/sysdep.h
 create mode 100644 sysdeps/unix/sysv/linux/arc/vfork.S

diff --git a/sysdeps/arc/nptl/tls.h b/sysdeps/arc/nptl/tls.h
index d6b166c1f92b..10c7117527ff 100644
--- a/sysdeps/arc/nptl/tls.h
+++ b/sysdeps/arc/nptl/tls.h
@@ -77,13 +77,13 @@ register struct pthread *__thread_self __asm__("r25");
   (((tcbhead_t *) (tcbp))->dtv)
 
 /* Code to initially initialize the thread pointer.  */
-# define TLS_INIT_TP(tcbp)			\
-  ({                                            \
-	long result_var;			\
-	__builtin_set_thread_pointer(tcbp);     \
-	result_var = INTERNAL_SYSCALL (arc_settls, err, 1, (tcbp));	\
-	INTERNAL_SYSCALL_ERROR_P (result_var, err)			\
-	? "unknown error" : NULL;		\
+# define TLS_INIT_TP(tcbp)					\
+  ({                                            		\
+	long result_var;					\
+	__builtin_set_thread_pointer(tcbp);     		\
+	result_var = INTERNAL_SYSCALL (arc_settls, 1, (tcbp));	\
+	INTERNAL_SYSCALL_ERROR_P (result_var)			\
+	? "settls syscall error" : NULL;			\
    })
 
 /* Value passed to 'clone' for initialization of the thread register.  */
diff --git a/sysdeps/unix/sysv/linux/arc/arch-syscall.h b/sysdeps/unix/sysv/linux/arc/arch-syscall.h
new file mode 100644
index 000000000000..db25a17ad077
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/arch-syscall.h
@@ -0,0 +1,317 @@
+/* AUTOGENERATED by update-syscall-lists.py.  */
+#define __NR_accept 202
+#define __NR_accept4 242
+#define __NR_acct 89
+#define __NR_add_key 217
+#define __NR_adjtimex 171
+#define __NR_arc_gettls 246
+#define __NR_arc_settls 245
+#define __NR_arc_usr_cmpxchg 248
+#define __NR_bind 200
+#define __NR_bpf 280
+#define __NR_brk 214
+#define __NR_cacheflush 244
+#define __NR_capget 90
+#define __NR_capset 91
+#define __NR_chdir 49
+#define __NR_chroot 51
+#define __NR_clock_adjtime 266
+#define __NR_clock_adjtime64 405
+#define __NR_clock_getres 114
+#define __NR_clock_getres_time64 406
+#define __NR_clock_gettime 113
+#define __NR_clock_gettime64 403
+#define __NR_clock_nanosleep 115
+#define __NR_clock_nanosleep_time64 407
+#define __NR_clock_settime 112
+#define __NR_clock_settime64 404
+#define __NR_clone 220
+#define __NR_clone3 435
+#define __NR_close 57
+#define __NR_connect 203
+#define __NR_copy_file_range 285
+#define __NR_delete_module 106
+#define __NR_dup 23
+#define __NR_dup3 24
+#define __NR_epoll_create1 20
+#define __NR_epoll_ctl 21
+#define __NR_epoll_pwait 22
+#define __NR_eventfd2 19
+#define __NR_execve 221
+#define __NR_execveat 281
+#define __NR_exit 93
+#define __NR_exit_group 94
+#define __NR_faccessat 48
+#define __NR_fadvise64_64 223
+#define __NR_fallocate 47
+#define __NR_fanotify_init 262
+#define __NR_fanotify_mark 263
+#define __NR_fchdir 50
+#define __NR_fchmod 52
+#define __NR_fchmodat 53
+#define __NR_fchown 55
+#define __NR_fchownat 54
+#define __NR_fcntl64 25
+#define __NR_fdatasync 83
+#define __NR_fgetxattr 10
+#define __NR_finit_module 273
+#define __NR_flistxattr 13
+#define __NR_flock 32
+#define __NR_fremovexattr 16
+#define __NR_fsconfig 431
+#define __NR_fsetxattr 7
+#define __NR_fsmount 432
+#define __NR_fsopen 430
+#define __NR_fspick 433
+#define __NR_fstat64 80
+#define __NR_fstatat64 79
+#define __NR_fstatfs64 44
+#define __NR_fsync 82
+#define __NR_ftruncate64 46
+#define __NR_futex 98
+#define __NR_futex_time64 422
+#define __NR_get_mempolicy 236
+#define __NR_get_robust_list 100
+#define __NR_getcpu 168
+#define __NR_getcwd 17
+#define __NR_getdents64 61
+#define __NR_getegid 177
+#define __NR_geteuid 175
+#define __NR_getgid 176
+#define __NR_getgroups 158
+#define __NR_getitimer 102
+#define __NR_getpeername 205
+#define __NR_getpgid 155
+#define __NR_getpid 172
+#define __NR_getppid 173
+#define __NR_getpriority 141
+#define __NR_getrandom 278
+#define __NR_getresgid 150
+#define __NR_getresuid 148
+#define __NR_getrlimit 163
+#define __NR_getrusage 165
+#define __NR_getsid 156
+#define __NR_getsockname 204
+#define __NR_getsockopt 209
+#define __NR_gettid 178
+#define __NR_gettimeofday 169
+#define __NR_getuid 174
+#define __NR_getxattr 8
+#define __NR_init_module 105
+#define __NR_inotify_add_watch 27
+#define __NR_inotify_init1 26
+#define __NR_inotify_rm_watch 28
+#define __NR_io_cancel 3
+#define __NR_io_destroy 1
+#define __NR_io_getevents 4
+#define __NR_io_pgetevents 292
+#define __NR_io_pgetevents_time64 416
+#define __NR_io_setup 0
+#define __NR_io_submit 2
+#define __NR_io_uring_enter 426
+#define __NR_io_uring_register 427
+#define __NR_io_uring_setup 425
+#define __NR_ioctl 29
+#define __NR_ioprio_get 31
+#define __NR_ioprio_set 30
+#define __NR_kcmp 272
+#define __NR_kexec_file_load 294
+#define __NR_kexec_load 104
+#define __NR_keyctl 219
+#define __NR_kill 129
+#define __NR_lgetxattr 9
+#define __NR_linkat 37
+#define __NR_listen 201
+#define __NR_listxattr 11
+#define __NR_llistxattr 12
+#define __NR_llseek 62
+#define __NR_lookup_dcookie 18
+#define __NR_lremovexattr 15
+#define __NR_lsetxattr 6
+#define __NR_madvise 233
+#define __NR_mbind 235
+#define __NR_membarrier 283
+#define __NR_memfd_create 279
+#define __NR_migrate_pages 238
+#define __NR_mincore 232
+#define __NR_mkdirat 34
+#define __NR_mknodat 33
+#define __NR_mlock 228
+#define __NR_mlock2 284
+#define __NR_mlockall 230
+#define __NR_mmap2 222
+#define __NR_mount 40
+#define __NR_move_mount 429
+#define __NR_move_pages 239
+#define __NR_mprotect 226
+#define __NR_mq_getsetattr 185
+#define __NR_mq_notify 184
+#define __NR_mq_open 180
+#define __NR_mq_timedreceive 183
+#define __NR_mq_timedreceive_time64 419
+#define __NR_mq_timedsend 182
+#define __NR_mq_timedsend_time64 418
+#define __NR_mq_unlink 181
+#define __NR_mremap 216
+#define __NR_msgctl 187
+#define __NR_msgget 186
+#define __NR_msgrcv 188
+#define __NR_msgsnd 189
+#define __NR_msync 227
+#define __NR_munlock 229
+#define __NR_munlockall 231
+#define __NR_munmap 215
+#define __NR_name_to_handle_at 264
+#define __NR_nanosleep 101
+#define __NR_nfsservctl 42
+#define __NR_open_by_handle_at 265
+#define __NR_open_tree 428
+#define __NR_openat 56
+#define __NR_perf_event_open 241
+#define __NR_personality 92
+#define __NR_pidfd_open 434
+#define __NR_pidfd_send_signal 424
+#define __NR_pipe2 59
+#define __NR_pivot_root 41
+#define __NR_pkey_alloc 289
+#define __NR_pkey_free 290
+#define __NR_pkey_mprotect 288
+#define __NR_ppoll 73
+#define __NR_ppoll_time64 414
+#define __NR_prctl 167
+#define __NR_pread64 67
+#define __NR_preadv 69
+#define __NR_preadv2 286
+#define __NR_prlimit64 261
+#define __NR_process_vm_readv 270
+#define __NR_process_vm_writev 271
+#define __NR_pselect6 72
+#define __NR_pselect6_time64 413
+#define __NR_ptrace 117
+#define __NR_pwrite64 68
+#define __NR_pwritev 70
+#define __NR_pwritev2 287
+#define __NR_quotactl 60
+#define __NR_read 63
+#define __NR_readahead 213
+#define __NR_readlinkat 78
+#define __NR_readv 65
+#define __NR_reboot 142
+#define __NR_recvfrom 207
+#define __NR_recvmmsg 243
+#define __NR_recvmmsg_time64 417
+#define __NR_recvmsg 212
+#define __NR_remap_file_pages 234
+#define __NR_removexattr 14
+#define __NR_renameat 38
+#define __NR_renameat2 276
+#define __NR_request_key 218
+#define __NR_restart_syscall 128
+#define __NR_rseq 293
+#define __NR_rt_sigaction 134
+#define __NR_rt_sigpending 136
+#define __NR_rt_sigprocmask 135
+#define __NR_rt_sigqueueinfo 138
+#define __NR_rt_sigreturn 139
+#define __NR_rt_sigsuspend 133
+#define __NR_rt_sigtimedwait 137
+#define __NR_rt_sigtimedwait_time64 421
+#define __NR_rt_tgsigqueueinfo 240
+#define __NR_sched_get_priority_max 125
+#define __NR_sched_get_priority_min 126
+#define __NR_sched_getaffinity 123
+#define __NR_sched_getattr 275
+#define __NR_sched_getparam 121
+#define __NR_sched_getscheduler 120
+#define __NR_sched_rr_get_interval 127
+#define __NR_sched_rr_get_interval_time64 423
+#define __NR_sched_setaffinity 122
+#define __NR_sched_setattr 274
+#define __NR_sched_setparam 118
+#define __NR_sched_setscheduler 119
+#define __NR_sched_yield 124
+#define __NR_seccomp 277
+#define __NR_semctl 191
+#define __NR_semget 190
+#define __NR_semop 193
+#define __NR_semtimedop 192
+#define __NR_semtimedop_time64 420
+#define __NR_sendfile64 71
+#define __NR_sendmmsg 269
+#define __NR_sendmsg 211
+#define __NR_sendto 206
+#define __NR_set_mempolicy 237
+#define __NR_set_robust_list 99
+#define __NR_set_tid_address 96
+#define __NR_setdomainname 162
+#define __NR_setfsgid 152
+#define __NR_setfsuid 151
+#define __NR_setgid 144
+#define __NR_setgroups 159
+#define __NR_sethostname 161
+#define __NR_setitimer 103
+#define __NR_setns 268
+#define __NR_setpgid 154
+#define __NR_setpriority 140
+#define __NR_setregid 143
+#define __NR_setresgid 149
+#define __NR_setresuid 147
+#define __NR_setreuid 145
+#define __NR_setrlimit 164
+#define __NR_setsid 157
+#define __NR_setsockopt 208
+#define __NR_settimeofday 170
+#define __NR_setuid 146
+#define __NR_setxattr 5
+#define __NR_shmat 196
+#define __NR_shmctl 195
+#define __NR_shmdt 197
+#define __NR_shmget 194
+#define __NR_shutdown 210
+#define __NR_sigaltstack 132
+#define __NR_signalfd4 74
+#define __NR_socket 198
+#define __NR_socketpair 199
+#define __NR_splice 76
+#define __NR_statfs64 43
+#define __NR_statx 291
+#define __NR_swapoff 225
+#define __NR_swapon 224
+#define __NR_symlinkat 36
+#define __NR_sync 81
+#define __NR_sync_file_range 84
+#define __NR_syncfs 267
+#define __NR_sysfs 247
+#define __NR_sysinfo 179
+#define __NR_syslog 116
+#define __NR_tee 77
+#define __NR_tgkill 131
+#define __NR_timer_create 107
+#define __NR_timer_delete 111
+#define __NR_timer_getoverrun 109
+#define __NR_timer_gettime 108
+#define __NR_timer_gettime64 408
+#define __NR_timer_settime 110
+#define __NR_timer_settime64 409
+#define __NR_timerfd_create 85
+#define __NR_timerfd_gettime 87
+#define __NR_timerfd_gettime64 410
+#define __NR_timerfd_settime 86
+#define __NR_timerfd_settime64 411
+#define __NR_times 153
+#define __NR_tkill 130
+#define __NR_truncate64 45
+#define __NR_umask 166
+#define __NR_umount2 39
+#define __NR_uname 160
+#define __NR_unlinkat 35
+#define __NR_unshare 97
+#define __NR_userfaultfd 282
+#define __NR_utimensat 88
+#define __NR_utimensat_time64 412
+#define __NR_vhangup 58
+#define __NR_vmsplice 75
+#define __NR_wait4 260
+#define __NR_waitid 95
+#define __NR_write 64
+#define __NR_writev 66
diff --git a/sysdeps/unix/sysv/linux/arc/bits/socket-constants.h b/sysdeps/unix/sysv/linux/arc/bits/socket-constants.h
new file mode 100644
index 000000000000..053b5cee399a
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/bits/socket-constants.h
@@ -0,0 +1,38 @@
+/* Socket constants which vary among Linux architectures.  Version for ARC.
+   Copyright (C) 2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef _SYS_SOCKET_H
+# error "Never include <bits/socket-constants.h> directly; use <sys/socket.h> instead."
+#endif
+
+#define SOL_SOCKET 1
+#define SO_ACCEPTCONN 30
+#define SO_BROADCAST 6
+#define SO_DONTROUTE 5
+#define SO_ERROR 4
+#define SO_KEEPALIVE 9
+#define SO_LINGER 13
+#define SO_OOBINLINE 10
+#define SO_RCVBUF 8
+#define SO_RCVLOWAT 18
+#define SO_RCVTIMEO 20
+#define SO_REUSEADDR 2
+#define SO_SNDBUF 7
+#define SO_SNDLOWAT 19
+# define SO_SNDTIMEO 21
+#define SO_TYPE 3
diff --git a/sysdeps/unix/sysv/linux/arc/clone.S b/sysdeps/unix/sysv/linux/arc/clone.S
new file mode 100644
index 000000000000..c5ba38541163
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/clone.S
@@ -0,0 +1,98 @@
+/* clone() implementation for ARC.
+   Copyright (C) 2008-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+   Contributed by Andrew Jenner <andrew@codesourcery.com>, 2008.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+
+#include <sysdep.h>
+#define _ERRNO_H	1
+#include <bits/errno.h>
+#include <tcb-offsets.h>
+
+#define CLONE_SETTLS		0x00080000
+
+/* int clone(int (*fn)(void *), void *child_stack,
+           int flags, void *arg, ...
+           < pid_t *ptid, struct user_desc *tls, pid_t *ctid > );
+
+ NOTE: I'm assuming that the last 3 args are NOT var-args and in case all
+	3 are not relevant, caller will nevertheless pass those as NULL.
+
+ clone syscall in kernel (ABI: CONFIG_CLONE_BACKWARDS)
+
+  int sys_clone(unsigned long int clone_flags,
+	        unsigned long int newsp,
+		int __user *parent_tidptr,
+		void *tls,
+		int __user *child_tidptr).  */
+
+ENTRY (__clone)
+	cmp	r0, 0		; @fn can't be NULL
+	cmp.ne	r1, 0		; @child_stack can't be NULL
+	bz	.L__sys_err
+
+	; save some of the orig args
+	; r0 containg @fn will be clobbered AFTER syscall (with ret val)
+	; rest are clobbered BEFORE syscall due to different arg ordering
+	mov	r10, r0		; @fn
+	mov	r11, r3		; @args
+	mov	r12, r2		; @clone_flags
+	mov	r9,  r5		; @tls
+
+	; adjust libc args for syscall
+
+	mov 	r0, r2		; libc @flags is 1st syscall arg
+	mov	r2, r4		; libc @ptid
+	mov	r3, r5		; libc @tls
+	mov	r4, r6		; libc @ctid
+	mov	r8, __NR_clone
+	ARC_TRAP_INSN
+
+	cmp	r0, 0		; return code : 0 new process, !0 parent
+	blt	.L__sys_err2	; < 0 (signed) error
+	jnz	[blink]		; Parent returns
+
+	; ----- child starts here ---------
+
+	; Setup TP register (only recent kernels v4.19+ do that)
+	and.f	0, r12, CLONE_SETTLS
+	mov.nz	r25, r9
+
+	; child jumps off to @fn with @arg as argument, and returns here
+	jl.d	[r10]
+	mov	r0, r11
+
+	; exit() with result from @fn (already in r0)
+	mov	r8, __NR_exit
+	ARC_TRAP_INSN
+	; In case it ever came back
+	flag	1
+
+.L__sys_err:
+	mov	r0, -EINVAL
+.L__sys_err2:
+	; (1) No need to make -ve kernel error code as positive errno
+	;   __syscall_error expects the -ve error code returned by kernel
+	; (2) r0 still had orig -ve kernel error code
+	; (3) Tail call to __syscall_error so we dont have to come back
+	;     here hence instead of jmp-n-link (reg push/pop) we do jmp
+	; (4) No need to route __syscall_error via PLT, B is inherently
+	;     position independent
+	b   __syscall_error
+PSEUDO_END (__clone)
+libc_hidden_def (__clone)
+weak_alias (__clone, clone)
diff --git a/sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h b/sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h
new file mode 100644
index 000000000000..6c129398483a
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/jmp_buf-macros.h
@@ -0,0 +1,6 @@
+#define JMP_BUF_SIZE		(32 + 1 + 64/(8 * sizeof (unsigned long int))) * sizeof (unsigned long int)
+#define SIGJMP_BUF_SIZE		(32 + 1 + 64/(8 * sizeof (unsigned long int))) * sizeof (unsigned long int)
+#define JMP_BUF_ALIGN		__alignof__ (unsigned long int)
+#define SIGJMP_BUF_ALIGN	__alignof__ (unsigned long int)
+#define MASK_WAS_SAVED_OFFSET	(32 * sizeof (unsigned long int))
+#define SAVED_MASK_OFFSET	(33 * sizeof (unsigned long int))
diff --git a/sysdeps/unix/sysv/linux/arc/kernel-features.h b/sysdeps/unix/sysv/linux/arc/kernel-features.h
new file mode 100644
index 000000000000..c038764e62a4
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/kernel-features.h
@@ -0,0 +1,28 @@
+/* Set flags signalling availability of kernel features based on given
+   kernel version number.
+
+   Copyright (C) 2009-2020 Free Software Foundation, Inc.
+
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+/* The minimum supported kernel version for ARC is 3.9,
+   guaranteeing many kernel features.  */
+
+#include_next <kernel-features.h>
+
+#undef __ASSUME_CLONE_DEFAULT
+#define __ASSUME_CLONE_BACKWARDS 1
diff --git a/sysdeps/unix/sysv/linux/arc/mmap_internal.h b/sysdeps/unix/sysv/linux/arc/mmap_internal.h
new file mode 100644
index 000000000000..19aa078dd45e
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/mmap_internal.h
@@ -0,0 +1,27 @@
+/* mmap - map files or devices into memory.  Linux/ARC version.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef MMAP_ARC_INTERNAL_H
+#define MMAP_ARC_INTERNAL_H
+
+/* 8K is default but determine the shift dynamically with getpagesize.  */
+#define MMAP2_PAGE_UNIT -1
+
+#include_next <mmap_internal.h>
+
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/pt-vfork.S b/sysdeps/unix/sysv/linux/arc/pt-vfork.S
new file mode 100644
index 000000000000..1cc893170070
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/pt-vfork.S
@@ -0,0 +1 @@
+/* Not needed.  */
diff --git a/sysdeps/unix/sysv/linux/arc/sigaction.c b/sysdeps/unix/sysv/linux/arc/sigaction.c
new file mode 100644
index 000000000000..2613eb883fb1
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sigaction.c
@@ -0,0 +1,31 @@
+/* ARC specific sigaction.
+   Copyright (C) 1997-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library.  If not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#define SA_RESTORER	0x04000000
+
+extern void __default_rt_sa_restorer (void);
+
+#define SET_SA_RESTORER(kact, act)				\
+ ({								\
+   (kact)->sa_restorer = __default_rt_sa_restorer;		\
+   (kact)->sa_flags |= SA_RESTORER;				\
+ })
+
+#define RESET_SA_RESTORER(act, kact)
+
+#include <sysdeps/unix/sysv/linux/sigaction.c>
diff --git a/sysdeps/unix/sysv/linux/arc/sigrestorer.S b/sysdeps/unix/sysv/linux/arc/sigrestorer.S
new file mode 100644
index 000000000000..cc3c1a0d09ff
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sigrestorer.S
@@ -0,0 +1,29 @@
+/* Default sigreturn stub for ARC Linux.
+   Copyright (C) 2005-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sys/syscall.h>
+#include <sysdep.h>
+#include <tcb-offsets.h>
+
+/* Note the NOP has to be outside body.  */
+	nop
+ENTRY (__default_rt_sa_restorer)
+	mov r8, __NR_rt_sigreturn
+	ARC_TRAP_INSN
+	j_s     [blink]
+PSEUDO_END_NOERRNO (__default_rt_sa_restorer)
diff --git a/sysdeps/unix/sysv/linux/arc/syscall.S b/sysdeps/unix/sysv/linux/arc/syscall.S
new file mode 100644
index 000000000000..d15ff2ed0cae
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/syscall.S
@@ -0,0 +1,38 @@
+/* syscall - indirect system call.
+   Copyright (C) 2017-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+
+ENTRY (syscall)
+	mov_s	r8, r0
+	mov_s	r0, r1
+	mov_s	r1, r2
+	mov_s	r2, r3
+	mov_s	r3, r4
+#ifdef __ARC700__
+	mov	r4, r5
+	mov	r5, r6
+#else
+	mov_s	r4, r5
+	mov_s	r5, r6
+#endif
+
+	ARC_TRAP_INSN
+	brhi	r0, -1024, .Lcall_syscall_err
+	j	[blink]
+PSEUDO_END (syscall)
diff --git a/sysdeps/unix/sysv/linux/arc/syscalls.list b/sysdeps/unix/sysv/linux/arc/syscalls.list
new file mode 100644
index 000000000000..d0ef5977ee06
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/syscalls.list
@@ -0,0 +1,3 @@
+# File name	Caller	Syscall name	Args	Strong name	Weak names
+
+cacheflush	-	cacheflush	i:pii	_flush_cache	cacheflush
diff --git a/sysdeps/unix/sysv/linux/arc/sysdep.c b/sysdeps/unix/sysv/linux/arc/sysdep.c
new file mode 100644
index 000000000000..a07fc035e6e5
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sysdep.c
@@ -0,0 +1,33 @@
+/* ARC wrapper for setting errno.
+   Copyright (C) 1997-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sysdep.h>
+#include <errno.h>
+
+/* All syscall handler come here to avoid generated code bloat due to
+   GOT reference  to errno_location or it's equivalent.  */
+int
+__syscall_error(int err_no)
+{
+  __set_errno(-err_no);
+  return -1;
+}
+
+#if IS_IN (libc)
+hidden_def (__syscall_error)
+#endif
diff --git a/sysdeps/unix/sysv/linux/arc/sysdep.h b/sysdeps/unix/sysv/linux/arc/sysdep.h
new file mode 100644
index 000000000000..77d815e882e5
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/sysdep.h
@@ -0,0 +1,207 @@
+/* Assembler macros for ARC.
+   Copyright (C) 2000-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#ifndef _LINUX_ARC_SYSDEP_H
+#define _LINUX_ARC_SYSDEP_H 1
+
+#include <sysdeps/arc/sysdep.h>
+#include <sysdeps/unix/sysv/linux/generic/sysdep.h>
+
+/* For RTLD_PRIVATE_ERRNO.  */
+#include <dl-sysdep.h>
+
+#include <tls.h>
+
+#undef SYS_ify
+#define SYS_ify(syscall_name)   __NR_##syscall_name
+
+#ifdef __ASSEMBLER__
+
+/* This is a "normal" system call stub: if there is an error,
+   it returns -1 and sets errno.  */
+
+# undef PSEUDO
+# define PSEUDO(name, syscall_name, args)			\
+  PSEUDO_NOERRNO(name, syscall_name, args)	ASM_LINE_SEP	\
+    brhi   r0, -1024, .Lcall_syscall_err	ASM_LINE_SEP
+
+# define ret	j  [blink]
+
+# undef PSEUDO_END
+# define PSEUDO_END(name)					\
+  SYSCALL_ERROR_HANDLER				ASM_LINE_SEP	\
+  END (name)
+
+/* --------- Helper for SYSCALL_NOERRNO -----------
+   This kind of system call stub never returns an error.
+   We return the return value register to the caller unexamined.  */
+
+# undef PSEUDO_NOERRNO
+# define PSEUDO_NOERRNO(name, syscall_name, args)		\
+  .text						ASM_LINE_SEP	\
+  ENTRY (name)					ASM_LINE_SEP	\
+    DO_CALL (syscall_name, args)		ASM_LINE_SEP	\
+
+/* Return the return value register unexamined. Since r0 is both
+   syscall return reg and function return reg, no work needed.  */
+# define ret_NOERRNO						\
+  j_s  [blink]		ASM_LINE_SEP
+
+# undef PSEUDO_END_NOERRNO
+# define PSEUDO_END_NOERRNO(name)				\
+  END (name)
+
+/* --------- Helper for SYSCALL_ERRVAL -----------
+   This kind of system call stub returns the errno code as its return
+   value, or zero for success.  We may massage the kernel's return value
+   to meet that ABI, but we never set errno here.  */
+
+# undef PSEUDO_ERRVAL
+# define PSEUDO_ERRVAL(name, syscall_name, args)		\
+  PSEUDO_NOERRNO(name, syscall_name, args)	ASM_LINE_SEP
+
+/* Don't set errno, return kernel error (in errno form) or zero.  */
+# define ret_ERRVAL						\
+  rsub   r0, r0, 0				ASM_LINE_SEP	\
+  ret_NOERRNO
+
+# undef PSEUDO_END_ERRVAL
+# define PSEUDO_END_ERRVAL(name)				\
+  END (name)
+
+
+/* To reduce the code footprint, we confine the actual errno access
+   to single place in __syscall_error().
+   This takes raw kernel error value, sets errno and returns -1.  */
+# if IS_IN (libc)
+#  define CALL_ERRNO_SETTER_C	bl     PLTJMP(HIDDEN_JUMPTARGET(__syscall_error))
+# else
+#  define CALL_ERRNO_SETTER_C	bl     PLTJMP(__syscall_error)
+# endif
+
+# define SYSCALL_ERROR_HANDLER					\
+.Lcall_syscall_err:				ASM_LINE_SEP	\
+    st.a   blink, [sp, -4]			ASM_LINE_SEP	\
+    cfi_adjust_cfa_offset (4)			ASM_LINE_SEP	\
+    cfi_rel_offset (blink, 0)			ASM_LINE_SEP	\
+    CALL_ERRNO_SETTER_C				ASM_LINE_SEP	\
+    ld.ab  blink, [sp, 4]			ASM_LINE_SEP	\
+    cfi_adjust_cfa_offset (-4)			ASM_LINE_SEP	\
+    cfi_restore (blink)				ASM_LINE_SEP	\
+    j      [blink]
+
+# define DO_CALL(syscall_name, args)				\
+    mov    r8, SYS_ify (syscall_name)		ASM_LINE_SEP	\
+    ARC_TRAP_INSN				ASM_LINE_SEP
+
+# define ARC_TRAP_INSN	trap_s 0
+
+#else  /* !__ASSEMBLER__ */
+
+# define SINGLE_THREAD_BY_GLOBAL		1
+
+# if IS_IN (libc)
+extern int __syscall_error (int);
+hidden_proto (__syscall_error)
+# endif
+
+# define ARC_TRAP_INSN	"trap_s 0	\n\t"
+
+# undef INTERNAL_SYSCALL_NCS
+# define INTERNAL_SYSCALL_NCS(number, nr_args, args...)	\
+  ({								\
+    /* Per ABI, r0 is 1st arg and return reg.  */		\
+    register int __ret __asm__("r0");				\
+    register int _sys_num __asm__("r8");			\
+								\
+    LOAD_ARGS_##nr_args (number, args)				\
+								\
+    __asm__ volatile (						\
+                      ARC_TRAP_INSN				\
+                      : "+r" (__ret)				\
+                      : "r"(_sys_num) ASM_ARGS_##nr_args	\
+                      : "memory");				\
+                                                                \
+    __ret; })
+
+# undef INTERNAL_SYSCALL
+# define INTERNAL_SYSCALL(name, nr, args...) 	\
+  INTERNAL_SYSCALL_NCS(SYS_ify(name), nr, args)
+
+/* Macros for setting up inline __asm__ input regs.  */
+# define ASM_ARGS_0
+# define ASM_ARGS_1	ASM_ARGS_0, "r" (__ret)
+# define ASM_ARGS_2	ASM_ARGS_1, "r" (_arg2)
+# define ASM_ARGS_3	ASM_ARGS_2, "r" (_arg3)
+# define ASM_ARGS_4	ASM_ARGS_3, "r" (_arg4)
+# define ASM_ARGS_5	ASM_ARGS_4, "r" (_arg5)
+# define ASM_ARGS_6	ASM_ARGS_5, "r" (_arg6)
+# define ASM_ARGS_7	ASM_ARGS_6, "r" (_arg7)
+
+/* Macros for converting sys-call wrapper args into sys call args.  */
+# define LOAD_ARGS_0(nm, arg)				\
+  _sys_num = (int) (nm);
+
+# define LOAD_ARGS_1(nm, arg1)				\
+  __ret = (int) (arg1);					\
+  LOAD_ARGS_0 (nm, arg1)
+
+/* Note that the use of _tmpX might look superflous, however it is needed
+   to ensure that register variables are not clobbered if arg happens to be
+   a function call itself. e.g. sched_setaffinity() calling getpid() for arg2
+   Also this specific order of recursive calling is important to segregate
+   the tmp args evaluation (function call case described above) and assigment
+   of register variables.  */
+
+# define LOAD_ARGS_2(nm, arg1, arg2)			\
+  int _tmp2 = (int) (arg2);				\
+  LOAD_ARGS_1 (nm, arg1)				\
+  register int _arg2 __asm__ ("r1") = _tmp2;
+
+# define LOAD_ARGS_3(nm, arg1, arg2, arg3)		\
+  int _tmp3 = (int) (arg3);				\
+  LOAD_ARGS_2 (nm, arg1, arg2)				\
+  register int _arg3 __asm__ ("r2") = _tmp3;
+
+#define LOAD_ARGS_4(nm, arg1, arg2, arg3, arg4)		\
+  int _tmp4 = (int) (arg4);				\
+  LOAD_ARGS_3 (nm, arg1, arg2, arg3)			\
+  register int _arg4 __asm__ ("r3") = _tmp4;
+
+# define LOAD_ARGS_5(nm, arg1, arg2, arg3, arg4, arg5)	\
+  int _tmp5 = (int) (arg5);				\
+  LOAD_ARGS_4 (nm, arg1, arg2, arg3, arg4)		\
+  register int _arg5 __asm__ ("r4") = _tmp5;
+
+# define LOAD_ARGS_6(nm,  arg1, arg2, arg3, arg4, arg5, arg6)\
+  int _tmp6 = (int) (arg6);				\
+  LOAD_ARGS_5 (nm, arg1, arg2, arg3, arg4, arg5)	\
+  register int _arg6 __asm__ ("r5") = _tmp6;
+
+# define LOAD_ARGS_7(nm, arg1, arg2, arg3, arg4, arg5, arg6, arg7)\
+  int _tmp7 = (int) (arg7);				\
+  LOAD_ARGS_6 (nm, arg1, arg2, arg3, arg4, arg5, arg6)	\
+  register int _arg7 __asm__ ("r6") = _tmp7;
+
+/* Pointer mangling not yet supported.  */
+# define PTR_MANGLE(var) (void) (var)
+# define PTR_DEMANGLE(var) (void) (var)
+
+#endif /* !__ASSEMBLER__ */
+
+#endif /* linux/arc/sysdep.h */
diff --git a/sysdeps/unix/sysv/linux/arc/vfork.S b/sysdeps/unix/sysv/linux/arc/vfork.S
new file mode 100644
index 000000000000..ac1cce5258e0
--- /dev/null
+++ b/sysdeps/unix/sysv/linux/arc/vfork.S
@@ -0,0 +1,42 @@
+/* vfork for ARC Linux.
+   Copyright (C) 2005-2020 Free Software Foundation, Inc.
+   This file is part of the GNU C Library.
+
+   The GNU C Library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   The GNU C Library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with the GNU C Library; if not, see
+   <https://www.gnu.org/licenses/>.  */
+
+#include <sys/syscall.h>
+#include <sysdep.h>
+#include <tcb-offsets.h>
+#define _SIGNAL_H
+#include <bits/signum.h>       /* For SIGCHLD */
+
+#define CLONE_VM		0x00000100
+#define CLONE_VFORK		0x00004000
+#define CLONE_FLAGS_FOR_VFORK	(CLONE_VM|CLONE_VFORK|SIGCHLD)
+
+ENTRY (__vfork)
+	mov	r0, CLONE_FLAGS_FOR_VFORK
+	mov_s	r1, sp
+	mov	r8, __NR_clone
+	ARC_TRAP_INSN
+
+	cmp	r0, 0
+	jge	[blink]	; child continues
+
+	b   __syscall_error
+PSEUDO_END (__vfork)
+libc_hidden_def (__vfork)
+
+weak_alias (__vfork, vfork)
-- 
2.20.1


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
