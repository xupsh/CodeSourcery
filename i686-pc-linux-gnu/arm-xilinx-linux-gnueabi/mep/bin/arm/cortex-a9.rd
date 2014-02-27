// CORTEX Register Definition File
// Contains definitions for registers and fields that are not present in Cortex-A8
//
// The "cp" macro below is a built in and takes coprocessor arguments in the
// same order as they would appear in the assembly instructions. Example
// 
//  mrc p15, op1, <rd>, CRn, CRm, op2   ->   cp(Op1, CRn, CRm, Op2)   
//

INCLUDE "cortex-a8.rd"

REG=cp15_cntrl			cp(0,1,0,0)	COPROC15 4  //Control
REG=cp15_auxctl			cp(0,1,0,1)	COPROC15 4  //Auxilliary Control
REG=cp15_config_base	cp(4,15,0,0)	COPROC15 4  //Configuration Base Address

//VFP Double Precision (DP) registers
//Cortex-a9 targets have 32 DP registers,DP0-DP15 are defined in vfp-data.rd,since
//they are common between VFPv2 and VFPv3 architectures.
//DP16-DP31 are defined here.
 
REG=vfp_d16		cp(0,0,0,1)	COPROC11 8 
REG=vfp_d17		cp(0,0,1,1)	COPROC11 8 
REG=vfp_d18		cp(0,0,2,1)	COPROC11 8 
REG=vfp_d19		cp(0,0,3,1)	COPROC11 8 
REG=vfp_d20		cp(0,0,4,1)	COPROC11 8 
REG=vfp_d21		cp(0,0,5,1)	COPROC11 8 
REG=vfp_d22		cp(0,0,6,1)	COPROC11 8 
REG=vfp_d23		cp(0,0,7,1)	COPROC11 8 
REG=vfp_d24		cp(0,0,8,1)	COPROC11 8 
REG=vfp_d25		cp(0,0,9,1)	COPROC11 8 
REG=vfp_d26		cp(0,0,10,1) COPROC11 8 
REG=vfp_d27		cp(0,0,11,1) COPROC11 8 
REG=vfp_d28		cp(0,0,12,1) COPROC11 8 
REG=vfp_d29		cp(0,0,13,1) COPROC11 8 
REG=vfp_d30		cp(0,0,14,1) COPROC11 8 
REG=vfp_d31		cp(0,0,15,1) COPROC11 8 
REG_FIELD=cp15_cntrl	te 30 30, afe 29 29, tre 28 28, nmfi 27 27, ee 25 25, ha 17 17,
						rr 14 14, v 13 13, i 12 12, z 11 11, sw 10 10, c 2 2, a 1 1, m 0 0

REG_FIELD=cp15_auxctl	po 9 9, aow 8 8, excl 7 7, smp 6 6, wflzm 3 3, l1pe 2 2,     	 
						l2pe 1 1, fw 0 0
						
REG_FIELD=cp15_config_base		adr 31 0 						


//May have to add these....						
//Configuration Base Address Register
//Multiprocessor Affinity Register
//Snoop Control Unit Registers						

//
// <eof>
