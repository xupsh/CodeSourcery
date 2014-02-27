// ARM11 Register Definition File
// Contains definitions for CP15 registers common to all supported ARM11
// cores (currently arm1136, arm1176, and arm11mp (ARM11 MPCore, aka MP11))
//

INCLUDE "armbase32.rd"


REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0       : CPU ID
REG=cp15_cache   0x00000040 COPROC15 4  // c15_0_o1_0  : Cache Type
REG=cp15_ttype   0x000000c0 COPROC15 4  // c15_0_o3_0  : TLB Type

REG=cp15_pf0     0x00000200 COPROC15 4  // c15_0_o0_1  : Processor Feature 0
REG=cp15_pf1     0x00000240 COPROC15 4  // c15_0_o1_1  : Processor Feature 1
REG=cp15_df0     0x00000280 COPROC15 4  // c15_0_o2_1  : Debug Feature 0
REG=cp15_af0     0x000002c0 COPROC15 4  // c15_0_o3_1  : Auxilliary Feature 0
REG=cp15_mmf0    0x00000300 COPROC15 4  // c15_0_o4_1  : Memory Model Feature 0
REG=cp15_mmf1    0x00000340 COPROC15 4  // c15_0_o5_1  : Memory Model Feature 1
REG=cp15_mmf2    0x00000380 COPROC15 4  // c15_0_o6_1  : Memory Model Feature 2
REG=cp15_mmf3    0x000003c0 COPROC15 4  // c15_0_o7_1  : Memory Model Feature 3

// 1136 TRM calls these "Instruction Set Attributes", 1176 TRM calls them
// "Instruction Set Feature Attribute".  Just "Instruction Set Feature" would
// be more consistent with above registers, so we went with "isf" as the
// mnemonic.
REG=cp15_isf0    0x00000400 COPROC15 4  // c15_0_o0_2  : Instruction Set Attributes 0
REG=cp15_isf1    0x00000440 COPROC15 4  // c15_0_o1_2  : Instruction Set Attributes 1
REG=cp15_isf2    0x00000480 COPROC15 4  // c15_0_o2_2  : Instruction Set Attributes 2
REG=cp15_isf3    0x000004c0 COPROC15 4  // c15_0_o3_2  : Instruction Set Attributes 3
REG=cp15_isf4    0x00000500 COPROC15 4  // c15_0_o4_2  : Instruction Set Attributes 4
REG=cp15_isf5    0x00000540 COPROC15 4  // c15_0_o5_2  : Instruction Set Attributes 5

REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1       : Control
REG=cp15_auxctl  0x00000044 COPROC15 4  // c15_1_o1_0  : Auxilliary Control
REG=cp15_cpactl  0x00000084 COPROC15 4  // c15_1_o2_0  : CP Access Control

REG=cp15_ttb0    0x00000008 COPROC15 4  // c15_2       : Translation Table Base 0
REG=cp15_ttb1    0x00000048 COPROC15 4  // c15_2_o1_0  : Translation Table Base 1
REG=cp15_ttbc    0x00000088 COPROC15 4  // c15_2_o2_0  : Translation Table Base Control

REG=cp15_dac     0x0000000c COPROC15 4  // c15_3       : Domain Access Control

REG=cp15_dfs     0x00000014 COPROC15 4  // c15_5       : Data Fault Status
REG=cp15_ifs     0x00000054 COPROC15 4  // c15_5_o1_0  : Instruction Fault Status

REG=cp15_fa      0x00000018 COPROC15 4  // c15_6       : Fault Address
REG=cp15_wfa     0x00000058 COPROC15 4  // c15_6_o1_0  : Watchpoint Fault Address

// CP15 R7 registers are Write-only, except for cp15_cds
// Don't put them in a window!
REG=cp15_wfi     0x0000011c COPROC15 4  // c15_7_o4_0  : Wait For Interrupt
REG=cp15_ieic    0x00000a1c COPROC15 4  // c15_7_o0_5  : Invalidate Entire Instruction Cache	   
REG=cp15_iicm    0x00000a5c COPROC15 4  // c15_7_o1_5  : Invalidate Instruction Cache using MVA	   
REG=cp15_iics    0x00000a9c COPROC15 4  // c15_7_o2_5  : Invalidate Instruction Cache using Set/Way
REG=cp15_fpb     0x00000b1c COPROC15 4  // c15_7_o4_5  : Flush Prefetch Buffer
REG=cp15_febtc   0x00000b9c COPROC15 4  // c15_7_o6_5  : Flush Entire Branch Target Cache
REG=cp15_fbtce   0x00000bdc COPROC15 4  // c15_7_o7_5  : Flush Branch Target Cache Entry
REG=cp15_iedc    0x00000c1c COPROC15 4  // c15_7_o0_6  : Invalidate Entire Data Cache
REG=cp15_idcm    0x00000c5c COPROC15 4  // c15_7_o1_6  : Invalidate Data Cache using MVA
REG=cp15_idcs    0x00000c9c COPROC15 4  // c15_7_o2_6  : Invalidate Data Cache using Set/Way
REG=cp15_ibc     0x00000e1c COPROC15 4  // c15_7_o0_7  : Invalidate Both Caches
REG=cp15_cedc    0x0000141c COPROC15 4  // c15_7_o0_10 : Clean Entire Data Cache	    
REG=cp15_cdcm    0x0000145c COPROC15 4  // c15_7_o1_10 : Clean Data Cache using MVA    
REG=cp15_cdcs    0x0000149c COPROC15 4  // c15_7_o2_10 : Clean Data Cache using Set/Way
REG=cp15_dsb     0x0000151c COPROC15 4  // c15_7_o4_10 : Data Syncronization Barrier
REG=cp15_dmb     0x0000155c COPROC15 4  // c15_7_o5_10 : Data Memory Barrier
REG=cp15_ciedc   0x00001c1c COPROC15 4  // c15_7_o0_14 : Clean and Invalidate Entire Data Cache
REG=cp15_cidcm   0x00001c5c COPROC15 4  // c15_7_o1_14 : Clean and Invalidate Data Cache using MVA
REG=cp15_cidcs   0x00001c9c COPROC15 4  // c15_7_o2_14 : Clean and Invalidate Data Cache using Set/Way

// CP15 R8 registers are Write-only, don't put them in a window!
REG=cp15_iit     0x00000a20 COPROC15 4  // c15_8_o0_5  : Invalidate Instruction TLB	   
REG=cp15_iite    0x00000a60 COPROC15 4  // c15_8_o1_5  : Invalidate Instruction TLB Entry  
REG=cp15_iita    0x00000aa0 COPROC15 4  // c15_8_o2_5  : Invalidate Instruction TLB on ASID
REG=cp15_idt     0x00000c20 COPROC15 4  // c15_8_o0_6  : Invalidate Data TLB
REG=cp15_idte    0x00000c60 COPROC15 4  // c15_8_o1_6  : Invalidate Data TLB Entry
REG=cp15_idta    0x00000ca0 COPROC15 4  // c15_8_o2_6  : Invalidate Data TLB on ASID
REG=cp15_iut     0x00000e20 COPROC15 4  // c15_8_o0_7  : Invalidate Unified TLB
REG=cp15_iute    0x00000e60 COPROC15 4  // c15_8_o1_7  : Invalidate Unified TLB Entry
REG=cp15_iuta    0x00000ea0 COPROC15 4  // c15_8_o2_7  : Invalidate Unified TLB on ASID

REG=cp15_dclock  0x00000024 COPROC15 4  // c15_9       : Data Cache Lockdown

REG=cp15_tlblk   0x00000028 COPROC15 4  // c15_10      : TLB Lockdown
REG=cp15_pmrr    0x00000428 COPROC15 4  // c15_10_o0_2 : Primary Memory Region Remap
REG=cp15_nmrr    0x00000468 COPROC15 4  // c15_10_o1_2 : Normal Memory Region Remap

REG=cp15_fcsepid 0x00000034 COPROC15 4  // c15_13       : FCSE PID
REG=cp15_cid     0x00000074 COPROC15 4  // c15_13_o1_0  : Context ID
REG=cp15_urwpid  0x000000b4 COPROC15 4  // c15_13_o2_0  : User Read/Write thread and Process ID
REG=cp15_uropid  0x000000f4 COPROC15 4  // c15_13_o3_0  : User Readonly thread and Process ID
REG=cp15_popid   0x00000134 COPROC15 4  // c15_13_o4_0  : Privileged Only thread and Process ID

REG=cp15_pmnc    0x0000183c COPROC15 4  // c15_15_o0_12 : Performance Monitor Control
REG=cp15_ccnt    0x0000187c COPROC15 4  // c15_15_o1_12 : Cycle Counter
REG=cp15_pmn0    0x000018bc COPROC15 4  // c15_15_o2_12 : PM Count 0
REG=cp15_pmn1    0x000018fc COPROC15 4  // c15_15_o3_12 : PM Count 1

//
REG_FIELD=cp15_cpuid   imp 31 24, var 23 20, arch 19 16, part 15 4, rev 3 0
REG_FIELD=cp15_cache   ctype 28 25, s 24 24, dsize 23 12, isize 11 0
REG_FIELD=cp15_ttype   ilsize 23 16, dlsize 15 8, u 0 0

REG_FIELD=cp15_pf0     state3 15 12, state2 11 8, state1 7 4, state0 3 0
REG_FIELD=cp15_pf1     ucpm 11 8, secext 7 4, pm 3 0
REG_FIELD=cp15_df0     ucmm 23 20, tdmm 19 16, tdcp 15 12, edm 11 8,
                       sdm 7 4, adm 3 0
REG_FIELD=cp15_mmf0    fcse 27 24, aux 23 20, tcm 19 16, ccdma 15 12,
                       cccpu 11 8, pmsa 7 4, vmsa 3 0
REG_FIELD=cp15_mmf1    btb 31 28, l1tc 27 24, l1cmu 23 20, l1cmh 19 16,
                       l1clmu 15 12, l1clmh 11 8, l1clmvu 7 4, l1clmvh 3 0
REG_FIELD=cp15_mmf2    haf 31 28, wfi 27 24, mbf 23 20, tlbmu 19 16,
                       tlbmh 15 12, l1cmrh 11 8, l1bprh 7 4, l1fprh 3 0
REG_FIELD=cp15_mmf3    hcmva 7 4, hcmsw 3 0

REG_FIELD=cp15_isf0    div 27 24, dbg 23 20, cp 19 16, cbr 15 12, bf 11 8,
                       bc 7 4, a 3 0
REG_FIELD=cp15_isf1    jaz 31 28, iwrk 27 24, imm 23 20, ifthen 19 16,
                       ext 15 12, exc2 11 8, exc1 7 4, end 3 0
REG_FIELD=cp15_isf2    rev 31 28, psr 27 24, mau 23 20, mas 19 16, m 15 12,
                       mai 11 8, mh 7 4, ls 3 0
REG_FIELD=cp15_isf3    t2eee 31 28, tnop 27 24, tcpy 23 20, tb 19 16,
                       sp 15 12, swi 11 8, simd 7 4, sat 3 0
REG_FIELD=cp15_isf4    fsp 23 20, bar 19 16, smi 15 12, wb 11 8, ws 7 4, u 3 0

REG_FIELD=cp15_cntrl   fa 29 29, tr 28 28, ee 25 25, ve 24 24, xp 23 23,
                       u 22 22, fi 21 21, it 18 18, dt 16 16, l4 15 15,
                       rr 14 14, v 13 13, i 12 12, z 11 11, f 10 10, r 9 9,
                       s 8 8, b 7 7, w 3 3, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_auxctl  cz 6 6, rv 5 5, ra 4 4, tr 3 3, sb 2 2, db 1 1, rs 0 0
REG_FIELD=cp15_cpactl  cp13 27 26, cp12 25 24, cp11 23 22, cp10 21 20,
                       cp9 19 18, cp8 17 16, cp7 15 14, cp6 13 12, cp5 11 10,
                       cp4 9 8, cp3 7 6, cp2 5 4, cp1 3 2, cp0 1 0

// The size of the Translation Table Base Address (ttba) field in cp15_ttb0
// is actually dynamic, based on the value of the 'n' field of cp15_ttbc.  
// The debuggers don't support the concept of a dynamic field width, so here
// we define ttba to have the default width (where cp15_ttbc.n == 0), and
// define an extra field named 'nbits' to cover the up-to-seven additional
// low-order bits that may belong to ttba.
// If your code sets N to a consistent, non-zero value, you could edit
// this REG_FIELD specification to reflect the actual size of ttba on
// your system.

REG_FIELD=cp15_ttb0  ttba 31 14, nbits 13 7, rgn 4 3, p 2 2, s 1 1, c 0 0
REG_FIELD=cp15_ttb1  ttba 31 14, rgn 4 3, p 2 2, s 1 1, c 0 0
REG_FIELD=cp15_ttbc  n 2 0

REG_FIELD=cp15_dac   d15 31 30, d14 29 28, d13 27 26, d12 25 24, d11 23 22,
                     d10 21 20, d9 19 18, d8 17 16, d7 15 14, d6 13 12,
                     d5 11 10, d4 9 8, d3 7 6, d2 5 4, d1 3 2, d0 1 0
REG_FIELD=cp15_dfs   sd 12 12, rw 11 11, status4 10 10, dom 7 4, status 3 0
REG_FIELD=cp15_ifs   sd 12 12, status4 10 10, dom 7 4, status 3 0

REG_FIELD=cp15_dclock l3 3 3, l2 2 2, l1 1 1, l0 0 0

REG_FIELD=cp15_tlblk victim 28 26, p 0 0
REG_FIELD=cp15_pmrr  nrs1 19 19, nrs0 18 18, drs1 17 17, drs0 16 16,
                     tcb111 15 14, tcb110 13 12, tcb101 11 10, tcb100 9 8,
                     tcb011 7 6,   tcb010 5 4,   tcb001 3 2,   tcb000 1 0
REG_FIELD=cp15_nmrr  otcb111 31 30, otcb110 29 28, otcb101 27 26, otcb100 25 24,
                     otcb011 23 22, otcb010 21 20, otcb001 19 18, otcb000 17 16,
                     itcb111 15 14, itcb110 13 12, itcb101 11 10, itcb100 9 8,
                     itcb011 7 6,   itcb010 5 4,   itcb001 3 2,   itcb000 1 0

REG_FIELD=cp15_fcsepid pid 31 25
REG_FIELD=cp15_cid   procid 31 8, asid 7 0

REG_FIELD=cp15_pmnc  evcnt0 27 20, evcnt1 19 12, x 11 11, ccr 10 10,
                     cr1 9 9, cr0 8 8, ecc 6 6, ec1 5 5, ec0 4 4,
                     d 3 3, c 2 2, p 1 1, e 0 0

//
// <eof>
