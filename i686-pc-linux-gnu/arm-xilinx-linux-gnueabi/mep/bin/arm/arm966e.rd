// ARM966E-S  CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_trcid   0x00000274 COPROC15 4  // c15_13_o1_1         : Trace Process ID
//
REG_FIELD=cp15_cpuid   imp 31 24, var 23 20, arch 19 16, part 15 4, ver 3 0
REG_FIELD=cp15_cntrl   tcfg 15 15, v 13 13, isram 12 12, b 7 7, wb 3 3, dsram 2 2
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cntrl, cp15_trcid
//
// <eof>
