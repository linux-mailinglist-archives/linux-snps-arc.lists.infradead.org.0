Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74A95E5A1
	for <lists+linux-snps-arc@lfdr.de>; Wed,  3 Jul 2019 15:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4stnx1IFg5IV9LVQn7KC7FVE/X75YnnmWmBZyun008=; b=TCOnwIkp0OgFKu
	B68VGacjw0md7TEh8qUY0nL/CZumzRaesOryu6obgRPDlBK3HzUdThdn06/p0mTWjxYXK/UIDrVHI
	IStDw5p4kO4qELBIJA1NaEOnbkt2lK4I11IynBj/D0WagwRSCk2OZ2h5LKCR0wIRWn7lV+pDiTWS6
	F36dJlyPLQxDeXxi4jjjuvfjLMyna6TbxjIja343PC2oNmKOo4zoXNRs/SfngNi6ZTtHeu/VS1UGe
	x4KbJUsIn1eozrjqgfvC/8fpzBFgax/NNOm9PnoM4kkWWrTAZkDEBo40PAwYtHSYN8v6FarEwzZzq
	/vzZAwqAsKJVRg2tijrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifUJ-0007qf-7F; Wed, 03 Jul 2019 13:39:55 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifUF-0007q7-Al
 for linux-snps-arc@lists.infradead.org; Wed, 03 Jul 2019 13:39:53 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MqJuN-1iMuBq47Zz-00nPRK; Wed, 03 Jul 2019 15:39:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH] ARC: hide unused function unw_hdr_alloc
Date: Wed,  3 Jul 2019 15:39:25 +0200
Message-Id: <20190703133940.1493249-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:19QUxxa2AQhjXJXGFQ5Q+GWQGKQpXLF1YnY0kSDAfj0P2T9ssZX
 KP1PGWvi3sji27vCh04S+/7UxT27Re9y7MeU/xKlL8Bjv1bn2w0vxhZZ8oJfhHHdcA2fxdF
 uLcw+cr1B5nNIxLjOPdAH3tAIYR+uY6I2hcm2kFsB8xTP4vs0rEA+R2IMqqp5+OrYuFTB5m
 oF4/yjAjt2+QLbnvy6iUw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rSO0Zk6wSks=:O5FU+OCGc/n3MF1WRuERet
 N+T013OT4nT/b/BNJdnpri/rYumtNGDRxds9DEriW8Z2/89cU0GAHIfwQLmhqUBzCg0NNN1jv
 FC1Zfub8dCxhTmodAu3ioF95hCdpjySCzYH+RxJoUc1Fw69ikpDXcog6UbTzip7GIzqWSKq71
 MvJfHiEKCZV/52tLXZEdjvl0Us0mbJQuqZSG9jHMYppsjkUZ4ZtJoAcdfwHxgaxcohOSWFQRR
 mBQEu8t95sNMh7DdzDQpZxM2Vvx6n/pn/pzCE4Gvjrx8mgCTlTjPtKGw/qDP2GhncCoXdoQ0G
 9lV9EWS8pj1kkFSlE1Bd90ceUosFELdBbzUewjVGS45zd/qr1tBOg6gzr/cvBvLGPY3gKh94c
 6YU7vmKbfX6/fWDoeN7cSciujC5hSoliTYVHspNOyD2Wz3Tf0xG6pRDaRpNe+O7tjP++cA04I
 nNEERofGBsALOoTaGNtkQwJzKkMUI6euN60SQSo0CBoomjfjWO10T05LB6lBA8uXvHYrTen9L
 TQFej/9Kkwaiy+LhaOq2XbzJ9jAmGW2uLexkBwTOTY6v9iKzVVAoC7KtOvhAKcJ0oXrEH6V7F
 E5iYJdywcpi0XxUxKAZGQBTfWH747p7NkZRqzEG4m4Vy/SceBIepg49PpbRyuPS6m8SZ3T9AZ
 M+871n3IVrgeiw6xWY53L63dHCLvBEMiClToo70zDzhakbMUhyxubxeIXyf4PqAPVeSUSmKtI
 q/GsbY6oCZ0j+n6gAYp1uBHtx6jmjctUoXoalQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_063951_666810_99821914 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

As kernelci.org reports, this function is not used in
vdk_hs38_defconfig:

arch/arc/kernel/unwind.c:188:14: warning: 'unw_hdr_alloc' defined but not used [-Wunused-function]

Fixes: bc79c9a72165 ("ARC: dw2 unwind: Reinstante unwinding out of modules")
Link: https://kernelci.org/build/id/5d1cae3f59b514300340c132/logs/
Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arc/kernel/unwind.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arc/kernel/unwind.c b/arch/arc/kernel/unwind.c
index 182ce67dfe10..c2663fce7f6c 100644
--- a/arch/arc/kernel/unwind.c
+++ b/arch/arc/kernel/unwind.c
@@ -181,11 +181,6 @@ static void *__init unw_hdr_alloc_early(unsigned long sz)
 	return memblock_alloc_from(sz, sizeof(unsigned int), MAX_DMA_ADDRESS);
 }
 
-static void *unw_hdr_alloc(unsigned long sz)
-{
-	return kmalloc(sz, GFP_KERNEL);
-}
-
 static void init_unwind_table(struct unwind_table *table, const char *name,
 			      const void *core_start, unsigned long core_size,
 			      const void *init_start, unsigned long init_size,
@@ -366,6 +361,10 @@ static void init_unwind_hdr(struct unwind_table *table,
 }
 
 #ifdef CONFIG_MODULES
+static void *unw_hdr_alloc(unsigned long sz)
+{
+	return kmalloc(sz, GFP_KERNEL);
+}
 
 static struct unwind_table *last_table;
 
-- 
2.20.0


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
