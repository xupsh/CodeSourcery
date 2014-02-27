// Freescale i.MX31 Register Definition File for the declaration of
// registers, register fields, and an EDB register windows for them.
//
// These Register Definitions were taken from the "MCIMX31 and MCIMX31L
// Applications Processors Reference Manual", MCIMX31RM, Rev. 2.3, 1/2007


// Table 3-1. CCM Memory Map
// =========================
//#########################################
//# Clock  Reset (CCM)                    #
//# System control                        #
//# $53F8_0000 to $53F8_3FFF              #
//#########################################
// Control Register (CCMR)
//               Access: R/W
//          Reset Value: 0x074B_0B79
//  Manual Section/Page: 3.4.3.1/3-9
REG = CCMR 0x53F80000 PHYSICAL 4
REG_FIELD = CCMR l2pg 29 29, vstby 28 28, wben 27 27, fpmf 26 26, cscs 25 25,
		 percs 24 24, ssi2s 22 21, ssi1s 19 18, ramw 17 16, lpm 15 14,
		 firs 12 11, wamo 10 10, upe 9 9, spe 8 8, mds 7 7, romw 6 5,
		 sbycs 4 4, mpe 3 3, prcs1 2 1, fpme 0 0

// Post Divider Register 0 (PDR0)
//               Access: R/W
//          Reset Value: 0xFF87_0B48
//  Manual Section/Page: 3.4.3.2/3-12
REG = PDR0 0x53F80004 PHYSICAL 4
REG_FIELD = PDR0 csi_podf 31 23, per_podf 20 16, hsp_podf 13 11, nfc_podf 10 8,
		 ipg_podf 7 6, max_podf 5 3, mcu_podf 2 0

// Post Divider Register 1 (PDR1)
//               Access: R/W
//          Reset Value: 0x49FC_FE7F
//  Manual Section/Page: 3.4.3.3/3-13
REG = PDR1 0x53F80008 PHYSICAL 4
REG_FIELD = PDR1 usb_prdf 31 30, usb_podf 29 27, firi_pre_podf 26 24,
                 firi_podf 23 18, ssi2_pre_w_podf 17 15, ssi2_podf 14 9,
		 ssi1_pre_podf 8 6, ssi1_podf 5 0

// Reset Control and Source Register (RCSR)
//               Access: R/W
//          Reset Value: 0x007F_0000
//  Manual Section/Page: 3.4.3.4/3-15
REG = RCSR 0x53F8000C PHYSICAL 4
REG_FIELD = RCSR nf16b 31 31, nfms 30 30, btp4 27 27, btp3 26 26, btp2 25 25,
		 btp1 24 24, btp0 23 23, oscnt 22 16, peres 15 15, sdm 13 12,
		 gpf 7 5, wfis 4 4, rest 2 0

// MCU PLL Control Register (MPCTL)
//               Access: R/W
//          Reset Value: 0x0400_1800
//  Manual Section/Page: 3.4.3.5/3-16
REG = MPCTL 0x53F80010 PHYSICAL 4
REG_FIELD = MPCTL brmo 31 31, pd 29 26, mfd 25 16, mfi 13 10, mfn 9 0

// USB PLL Control Register (UPCTL)
//               Access: R/W
//          Reset Value: 0x0405_1C03
//  Manual Section/Page: 3.4.3.6/3-18
REG = UPCTL 0x53F80014 PHYSICAL 4
REG_FIELD = UPCTL brmo 31 31, pd 29 26, mfd 25 16, mfi 13 10, mfn 9 0

// Serial PLL Control Register (SPCTL)
//               Access: R/W
//          Reset Value: 0x0404_3001
//  Manual Section/Page: 3.4.3.7/3-20
REG = SPCTL 0x53F80018 PHYSICAL 4
REG_FIELD = SPCTL brmo 31 31, pd 29 26, mfd 25 16, mfi 13 10, mfn 9 0

// Clock Out Source Register (COSR)
//               Access: R/W
//          Reset Value: 0x0000_0280
//  Manual Section/Page: 3.4.3.8/3-22
REG = COSR 0x53F8001C PHYSICAL 4
REG_FIELD = COSR clkoen 9 9, clkoutdiv 8 6, clkosel 3 0

// Clock Gating Register 0 (CGR0)
//               Access: R/W
//          Reset Value: 0xFFFF_FFFF
//  Manual Section/Page: 3.4.3.9/3-24
REG = CGR0 0x53F80020 PHYSICAL 4
REG_FIELD = CGR0 i2c3 31 30, i2c2 29 28, i2c1 27 26, ssi1 25 24, uart2 23 22,
		 uart1 21 20, rng 19 18, cspi3 17 16, sdma 15 14, ata 13 12,
		 iim 11 10, epit2 9 8, epit1 7 6, gpt 5 4, sd_mmc2 3 2, sd_mmc1 1 0

// Clock Gating Register 1 (CGR1)
//               Access: R/W
//          Reset Value: 0xFFFF_FFFF
//  Manual Section/Page: 3.4.3.9/3-24
REG = CGR1 0x53F80024 PHYSICAL 4
REG_FIELD = CGR1 wire_1 31 30, uart5 29 28, uart4 27 26, uart3 25 24, ipu 23 22,
		 kpp 21 20, usbotg 19 18, ect 17 16, sim 15 14, pwm 13 12, wdog 11 10,
		 rtc 9 8, csi 7 6, memstick2 5 4, memstick1 3 2, hantro 1 0

// Clock Gating Register 2 (CGR2)
//               Access: R/W
//          Reset Value: 0xFFFF_FFFF
//  Manual Section/Page: 3.4.3.9/3-24
REG = CGR2 0x53F80028 PHYSICAL 4
REG_FIELD = CGR2 fir 13 12, rtic 11 10, emi 9 8, gacc 7 6, cspi2 5 4, cspi1 3 2, ssi2 1 0

// Wake-up Interrupt Mask Register (WIMR)
//               Access: R/W
//          Reset Value: 0xFFFF_FFFF
//  Manual Section/Page: 3.4.3.10/3-27
REG = WIMR0 0x53F8002C PHYSICAL 4
REG_FIELD = WIMR0 wim31 31 31, wim30 30 30, wim29 29 29, wim28 28 28,
                  wim27 27 27, wim26 26 26, wim25 25 25, wim24 24 24,
		  wim23 23 23, wim22 22 22, wim21 21 21, wim20 20 20,
		  wim19 19 19, wim18 18 18, wim17 17 17, wim16 16 16,
		  wim15 15 15, wim14 14 14, wim13 13 13, wim12 12 12,
		  wim11 11 11, wim10 10 10, wim9 9 9, wim8 8 8, wim7 7 7,
		  wim6 6 6, wim5 5 5, wim4 4 4, wim3 3 3, wim2 2 2,
		  wim1 1 1, wim0 0 0

// Latch Divergence Counter Register (LDC)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.11/3-27
REG = LDC 0x53F80030 PHYSICAL 4
REG_FIELD = LDC ldc31 31 31, ldc30 30 30, ldc29 29 29, ldc28 28 28,
                ldc27 27 27, ldc26 26 26, ldc25 25 25, ldc24 24 24,
		ldc23 23 23, ldc22 22 22, ldc21 21 21, ldc20 20 20,
		ldc19 19 19, ldc18 18 18, ldc17 17 17, ldc16 16 16,
		ldc15 15 15, ldc14 14 14, ldc13 13 13, ldc12 12 12,
		ldc11 11 11, ldc10 10 10, ldc9 9 9, ldc8 8 8, ldc7 7 7,
		ldc6 6 6, ldc5 5 5, ldc4 4 4, ldc3 3 3, ldc2 2 2,
		ldc1 1 1, ldc0 0 0

// DPTC Comparator Value Register 0 (DCVR0)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.12/3-28
REG = DCVR0 0x53F80034 PHYSICAL 4
REG_FIELD = DCVR0 ulv 31 22, llv 21 12, elv 11 2

// DPTC Comparator Value Register 1 (DCVR1)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.12/3-28
REG = DCVR1 0x53F80038 PHYSICAL 4
REG_FIELD = DCVR1  ulv 31 22, llv 21 12, elv 11 2

// DPTC Comparator Value Register 2 (DCVR2)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.12/3-28
REG = DCVR2 0x53F8003C PHYSICAL 4
REG_FIELD = DCVR2  ulv 31 22, llv 21 12, elv 11 2

// DPTC Comparator Value Register 3 (DCVR3)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.12/3-28
REG = DCVR3 0x53F80040 PHYSICAL 4
REG_FIELD = DCVR3  ulv 31 22, llv 21 12, elv 11 2

// Load Tracking Register 0 (LTR0)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.13/3-29
REG = LTR0 0x53F80044 PHYSICAL 4
REG_FIELD = LTR0 sigd15 31 31, sigd14 30 30, sigd13 29 29,
		 upthr 27 22, dnthr 21 16, sigd12 15 15,
		 sigd11 14 14, sigd10 13 13, sigd9 12 12,
		 sigd8 11 11, sigd7 10 10, sigd6 9 9,
		 sigd5 8 8, sigd4 7 7, sigd3 6 6, sigd2 5 5,
		 sigd1 4 4, sigd0 3 3, div3ck 2 1

// Load Tracking Register 1 (LTR1)
//               Access: R/W
//          Reset Value: 0x0000_4040
//  Manual Section/Page: 3.4.3.14/3-30
REG = LTR1 0x53F80048 PHYSICAL 4
REG_FIELD = LTR1 ltbrsh 23 23, ltbrsr 22 22, dncnt 21 14,
		 upcnt 13 6, pncthr 5 0

// Load Tracking Register 2 (LTR2)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.15/3-31
REG = LTR2 0x53F8004C PHYSICAL 4
REG_FIELD = LTR2 wsw15 31 29, wsw14 28 26, wsw13 25 23,
		 wsw12 22 20, wsw11 19 17, wsw10 16 14,
		 wsw9 13 11, emac 8 0

// Load Tracking Register 3 (LTR3)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.16/3-32
REG = LTR3 0x53F80050 PHYSICAL 4
REG_FIELD = LTR3 wsw8 31 29, wsw7 28 26, wsw6 25 23, wsw5 22 20,
		 wsw4 19 17, wsw3 16 14, wsw2 13 11, wsw1 10 8,
		 wsw0 7 5

// Load Tracking Buffer Register 0 (LTBR0)
//               Access: RO
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.17/3-33
REG = LTBR0 0x53F80054 PHYSICAL 4
REG_FIELD = LTBR0 lts7 31 28, lts6 27 24, lts5 23 20, lts4 19 16,
                  lts3 15 12, lts2 11 8, lts1 7 4, lts0 3 0

// Load Tracking Buffer Register 1 (LTBR1)
//               Access: RO
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 3.4.3.18/3-34
REG = LTBR1 0x53F80058 PHYSICAL 4
REG_FIELD = LTBR1 lts15 31 28, lts14 27 24, lts13 23 20, lts12 19 16,
                  lts11 15 12, lts10 11 8, lts9 7 4, lts8 3 0

// Power Management Control Register 0 (PMCR0)
//               Access: R/W
//          Reset Value: 0x8020_9828
//  Manual Section/Page: 3.4.3.19/3-35
REG = PMCR0 0x53F8005C PHYSICAL 4
REG_FIELD = PMCR0 dfsup 31 30, dvsup 29 28, udsc 27 27, vscnt 26 24,
		  dvfev 23 23, dvfis 22 22, lbmi 21 21, lbfl 20 20,
		  lbcf 19 18, ptvis 17 17, updten 16 16, fsvaim 15 15,
		  fsvai 14 13, dpvcr 12 12, dpvv 11 11, wfim 10 10,
		  drce3 9 9, drce2 8 8, drce1 7 7, drce0 6 6, dcr 5 5,
		  dvfen 4 4, ptvaim 3 3, ptvai 2 1, dpten 0 0

// Power Management Control Register 1 (PMCR1)
//               Access: R/W
//          Reset Value: 0x00AA_0000
//  Manual Section/Page: 3.4.3.20/3-38
REG = PMCR1 0x53F80060 PHYSICAL 4
REG_FIELD = PMCR1 wbcn 23 16, cpspa 12 9, pwts 8 8, nwts 7 7, cpfa 6 6,
		  dvgp 3 0

// Post Divider Register 2 (PDR2)
//               Access: R/W
//          Reset Value: 0x0000_0285
//  Manual Section/Page: 3.4.3.21/3-39
REG = PDR2 0x53F80064 PHYSICAL 4
REG_FIELD = PDR2 mst2_pdf 12 7, mst1_pdf 5 0

REG_WINDOW = CCM CCMR, PDR0, PDR1, RCSR, MPCTL, UPCTL, SPCTL, COSR, CGR0,
                 CGR1, CGR2, WIMR0, LDC, DCVR0, DCVR1, DCVR2, DCVR3, LTR0,
                 LTR1, LTR2, LTR3, LTBR0, LTBR1, PMCR0, PMCR1, PDR2

// Table 19-5. ESDCTL Memory Map
// =============================
//#########################################
//# ESDCTL and MDDR                       #
//# $B800_1000 to $B800_1FFF              #
//#########################################
// Enhanced SDRAM Control Register 0 (ESDCTL0)
//               Access: R/W
//          Reset Value: 0x0111_0080
//  Manual Section/Page: 19.3.3.1/19-15
REG = ESDCTL0  0xB8001000 PHYSICAL 4

// Enhanced SDRAM Configuration Register 0 (ESDCFG0)
//               Access: R/W
//          Reset Value: 0x0076_EB3A
//  Manual Section/Page: 19.3.3.2/19-20
REG = ESDCFG0  0xB8001004 PHYSICAL 4

// Enhanced SDRAM Control Register 1 (ESDCTL1)
//               Access: R/W
//          Reset Value: 0x8112_0080
//  Manual Section/Page: 19.3.3.1/19-15
REG = ESDCTL1  0xB8001008 PHYSICAL 4

// Enhanced SDRAM Configuration Register 1 (ESDCFG1)
//               Access: R/W
//          Reset Value: 0x007A_C727
//  Manual Section/Page: 19.3.3.2/19-20
REG = ESDCFG1  0xB800100C PHYSICAL 4

// Enhanced SDRAM Miscellaneous Register (ESDMISC)
//               Access: R/W
//          Reset Value: 0x0000_0000
//  Manual Section/Page: 19.3.3.3/19-33
REG = ESDMISC  0xB8001010 PHYSICAL 4

// Enhanced MDDR Delay Line 1 Configuration Debug Register (ESDCDLY1)
//               Access: R/W
//          Reset Value: 0x001C_0000
//  Manual Section/Page: 19.3.3.4/19-35
REG = ESDCDLY1 0xB8001020 PHYSICAL 4

// Enhanced MDDR Delay Line 2 Configuration Debug Register (ESDCDLY2)
//               Access: R/W
//          Reset Value: 0x001C_0000
//  Manual Section/Page: 19.3.3.5/19-36
REG = ESDCDLY2 0xB8001024 PHYSICAL 4

// Enhanced MDDR Delay Line 3 Configuration Debug Register (ESDCDLY3)
//               Access: R/W
//          Reset Value: 0x001C_0000
//  Manual Section/Page: 19.3.3.8/19-39
REG = ESDCDLY3 0xB8001028 PHYSICAL 4

// Enhanced MDDR Delay Line 4 Configuration Debug Register (ESDCDLY4)
//               Access:  R/W
//          Reset Value: 0x001C_0000
//  Manual Section/Page: 19.3.3.9/19-40
REG = ESDCDLY4 0xB800102C PHYSICAL 4

// Enhanced MDDR Delay Line 5 Configuration Debug Register (ESDCDLY5)
//               Access: R/W
//          Reset Value: 0x001C_0000
//  Manual Section/Page: 19.3.3.8/19-39
REG = ESDCDLY5 0xB8001030 PHYSICAL 4

// Enhanced MDDR Delay Line Cycle Length Debug Register (ESDCDLYL)
//               Access: RO
//          Reset Value: N/A
//  Manual Section/Page: 19.3.3.9/19-40
REG = ESDCDLYL 0xB8001034 PHYSICAL 4

REG_WINDOW = ESDCTL ESDCTL0, ESDCFG0, ESDCTL1, ESDCFG1, ESDMISC,
             ESDCDLY1, ESDCDLY2, ESDCDLY3, ESDCDLY4, ESDCDLY5, ESDCDLYL
