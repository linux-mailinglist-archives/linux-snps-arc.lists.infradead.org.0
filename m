Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6018A9BF
	for <lists+linux-snps-arc@lfdr.de>; Mon, 12 Aug 2019 23:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNnXGo/JpmCt5TNe4gdPBb2Kn5zOuLCuHzEQwzVwjS0=; b=X+/inR4LLbZcoo
	+NC2Zd25+a6Il1bv6gFzSNv8+LjDqeifS2K7dUbclFZgs4/eBshoxc5b2FFMFuzkTIZ8geI/BdMoA
	UVaQTi53+6V9nGJFqjG3gyR/P1PH8mL3C97zN3PYi+XCjg7PvTRatYHmKjlLU1IbVtG4Guy9I1pMD
	JXoTOHXcquPpg7blX1YQeth2zcwjcH67q5Y5l3+cDfDAes7Q1PWBDolr020jipJ/C/jJhh3qGYAU2
	IGo2AxCL4+7Zfc+icRquOLeU/oXa3VKtE4+Biaec8JVvzPvovYVYsAgccg5Na8/iePKZwmPm1ilRa
	jgQ3hNL0TOBCnUHfv86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIE4-00044u-BS; Mon, 12 Aug 2019 21:51:36 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIE1-00043j-2k
 for linux-snps-arc@lists.infradead.org; Mon, 12 Aug 2019 21:51:34 +0000
Received: by mail-qt1-x849.google.com with SMTP id g33so5536424qtc.14
 for <linux-snps-arc@lists.infradead.org>; Mon, 12 Aug 2019 14:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0kDIUkQq74jS4s3L5upJ2sLFeJ4SQuXmh/iJl/tNzO8=;
 b=Vd9nPvrNsnO4tVGqvUzBIbfckrBlSRoUQ71ZP+FzvSNKEEhOuE681rboi5PXi4jYKq
 OY9v/yyXkJSEFM/SFETSH27C/UkgCU3JxUKwGMAyYh9yeqjjz6rNOCU2ceXdMw1LXfKW
 g4w1vs3y/w7FDQN3p1HEMS9FL8JXrsYqipn6zsbCxWPVF3CVt2wNKj/vkLmdJN+lktgz
 Us3tD4wd8wXVBIiHWmvQvmYWMeiU0jbuHcm0RVbTzPkoi7lBNBkyEiPNtaHoNNV0G/tW
 XFNS1krIhOH1G3jmt6d25VJw3BxZh00zqfGqlcb2OKw6p8kV57c1U99uFLWS4v8K9ikH
 DoSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0kDIUkQq74jS4s3L5upJ2sLFeJ4SQuXmh/iJl/tNzO8=;
 b=q3oqo9y+/F9DLuTPKlpFX0GDN/SsEfkuQPd3OolKzuhfCjwLbjfWaBZ9dwnDuzvb/w
 1ziGH7uqCApw2rsPjyRPh9h/heyoV1w6eyDuNPy27waiHbjTRj1AxEiXS9HyQ2X6oeD3
 PDwCQW7FvPNwkZ8NAnT0JFweRXYGFYZVMCjsveTyvtdDYTldrMVHGFKrWYFHgDvnFY0G
 hJHkVJJP0ZioMzICfEvM9T5KZFXIxX4OMcJcaiTpqfvpUnQGFMnM2UZkY459VkLDKQ3b
 ab4y6akHwapm2SZ+4nlUb5+dcwU9P4E7pWMwd9QPuTobx2GXhVs4LwWKvPAm0/OD3MCs
 arCw==
X-Gm-Message-State: APjAAAXGaYukAQ8vaD9wKfWN52p4mx3tvCaqNQKhZypMwzrCk4MdgVsM
 sCPmq/okLMk4t1Q1pGyL9xycaop3MERqRWMWmGM=
X-Google-Smtp-Source: APXvYqzL9xoTa/IdedF1+fdf+8hstnyQibM73dfz4z6AyFXi+Fk60+vxTXikoA1YWpjXQrwItkwSdl3qBiQqejvfMUA=
X-Received: by 2002:a0c:af33:: with SMTP id i48mr31608806qvc.185.1565646691285; 
 Mon, 12 Aug 2019 14:51:31 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:35 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 02/16] arc: prefer __section from compiler_attributes.h
From: Nick Desaulniers <ndesaulniers@google.com>
To: akpm@linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_145133_119179_C741F167 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Song Liu <songliubraving@fb.com>, bpf@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, miguel.ojeda.sandonis@gmail.com,
 Vineet Gupta <vgupta@synopsys.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jpoimboe@redhat.com,
 sedat.dilek@gmail.com, yhs@fb.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-snps-arc@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arc/include/asm/linkage.h   | 8 ++++----
 arch/arc/include/asm/mach_desc.h | 3 +--
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arc/include/asm/linkage.h b/arch/arc/include/asm/linkage.h
index a0eeb9f8f0a9..d9ee43c6b7db 100644
--- a/arch/arc/include/asm/linkage.h
+++ b/arch/arc/include/asm/linkage.h
@@ -62,15 +62,15 @@
 #else	/* !__ASSEMBLY__ */
 
 #ifdef CONFIG_ARC_HAS_ICCM
-#define __arcfp_code __attribute__((__section__(".text.arcfp")))
+#define __arcfp_code __section(.text.arcfp)
 #else
-#define __arcfp_code __attribute__((__section__(".text")))
+#define __arcfp_code __section(.text)
 #endif
 
 #ifdef CONFIG_ARC_HAS_DCCM
-#define __arcfp_data __attribute__((__section__(".data.arcfp")))
+#define __arcfp_data __section(.data.arcfp)
 #else
-#define __arcfp_data __attribute__((__section__(".data")))
+#define __arcfp_data __section(.data)
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/arc/include/asm/mach_desc.h b/arch/arc/include/asm/mach_desc.h
index 8ac0e2ac3e70..73746ed5b834 100644
--- a/arch/arc/include/asm/mach_desc.h
+++ b/arch/arc/include/asm/mach_desc.h
@@ -53,8 +53,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
  */
 #define MACHINE_START(_type, _name)			\
 static const struct machine_desc __mach_desc_##_type	\
-__used							\
-__attribute__((__section__(".arch.info.init"))) = {	\
+__used __section(.arch.info.init) = {			\
 	.name		= _name,
 
 #define MACHINE_END				\
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
