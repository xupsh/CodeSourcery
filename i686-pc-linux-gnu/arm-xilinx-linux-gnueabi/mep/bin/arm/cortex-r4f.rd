// CORTEX-R4F Register Definition File
//
// The "cp" macro below is a built in and takes coprocessor arguments in the
// same order as they would appear in the assembly instructions. Example
// 
//  mrc p15, op1, <rd>, CRn, CRm, op2   ->   cp(Op1, CRn, CRm, Op2)   
//
INCLUDE "cortex-r4.rd"
INCLUDE "vfp-data.rd"

//Vector Floating Point (VFP) System Register Definition File

//CP macro takes the parameters in this format : cp(Op1, CRn, CRm, Op2) 
//MON composes a 32 bit register address value from above parameters as below.
//Register address =( ((crn0)|(op2 << 4)|(crm<<7)|(op1<<11)) * sizeof(register) )

// VFP system control registers: op1 = 7, CRm = 0, CRn = RegisterNumber, op2 = 0
REG=vfp_fpsid	cp(7,0,0,0) COPROC10 4// r0 : FP System ID (MDI reg. address 0x0000e000)
REG=vfp_fpscr   cp(7,1,0,0) COPROC10 4// r1 : FP Status and Control (MDI reg. address 0x0000e004)
REG=vfp_mvfr1   cp(7,6,0,0) COPROC10 4// r6 : Media and VFP 1 (MDI reg. address 0x0000e018)
REG=vfp_mvfr0   cp(7,7,0,0) COPROC10 4// r7 : FP Media and VFP 0 (MDI reg. address 0x0000e01c)
REG=vfp_fpexc   cp(7,8,0,0) COPROC10 4// r8 : FP Exception FP (MDI reg. address 0x0000e020)

REG_FIELD=vfp_fpsid  imp 31 24, sw 23 23, subarch 22 16, part 15 8, var 7 4, rev 3 0

REG_FIELD=vfp_fpscr  n 31 31, z 30 30, c 29 29, v 28 28, qc 27 27, dnm1 26 26, 
					 dn 25 25, fz 24 24, rmode 23 22, stride 21 20, dnm2 19 19, 
					 len 18 16, ide 15 15, dnm3 14 13, ixe 12 12, ufe 11 11, ofe 10 10, 
					 dze 9 9, ioe 8 8, idc 7 7, dnm4 6 5, ixc 4 4, ufc 3 3, ofc 2 2,
					 dzc 1 1, ioc 0 0

REG_FIELD=vfp_fpexc  en 30 30, dex 29 29

REG_FIELD=vfp_mvfr0  rm 31 28, svec 27 24, sqrt 23 20, div 19 16, 
                     te 15 12, dp 11 8, sp 7 4, mrb 3 0

REG_FIELD=vfp_mvfr1  sp 19 16, int 15 12, ls 11 8, dn 7 4, fz 3 0

//
// <eof>
