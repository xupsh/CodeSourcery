REG = DIDR              0x00002000 MEP_DA 4
REG = DTRRX             0x00002080 MEP_DA 4
REG = ITR               0x00002084 MEP_DA 4
REG = DSCR              0x00002088 MEP_DA 4
REG = DTRTX             0x0000208C MEP_DA 4
//
REG = PRCR              0x00002310 MEP_DA 4
REG = PRSR              0x00002314 MEP_DA 4
REG = LOCKACCESS        0x00002FB0 MEP_DA 4
REG = LOCKSTATUS        0x00002FB4 MEP_DA 4
REG = DRCR              0x00002090 MEP_DA 4
//
REG = BVR0              0x00002100 MEP_DA 4
REG = BVR1              0x00002104 MEP_DA 4
REG = BCR0              0x00002140 MEP_DA 4
REG = BCR1              0x00002144 MEP_DA 4
REG = VCR               0x0000201C MEP_DA 4
//
REG = AUTHSTATUS        0x00002FB8 MEP_DA 4
//
REG_FIELD = DSCR        drxful 30 30, dtxful 29 29, drxful_1 27 27, dtxful_1 26 26,
                        stk_pline_adv 25 25, instrcmpl_1 24 24, dtr_accmode 21 20,
                        dis_impre_abort 19 19, nonsec_state 18 18, sec_ninv_dis 17 17,
                        sec_pri_inv_dis 16 16, mon_mode 15 15, halt_mode 14 14,
                        exe_instr_en 13 13,c14_usracc_dis 12 12, intdis 11 11, dbgack 10 10,
                        stk_undef 8 8, stk_impre_abort 7 7, stk_pre_abort 6 6,
                        entry 5 2, core_restarted 1 1, core_hlted 0 0
REG_FIELD = DRCR        clr_stk_pline_adv 3 3, clr_stk_excep 2 2, rst_req 1 1,
                        hlt_req 0 0
// <eof>


