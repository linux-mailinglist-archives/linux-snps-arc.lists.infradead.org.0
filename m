Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8035517DC38
	for <lists+linux-snps-arc@lfdr.de>; Mon,  9 Mar 2020 10:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ac8vI4PaeqrTul9DjOqJ1H5k+7VHpjrogox/voJwmTs=; b=Yqs1mK4vswqPpa
	n8IuYVoz/jVZdGRQ8XBEOl1ClYx75oGserC71jx591vh3Zz9YpYaYsaKcBrt9eWs10PgmrnKgU9JY
	derWQ4SEeAtWKM0alm3cWkGoURx9+npD3jxuFKFZZqQziLrW3jrtNvbiNH77k8MNu44dDtyRE1u1r
	XtphM+RY7RwPaMPzb8LK0XR5ScwD9uQNXwsBGFjgALRY+KSb7YHoCj78ZfoMW6nbwUznvQqyWrv2w
	+K8cJMcNU+0uIdLF/GK0BxVA/o75WXE7lQJRKfWbnDRqGgjNbriBrP4jzFo19Cpe2FbGqTOQjrY7b
	wZzv+WK1Dylj2ILtsPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEW4-00054b-4u; Mon, 09 Mar 2020 09:16:04 +0000
Received: from albireo.enyo.de ([37.24.231.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEW0-00053R-59
 for linux-snps-arc@lists.infradead.org; Mon, 09 Mar 2020 09:16:02 +0000
Received: from [172.17.203.2] (helo=deneb.enyo.de)
 by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jBEVq-0004RI-Bi; Mon, 09 Mar 2020 09:15:50 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
 (envelope-from <fw@deneb.enyo.de>)
 id 1jBEUH-00025f-LO; Mon, 09 Mar 2020 10:14:13 +0100
From: Florian Weimer <fw@deneb.enyo.de>
To: Vineet Gupta <vineetg76@gmail.com>
Subject: Re: [PATCH v3 12/17] ARC: ABI lists
References: <20200306182419.13945-1-vgupta@synopsys.com>
 <20200306182419.13945-13-vgupta@synopsys.com>
 <87y2sci43q.fsf@mid.deneb.enyo.de>
 <af189394-f710-8356-3b08-174e9d8471a7@gmail.com>
Date: Mon, 09 Mar 2020 10:14:13 +0100
In-Reply-To: <af189394-f710-8356-3b08-174e9d8471a7@gmail.com> (Vineet Gupta's
 message of "Sat, 7 Mar 2020 21:45:35 -0800")
Message-ID: <87mu8pdh5m.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_021600_358990_AB35164E 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.24.231.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-snps-arc@lists.infradead.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

* Vineet Gupta:

> On 3/7/20 7:20 AM, Florian Weimer wrote:
>> * Vineet Gupta:
>> 
>>> +GLIBC_2.32 sysctl F
>> 
>> This looks like a mistake, given that ARC doesn't even have the sysctl
>> system call.
>> 
>> I think the current way of suppressing that involves creating an empty
>> sysctl.mk file, as in sysdeps/unix/sysv/linux/x86_64/x32/sysctl.mk.
>> (Unfortunately, the ports added after x32 forgot to do that because
>> the in-tree default is wrong.)
>
> For now I've added an empty file and in a later sweep we can remove all the empty
> ones as you suggest below. Thx for taking a look.

Thanks.  I posted my removal patch as well:

  <https://sourceware.org/pipermail/libc-alpha/2020-March/111739.html>

_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
