//Vector Floating Point (VFP) Data Register Definition File
//2 types of VFP registers : Single Precision (SP) values are represented in
//32 bit registers and Double Precision (DP) values are represented in
//64 bit registers. ARM CoProcessor CP10 is used for Single Precision register
//transfers and CP11 is used for Double Precision register transfers.

//RD file contains the register descriptions in the format of
//Register Name, Register Address, Register Space, Register Size

//Register Address can be specified in terms of ARM CoProcessor register transfer
//instructions parameters, namely opcode1=op1, CRn, CRm, opcode2=op2. 
//CP macro takes the parameters in this format : cp(Op1, CRn, CRm, Op2) 
//MON composes a 32 bit register address value from above parameters as below.
//Register address =( ((crn0)|(op2 << 4)|(crm<<7)|(op1<<11)) * sizeof(register) )

//SP data registers transfer instructions need parameters encoded as 
//CRn = RegisterNumber/2, op2 = (RegisterNumber & 1) << 2, CRm = 0, op1 = 0 
//i.e. CRn increments for every other register and not for every register as in
//case of CP15 registers.
//We need to define individual registers here, instead of using a sequence, because
//of the way the register number is encoded (low bit goes in op2 bit 2).
//We could have used a pair of sequences - one for the odd numbered registers and
//other for even numbered registers (vfp_s0/2/4../14 and vfp_s1/3/..15), but that
//would have been more complicated.

//(Refer ARM Arch. ref. manual V6 sections - B3.2.1, C3.3 for how these parameters
//are used in the register transfer instructions)

REG=vfp_s0      cp(0,0,0,0)	COPROC10 4  //can also use REG=vfp_s0 0x00000000 COPROC10 4  
REG=vfp_s1      cp(0,0,0,4)	COPROC10 4  // 0x00000100
REG=vfp_s2      cp(0,1,0,0)	COPROC10 4  // 0x00000004 
REG=vfp_s3      cp(0,1,0,4) COPROC10 4  // 0x00000104
REG=vfp_s4      cp(0,2,0,0) COPROC10 4  // 0x00000008
REG=vfp_s5      cp(0,2,0,4) COPROC10 4  // 0x00000108
REG=vfp_s6      cp(0,3,0,0) COPROC10 4  // 0x0000000C
REG=vfp_s7      cp(0,3,0,4) COPROC10 4  // 0x0000010C
REG=vfp_s8      cp(0,4,0,0) COPROC10 4  // 0x00000010
REG=vfp_s9      cp(0,4,0,4)	COPROC10 4  // 0x00000110 
REG=vfp_s10     cp(0,5,0,0) COPROC10 4  // 0x00000014 
REG=vfp_s11     cp(0,5,0,4) COPROC10 4  // 0x00000114
REG=vfp_s12     cp(0,6,0,0) COPROC10 4  // 0x00000018
REG=vfp_s13     cp(0,6,0,4) COPROC10 4  // 0x00000118
REG=vfp_s14     cp(0,7,0,0) COPROC10 4  // 0x0000001c
REG=vfp_s15     cp(0,7,0,4) COPROC10 4  // 0x0000011c
REG=vfp_s16     cp(0,8,0,0) COPROC10 4  // 0x00000020
REG=vfp_s17     cp(0,8,0,4) COPROC10 4  // 0x00000120
REG=vfp_s18     cp(0,9,0,0) COPROC10 4  // 0x00000024
REG=vfp_s19     cp(0,9,0,4) COPROC10 4  // 0x00000124
REG=vfp_s20     cp(0,10,0,0) COPROC10 4  // 0x00000028 
REG=vfp_s21     cp(0,10,0,4) COPROC10 4  // 0x00000128
REG=vfp_s22     cp(0,11,0,0) COPROC10 4  // 0x0000002C
REG=vfp_s23     cp(0,11,0,4) COPROC10 4  // 0x0000012C
REG=vfp_s24     cp(0,12,0,0) COPROC10 4  // 0x00000030
REG=vfp_s25     cp(0,12,0,4) COPROC10 4  // 0x00000130
REG=vfp_s26     cp(0,13,0,0) COPROC10 4  // 0x00000034
REG=vfp_s27     cp(0,13,0,4) COPROC10 4  // 0x00000134
REG=vfp_s28     cp(0,14,0,0) COPROC10 4  // 0x00000038
REG=vfp_s29     cp(0,14,0,4) COPROC10 4  // 0x00000138
REG=vfp_s30     cp(0,15,0,0) COPROC10 4  // 0x0000003c
REG=vfp_s31     cp(0,15,0,4) COPROC10 4  // 0x0000013c

//VFP Double Precision register description 

//CRm = Double Precision register number 0 - 15. 
//op1 has a constant value of 2 which is hard coded by the firmware. So op1 can 
//be set to 0 here.  
//CRn (or Rn) = 0 because ARM core register to use during the transfer is filled
//in by the firmware, 
//op2 = 0 because only 16 DP registers for ARM11 and many other CPUs.
//L bit to set direction of transfer (to/from VFP registers) will be filled in by
//the MESP firmware. 

//VFPv2 and VFPv3 architectures both support 16 DP registers,D0-D15 which are defined below
//When particular implrmentation supports 32 DP registers(cortex-A9),D16-D31 registers
//are defined separately in corresponding rd file.

REG=vfp_d0		cp(0,0,0,0)		COPROC11 8 
REG=vfp_d1		cp(0,0,1,0)		COPROC11 8 //REG=vfp_d1  0x00000400	COPROC11 8 
REG=vfp_d2		cp(0,0,2,0)		COPROC11 8 
REG=vfp_d3		cp(0,0,3,0)		COPROC11 8 
REG=vfp_d4		cp(0,0,4,0)		COPROC11 8 
REG=vfp_d5		cp(0,0,5,0)		COPROC11 8 
REG=vfp_d6		cp(0,0,6,0)		COPROC11 8 
REG=vfp_d7		cp(0,0,7,0)		COPROC11 8 
REG=vfp_d8		cp(0,0,8,0)		COPROC11 8 
REG=vfp_d9		cp(0,0,9,0)		COPROC11 8 
REG=vfp_d10		cp(0,0,10,0)	COPROC11 8 
REG=vfp_d11		cp(0,0,11,0)	COPROC11 8 
REG=vfp_d12		cp(0,0,12,0)	COPROC11 8 
REG=vfp_d13		cp(0,0,13,0)	COPROC11 8 
REG=vfp_d14		cp(0,0,14,0)	COPROC11 8 
REG=vfp_d15		cp(0,0,15,0)	COPROC11 8 
