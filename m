Return-Path: <linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-snps-arc@lfdr.de
Delivered-To: lists+linux-snps-arc@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B4E1A10B7
	for <lists+linux-snps-arc@lfdr.de>; Tue,  7 Apr 2020 17:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3MzG0XrkjQFjIZBj/Dnd/7H4TI3ifGv3Ck+bocTmRo=; b=JvlT/hjbeTTqlJ
	wKav6g47HvIwf9bJXp6OJY4oDCaRhXF6AG+QlYljKh4nGNfkSF09kiUJtjc2L8itNduGsnoKtAmjW
	ANf7wTiQlXYJoDI1p0L9ElrxNilnynx72BLvoe1pTytyzlLkAGp+VKAWXu/f8gqOY+ibg9lCW6eNC
	Yzgg5jPs9BeitEb2p7ZkZsrc7P0zaeMQHiazNZCUBOSF/7WM6BRhHnJvQn6gSFBCblZCIGT8We20p
	w4LNHH0EN6udKBv/Z81lT9S7zm+icIJ+smEeeirElLEJBKbv9VkDM0kRqdLuSjBW6VBpMHTxzCo1/
	aaDHRYFYdhVCc//rb+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqZ0-0002L4-6s; Tue, 07 Apr 2020 15:54:58 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqYx-0002K4-NN
 for linux-snps-arc@lists.infradead.org; Tue, 07 Apr 2020 15:54:57 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 037FYjvb050763
 for <linux-snps-arc@lists.infradead.org>; Tue, 7 Apr 2020 11:54:54 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 306kuwpkrk-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-snps-arc@lists.infradead.org>; Tue, 07 Apr 2020 11:54:53 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-snps-arc@lists.infradead.org> from <gerald.schaefer@de.ibm.com>;
 Tue, 7 Apr 2020 16:54:39 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 7 Apr 2020 16:54:32 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 037Fshw958654742
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Apr 2020 15:54:43 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 17FFE52059;
 Tue,  7 Apr 2020 15:54:43 +0000 (GMT)
Received: from thinkpad (unknown [9.145.186.71])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 2847C52050;
 Tue,  7 Apr 2020 15:54:42 +0000 (GMT)
Date: Tue, 7 Apr 2020 17:54:40 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 0/3] mm/debug: Add more arch page table helper tests
In-Reply-To: <e3e35885-6852-16aa-3889-e22750a0cc87@arm.com>
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
 <20200331143059.29fca8fa@thinkpad>
 <e3e35885-6852-16aa-3889-e22750a0cc87@arm.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 20040715-0012-0000-0000-000003A01446
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040715-0013-0000-0000-000021DD3634
Message-Id: <20200407175440.41cc00a5@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-07_07:2020-04-07,
 2020-04-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 spamscore=0 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004070128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_085455_885363_7315951A 
X-CRM114-Status: GOOD (  49.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter
 Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-snps-arc" <linux-snps-arc-bounces@lists.infradead.org>
Errors-To: linux-snps-arc-bounces+lists+linux-snps-arc=lfdr.de@lists.infradead.org

On Sun, 5 Apr 2020 17:58:14 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

[...]
> > 
> > Could be fixed like this (the first de-reference is a bit special,
> > because at that point *ptep does not really point to a large (pmd) entry
> > yet, it is initially an invalid pte entry, which breaks our huge_ptep_get()  
> 
> There seems to be an inconsistency on s390 platform. Even though it defines
> a huge_ptep_get() override, it does not subscribe __HAVE_ARCH_HUGE_PTEP_GET
> which should have forced it fallback on generic huge_ptep_get() but it does
> not :) Then I realized that __HAVE_ARCH_HUGE_PTEP_GET only makes sense when
> an arch uses <asm-generic/hugetlb.h>. s390 does not use that and hence gets
> away with it's own huge_ptep_get() without __HAVE_ARCH_HUGE_PTEP_GET. Sounds
> confusing ? But I might not have the entire context here.

Yes, that sounds very confusing. Also a bit ironic, since huge_ptep_get()
was initially introduced because of s390, and now we don't select
__HAVE_ARCH_HUGE_PTEP_GET...

As you realized, I guess this is because we do not use generic hugetlb.h.
And when __HAVE_ARCH_HUGE_PTEP_GET was introduced with commit 544db7597ad
("hugetlb: introduce generic version of huge_ptep_get"), that was probably
the reason why we did not get our share of __HAVE_ARCH_HUGE_PTEP_GET.

Nothing really wrong with that, but yes, very confusing. Maybe we could
also select it for s390, even though it wouldn't have any functional
impact (so far), just for less confusion. Maybe also thinking about
using the generic hugetlb.h, not sure if the original reasons for not
doing so would still apply. Now I only need to find the time...

> 
> > conversion logic. I also added PMD_MASK alignment for RANDOM_ORVALUE,
> > because we do have some special bits there in our large pmds. It seems
> > to also work w/o that alignment, but it feels a bit wrong):  
> 
> Sure, we can accommodate that.
> 
> > 
> > @@ -731,26 +731,26 @@ static void __init hugetlb_advanced_test
> >                                           unsigned long vaddr, pgprot_t prot)
> >  {
> >         struct page *page = pfn_to_page(pfn);
> > -       pte_t pte = READ_ONCE(*ptep);
> > +       pte_t pte;
> > 
> > -       pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
> > +       pte = pte_mkhuge(mk_pte_phys(RANDOM_ORVALUE & PMD_MASK, prot));  
> 
> So that keeps the existing value in 'ptep' pointer at bay and instead
> construct a PTE from scratch. I would rather have READ_ONCE(*ptep) at
> least provide the seed that can be ORed with RANDOM_ORVALUE before
> being masked with PMD_MASK. Do you see any problem ?

Yes, unfortunately. The problem is that the resulting pte is not marked
as present. The conversion pte -> (huge) pmd, which is done in
set_huge_pte_at() for s390, will establish an empty pmd for non-present
ptes, all the RANDOM_ORVALUE stuff is lost. And a subsequent
huge_ptep_get() will not result in the same original pte value. If you
want to preserve and check the RANDOM_ORVALUE, it has to be a present
pte, hence the mk_pte(_phys).

> 
> Some thing like this instead.
> 
> pte_t pte = READ_ONCE(*ptep);
> pte = pte_mkhuge(__pte((pte_val(pte) | RANDOM_ORVALUE) & PMD_MASK));
> 
> We cannot use mk_pte_phys() as it is defined only on some platforms
> without any generic fallback for others.

Oh, didn't know that, sorry. What about using mk_pte() instead, at least
it would result in a present pte:

pte = pte_mkhuge(mk_pte(phys_to_page(RANDOM_ORVALUE & PMD_MASK), prot));

And if you also want to do some with the existing value, which seems
to be an empty pte, then maybe just check if writing and reading that
value with set_huge_pte_at() / huge_ptep_get() returns the same,
i.e. initially w/o RANDOM_ORVALUE.

So, in combination, like this (BTW, why is the barrier() needed, it
is not used for the other set_huge_pte_at() calls later?):

@@ -733,24 +733,28 @@ static void __init hugetlb_advanced_test
        struct page *page = pfn_to_page(pfn);
        pte_t pte = READ_ONCE(*ptep);
 
-       pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
+       set_huge_pte_at(mm, vaddr, ptep, pte);
+       WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));
+
+       pte = pte_mkhuge(mk_pte(phys_to_page(RANDOM_ORVALUE & PMD_MASK), prot));
        set_huge_pte_at(mm, vaddr, ptep, pte);
        barrier();
        WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));

This would actually add a new test "write empty pte with
set_huge_pte_at(), then verify with huge_ptep_get()", which happens
to trigger a warning on s390 :-)

That (new) warning actually points to misbehavior on s390, we do not
write a correct empty pmd in this case, but one that is empty and also
marked as large. huge_ptep_get() will then not correctly recognize it
as empty and do wrong conversion. It is also not consistent with
huge_ptep_get_and_clear(), where we write the empty pmd w/o marking
as large. Last but not least it would also break our pmd_protnone()
logic (see below). Another nice finding on s390 :-)

I don't think this has any effect in practice (yet), but I will post a
fix for that, just in case you will add / change this test.

> 
> >         set_huge_pte_at(mm, vaddr, ptep, pte);
> >         barrier();
> >         WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));
> >         huge_pte_clear(mm, vaddr, ptep, PMD_SIZE);
> > -       pte = READ_ONCE(*ptep);
> > +       pte = huge_ptep_get(ptep);
> >         WARN_ON(!huge_pte_none(pte));
> >  
> >         pte = mk_huge_pte(page, prot);
> >         set_huge_pte_at(mm, vaddr, ptep, pte);
> >         huge_ptep_set_wrprotect(mm, vaddr, ptep);
> > -       pte = READ_ONCE(*ptep);
> > +       pte = huge_ptep_get(ptep);
> >         WARN_ON(huge_pte_write(pte));
> >  
> >         pte = mk_huge_pte(page, prot);
> >         set_huge_pte_at(mm, vaddr, ptep, pte);
> >         huge_ptep_get_and_clear(mm, vaddr, ptep);
> > -       pte = READ_ONCE(*ptep);
> > +       pte = huge_ptep_get(ptep);
> >         WARN_ON(!huge_pte_none(pte));
> >  
> >         pte = mk_huge_pte(page, prot);
> > @@ -759,7 +759,7 @@ static void __init hugetlb_advanced_test
> >         pte = huge_pte_mkwrite(pte);
> >         pte = huge_pte_mkdirty(pte);
> >         huge_ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
> > -       pte = READ_ONCE(*ptep);
> > +       pte = huge_ptep_get(ptep);
> >         WARN_ON(!(huge_pte_write(pte) && huge_pte_dirty(pte)));
> >  }
> >  #else
> > 
> > 3) The pmd_protnone_tests() has an issue, because it passes a pmd to
> > pmd_protnone() which has not been marked as large. We check for large
> > pmd in the s390 implementation of pmd_protnone(), and will fail if a
> > pmd is not large. We had similar issues before, in other helpers, where
> > I changed the logic on s390 to not require the pmd large check, but I'm
> > not so sure in this case. Is there a valid use case for doing
> > pmd_protnone() on "normal" pmds? Or could this be changed like this:  
> 
> That is a valid question. IIUC, all existing callers for pmd_protnone()
> ensure that it is indeed a huge PMD. But even assuming otherwise should
> not the huge PMD requirement get checked in the caller itself rather than
> in the arch helper which is just supposed to check the existence of the
> dedicated PTE bit(s) for this purpose. Purely from a helper perspective
> pmd_protnone() should not really care about being large even though it
> might never get used without one.
> 
> Also all platforms (except s390) derive the pmd_protnone() from their
> respective pte_protnone(). I wonder why should s390 be any different
> unless it is absolutely necessary.

This is again because of our different page table entry layouts for
pte/pmd and (large) pmd. The bits we check for pmd_protnone() are
not valid for normal pmd/pte, and we would return undefined result for
normal entries.

Of course, we could rely on nobody calling pmd_protnone() on normal
pmds, but in this case we also use pmd_large() check in pmd_protnone()
for indication if the pmd is present. W/o that, we would return
true for empty pmds, that doesn't sound right. Not sure if we also
want to rely on nobody calling pmd_protnone() on empty pmds.

Anyway, if in practice it is not correct to use pmd_protnone()
on normal pmds, then I would suggest that your tests should also
not do / test it. And I strongly assume that it is not correct, at
least I cannot think of a valid case, and of course s390 would
already be broken if there was such a case.

Regards,
Gerald


_______________________________________________
linux-snps-arc mailing list
linux-snps-arc@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-snps-arc
