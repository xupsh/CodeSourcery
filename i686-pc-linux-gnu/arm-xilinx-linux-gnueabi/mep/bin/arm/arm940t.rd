// ARM940T   CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_cache   0x00000040 COPROC15 4  // c15_0_o1_0          : Cache Type Register
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_dconf   0x00000008 COPROC15 4  // c15_2_o0_0  (c15_2) : DCache Configuration
REG=cp15_iconf   0x00000048 COPROC15 4  // c15_2_o1_0          : ICache Configuration
REG=cp15_wrbuf   0x0000000C COPROC15 4  // c15_3_o0_0  (c15_3) : Write Buffer Control Register
REG=cp15_dprot   0x00000014 COPROC15 4  // c15_5_o0_0  (c15_5) : Data Access Protection
REG=cp15_iprot   0x00000054 COPROC15 4  // c15_5_o1_0          : Instruction Access Protection
REG=cp15_dregn0  0x00000018 COPROC15 4  // c15_6_o0_0  (c15_6) : Data Region Protection 0 base/size
REG=cp15_dregn1  0x00000218 COPROC15 4  // c15_6_o0_1          : Data Region Protection 1 base/size
REG=cp15_dregn2  0x00000418 COPROC15 4  // c15_6_o0_2          : Data Region Protection 2 base/size
REG=cp15_dregn3  0x00000618 COPROC15 4  // c15_6_o0_3          : Data Region Protection 3 base/size
REG=cp15_dregn4  0x00000818 COPROC15 4  // c15_6_o0_4          : Data Region Protection 4 base/size
REG=cp15_dregn5  0x00000A18 COPROC15 4  // c15_6_o0_5          : Data Region Protection 5 base/size
REG=cp15_dregn6  0x00000C18 COPROC15 4  // c15_6_o0_6          : Data Region Protection 6 base/size
REG=cp15_dregn7  0x00000E18 COPROC15 4  // c15_6_o0_7          : Data Region Protection 7 base/size
REG=cp15_iregn0  0x00000058 COPROC15 4  // c15_6_o1_0          : Instruction Region Protection 0 base/size
REG=cp15_iregn1  0x00000258 COPROC15 4  // c15_6_o1_1	       : Instruction Region Protection 1 base/size
REG=cp15_iregn2  0x00000458 COPROC15 4  // c15_6_o1_2	       : Instruction Region Protection 2 base/size
REG=cp15_iregn3  0x00000658 COPROC15 4  // c15_6_o1_3	       : Instruction Region Protection 3 base/size
REG=cp15_iregn4  0x00000858 COPROC15 4  // c15_6_o1_4	       : Instruction Region Protection 4 base/size
REG=cp15_iregn5  0x00000A58 COPROC15 4  // c15_6_o1_5	       : Instruction Region Protection 5 base/size
REG=cp15_iregn6  0x00000C58 COPROC15 4  // c15_6_o1_6	       : Instruction Region Protection 6 base/size
REG=cp15_iregn7  0x00000E58 COPROC15 4  // c15_6_o1_7	       : Instruction Region Protection 7 base/size
REG=cp15_dclock  0x00000024 COPROC15 4  // c15_9_o0_0  (c15_9) : DCache Lockdown
REG=cp15_iclock  0x00000064 COPROC15 4  // c15_9_o1_0          : ICache Lockdown
//
REG_FIELD=cp15_cpuid   imp 31 24, arch 19 16, part 15 4, layout 3 0
REG_FIELD=cp15_cache   ctype 28 25, dsize 20 18, dass 17 15, dbs 14 14, dlen 13 12, isize 8 6, iass 5 3, ibs 2 2, ilen 1 0
REG_FIELD=cp15_cntrl   ia 31 31, nf 30 30, v 13 13, i 12 12, b 7 7, d 2 2, m 0 0
REG_FIELD=cp15_dconf   c7 7 7, c6 6 6, c5 5 5, c4 4 4, c3 3 3, c2 2 2, c1 1 1, c0 0 0
REG_FIELD=cp15_iconf   c7 7 7, c6 6 6, c5 5 5, c4 4 4, c3 3 3, c2 2 2, c1 1 1, c0 0 0
REG_FIELD=cp15_wrbuf   b7 7 7, b6 6 6, b5 5 5, b4 4 4, b3 3 3, b2 2 2, b1 1 1, b0 0 0
REG_FIELD=cp15_dprot   ap7 15 14, ap6 13 12, ap5 11 10, ap4 9 8, ap3 7 6, ap2 5 4, ap1 3 2, ap0 1 0
REG_FIELD=cp15_iprot   ap7 15 14, ap6 13 12, ap5 11 10, ap4 9 8, ap3 7 6, ap2 5 4, ap1 3 2, ap0 1 0
REG_FIELD=cp15_dregn0  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn1  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn2  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn3  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn4  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn5  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn6  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dregn7  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn0  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn1  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn2  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn3  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn4  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn5  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn6  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_iregn7  base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dclock  load 31 31, cseg 5 0
REG_FIELD=cp15_iclock  load 31 31, cseg 5 0
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cache, cp15_cntrl, cp15_dconf, cp15_iconf, cp15_wrbuf, cp15_dprot, cp15_iprot, cp15_dregn0, cp15_dregn1, cp15_dregn2, cp15_dregn3, cp15_dregn4, cp15_dregn5, cp15_dregn6, cp15_dregn7, cp15_iregn0, cp15_iregn1, cp15_iregn2, cp15_iregn3, cp15_iregn4, cp15_iregn5, cp15_iregn6, cp15_iregn7, cp15_dclock, cp15_iclock
//
// <eof>
