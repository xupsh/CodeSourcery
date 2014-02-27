// CORTEX-R4 Register Definition File
// Contains definitions for CP15 registers common to all supported CORTEX-R
//
// The "cp" macro below is a built in and takes coprocessor arguments in the
// same order as they would appear in the assembly instructions. Example
// 
//  mrc p15, op1, <rd>, CRn, CRm, op2   ->   cp(Op1, CRn, CRm, Op2)   
//
INCLUDE "armbase32.rd"

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
REG=cp15_tcm     cp(0,0,0,2)	COPROC15 4  // TCM Type
REG=cp15_mpuir	 cp(0,0,0,4)	COPROC15 4  // MPU type register
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

REG=cp15_csizeid cp(1,0,0,0)	COPROC15 4  // Cache Size Identification
REG=cp15_clvlid  cp(1,0,0,1)	COPROC15 4  // Cache Level ID
REG=cp15_silid   cp(1,0,0,7)	COPROC15 4  // Silicon ID
REG=cp15_csizesel cp(2,0,0,0)	COPROC15 4  // Cache Size Selection

REG=cp15_cntrl   cp(0,1,0,0)	COPROC15 4  // Control
REG=cp15_auxctl  cp(0,1,0,1)	COPROC15 4  // Auxilliary Control
REG=cp15_cpactl  cp(0,1,0,2)	COPROC15 4  // CP Access Control

REG=cp15_dfs     cp(0,5,0,0)	COPROC15 4  // Data Fault Status
REG=cp15_ifs     cp(0,5,0,1)	COPROC15 4  // Instruction Fault Status

REG=cp15_dafs    cp(0,5,1,0)	COPROC15 4  // Data Auxillary Fault Status
REG=cp15_iafs    cp(0,5,1,1)	COPROC15 4  // Instruction Auxillary Fault Status

REG=cp15_dfa     cp(0,6,0,0)	COPROC15 4  // Data Fault Address
REG=cp15_ifa     cp(0,6,0,2)	COPROC15 4  // Instruction Fault Address

REG=cp15_drba	 cp(0,6,1,0)	COPROC15 4  // Data Region Base Address
REG=cp15_irba    cp(0,6,1,1)	COPROC15 4  // Instruction Region Base Address
REG=cp15_drse    cp(0,6,1,2)	COPROC15 4  // Data Region Size and Enable
REG=cp15_irse    cp(0,6,1,3)	COPROC15 4  // Instruction Region Size and Enable
REG=cp15_drac	 cp(0,6,1,4)	COPROC15 4  // Data Region Access Control
REG=cp15_irac    cp(0,6,1,5)	COPROC15 4  // Instruction Region Access Control
		
REG=cp15_rgn     cp(0,6,2,0)	COPROC15 4  // MPU Region Number 

// Warning: CRn7 regsiters are generally write only
REG=cp15_wfi     cp(0,7,0,4)	COPROC15 4  // WFI (NOP)

REG=cp15_iaic    cp(0,7,5,0)	COPROC15 4  // Invalid All Instruction Caches (unification)
REG=cp15_iic     cp(0,7,5,1)	COPROC15 4  // Invalid Instruction Cache Line (unification) by MVA 
REG=cp15_fpb     cp(0,7,5,4)	COPROC15 4  // Flush Prefetch Buffer
REG=cp15_ibpa    cp(0,7,5,6)	COPROC15 4  // Invladate Branch Predictor Array (NOP)
REG=cp15_ibpal   cp(0,7,5,7)	COPROC15 4  // Invladate VA from Branch Predictor Array Line (NOP)

REG=cp15_idcm    cp(0,7,6,1)	COPROC15 4  // Invalidate Data Cache line to Point-of-Coherency by MVA
REG=cp15_idcs    cp(0,7,6,2)	COPROC15 4  // Invalidate Data Cache line using Set/Way

REG=cp15_cdcm    cp(0,7,10,1)	COPROC15 4  // Clean Data Cache line to Point-of-Coherency by MVA    
REG=cp15_cdcs    cp(0,7,10,2)	COPROC15 4  // Clean Data Cache line by Set/Way
REG=cp15_dsb     cp(0,7,10,4)	COPROC15 4  // Data Syncronization Barrier
REG=cp15_dmb     cp(0,7,10,5)	COPROC15 4  // Data Memory Barrier

REG=cp15_cdclum  cp(0,7,11,1)	COPROC15 4  // Clean Data Cache Line (unification) by MVA

REG=cp15_cidcm   cp(0,7,14,1)	COPROC15 4  // Clean and Invalidate Data Cache line to Point-of-Unification by MVA
REG=cp15_cidcs   cp(0,7,14,2)	COPROC15 4  // Clean and Invalidate Data Cache line by Set/Way

REG=cp15_btcmr   cp(0,9,1,0)	COPROC15 4  // BTCM Region
REG=cp15_atcmr   cp(0,9,1,1)	COPROC15 4  // ATCM Region

REG=cp15_tcms    cp(0,9,2,0)	COPROC15 4  // TCM selection

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

REG=cp15_spc	 cp(0,11,0,0)	COPROC15 4  // Slave Port Control

REG=cp15_fcsepid cp(0,13,0,0)	COPROC15 4  // FCSE PID
REG=cp15_cid     cp(0,13,0,1)	COPROC15 4  // Context ID
REG=cp15_urwpid  cp(0,13,0,2)	COPROC15 4  // User Read/Write thread and Process ID
REG=cp15_uropid  cp(0,13,0,3)	COPROC15 4  // User Read only thread and Process ID
REG=cp15_popid   cp(0,13,0,4)	COPROC15 4  // Privileged Only thread and Process ID

//Implementation defined registers.
REG=cp15_sac     cp(0,15,0,0)	COPROC15 4  // Secondary Auxiliary Control

REG=cp15_vies    cp(0,15,1,0)	COPROC15 4  // nVAL IRQ Enable Set
REG=cp15_vfes    cp(0,15,1,1)	COPROC15 4  // nVAL FIQ Enable Set
REG=cp15_vres    cp(0,15,1,2)	COPROC15 4  // nVAL Reset Enable Set
REG=cp15_vdres   cp(0,15,1,3)	COPROC15 4  // nVAL Debug Request Enable Set
REG=cp15_viec    cp(0,15,1,4)	COPROC15 4  // nVAL IRQ Enable Clear
REG=cp15_vfec    cp(0,15,1,5)	COPROC15 4  // nVAL FIQ Enable Clear
REG=cp15_vrec    cp(0,15,1,6)	COPROC15 4  // nVAL Reset Enable Clear
REG=cp15_vdrec   cp(0,15,1,7)	COPROC15 4  // nVAL Debug Request Enable Clear

REG=cp15_bo1	 cp(0,15,2,0)	COPROC15 4  // Build Options 1
REG=cp15_bo2     cp(0,15,2,1)	COPROC15 4  // Build Options 2

REG=cp15_cfl     cp(0,15,3,0)	COPROC15 4  // Correctable Fault Location

REG=cp15_iadc    cp(0,15,5,0)	COPROC15 4  // Invalidate all data caches

REG=cp15_cso     cp(0,15,14,0)	COPROC15 4  // Cache Size Override

REG=didr		 0x00002000 MEP_DA 4	//Debug ID register
REG=dscr	     0x00002088 MEP_DA 4	//Debug Status Control Register
REG=drcr		 0x00002090 MEP_DA 4	//Debug Run Control Register

//
REG_FIELD=cp15_cpuid   imp 31 24, var 23 20, arch 19 16, part 15 4, rev 3 0
REG_FIELD=cp15_cache   cwgran 27 24, erg 23 20, dminline 19 16, iminline 3 0

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

REG_FIELD=cp15_cntrl   ie 31 31,afe 29 29, tre 28 28, te 30 30, nmfi 27 27, ee 25 25, 
					   ve 24 24, fi 21 21, dz 19 19, br 17 17, rr 14 14, 	
                       v 13 13, i 12 12, z 11 11, c 2 2,a 1 1, m 0 0
REG_FIELD=cp15_auxctl  l2 31 31, l1 30 30, cpmp 20 20, cs 19 19, cpis 18 18, cpi 17 17,
                       cpf 16 16, fec 15 15, fnc 14 14, fmc 13 13, fnsi 12 12, 
                       flssi 11 11, fsi 10 10, pldnop 9 9, wfinop 8 8, dbsm 7 7, 
					   ibe 6 6, l1n 5 5, asa 4 4, l1pe 3 3, l2en 1 1, l1a 0 0
REG_FIELD=cp15_cpactl  cp13 27 26, cp12 25 24, cp11 23 22, cp10 21 20,
                       cp9 19 18, cp8 17 16, cp7 15 14, cp6 13 12, cp5 11 10,
                       cp4 9 8, cp3 7 6, cp2 5 4, cp1 3 2, cp0 1 0

REG_FIELD=cp15_dfs   sd 12 12, rw 11 11, s 10 10, dom 7 4, status 3 0
REG_FIELD=cp15_ifs   sd 12 12, status4 10 10, status 3 0

REG_FIELD=cp15_drse  s7d 15 15, s6d 14 14, s5d 13 13, s4d 12 12, s3d 11 11, 
					 s2d 10 10, s1d 9 9, s0d 8 8, rsize 5 1, en 0 0
REG_FIELD=cp15_irse  s7d 15 15, s6d 14 14, s5d 13 13, s4d 12 12, s3d 11 11, 
					 s2d 10 10, s1d 9 9, s0d 8 8, rsize 5 1, en 0 0
REG_FIELD=cp15_drac  xn 12 12, ap2_0 10 8, tex 5 3, s 2 2, c 1 1, b 0 0
REG_FIELD=cp15_irac  xn 12 12, ap2_0 10 8, tex 5 3, s 2 2, c 1 1, b 0 0
REG_FIELD=cp15_rgn   region 3 0

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

REG_FIELD=cp15_fcsepid pid 31 25
REG_FIELD=cp15_cid     procid 31 8, asid 7 0

//MPU registers 
REG_FIELD=cp15_mpuir   iregion 23 16, dregion 15 8, nU 0 0	

//CR15 register bit fields
REG_FIELD=cp15_bo1		tcm_hi_int_addr 31 12

REG_FIELD=cp15_bo2		dual_cr 31 31, dual_nclk 30 30, no_ic 29 29, no_dc 28 28,
						atcm_es 27 26, btcm_es 25 24, no_ie 23 23, no_fpu 22 22, 
						no_mpu 21 21, mpu_rgns 20 20, bps 19 17, wps 16 14, 
						no_atcm 13 13, no_b0tcm 12 12, no_b1tcm 11 11, tcm_bus_pari 10 10,
						no_slave 9 9, ic_es 8 7, dc_es 6 5, no_hard_err_c 4 4,
						axi_bus_pari 3 3

//Debug registers
REG_FIELD = dscr        drxful 30 30, dtxful 29 29, drxful_1 27 27, dtxful_1 26 26,
                        stk_pline_adv 25 25, instrcmpl_1 24 24, dtr_accmode 21 20,
                        dis_impre_abort 19 19, nonsec_state 18 18, sec_ninv_dis 17 17,
                        sec_pri_inv_dis 16 16, mon_mode 15 15, halt_mode 14 14,
                        exe_instr_en 13 13,c14_usracc_dis 12 12, intdis 11 11, dbgack 10 10,
                        stk_undef 8 8, stk_impre_abort 7 7, stk_pre_abort 6 6,
                        entry 5 2, core_restarted 1 1, core_hlted 0 0
                        
REG_FIELD = drcr        clr_stk_pline_adv 3 3, clr_stk_excep 2 2, rst_req 1 1,
                        hlt_req 0 0

REG_FIELD = didr		wrp 31 28, brp 27 24, con_id 23 20, dbg_arch_v 19 16,		
						sec_ext 12 12, imp_var 7 4, imp_rev 3 0

//
// <eof>
