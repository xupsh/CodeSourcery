// Common ARM11x6 Register Definition File
//
// contains CP15 registers common to 1136/1156/1176 but not MP11
// (ARM11 MPCore)

// CP15 R7 registers are Write-only, except for cp15_cds which is read-only
// Don't put them in a window!
REG=cp15_cds     0x0000159c COPROC15 4  // c15_7_o6_10 : Cache Dirty Status
REG=cp15_pfic    0x00001a5c COPROC15 4  // c15_7_o1_13 : Prefetch Instruction Cache line

REG=cp15_iclock  0x00000064 COPROC15 4  // c15_9_o1_0  : Instruction Cache Lockdown
REG=cp15_dtcmr   0x00000224 COPROC15 4  // c15_9_o0_1  : Data TMC Region
REG=cp15_itcmr   0x00000264 COPROC15 4  // c15_9_o1_1  : Instruction TMC Region

REG=cp15_ppmr    0x0000053c COPROC15 4  // c15_15_o4_2  : Peripheral Port Memory Remap

REG=cp15_icmv    0x0000703c COPROC15 4 SEQ 0 7 16  //   : Instruction Cache Master Valid (0-7)
REG=cp15_dcmv    0x0000783c COPROC15 4 SEQ 0 7 16  //   : Data Cache Master Valid (0-7)

//
REG_FIELD=cp15_iclock l3 3 3, l2 2 2, l1 1 1, l0 0 0
REG_FIELD=cp15_dtcmr base 31 12, size 6 2, sc 1 1, en 0 0
REG_FIELD=cp15_itcmr base 31 12, size 6 2, sc 1 1, en 0 0

REG_FIELD=cp15_ppmr  base 31 12, size 4 0
