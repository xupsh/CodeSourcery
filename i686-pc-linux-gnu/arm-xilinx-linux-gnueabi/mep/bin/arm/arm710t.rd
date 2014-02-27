// ARM710T CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_ttb     0x00000008 COPROC15 4  // c15_2_o0_0  (c15_2) : Translation Table Base
REG=cp15_domac   0x0000000C COPROC15 4  // c15_3_o0_0  (c15_3) : Domain Access Control
REG=cp15_fsr     0x00000014 COPROC15 4  // c15_5_o0_0  (c15_5) : Fault Status Register
REG=cp15_far     0x00000018 COPROC15 4  // c15_6_o0_0  (c15_6) : Fault Address Register
//
REG_FIELD=cp15_cpuid   imp 31 24, spec 23 20, arch 19 16, part 15 4, rev 3 0
REG_FIELD=cp15_cntrl   r 9 9, s 8 8, b 7 7, l 6 6, d 5 5, p 4 4, w 3 3, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_domac   d15 31 30, d14 29 28, d13 27 26, d12 25 24, d11 23 22, d10 21 20, d09 19 18, d08 17 16, d07 15 14, d06 13 12, d05 11 10, d04 9 8, d03 7 6, d02 5 4, d01 3 2, d00 1 0
REG_FIELD=cp15_fsr     domain 7 4, fault 3 0
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cntrl, cp15_ttb, cp15_domac, cp15_fsr, cp15_far
//
// <eof>
