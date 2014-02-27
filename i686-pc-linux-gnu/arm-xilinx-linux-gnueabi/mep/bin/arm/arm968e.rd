// ARM968E-S  CP15 Register Definition File
//

INCLUDE "armbase32.rd"

REG=cp15_cpuid   0x00000000 COPROC15 4  // c15_0_o0_0  (c15_0) : CPU ID
REG=cp15_tcmsz   0x00000080 COPROC15 4  // c15_0_o2_0          : TCM Size
REG=cp15_cntrl   0x00000004 COPROC15 4  // c15_1_o0_0  (c15_1) : Control Register
REG=cp15_trcid   0x00000274 COPROC15 4  // c15_13_o1_1         : Trace Process ID
//
REG_FIELD=cp15_cpuid   imp 31 24, major_rev 23 20, arch 19 16, part 15 4, minor_rev 3 0
REG_FIELD=cp15_tcmsz   dtcmsz 22 18, dtcmabs 14 14, itcmsz 10 6, itcmabs 2 2
REG_FIELD=cp15_cntrl   lt 15 15, v 13 13, i 12 12, b 7 7, w 3 3, d 2 2, a 1 1
//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_tcmsz, cp15_cntrl, cp15_trcid
//
// <eof>
