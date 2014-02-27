// ARM920T CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_cache   0x00000040 COPROC15 4  // c15_0_o1_0          : Cache Type Register
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_ttb     0x00000008 COPROC15 4  // c15_2_o0_0  (c15_2) : Translation Table Base
REG=cp15_domac   0x0000000C COPROC15 4  // c15_3_o0_0  (c15_3) : Domain Access Control
REG=cp15_dfsr    0x00000014 COPROC15 4  // c15_5_o0_0  (c15_5) : Fault Status Register, Data
REG=cp15_ifsr    0x00000054 COPROC15 4  // c15_5_o1_0          : Fault Status Register, Inst Prefetch
REG=cp15_far     0x00000018 COPROC15 4  // c15_6_o0_0  (c15_6) : Fault Address Register, Data
REG=cp15_dclock  0x00000024 COPROC15 4  // c15_9_o0_0  (c15_9) : DCache Lockdown
REG=cp15_iclock  0x00000064 COPROC15 4  // c15_9_o1_0          : ICache Lockdown
REG=cp15_dtlblk  0x00000028 COPROC15 4  // c15_10_o0_0 (c15_10): Data TLB Lockdown 
REG=cp15_itlblk  0x00000068 COPROC15 4  // c15_10_o1_0         : Instruction TLB Lockdown
REG=cp15_fcsepid 0x00000034 COPROC15 4  // c15_13_o0_0 (c15_13): Fast Context Switch (FSE) Process ID (PID)
//
REG_FIELD=cp15_cpuid   imp 31 24, spec 23 20, arch 19 16, part 15 4, layout 3 0
REG_FIELD=cp15_cache   ctype 28 25, s 24 24, dsize 20 18, dass 17 15, dm 14 14, dlen 13 12, isize 8 6, iass 5 3, im 2 2, ilen 1 0
REG_FIELD=cp15_cntrl   ia 31 31, nf 30 30, rr 14 14, v 13 13, i 12 12, r 9 9, s 8 8, b 7 7, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_domac   d15 31 30, d14 29 28, d13 27 26, d12 25 24, d11 23 22, d10 21 20, d09 19 18, d08 17 16, d07 15 14, d06 13 12, d05 11 10, d04 9 8, d03 7 6, d02 5 4, d01 3 2, d00 1 0
REG_FIELD=cp15_dfsr    domain 7 4, fault 3 0
REG_FIELD=cp15_ifsr    domain 7 4, fault 3 0
REG_FIELD=cp15_dclock  index 31 26
REG_FIELD=cp15_iclock  index 31 26
REG_FIELD=cp15_dtlblk  base 31 26, victim 25 20, p 0 0
REG_FIELD=cp15_itlblk  base 31 26, victim 25 20, p 0 0
REG_FIELD=cp15_fcsepid fcsepid 31 25
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cache, cp15_cntrl, cp15_ttb, cp15_domac, cp15_dfsr, cp15_ifsr, cp15_far, cp15_dclock, cp15_iclock, cp15_dtlblk, cp15_itlblk, cp15_fcsepid
//
// <eof>
