// CORTEX-M Register Definition File

REG=sp		0x00000034 CRNT	   4  
REG=lr		0x00000038 CRNT    4  

REG=status      0x00000000 STATUS  4 SEQ 0 20 1  

REG=apsr		0x00000000 STATUS  4  
REG=iapsr		0x00000004 STATUS  4  
REG=eapsr		0x00000008 STATUS  4  
REG=xpsr		0x0000000C STATUS  4  
REG=ipsr		0x00000014 STATUS  4  
REG=epsr		0x00000018 STATUS  4  
REG=iepsr		0x0000001C STATUS  4  
REG=msp			0x00000020 STATUS  4  // duplicate name
REG=sp_main		0x00000020 STATUS  4  
REG=psp			0x00000024 STATUS  4  // duplicate name
REG=sp_process	0x00000024 STATUS  4  

REG=primask		0x00000040 STATUS  4  
REG=basepri		0x00000044 STATUS  4  
REG=basepri_max	0x00000048 STATUS  4  
REG=faultmask	0x0000004C STATUS  4  
REG=control		0x00000050 STATUS  4  

REG_FIELD=apsr		n 31 31, z 30 30, c 29 29, v 28 28, q 27 27
REG_FIELD=iapsr		n 31 31, z 30 30, c 29 29, v 28 28, q 27 27, isr_num 8 0 				
REG_FIELD=ipsr		isr_num 8 0
REG_FIELD=epsr		ici_it_high 26 25, t 24 24, ici_it_lo 15 10
REG_FIELD=iepsr		ici_it_high 26 25, t 24 24, ici_it_lo 15 10, isr_num 8 0
REG_FIELD=eapsr		n 31 31, z 30 30, c 29 29, v 28 28, q 27 27, ici_it_high 26 25,
					t 24 24, ici_it_lo 15 10 

REG_FIELD=xpsr		n 31 31, z 30 30, c 29 29, v 28 28, q 27 27, ici_it_high 26 25,
					t 24 24, ici_it_lo 15 10, isr_num 8 0 

REG_FIELD=primask		pm 0 0
REG_FIELD=faultmask		fm 0 0
REG_FIELD=basepri		bp 7 0
REG_FIELD=control		fpca 2 2, spsel 1 1, npriv 0 0
REG_FIELD=basepri_max	pm 0 0

// Nested Vector Interrupt Controller
REG=ICTR	0xe000e004 PHYSICAL 4 
REG=CTRL	0xe000e010 PHYSICAL 4	//SysTick Control and Status Register
REG=LOAD	0xe000e014 PHYSICAL 4	//SysTick Reload Value Register
REG=VAL		0xe000e018 PHYSICAL 4	//SysTick Current Value Register
REG=CALIB	0xe000e01c PHYSICAL 4

REG_FIELD=ICTR		lines_num 4 0
REG_FIELD=CTRL		cntflag 16 16, clksrc 2 2, tickint 1 1, en 0 0
REG_FIELD=LOAD		reload 23 0
REG_FIELD=VAL		current 23 0
REG_FIELD=CALIB		noref 31 31, skew 30 30, tenms 23 0

//Interrupt Set-Enable Registers
REG=ISER    0xe000e100 PHYSICAL 4 SEQ 0 7 1  

//Interrupt Clear-Enable Registers
REG=ICER	0xe000e180 PHYSICAL 4 SEQ 0 7 1

//Interrupt Set-Pending Register
REG=ISPR	0xe000e200 PHYSICAL 4 SEQ 0 7 1

//Interrupt Clear-Pending Register
REG=ICPR	0xe000e280 PHYSICAL 4 SEQ 0 7 1

//Active Bit Register
REG=IABR	0xe000e300 PHYSICAL 4 SEQ 0 7 1

//Interrupt Priority Registers
REG=IP		0xe000e400 PHYSICAL 4 SEQ 0 59 1

REG=STIR	0xe000ef00 PHYSICAL 4   //0 to 8 bits 

// "SCB"
REG=CPUID	0xe000ed00 PHYSICAL 4 //CPU ID base register 
REG=ICSR	0xe000ed04 PHYSICAL 4
REG=VTOR	0xe000ed08 PHYSICAL 4
REG=AIRCR	0xe000ed0c PHYSICAL 4
REG=SCR		0xe000ed10 PHYSICAL 4
REG=CCR		0xe000ed14 PHYSICAL 4

//System Handler Priority Registers.
//Note: There are two names for each of the registers. Names SHP0-11 match with
//the Sourcey Code Bench IDE naming convention and PRI4-15 are according to Cortex M3
//Technical Ref Manual. Either of the names can be used while entering the command
//and PRI4_15 names will be displayed in the output. 
REG=SHP0	0xe000ed18 PHYSICAL 1  
REG=PRI4	0xe000ed18 PHYSICAL 1  

REG=SHP1	0xe000ed19 PHYSICAL 1
REG=PRI5	0xe000ed19 PHYSICAL 1

REG=SHP2	0xe000ed1a PHYSICAL 1
REG=PRI6	0xe000ed1a PHYSICAL 1

REG=SHP3	0xe000ed1b PHYSICAL 1
REG=PRI7	0xe000ed1b PHYSICAL 1

REG=SHP4	0xe000ed1c PHYSICAL 1
REG=PRI8	0xe000ed1c PHYSICAL 1

REG=SHP5	0xe000ed1d PHYSICAL 1
REG=PRI9	0xe000ed1d PHYSICAL 1

REG=SHP6	0xe000ed1e PHYSICAL 1
REG=PRI10	0xe000ed1e PHYSICAL 1

REG=SHP7	0xe000ed1f PHYSICAL 1
REG=PRI11	0xe000ed1f PHYSICAL 1

REG=SHP8	0xe000ed20 PHYSICAL 1
REG=PRI12	0xe000ed20 PHYSICAL 1

REG=SHP9	0xe000ed21 PHYSICAL 1
REG=PRI13	0xe000ed21 PHYSICAL 1

REG=SHP10	0xe000ed22 PHYSICAL 1
REG=PRI14	0xe000ed22 PHYSICAL 1

REG=SHP11	0xe000ed23 PHYSICAL 1
REG=PRI15	0xe000ed23 PHYSICAL 1

REG=SHCSR	0xe000ed24 PHYSICAL 4
REG=CFSR	0xe000ed28 PHYSICAL 4
REG=HFSR	0xe000ed2c PHYSICAL 4
REG=DFSR	0xe000ed30 PHYSICAL 4
REG=MMFAR	0xe000ed34 PHYSICAL 4
REG=BFAR	0xe000ed38 PHYSICAL 4
REG=AFSR	0xe000ed3c PHYSICAL 4

REG=PFR0	0xe000ed40 PHYSICAL 4
REG=PFR1	0xe000ed44 PHYSICAL 4
REG=DFR		0xe000ed48 PHYSICAL 4
REG=ADR		0xe000ed4c PHYSICAL 4
REG=MMFR0	0xe000ed50 PHYSICAL 4
REG=MMFR1	0xe000ed54 PHYSICAL 4
REG=MMFR2	0xe000ed58 PHYSICAL 4
REG=MMFR3	0xe000ed5c PHYSICAL 4
REG=ISAR0	0xe000ed60 PHYSICAL 4
REG=ISAR1	0xe000ed64 PHYSICAL 4
REG=ISAR2	0xe000ed68 PHYSICAL 4
REG=ISAR3	0xe000ed6c PHYSICAL 4
REG=ISAR4	0xe000ed70 PHYSICAL 4

REG = FPBCR			0x00004000 MEP_DA 4 /* Flash Patch and Breakpoint control reigster */
REG = DWTCR			0x00005000 MEP_DA 4 /* Data watchpoint and Trace control register  */

REG=CPACR	0xe000ed88 PHYSICAL 4 //Coprocessor Access Control Register

REG=STIR	0xe000ef00 PHYSICAL 4 //Software trigger interrupt register

REG_FIELD=CPUID		implementer 31 24, variant 23 20, constant 19 16, ctx_family 15 14,
					version 13 12, rsvd 11 10, v7M 9 8, member 7 4, rev 3 0  	
					
REG_FIELD=ICSR		nmi_pend_set 31 31, sv_set 28 28, sv_clr 27 27, st_set 26 26,
					st_clr 25 25, isr_prmpt 23 23, isr_pend 22 22, vect_pend 21 12, 
					ret_to_base 11 11, vec_active 8 0 
					
REG_FIELD=VTOR		tbloff 31 7

REG_FIELD=AIRCR		vectkey 31 16, endianess 15 15, prigroup 10 8, sysresetreq 2 2, 
					vectclractive 1 1, vectreset 0 0
					
REG_FIELD=SCR		sev_on_pend 4 4, sleep_deep 2 2, sleep_on_exit 1 1 					

REG_FIELD=CCR		stk_align 9 9, bfhfnmign 8 8, div_0_trp 4 4, unalign_trp 3 3,
					usr_set_mpend 1 1, non_eba_thrd_ena 0 0	
					
REG_FIELD=SHCSR		usg_flt_en 18 18, bus_flt_en 17 17, mem_flt_en 16 16, 		
					sv_call_pended 15 15, bus_flt_pended 14 14, mem_flt_pended 13 13,
					usg_flt_pended 12 12, sys_tick_act 11 11, pend_sv_act 10 10,
					mon_act 8 8, sv_call_act 7 7, usg_flt_act 3 3, bus_flt_act 1 1,
					mem_flt_act 0 0
					
REG_FIELD=CFSR		uf_div_by0 25 25, uf_unaligned 24 24, uf_nocp 19 19, uf_inv_pc 18 18,
					uf_inv_st 17 17, uf_undef_instr 16 16,
					bf_arval 15 15, bf_stk_er 12 12, bf_unstk_er 11 11, 
					bf_impre_er 10 10, bf_precise_er 9 9, bf_ibuser 8 8,
					mm_arvalid 7 7, mm_stk_er 4 4, mm_unstk_er 3 3, mm_daccviol 1 1,
					mm_iaviol 0 0
					
REG_FIELD=HFSR		dbg_vt 31 31, forced 30 30, vec_tbl 1 1
REG_FIELD=DFSR		ext 4 4, v_catch 3 3, dwt_trap 2 2, bkpt 1 1, halted 0 0

REG_FIELD=CPACR		cp11 23 22, cp10 21 20, rsvd 19 16, cp7 15 14, cp6 13 12,
                    cp5 11 10, cp4 9 8, cp3 7 6, cp2 5 4, cp1 3 2, cp0 1 0 

REG_FIELD=STIR		int_id 8 0 

// MPU  (many cores don't use this)
REG=MPUT		0xe000ed90 PHYSICAL 4
REG=MPUC		0xe000ed94 PHYSICAL 4
REG=MPURN		0xe000ed98 PHYSICAL 4
REG=MPURBA		0xe000ed9C PHYSICAL 4
REG=MPURAS		0xe000edA0 PHYSICAL 4

REG=MPUA1RBA	0xe000edA4 PHYSICAL 4
REG=MPUA1RAS	0xe000edA8 PHYSICAL 4

REG=MPUA2RBA	0xe000edAC PHYSICAL 4
REG=MPUA2RAS	0xe000edB0 PHYSICAL 4

REG=MPUA3RBA	0xe000edB4 PHYSICAL 4
REG=MPUA3RAS	0xe000edB8 PHYSICAL 4

REG_FIELD=MPUT		iregion 23 16, dregion 15 8, separate 0 0
REG_FIELD=MPUC		priv_def_en 2 2, hf_nmi_en 1 1, en 0 0
REG_FIELD=MPURN		region 7 0
REG_FIELD=MPURBA	addr 31 5, valid 4 4, region 3 0 
REG_FIELD=MPURAS	xn 28 28, ap 26 24, tex 21 19, shareable 18 18, cacheable 17 17,
					bufferable 16 16, srd 15 8, size 5 1, en 0 0 				
					
REG_FIELD=MPUA1RBA	addr 31 5, valid 4 4, region 3 0
REG_FIELD=MPUA1RAS	xn 28 28, ap 26 24, tex 21 19, shareable 18 18, cacheable 17 17,
					bufferable 16 16, srd 15 8, size 5 1, en 0 0

REG_FIELD=MPUA2RBA	addr 31 5, valid 4 4, region 3 0
REG_FIELD=MPUA2RAS	xn 28 28, ap 26 24, tex 21 19, shareable 18 18, cacheable 17 17,
					bufferable 16 16, srd 15 8, size 5 1, en 0 0

REG_FIELD=MPUA3RBA	addr 31 5, valid 4 4, region 3 0
REG_FIELD=MPUA3RAS	xn 28 28, ap 26 24, tex 21 19, shareable 18 18, cacheable 17 17,
					bufferable 16 16, srd 15 8, size 5 1, en 0 0

REG_FIELD = FPBCR		num_code2 14 12, num_lit 11 8, num_code1 7 4, key 1 1, 
						en 0 0 

REG_FIELD = DWTCR		num_comp 31 28, cyc_evt_en 22 22, fold_evt_en 21 21,
						lsu_evt_en 20 20, sleep_evt_en 19 19, exc_evt_en 18 18,
						cpi_evt_ena 17 17, exc_trc_ena 16 16, pc_sample_en 12 12,
						sync_tap 11 10, cyc_tap 9 9, post_cnt 8 5, post_preset 4 1, 
						cyc_cnt_en 0 0    	   
