Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A46117C9A2
	for <lists+linux-snps-arc@lfdr.de>; Sat,  7 Mar 2020 01:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVXfJXK85aNEItrJd6kGmvxrwGEEJkkEW0bL+CfT5Bw=; b=rFNj/pwuCOGLrT
	7rs1WCkBQDGw3UUayrti0pAr8gmTBnaQsSTYyjpsOZVwbgEWgbi+0bcyU44SMT/5HpjJ/vWuEH1Uq
	Lv3eWMQKFSIkmFxO63utO2O31i3D4coO3SH4iDEmpO8+H6EIY2yxHtnjTlV4aS+voAhAbxDY77l8x
	VevbDElMB1nHjh7zRoOY61JFrn6FBaAhgGePkfGHrKhCf8Z9dP+Gns1NkLrtq9ao7beEo+Pl4lFRh
	X3UFtgr4J1tpZWscQL6dhSAwRJVw8XqghyVpSNNbfVqZs+q6JH/PqIPs8kBAmxcxUZmdMy9Ir19V4
	PX+t8PZlG2EM66B4pwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANDU-0008Sv-8Y; Sat, 07 Mar 2020 00:21:20 +0000
Received: from esa3.mentor.iphmx.com ([68.232.137.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANDR-0008SQ-Hr
 for linux-snps-arc@lists.infradead.org; Sat, 07 Mar 2020 00:21:18 +0000
IronPort-SDR: VeXAxSpRNb8hPfB8YPYDnnLriSLzv6w6BYT23g0ahhOBnK0wMYOMxCUhKYEg5VfPlseXc3BiTW
 +HhmOYNZ6aBTEfT4Q1gGo4ypHCmjzWoDi77ZP7KgQx591nJsrPODpB4qptw+i58hvn9Vu1MW9m
 H68f+GuXhdW7K62RLFcXubuHES58ApvfwYblC0Xuv0HjobhSCMO+Ggt/ra2g7882ZkLW9KFY5l
 Unuo1nKcSC6mWvTVrbks+uFdkDFT0ykfyoKLVmWdBQ0YIKuwOGJPjSwo23zZJJdWuLoooiu9sU
 IOE=
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="46512373"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
 by esa3.mentor.iphmx.com with ESMTP; 06 Mar 2020 16:21:17 -0800
IronPort-SDR: OyjYQKL1yf9m+COW6j5FnnrPHaW9G3HAQrhpoCRITO+1fR3JLXW9NYBUa/JON8CwP4SXlywUXe
 KGlWBa/ARuWEiHjaYbDpZO4TM3OtWQJLwdPP2CmjhLhlj3AwYJUIs3fNm4hKVf2ijPPzmlr/ro
 i+Plefu5AIA2HZeJGBYZF7EK9tSkuchf56EtEMuXnQK0BdNu3cb2RL+GyteT+IGm6Yx2DQLixW
 AgcWmKTe9hBcUUZ9THAzQEraO1Xa7+qDrSzY8s/z/9ba8ZAzfefVBG2kwLkXctPeE1W+TvsYeG
 ApE=
Date: Sat, 7 Mar 2020 00:21:11 +0000
From: Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v3 00/17] glibc port to ARC processors
In-Reply-To: <20200306182419.13945-1-vgupta@synopsys.com>
Message-ID: <alpine.DEB.2.21.2003070020370.26274@digraph.polyomino.org.uk>
References: <20200306182419.13945-1-vgupta@synopsys.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-05.mgc.mentorg.com (139.181.222.5) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_162117_626697_1AD08DEB 
X-CRM114-Status: UNSURE (   1.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.137.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

Please give details of what the entries would be for 
<https://sourceware.org/glibc/wiki/ABIList> and 
<https://sourceware.org/glibc/wiki/PortStatus> for this port that you 
intend to add once the port is in.

-- 
Joseph S. Myers
joseph@codesourcery.com

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
