// ARM946E-S CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_cache   0x00000040 COPROC15 4  // c15_0_o1_0          : Cache Type Register
REG=cp15_tcmsr   0x00000080 COPROC15 4  // c15_0_o2_0          : TCM Size Register
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_dconf   0x00000008 COPROC15 4  // c15_2_o0_0  (c15_2) : DCache Configuration
REG=cp15_iconf   0x00000048 COPROC15 4  // c15_2_o1_0          : ICache Configuration
REG=cp15_wrbuf   0x0000000C COPROC15 4  // c15_3_o0_0  (c15_3) : Write Buffer Control Register
REG=cp15_dprot   0x00000014 COPROC15 4  // c15_5_o0_0  (c15_5) : Data Access Permission (standard)
REG=cp15_iprot   0x00000054 COPROC15 4  // c15_5_o1_0          : Instruction Access Permission (standard)
REG=cp15_dprotex 0x00000094 COPROC15 4  // c15_5_o2_0          : Data Access Permission (extended)
REG=cp15_iprotex 0x000000D4 COPROC15 4  // c15_5_o3_0          : Instruction Access Permission (extended)
REG=cp15_regn0   0x00000018 COPROC15 4  // c15_6_o0_0  (c15_6) : Region Protection 0 base/size
REG=cp15_regn1   0x00000218 COPROC15 4  // c15_6_o0_1          : Region Protection 1 base/size
REG=cp15_regn2   0x00000418 COPROC15 4  // c15_6_o0_2          : Region Protection 2 base/size
REG=cp15_regn3   0x00000618 COPROC15 4  // c15_6_o0_3          : Region Protection 3 base/size
REG=cp15_regn4   0x00000818 COPROC15 4  // c15_6_o0_4          : Region Protection 4 base/size
REG=cp15_regn5   0x00000A18 COPROC15 4  // c15_6_o0_5          : Region Protection 5 base/size
REG=cp15_regn6   0x00000C18 COPROC15 4  // c15_6_o0_6          : Region Protection 6 base/size
REG=cp15_regn7   0x00000E18 COPROC15 4  // c15_6_o0_7          : Region Protection 7 base/size
REG=cp15_dclock  0x00000024 COPROC15 4  // c15_9_o0_0  (c15_9) : DCache Lockdown
REG=cp15_iclock  0x00000064 COPROC15 4  // c15_9_o1_0          : ICache Lockdown
REG=cp15_dtcm    0x00000224 COPROC15 4  // c15_9_o0_1          : DTCM Region Register
REG=cp15_itcm    0x00000264 COPROC15 4  // c15_9_o1_1          : ITCM Region Register
REG=cp15_trcid   0x00000074 COPROC15 4  // c15_13_o1_0         : Trace Process ID
//
REG_FIELD=cp15_cpuid   imp 31 24, arch 19 16, part 15 4, layout 3 0
REG_FIELD=cp15_cache   ctype 28 25, dsize 21 18, dass 17 15, dbs 14 14, dlen 13 12, isize 9 6, iass 5 3, ibs 2 2, ilen 1 0
REG_FIELD=cp15_cntrl   itcmld 19 19, itcme 18 18, dtcmld 17 17, dtcme 16 16, cdltbit 15 15, rr 14 14, v 13 13, i 12 12, b 7 7, d 2 2, m 0 0
REG_FIELD=cp15_tcmsr   dsize 21 18, dabs 14 14, isize 9 6, iabs 2 2
REG_FIELD=cp15_dconf   c7 7 7, c6 6 6, c5 5 5, c4 4 4, c3 3 3, c2 2 2, c1 1 1, c0 0 0
REG_FIELD=cp15_iconf   c7 7 7, c6 6 6, c5 5 5, c4 4 4, c3 3 3, c2 2 2, c1 1 1, c0 0 0
REG_FIELD=cp15_wrbuf   b7 7 7, b6 6 6, b5 5 5, b4 4 4, b3 3 3, b2 2 2, b1 1 1, b0 0 0
REG_FIELD=cp15_dprot   ap7 15 14, ap6 13 12, ap5 11 10, ap4 9 8, ap3 7 6, ap2 5 4, ap1 3 2, ap0 1 0
REG_FIELD=cp15_iprot   ap7 15 14, ap6 13 12, ap5 11 10, ap4 9 8, ap3 7 6, ap2 5 4, ap1 3 2, ap0 1 0
REG_FIELD=cp15_dprotex ap7 31 28, ap6 27 24, ap5 23 20, ap4 19 16, ap3 15 12, ap2 11 8, ap1 7 4, ap0 3 0
REG_FIELD=cp15_iprotex ap7 31 28, ap6 27 24, ap5 23 20, ap4 19 16, ap3 15 12, ap2 11 8, ap1 7 4, ap0 3 0
REG_FIELD=cp15_regn0   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn1   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn2   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn3   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn4   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn5   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn6   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_regn7   base 31 12, size 5 1, ren 0 0
REG_FIELD=cp15_dclock  load 31 31, cseg 1 0
REG_FIELD=cp15_iclock  load 31 31, cseg 1 0
REG_FIELD=cp15_dtcm    base 31 12, size 5 1
REG_FIELD=cp15_itcm    base 31 12, size 5 1
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cache, cp15_tcmsr, cp15_cntrl, cp15_dconf, cp15_iconf, cp15_wrbuf, cp15_dprot, cp15_iprot, cp15_dprotex, cp15_iprotex, cp15_regn0, cp15_regn1, cp15_regn2, cp15_regn3, cp15_regn4, cp15_regn5, cp15_regn6, cp15_regn7, cp15_dclock, cp15_iclock, cp15_dtcm, cp15_itcm, cp15_trcid
//
// <eof>
