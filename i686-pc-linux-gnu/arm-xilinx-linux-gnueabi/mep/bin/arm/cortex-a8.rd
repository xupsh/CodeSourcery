// CORTEX-A8 Register Definition File
// Contains definitions for CP15 registers common to all supported CORTEX
//
// The "cp" macro below is a built in and takes coprocessor arguments in the
// same order as they would appear in the assembly instructions. Example
// 
//  mrc p15, op1, <rd>, CRn, CRm, op2   ->   cp(Op1, CRn, CRm, Op2)   
//
INCLUDE "armbase32.rd"
INCLUDE "vfp-data.rd"


REG=cp14_dbgdidr  cp(0,0,0,0)	COPROC14 4  // Debug ID Register
REG=cp14_dbgdrar  cp(0,1,0,0)	COPROC14 4  // Debug ROM Address Register
REG=cp14_dbgdsar  cp(0,2,0,0)	COPROC14 4  // Debug Self Address Offset Register
REG=cp14_dbgdtrrx cp(0,0,5,0)	COPROC14 4  // DBGDTRRX internal view
REG=cp14_dbgdtrtx cp(0,0,5,0)	COPROC14 4  // DBGDTRTX internal view - this is an alias of DBGDTRRX
REG=cp14_dbgscr   cp(0,0,1,0)	COPROC14 4  // DBGSCR internal view

REG=cp14_pcsr	  cp(0,0,1,2)   COPROC14 4  // Program Counter Sampling Register (read only)
REG=cp14_itr	  cp(0,0,1,2)   COPROC14 4  // Program Counter Sampling Register (write only - aliased)


REG=cp15_cpuid   cp(0,0,0,0)	COPROC15 4  // CPU ID
REG=cp15_cache   cp(0,0,0,1)	COPROC15 4  // Cache Type
REG=cp15_ttype   cp(0,0,0,3)	COPROC15 4  // TLB Type
REG=cp15_multid  cp(0,0,0,5)	COPROC15 4  // Multiprocessor ID

REG=cp15_pf0     cp(0,0,1,0)	COPROC15 4  // Processor Feature 0
REG=cp15_pf1     cp(0,0,1,1)	COPROC15 4  // Processor Feature 1
REG=cp15_df0     cp(0,0,1,2)	COPROC15 4  // Debug Feature 0
REG=cp15_af0     cp(0,0,1,3)	COPROC15 4  // Auxiliary Feature 0
REG=cp15_mmf0    cp(0,0,1,4)	COPROC15 4  // c15_0_o4_1  : Memory Model Feature 0
REG=cp15_mmf1    cp(0,0,1,5)	COPROC15 4  // c15_0_o5_1  : Memory Model Feature 1
REG=cp15_mmf2    cp(0,0,1,6)	COPROC15 4  // c15_0_o6_1  : Memory Model Feature 2
REG=cp15_mmf3    cp(0,0,1,7)	COPROC15 4  // c15_0_o7_1  : Memory Model Feature 3

REG=cp15_isf0    cp(0,0,2,0)	COPROC15 4  // Instruction Set Attributes 0
REG=cp15_isf1    cp(0,0,2,1)	COPROC15 4  // Instruction Set Attributes 1
REG=cp15_isf2    cp(0,0,2,2)	COPROC15 4  // Instruction Set Attributes 2
REG=cp15_isf3    cp(0,0,2,3)	COPROC15 4  // Instruction Set Attributes 3
REG=cp15_isf4    cp(0,0,2,4)	COPROC15 4  // Instruction Set Attributes 4
// Reserved
//REG=cp15_isf5    cp(0,0,2,5)	COPROC15 4  // Instruction Set Attributes 5
//REG=cp15_isf6    cp(0,0,2,6)	COPROC15 4  // Instruction Set Attributes 6
//REG=cp15_isf7    cp(0,0,2,7)	COPROC15 4  // Instruction Set Attributes 7

REG=cp15_cpuid   cp(0,0,0,0)	COPROC15 4  // CPU ID
REG=cp15_cache   cp(0,0,0,1)	COPROC15 4  // Cache Type
REG=cp15_tcm     cp(0,0,0,2)	COPROC15 4  // TCM Type
REG=cp15_ttype   cp(0,0,0,3)	COPROC15 4  // TLB Type
REG=cp15_multid  cp(0,0,0,5)	COPROC15 4  // Multiprocessor ID

REG=cp15_isf5    cp(0,0,2,5)	COPROC15 4  // Instruction Set Attributes 5
REG=cp15_isf6    cp(0,0,2,6)	COPROC15 4  // Instruction Set Attributes 6
REG=cp15_isf7    cp(0,0,2,7)	COPROC15 4  // Instruction Set Attributes 7

REG=cp15_csizeid cp(1,0,0,0)	COPROC15 4  // Cache Size Identification
REG=cp15_clvlid  cp(1,0,0,1)	COPROC15 4  // Cache Level ID
REG=cp15_silid   cp(1,0,0,7)	COPROC15 4  // Silicon ID
REG=cp15_csizesel cp(2,0,0,0)	COPROC15 4  // Cache Size Selection

REG=cp15_cntrl   cp(0,1,0,0)	COPROC15 4  // Control
REG=cp15_auxctl  cp(0,1,0,1)	COPROC15 4  // Auxilliary Control
REG=cp15_cpactl  cp(0,1,0,2)	COPROC15 4  // CP Access Control

REG=cp15_sc      cp(0,1,1,0)	COPROC15 4  // Secure Configuration
REG=cp15_sde     cp(0,1,1,1)	COPROC15 4  // Secure Debug Enable
REG=cp15_nac     cp(0,1,1,2)	COPROC15 4  // Nonsecure Access Control

REG=cp15_ttb0    cp(0,2,0,0)	COPROC15 4  // Translation Table Base 0
REG=cp15_ttb1    cp(0,2,0,1)	COPROC15 4  // Translation Table Base 1
REG=cp15_ttbc    cp(0,2,0,2)	COPROC15 4  // Translation Table Base Control

REG=cp15_dac     cp(0,3,0,0)	COPROC15 4  // Domain Access Control

REG=cp15_dfs     cp(0,5,0,0)	COPROC15 4  // Data Fault Status
REG=cp15_ifs     cp(0,5,0,1)	COPROC15 4  // Instruction Fault Status

REG=cp15_dafs    cp(0,5,1,0)	COPROC15 4  // Data Auxillary Fault Status
REG=cp15_iafs    cp(0,5,1,1)	COPROC15 4  // Instruction Auxillary Fault Status

REG=cp15_dfa     cp(0,6,0,0)	COPROC15 4  // Data Fault Address
REG=cp15_ifa     cp(0,6,0,2)	COPROC15 4  // Instruction Fault Address

// Warning: CRn7 regsiters are generally write only
REG=cp15_wfi     cp(0,7,0,4)	COPROC15 4  // NOP WFI -- WriteOnly
REG=cp15_pa      cp(0,7,4,0)	COPROC15 4  // Physical Address
REG=cp15_iaic    cp(0,7,5,0)	COPROC15 4  // Invalid All Instruction Caches (unification) -- WriteOnly
REG=cp15_iic     cp(0,7,5,1)	COPROC15 4  // Invalid Instruction Cache Line (unification) -- WriteOnly
REG=cp15_fpb     cp(0,7,5,4)	COPROC15 4  // Flush Prefetch Buffer -- WriteOnly
REG=cp15_ibpa    cp(0,7,5,6)	COPROC15 4  // Invladate Branch Predictor Array (NOP) -- WriteOnly
REG=cp15_ibpal   cp(0,7,5,7)	COPROC15 4  // Invladate Branch Predictor Array Line (NOP) -- WriteOnly
REG=cp15_idcm    cp(0,7,6,1)	COPROC15 4  // Invalidate Data Cache using MVA -- WriteOnly
REG=cp15_idcs    cp(0,7,6,2)	COPROC15 4  // Invalidate Data Cache using Set/Way
REG=cp15_vapac0  cp(0,7,8,0)	COPROC15 4  // VA to PA translation in the current state
REG=cp15_vapac1  cp(0,7,8,1)	COPROC15 4  // VA to PA translation in the current state
REG=cp15_vapac2  cp(0,7,8,2)	COPROC15 4  // VA to PA translation in the current state
REG=cp15_vapac3  cp(0,7,8,3)	COPROC15 4  // VA to PA translation in the current state
REG=cp15_vapao0  cp(0,7,8,4)	COPROC15 4  // VA to PA translation in the other state
REG=cp15_vapao0  cp(0,7,8,5)	COPROC15 4  // VA to PA translation in the other state
REG=cp15_vapao0  cp(0,7,8,6)	COPROC15 4  // VA to PA translation in the other state
REG=cp15_vapao0  cp(0,7,8,7)	COPROC15 4  // VA to PA translation in the other state
REG=cp15_cdcm    cp(0,7,10,1)	COPROC15 4  // Clean Data Cache using MVA    
REG=cp15_cdcs    cp(0,7,10,2)	COPROC15 4  // Clean Data Cache using Set/Way
REG=cp15_dsb     cp(0,7,10,4)	COPROC15 4  // Data Syncronization Barrier
REG=cp15_dmb     cp(0,7,10,5)	COPROC15 4  // Data Memory Barrier
REG=cp15_cdclum  cp(0,7,11,1)	COPROC15 4  // Clean Data Cache Line (unification) by MVA
REG=cp15_cidcm   cp(0,7,14,1)	COPROC15 4  // Clean and Invalidate Data Cache using MVA
REG=cp15_cidcs   cp(0,7,14,2)	COPROC15 4  // Clean and Invalidate Data Cache using Set/Way


// CP15 CR8 registers are Write-only
REG=cp15_iit     cp(0,8,5,0)	COPROC15 4  // Invalidate Instruction TLB	   
REG=cp15_iite    cp(0,8,5,1)	COPROC15 4  // Invalidate Instruction TLB Entry  
REG=cp15_iita    cp(0,8,5,2)	COPROC15 4  // Invalidate Instruction TLB on ASID
REG=cp15_idt     cp(0,8,6,0)	COPROC15 4  // Invalidate Data TLB
REG=cp15_idte    cp(0,8,6,1)	COPROC15 4  // Invalidate Data TLB Entry
REG=cp15_idta    cp(0,8,6,2)	COPROC15 4  // Invalidate Data TLB on ASID
REG=cp15_iut     cp(0,8,7,0)	COPROC15 4  // Invalidate Unified TLB
REG=cp15_iute    cp(0,8,7,1)	COPROC15 4  // Invalidate Unified TLB Entry
REG=cp15_iuta    cp(0,8,7,2)	COPROC15 4  // Invalidate Unified TLB on ASID

REG=cp15_pmnc    cp(0,9,12,0)	COPROC15 4  // Perforamnce MoNitor Control
REG=cp15_cntens  cp(0,9,12,1)	COPROC15 4  // CouNT ENabled Set
REG=cp15_cntenc  cp(0,9,12,2)	COPROC15 4  // CouNT ENabled Clear
REG=cp15_ofs     cp(0,9,12,3)	COPROC15 4  // Overflow Flag Status
REG=cp15_sincr   cp(0,9,12,4)	COPROC15 4  // Software Increment
REG=cp15_pmnxsel cp(0,9,12,5)	COPROC15 4  // Perforamnce Counter Selection
REG=cp15_ccnt    cp(0,9,13,0)	COPROC15 4  // Cycle Count
REG=cp15_evtsel  cp(0,9,13,1)	COPROC15 4  // Event Selection
REG=cp15_pmcnt   cp(0,9,13,2)	COPROC15 4  // Performance Monitor Count
REG=cp15_useren  cp(0,9,14,0)	COPROC15 4  // User Enable
REG=cp15_intens  cp(0,9,14,1)	COPROC15 4  // Interrupt Enable Set
REG=cp15_intenc  cp(0,9,14,2)	COPROC15 4  // Interrupt Enable Clear
REG=cp15_l2cl    cp(1,9,0,0)	COPROC15 4  // L2 Cache Lockdown
REG=cp15_l2cac   cp(1,9,0,2)	COPROC15 4  // L2 Cache Auxiliary Control

REG=cp15_dtlblk  cp(0,10,0,0)	COPROC15 4  // Data TLB Lockdown
REG=cp15_itlblk  cp(0,10,0,1)	COPROC15 4  // Instruction TLB Lockdown
REG=cp15_dtlbp   cp(0,10,1,0)	COPROC15 4  // Data TLB Preload
REG=cp15_itlbp   cp(0,10,1,1)	COPROC15 4  // Instruction TLB Preload
REG=cp15_pmrr    cp(0,10,2,0)	COPROC15 4  // Primary Memory Region Remap
REG=cp15_nmrr    cp(0,10,2,1)	COPROC15 4  // Normal Memory Region Remap

REG=cp15_pleis0  cp(0,11,0,0)	COPROC15 4  // PLE Indentification and Status 0
REG=cp15_pleis2  cp(0,11,0,2)	COPROC15 4  // PLE Indentification and Status 2
REG=cp15_pleis3  cp(0,11,0,3)	COPROC15 4  // PLE Indentification and Status 3
REG=cp15_pleua   cp(0,11,1,0)	COPROC15 4  // PLE User Accessibility
REG=cp15_plecn   cp(0,11,2,0)	COPROC15 4  // PLE Channel Number

REG=cp15_pleestp cp(0,11,3,0)	COPROC15 4  // PLE Enable
REG=cp15_pleestr cp(0,11,3,1)	COPROC15 4  // PLE Enable
REG=cp15_pleeclr cp(0,11,3,2)	COPROC15 4  // PLE Enable
REG=cp15_plec    cp(0,11,4,0)	COPROC15 4  // PLE Control
REG=cp15_pleisa  cp(0,11,5,0)	COPROC15 4  // PLE Internal Start Address
REG=cp15_pleiea  cp(0,11,7,0)	COPROC15 4  // PLE Internal End Address
REG=cp15_plecs   cp(0,11,8,0)	COPROC15 4  // PLE Channel Status
REG=cp15_plecid  cp(0,11,15,0)	COPROC15 4  // PLE Context ID

REG=cp15_snvba   cp(0,12,0,0)	COPROC15 4  // Secure or Nonsecure Vector Base Address
REG=cp15_mvba    cp(0,12,0,1)	COPROC15 4  // Monitor Vector Base Address
REG=cp15_is      cp(0,12,1,0)	COPROC15 4  // Interrupt Status

REG=cp15_fcsepid cp(0,13,0,0)	COPROC15 4  // FCSE PID
REG=cp15_cid     cp(0,13,0,1)	COPROC15 4  // Context ID
REG=cp15_urwpid  cp(0,13,0,2)	COPROC15 4  // User Read/Write thread and Process ID
REG=cp15_uropid  cp(0,13,0,3)	COPROC15 4  // User Readonly thread and Process ID
REG=cp15_popid   cp(0,13,0,4)	COPROC15 4  // Privileged Only thread and Process ID

// All CN15 these register are write only unless identified as RW (read/write)
REG=cp15_dld0    cp(0,15,0,0)	COPROC15 4  // D-L1 Data 0 -- RW
REG=cp15_dld1    cp(0,15,0,1)	COPROC15 4  // D-L1 Data 1  -- RW
REG=cp15_dtcwo   cp(0,15,0,2)	COPROC15 4  // D-TBL CAM Write Operation
REG=cp15_dtawo   cp(0,15,0,3)	COPROC15 4  // D-TBL ATTR Write Operation
REG=cp15_dtpwo   cp(0,15,0,4)	COPROC15 4  // D-TBL PA Write Operation
REG=cp15_dhwo    cp(0,15,0,5)	COPROC15 4  // D-HVAB PA Write Operation
REG=cp15_dtwo    cp(0,15,0,6)	COPROC15 4  // D-Tag Write Operation
REG=cp15_ddwo    cp(0,15,0,7)	COPROC15 4  // D-Data Write Operation

REG=cp15_ild0    cp(0,15,1,0)	COPROC15 4  // I-L1 Data 0  -- RW
REG=cp15_ild1    cp(0,15,1,1)	COPROC15 4  // I-L1 Data 1  -- RW
REG=cp15_itcwo   cp(0,15,1,2)	COPROC15 4  // I-TBL CAM Write Operation
REG=cp15_itawo   cp(0,15,1,3)	COPROC15 4  // I-TBL ATTR Write Operation
REG=cp15_itpwo   cp(0,15,1,4)	COPROC15 4  // I-TBL PA Write Operation
REG=cp15_ihwo    cp(0,15,1,5)	COPROC15 4  // I-HVAB PA Write Operation
REG=cp15_itwo    cp(0,15,1,6)	COPROC15 4  // I-Tag Write Operation
REG=cp15_idwo    cp(0,15,1,7)	COPROC15 4  // I-Data Write Operation

REG=cp15_dtcro   cp(0,15,2,2)	COPROC15 4  // D-TBL CAM Read Operation
REG=cp15_dtaro   cp(0,15,2,3)	COPROC15 4  // D-TBL ATTR Read Operation
REG=cp15_dtpro   cp(0,15,2,4)	COPROC15 4  // D-TBL PA Read Operation
REG=cp15_dhro    cp(0,15,2,5)	COPROC15 4  // D-HVAB PA Read Operation
REG=cp15_dtro    cp(0,15,2,6)	COPROC15 4  // D-Tag Read Operation
REG=cp15_ddro    cp(0,15,2,7)	COPROC15 4  // D-Data Read Operation

REG=cp15_itcro   cp(0,15,3,2)	COPROC15 4  // I-TBL CAM Read Operation
REG=cp15_itaro   cp(0,15,3,3)	COPROC15 4  // I-TBL ATTR Read Operation
REG=cp15_itpro   cp(0,15,3,4)	COPROC15 4  // I-TBL PA Read Operation
REG=cp15_ihro    cp(0,15,3,5)	COPROC15 4  // I-HVAB PA Read Operation
REG=cp15_itro    cp(0,15,3,6)	COPROC15 4  // I-Tag Read Operation
REG=cp15_idro    cp(0,15,3,7)	COPROC15 4  // I-Data Read Operation


REG=cp15_ghbwo    cp(0,15,5,2)	COPROC15 4  // GHB Write Operation
REG=cp15_btbwo    cp(0,15,5,3)	COPROC15 4  // BTB Write Operation

REG=cp15_ghbro    cp(0,15,7,2)	COPROC15 4  // GHB Read Operation
REG=cp15_btbro    cp(0,15,7,3)	COPROC15 4  // BTB Read Operation


REG=cp15_l2d0    cp(0,15,8,0)	COPROC15 4  // L2 Data 0 Register -- RW
REG=cp15_l2d1    cp(0,15,8,1)	COPROC15 4  // L2 Data 1 Register -- RW
REG=cp15_l2tl2vw cp(0,15,8,2)	COPROC15 4  // L2 tag L2 valid write operation
REG=cp15_l2tl2dw cp(0,15,8,3)	COPROC15 4  // L2 tag L2 dirty write operation
REG=cp15_l2pew   cp(0,15,8,4)	COPROC15 4  // L2 Parity and ECC write operation
REG=cp15_l2d2    cp(0,15,8,5)	COPROC15 4  // L2 Data 2 Register -- RW

REG=cp15_l2tl2vr cp(0,15,9,2)	COPROC15 4  // L2 tag L2 valid read operation
REG=cp15_l2tl2dr cp(0,15,9,3)	COPROC15 4  // L2 tag L2 dirty read operation
REG=cp15_l2per   cp(0,15,9,4)	COPROC15 4  // L2 Parity and ECC read operation

REG=didr		0x00002000 MEP_DA 4	//Debug ID register
REG=dscr	    0x00002088 MEP_DA 4 //Debug Status Control Register

//
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

//
REG_FIELD=cp15_cpuid   imp 31 24, var 23 20, arch 19 16, part 15 4, rev 3 0
REG_FIELD=cp15_cache   cwgran 27 24, dminline 19 16, l1policy 15 14, iminline 3 0
REG_FIELD=cp15_ttype   ilsize 23 16, dlsize 15 8, u 0 0

REG_FIELD=cp15_pf0     state3 15 12, state2 11 8, state1 7 4, state0 3 0
REG_FIELD=cp15_pf1     ucpm 11 8, secext 7 4, pm 3 0
REG_FIELD=cp15_df0     ucmm 23 20, tdmm 19 16, tdcp 15 12, edm 11 8,
                       sdm 7 4, adm 3 0
REG_FIELD=cp15_mmf0    fcse 27 24, aux 23 20, tcm 19 16, pmsa 7 4, vmsa 3 0
REG_FIELD=cp15_mmf1    btb 31 28
REG_FIELD=cp15_mmf2    haf 31 28, wfi 27 24, mbf 23 20
REG_FIELD=cp15_mmf3    supersec 31 28, bpm 11 8, hcmva 7 4, hcmsw 3 0

REG_FIELD=cp15_isf0    div 27 24, dbg 23 20, cp 19 16, cbr 15 12, bf 11 8,
                       bc 7 4, a 3 0
REG_FIELD=cp15_isf1    jaz 31 28, iwrk 27 24, imm 23 20, ifthen 19 16,
                       ext 15 12, exc2 11 8, exc1 7 4, end 3 0
REG_FIELD=cp15_isf2    rev 31 28, psr 27 24, mau 23 20, mas 19 16, m 15 12,
                       mai 11 8, mh 7 4, ls 3 0
REG_FIELD=cp15_isf3    t2eee 31 28, tnop 27 24, tcpy 23 20, tb 19 16,
                       sp 15 12, swi 11 8, simd 7 4, sat 3 0
REG_FIELD=cp15_isf4    fsp 23 20, bar 19 16, smi 15 12, wb 11 8, ws 7 4, u 3 0

REG_FIELD=cp15_csizeid wt 31 31, wb 30 30, ra 29 29, wa 28 28, numsets 27 13, assoc 12 3, lsize 2 0
REG_FIELD=cp15_clvlid  lou 29 27, loc 26 24, cl8 23 21, cl7 20 18, cl6 17 15, 
                       cl5 14 12, cl4 11 9, cl3 8 6, cl2 5 3, cl1 2 0
REG_FIELD=cp15_silid   implem 31 24, feature 23 16, major 7 4, minor 3 0
REG_FIELD=cp15_csizesel level 3 1, ind 0 0


REG_FIELD=cp15_cntrl   te 30 30, afe 29 29, tre 28 28, nmfi 27 27, ee 25 25, 
                       v 13 13, i 12 12, z 11 11, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_auxctl  l2 31 31, l1 30 30, cpmp 20 20, cs 19 19, cpis 18 18, cpi 17 17,
                       cpf 16 16, fec 15 15, fnc 14 14, fmc 13 13, fnsi 12 12, 
                       flssi 11 11, fsi 10 10, pldnop 9 9, wfinop 8 8, dbsm 7 7, 
					   ibe 6 6, l1n 5 5, asa 4 4, l1pe 3 3, l2en 1 1, l1a 0 0
REG_FIELD=cp15_cpactl  cp13 27 26, cp12 25 24, cp11 23 22, cp10 21 20,
                       cp9 19 18, cp8 17 16, cp7 15 14, cp6 13 12, cp5 11 10,
                       cp4 9 8, cp3 7 6, cp2 5 4, cp1 3 2, cp0 1 0

REG_FIELD=cp15_sc      aw 5 5, fw 4 4, ea 3 3, fiq 2 2, irq 1 1, ns 0 0
REG_FIELD=cp15_sde     suniden 1 1, suiden 0 0
REG_FIELD=cp15_nac     ple 18 18, tl 17 17, cl 16 16, cp13 13 13, cp12 12 12, 
                       cp11 11 11, cp10 10 10, cp9 9 9, cp8 8 8, cp7 7 7, cp6 6 6,
                       cp5 5 5, cp4 4 4, cp3 3 3, cp2 2 2, cp1 1 1, cp0 0 0

// The size of the Translation Table Base Address (ttba) field in cp15_ttb0
// is actually dynamic, based on the value of the 'n' field of cp15_ttbc.  
// The debuggers don't support the concept of a dynamic field width, so here
// we define ttba to have the default width (where cp15_ttbc.n == 0), and
// define an extra field named 'nbits' to cover the up-to-seven additional
// low-order bits that may belong to ttba.
// If your code sets N to a consistent, non-zero value, you could edit
// this REG_FIELD specification to reflect the actual size of ttba on
// your system.

REG_FIELD=cp15_ttb0  ttba 31 14, nbits 13 7, rgn 4 3, p 2 2, s 1 1, c 0 0
REG_FIELD=cp15_ttb1  ttba 31 14, rgn 4 3, p 2 2, s 1 1, c 0 0
REG_FIELD=cp15_ttbc  pd1 5 5, pd0 4 4, sbz 3 3, n 2 0

REG_FIELD=cp15_dac   d15 31 30, d14 29 28, d13 27 26, d12 25 24, d11 23 22,
                     d10 21 20, d9 19 18, d8 17 16, d7 15 14, d6 13 12,
                     d5 11 10, d4 9 8, d3 7 6, d2 5 4, d1 3 2, d0 1 0
REG_FIELD=cp15_dfs   sd 12 12, rw 11 11, s 10 10, dom 7 4, status 3 0
REG_FIELD=cp15_ifs   sd 12 12, status4 10 10, status 3 0


// CR8 fields
REG_FIELD=cp15_iite    mva 21 12, asid 7 0
REG_FIELD=cp15_iita    asid 7 0
REG_FIELD=cp15_idte    mva 21 12, asid 7 0
REG_FIELD=cp15_idta    asid 7 0
REG_FIELD=cp15_iute    mva 21 12, asid 7 0
REG_FIELD=cp15_iuta    asid 7 0

// CR9 fields
REG_FIELD=cp15_pmnc    imp 31 24, idcodce 23 16, n 15 11, dp 5 5, x 4 4,  
                       d 3 3, c 2 2, p 1 1, e 0 0
REG_FIELD=cp15_cntens  c 31 31, p3 3 3, p2 2 2, p1 1 1, p0 0 0   
REG_FIELD=cp15_cntenc  c 31 31, p3 3 3, p2 2 2, p1 1 1, p0 0 0    
REG_FIELD=cp15_ofs     c 31 31, p3 3 3, p2 2 2, p1 1 1, p0 0 0    
REG_FIELD=cp15_sincr   p3 3 3, p2 2 2, p1 1 1, p0 0 0   
REG_FIELD=cp15_pmnxsel sel 4 0 
REG_FIELD=cp15_evtsel  sel 4 0 
REG_FIELD=cp15_useren  en 0 0    
REG_FIELD=cp15_intens  p3 3 3, p2 2 2, p1 1 1, p0 0 0
REG_FIELD=cp15_intenc  p3 3 3, p2 2 2, p1 1 1, p0 0 0   
REG_FIELD=cp15_l2cl    lw7 7 7, lw6 6 6, lw5 5 5, lw4 4 4, lw3 3 3, lw2 2 2, 
                       lw1 1 1, l0 0 0
REG_FIELD=cp15_l2cac   drrms 29 29, eccp 28 28, ldfd 27 27, wcd 25 25, wadd 24 24, 
                       wacd 23 23, wad 22 22, eccpe 21 21, inner 16 16, trl 8 6, drl 3 0


REG_FIELD=cp15_dtlblk  base 31 27, victim 26 22, p 0 0
REG_FIELD=cp15_itlblk  base 31 27, victim 26 22, p 0 0

REG_FIELD=cp15_pleis0  ch1 1 1, ch0 0 0
REG_FIELD=cp15_pleis2  ch1 1 1, ch0 0 0
REG_FIELD=cp15_pleis3  ch1 1 1, ch0 0 0
REG_FIELD=cp15_pleua   u1 1 1, u0 0 0
REG_FIELD=cp15_plecn   cn 0 0

REG_FIELD=cp15_plec    dt 30 30, ic 29 29, ie 28 28, um 26 26, wy 2 0
REG_FIELD=cp15_pleisa  va 31 5
// REG_FIELD=cp15_pleiea  lines <n> 6  -- cannot represent this as n is dynamic
REG_FIELD=cp15_plecs   errcode 8 2, status 1 0
REG_FIELD=cp15_plecid  procid 31 8, asid 7 0

REG_FIELD=cp15_snvba   vba 31 5
REG_FIELD=cp15_mvba    mvba 31 5
REG_FIELD=cp15_is      a 8 8, i 7 7, f 6 6

REG_FIELD=cp15_fcsepid pid 31 25
REG_FIELD=cp15_cid     procid 31 8, asid 7 0

REG_FIELD = dscr        drxful 30 30, dtxful 29 29, drxful_1 27 27, dtxful_1 26 26,
                        stk_pline_adv 25 25, instrcmpl_1 24 24, dtr_accmode 21 20,
                        dis_impre_abort 19 19, nonsec_state 18 18, sec_ninv_dis 17 17,
                        sec_pri_inv_dis 16 16, mon_mode 15 15, halt_mode 14 14,
                        exe_instr_en 13 13,c14_usracc_dis 12 12, intdis 11 11, dbgack 10 10,
                        stk_undef 8 8, stk_impre_abort 7 7, stk_pre_abort 6 6,
                        entry 5 2, core_restarted 1 1, core_hlted 0 0

REG_FIELD = didr		wrp 31 28, brp 27 24, con_id 23 20, dbg_arch_v 19 16,		
						sec_ext 12 12, imp_var 7 4, imp_rev 3 0

//
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

// <eof>
