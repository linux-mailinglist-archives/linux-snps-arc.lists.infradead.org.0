Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C53C1EC6D
	for <lists+linux-snps-arc@lfdr.de>; Wed, 15 May 2019 12:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aVyrj6nnYoHPLdXWdcfoN22jclHVqJ3EnT1EgnBjgiA=; b=PmvY2okYvyve/0i6BRJBrjis94
	JUUicXBKMC4WNXdpKA5ogKdX93b16DYtTy7ZcnJO1k8ev22gNlqm5f9ZhoqvXvFaUzRnEEO9MiMxw
	FXJkafgKzV6WXDQjrTpXuw4aXa/w8DM9SpXTaDdOOjqyOx7wKoMqONEeQxfUJQHhiuXDM49xw9u/d
	rJq0KcwhFdVZcaBumCRdhqiUbfyW2JfECJaitXViILx4DgGk3bkCvOGKPM/4RX3ymDiJElI59bdxW
	uQOD0rpVYbZlmT1vY+ExPvltH56+ubPWqVKFqfAIb8Ql9kKTI38B30hbouxbX0ZpyuarwsN/5xenq
	iv0MmF9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrYg-0006Td-RA; Wed, 15 May 2019 10:54:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrYd-0006TA-4h
 for linux-snps-arc@lists.infradead.org; Wed, 15 May 2019 10:54:49 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2C2920881;
 Wed, 15 May 2019 10:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557917686;
 bh=YFXLOnWqq0QgNpzJqzI8dLsqphnEKMKon1apQRlDlAI=;
 h=Date:From:To:To:To:To:CC:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=qwrPYxVXt6kdexmIyBHX2yTspkumXG4ef33F8msWZSdEBsRvFoxZW9rH5jcUfBuvc
 sfcVc7Lwa22eo54Eaiut/ewjDEd0Pp+CvfChph7OtyzLvWT3W8JSMMSahiIsmHhEGE
 Exz+6gdrSzT/1JyBNRK5YGeAUnPaSRWZOiuC/00E=
Date: Wed, 15 May 2019 10:54:45 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
To: <linux-snps-arc@lists.infradead.org>
Subject: Re: [PATCH 1/9] ARC: mm: SIGSEGV userspace trying to access kernel
 virtual memory
In-Reply-To: <1557880176-24964-2-git-send-email-vgupta@synopsys.com>
References: <1557880176-24964-2-git-send-email-vgupta@synopsys.com>
Message-Id: <20190515105445.E2C2920881@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_035447_430381_DF878ADD 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , paltsev@snyopsys.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.1.1, v5.0.15, v4.19.42, v4.14.118, v4.9.175, v4.4.179, v3.18.139.

v5.1.1: Build OK!
v5.0.15: Build OK!
v4.19.42: Failed to apply! Possible dependencies:
    121e38e5acdc ("ARC: mm: fix uninitialised signal code in do_page_fault")
    15773ae938d8 ("signal/arc: Use force_sig_fault where appropriate")

v4.14.118: Failed to apply! Possible dependencies:
    121e38e5acdc ("ARC: mm: fix uninitialised signal code in do_page_fault")
    15773ae938d8 ("signal/arc: Use force_sig_fault where appropriate")
    1fc5dce78ad1 ("arm64/sve: Low-level SVE architectural state manipulation functions")
    2c9120f3a86a ("arm64: signal: Make force_signal_inject more robust")
    3eb0f5193b49 ("signal: Ensure every siginfo we send has all bits initialized")
    3f7c86b2382e ("arm64: Update fault_info table with new exception types")
    50a7ca3c6fc8 ("mm: convert return type of handle_mm_fault() caller to vm_fault_t")
    526c3ddb6aa2 ("signal/arm64: Document conflicts with SI_USER and SIGFPE,SIGTRAP,SIGBUS")
    532826f3712b ("arm64: Mirror arm for unimplemented compat syscalls")
    5f74972ce69f ("signal: Don't use structure initializers for struct siginfo")
    92ff0674f5d8 ("arm64: mm: Rework unhandled user pagefaults to call arm64_force_sig_info")
    94ef7ecbdf6f ("arm64: fpsimd: Correctly annotate exception helpers called from asm")
    af40ff687bc9 ("arm64: signal: Ensure si_code is valid for all fault signals")
    bc0ee4760364 ("arm64/sve: Core task context handling")
    f43a54a0d916 ("signal/mips: Use force_sig_fault where appropriate")

v4.9.175: Failed to apply! Possible dependencies:
    0e3a9026396c ("arm64: mm: Update perf accounting to handle poison faults")
    121e38e5acdc ("ARC: mm: fix uninitialised signal code in do_page_fault")
    15773ae938d8 ("signal/arc: Use force_sig_fault where appropriate")
    32015c235603 ("arm64: exception: handle Synchronous External Abort")
    3eb0f5193b49 ("signal: Ensure every siginfo we send has all bits initialized")
    3f7c86b2382e ("arm64: Update fault_info table with new exception types")
    50a7ca3c6fc8 ("mm: convert return type of handle_mm_fault() caller to vm_fault_t")
    526c3ddb6aa2 ("signal/arm64: Document conflicts with SI_USER and SIGFPE,SIGTRAP,SIGBUS")
    532826f3712b ("arm64: Mirror arm for unimplemented compat syscalls")
    5b53696a30d5 ("ACPI / APEI: Switch to use new generic UUID API")
    5f74972ce69f ("signal: Don't use structure initializers for struct siginfo")
    7edda0886bc3 ("acpi: apei: handle SEA notification type for ARMv8")
    83016b204225 ("arm64: mm: print file name of faulting vma")
    92ff0674f5d8 ("arm64: mm: Rework unhandled user pagefaults to call arm64_force_sig_info")
    a8ada146f517 ("arm64: Update the synchronous external abort fault description")
    af40ff687bc9 ("arm64: signal: Ensure si_code is valid for all fault signals")
    b123718b105b ("MIPS: signal: Remove unreachable code from force_fcr31_sig().")
    bbcc2e7b642e ("ras: acpi/apei: cper: add support for generic data v3 structure")
    c07ab957d9af ("arm64: Call __show_regs directly")
    e7c600f149b8 ("arm64: hwpoison: add VM_FAULT_HWPOISON[_LARGE] handling")
    f43a54a0d916 ("signal/mips: Use force_sig_fault where appropriate")

v4.4.179: Failed to apply! Possible dependencies:
    09a6adf53d42 ("arm64: mm: unaligned access by user-land should be received as SIGBUS")
    0a8ea52c3eb1 ("arm64: Add HAVE_REGS_AND_STACK_ACCESS_API feature")
    0e3a9026396c ("arm64: mm: Update perf accounting to handle poison faults")
    121e38e5acdc ("ARC: mm: fix uninitialised signal code in do_page_fault")
    15773ae938d8 ("signal/arc: Use force_sig_fault where appropriate")
    2dd0e8d2d2a1 ("arm64: Kprobes with single stepping support")
    3eca86e75ec7 ("arm64: Remove fixmap include fragility")
    50a7ca3c6fc8 ("mm: convert return type of handle_mm_fault() caller to vm_fault_t")
    67ce16ec15ce ("arm64: mm: print out correct page table entries")
    83016b204225 ("arm64: mm: print file name of faulting vma")
    92ff0674f5d8 ("arm64: mm: Rework unhandled user pagefaults to call arm64_force_sig_info")
    bbb1681ee365 ("arm64: mm: mark fault_info table const")
    c07ab957d9af ("arm64: Call __show_regs directly")
    cab15ce604e5 ("arm64: Introduce execute-only page access permissions")
    d59bee887231 ("arm64: Add more test functions to insn.c")
    e04a28d45ff3 ("arm64: debug: re-enable irqs before sending breakpoint SIGTRAP")
    e7c600f149b8 ("arm64: hwpoison: add VM_FAULT_HWPOISON[_LARGE] handling")

v3.18.139: Failed to apply! Possible dependencies:
    04597a65c5ef ("arm64: Track system support for mixed endian EL0")
    121e38e5acdc ("ARC: mm: fix uninitialised signal code in do_page_fault")
    15773ae938d8 ("signal/arc: Use force_sig_fault where appropriate")
    1b907f46db07 ("arm64: kconfig: move emulation option under kernel features")
    2d888f48e056 ("arm64: Emulate SETEND for AArch32 tasks")
    338d4f49d6f7 ("arm64: kernel: Add support for Privileged Access Never")
    359b706473b4 ("arm64: Extract feature parsing code from cpu_errata.c")
    50a7ca3c6fc8 ("mm: convert return type of handle_mm_fault() caller to vm_fault_t")
    587064b610c7 ("arm64: Add framework for legacy instruction emulation")
    7209c868600b ("arm64: mm: Set PSTATE.PAN from the cpu_enable_pan() call")
    736d474f0faf ("arm64: Consolidate hotplug notifier for instruction emulation")
    870828e57b14 ("arm64: kernel: Move config_sctlr_el1")
    92ff0674f5d8 ("arm64: mm: Rework unhandled user pagefaults to call arm64_force_sig_info")
    94a9e04aa16a ("arm64: alternative: Introduce feature for GICv3 CPU interface")
    9b79f52d1a70 ("arm64: Add support for hooks to handle undefined instructions")
    bd35a4adc413 ("arm64: Port SWP/SWPB emulation support from arm")
    c852f3205846 ("arm64: Emulate CP15 Barrier instructions")
    c9453a3ab1a3 ("arm64: alternatives: fix pr_fmt string for consistency")
    ceed97ab4ff7 ("ARC: perf: Enable generic software events")
    e7c600f149b8 ("arm64: hwpoison: add VM_FAULT_HWPOISON[_LARGE] handling")


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
